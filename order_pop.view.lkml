
view: pop {
  sql_table_name: orders ;; #Not actually used, but required by validator
  dimension: SQL_TABLE_NAME {sql:orders;;}
  dimension: inner_period_type {sql: week ;;}
  dimension: outer_period_type {sql: year ;;}
  dimension: date_field {sql: orders.created_at ;;}
  dimension: join_date {
    #sql: DATE_TRUNC(${pop.inner_period_type},${pop.date_field});; #Postgres/Redshift
    sql: date_add('1900-01-01',
          interval
          TIMESTAMPDIFF(${pop.inner_period_type}, '1900-01-01' ,${pop.date_field})
          ${pop.inner_period_type}) ;; #MySql
  }
  dimension: SQL_CURRENT_DATE {
    sql: CURDATE() ;; #MySQL
    #sql: CURRENT_DATE ;; #Postgres/Redshift
  }
  dimension: SQL_DATEDIFF {
    sql: TIMESTAMPDIFF;; #MySQL counts number of *entire* periods between given dates :(
    #sql: DAEDIFF;; #MS SQL counts number of period-type *boudnaries* between given dates
  }
  dimension: SQL_DATEADD {
    sql: DATE_ADD;; #MySQL
    #sql: DATEADD;; #MSSQL, Postgres, Redshift
  }
  filter: date_filter {
    type: date
  }
}

view:  pop_aggregates {
  sql_table_name: ${pop.SQL_TABLE_NAME} ;;
  dimension: reference_date {
    type: date
    sql: ${pop.SQL_DATEADD}(${pop.inner_period_type}, ${within.n},{% date_start pop.date_filter %});; #MSSQL, Postgres, Redshift
    sql: ${pop.SQL_DATEADD}({% date_start pop.date_filter %}, INTERVAL ${within.n} ${pop.inner_period_type}) ;; #MySQL
  }
  #dimension: join_date {
    #sql: ${pop.SQL_DATEADD}(${pop.inner_period_type}, ${within.n},
    #      ${pop.SQL_DATEADD}(${pop.outer_period_type},0-${across.n},{% date_start pop.date_filter %})
    #    );; #MSSQL, Postgres, Redshift
    #sql: ${pop.SQL_DATEADD}(
    #      ${pop.SQL_DATEADD}({% date_start pop.date_filter %}, INTERVAL (0-${across.n}) ${pop.outer_period_type})
    #      , INTERVAL ${within.n} ${pop.inner_period_type}
    #  );; #MySQL
  #}
  measure: count {
    type: number
    sql: SUM(${TABLE}.count_orders) ;;
  }
}


explore: pop {
  sql_table_name: (SELECT NULL);;
  always_filter: {
    filters: {
      field: across.n
      value: "<=1"
    }
    filters: {
      field: pop.date_filter
    }
  }
  join: within {
    from: numbers
    type: inner
    relationship: one_to_many
    sql_on: ${within.n}<=${pop.SQL_DATEDIFF}(${pop.inner_period_type},{% date_start pop.date_filter %},{% date_end pop.date_filter %}) ;;
  }
  join: across {
    from: numbers
    type: left_outer
    relationship: one_to_many
    sql_on: {% condition across.n %} ${across.n} {% endcondition %};;
  }
  join: pop_aggregates {
    from: pop_aggregates #Not Really
    #TODO: Filter within aggregate, in case query optimizer doesn't
    sql: LEFT JOIN (
        SELECT
          ${pop.join_date} as join_date,
          COUNT(*) as count_orders
        FROM ${pop.SQL_TABLE_NAME}
        GROUP BY ${pop.join_date}
    ) as pop_aggregates
    ON pop_aggregates.join_date
    = ${pop.SQL_DATEADD}(
          ${pop.SQL_DATEADD}({% date_start pop.date_filter %}, INTERVAL (0-${across.n}) ${pop.outer_period_type})
          , INTERVAL ${within.n} ${pop.inner_period_type}
      )
    ;;
    #= ${pop.SQL_DATEADD}(${pop.inner_period_type}, ${within.n},
    #      ${pop.SQL_DATEADD}(${pop.outer_period_type},0-${across.n},{% date_start pop.date_filter %})
    #    );; #MSSQL, Postgres, Redshift
    relationship: many_to_one
  }
}

view: numbers {
  sql_table_name: (SELECT 0 as n UNION ALL SELECT 1 as n
    UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4
    UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7
    UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10
    UNION ALL SELECT 11 UNION ALL SELECT 12 UNION ALL SELECT 13
    UNION ALL SELECT 14 UNION ALL SELECT 15 UNION ALL SELECT 16
    UNION ALL SELECT 17 UNION ALL SELECT 18 UNION ALL SELECT 19
    UNION ALL SELECT 20 UNION ALL SELECT 21 UNION ALL SELECT 22
    UNION ALL SELECT 23 UNION ALL SELECT 24 UNION ALL SELECT 25
    UNION ALL SELECT 26 UNION ALL SELECT 27 UNION ALL SELECT 28
    UNION ALL SELECT 29 UNION ALL SELECT 30 UNION ALL SELECT 31
    UNION ALL SELECT 32 UNION ALL SELECT 33 UNION ALL SELECT 34
    UNION ALL SELECT 35 UNION ALL SELECT 36 UNION ALL SELECT 37
    UNION ALL SELECT 38 UNION ALL SELECT 39 UNION ALL SELECT 40
    UNION ALL SELECT 41 UNION ALL SELECT 42 UNION ALL SELECT 43
    UNION ALL SELECT 44 UNION ALL SELECT 45 UNION ALL SELECT 46
    UNION ALL SELECT 47 UNION ALL SELECT 48 UNION ALL SELECT 49
    UNION ALL SELECT 50 UNION ALL SELECT 51 UNION ALL SELECT 51);;
  dimension: n {
    type: number
    sql: ${TABLE}.n ;;
  }
}

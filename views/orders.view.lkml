view: orders {
  sql_table_name: `bigquery-public-data.thelook_ecommerce.orders` ;;

  dimension: id {
    #primary_key: yes
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension: explore_links {
    sql: 'Links' ;;
    link: {
      label: ".../dashboards/..."
      url: "/dashboards/1?embed_domain=fabio-looker.github.io&"
    }
    link: {
      label: "/explore/..."
      url: "/explore/thelook/orders"
    }
    link: {
      label: "/explore/... (fixed)"
      url: "/explore/thelook/orders?embed_domain=fabio-looker.github.io"
    }
    link: {
      label: "...localhost/explore..."
      url: "https://localhost:9999/explore/thelook/orders"
    }
    link: {
      label: "...localhost2/explore..."
      url: "https://localhost2:9999/explore/thelook/orders"
    }
    link: {
      label: "sso_tool"
      url: "https://fabio-looker.github.io/looker_sso_tool#o=(embed_path:/embed/explore/thelook/orders)"
    }
  }

  dimension_group: created {
    type: time
    datatype: date #timestamp
    timeframes: [time, date, week, month, year]
    sql: DATE(${TABLE}.created_at, "America/New_York") ;;
  }

  dimension: status {
    #label: "{% if _user_attributes['thelook_user_id'] == '%' %}Status{% else %}X|Unavailable Fields{% endif %}"
    type: string
    action: {
      label: "Test action - dimension"
      url: "https://example.com/nosuchresource/?value={{ value }}&rendered={{ rendered_value }}"
    }
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    #label: "{% if _user_attributes['thelook_user_id'] == '%' %}User ID{% else %}X|Unavailable Fields{% endif %}"
    type: number
    # hidden: true
    sql: ${TABLE}.user_id ;;
  }

  dimension: num_of_item {
    hidden: yes
    type: number
  }

  measure: count {
    type: count
    drill_fields: [detail*]
    value_format: "0;0;;"
    filters: [
      id: "NOT NULL"
    ]
  }

  measure: total_items {
    type: sum
    sql: ${num_of_item} ;;
    value_format_name: decimal_0
  }

  measure: total_items_prior_year {
    type: period_over_period
    based_on: total_items
    based_on_time: created_year
    period: year
    kind: previous
    value_format_name: decimal_0
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [id, users.last_name, users.first_name, users.id, order_items.count, t1.count]
  }
}

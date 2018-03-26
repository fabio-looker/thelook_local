explore: order_size_distribution {}

view: order_size_distribution {
  derived_table: {
    sql:SELECT item_count as order_size_items, count(*) as ct
    FROM ${orders_aggregated_order_items.SQL_TABLE_NAME} as orders
    GROUP BY item_count
      ;;
  }

  dimension:order_size_items  {
    type: number
    sql: ${TABLE}.order_size_items ;;
    primary_key: yes
  }

  dimension: count{
    type: number
    sql: ${TABLE}.ct ;;
  }

  measure: count_orders_by_size {
    type: sum
    sql: ${count} ;;
    drill_fields: [order_size_items,count_orders_by_size]
  }
}

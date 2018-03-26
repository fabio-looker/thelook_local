view: orders_aggregated_order_items{
  derived_table: {
    sql:  SELECT order_id, count(*) as item_count, sum(sale_price) as order_amount
          FROM order_items
          GROUP BY order_id
            ;;
  }
  view_label: "Orders"

  dimension: order_id {
    hidden: yes
    type: number
    primary_key: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: item_count {
    type: number
    sql:  ${TABLE}.item_count ;;
  }

  dimension: order_amount {
    type: number
    sql:  ${TABLE}.order_amount ;;
  }

  measure: average_items_per_order {
    type: average
    sql: ${item_count} ;;
  }

  measure: average_order_value {
    type: average
    sql:  ${order_amount};;
  }
  measure: total_order_value {
    type: sum
    sql:  ${order_amount};;
  }


}

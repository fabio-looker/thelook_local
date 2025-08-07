view: order_items {
  sql_table_name: `bigquery-public-data.thelook_ecommerce.order_items` ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: inventory_item_id {
    type: number
    # hidden: true
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: order_id {
    type: number
    # hidden: true
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: returned {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.returned_at ;;
  }

  dimension: sale_price_tier {
    type: tier
    style: integer
    value_format_name: usd_0
    tiers: [0,500,1000,2000,4000,8000,16000,32000]
    sql: ${TABLE}.sale_price;;
  }



  measure: count {
    type: count
    drill_fields: [id, orders.id, inventory_items.id]
    filters: [
      id: "NOT NULL"
    ]
  }
}

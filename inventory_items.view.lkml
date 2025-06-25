view: inventory_items {
  # sql_table_name: demo_db.inventory_items ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cost {
    group_label: "Cost"
    type: number
    sql: ${TABLE}.cost ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension: product_id {
    type: number
    # hidden: true
    sql: ${TABLE}.product_id ;;
  }

  dimension_group: sold {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.sold_at ;;
  }

  dimension: cost_bucket {
    type:  number
    sql: CONVERT({% parameter cost_bucket_size %},signed) * FLOOR(${cost}/CONVERT({% parameter cost_bucket_size %}, signed)) ;;
  }

  filter: cost_bucket_size {
    type: string
    suggestions: ["5","10","25","50","100"]
  }

  measure: count {
    type: count
    drill_fields: [id, products.item_name, products.id, order_items.count, t1.count]
  }

  measure:  total_cost {
    type: sum
    sql: ${cost} ;;
  }
}

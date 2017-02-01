connection: "thelook"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

# explore: events {
#   join: users {
#     type: left_outer
#     sql_on: ${events.user_id} = ${users.id} ;;
#     relationship: many_to_one
#   }
# }

explore: inventory_items {
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: order_items {
  access_filter_fields: [products.department]
  #hidden: yes

  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
  join: orders_aggregated_order_items {
    type: left_outer
    sql_on: ${orders_aggregated_order_items.order_id} = ${orders.id};;
    relationship: one_to_one
  }
}

explore: products {}

explore: schema_migrations {}

explore: t1 {
  label: "Transactions"
  join: orders {
    type: left_outer
    sql_on: ${t1.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }
  join: orders_aggregated_order_items {
    type: left_outer
    sql_on: ${orders_aggregated_order_items.order_id} = ${orders.id};;
    relationship: one_to_one
  }

  join: inventory_items {
    type: left_outer
    sql_on: ${t1.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: user_data {
  join: users {
    type: left_outer
    sql_on: ${user_data.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
  join:  orders {
    type: left_outer
    sql_on: ${orders.user_id} =${users.id} ;;
    relationship: one_to_many
  }
  join: orders_aggregated_order_items {
    type: left_outer
    sql_on: ${orders_aggregated_order_items.order_id} = ${orders.id};;
    relationship: one_to_one
  }
}

 explore: users {
    hidden:  yes

 }

explore:  one {}
view:  one {
  derived_table: {
    sql: SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Custom error for testing' ;;
    #SELECT 1 as n;;
    #sql_trigger_value:  SELECT CURDATE() ;;
    #indexes: ["n"]
    }
  dimension: number {
    sql: ${TABLE}.n ;;
    type: number
  }

}

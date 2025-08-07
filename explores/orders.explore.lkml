include: "/views/order_items.view.lkml"
include: "/views/orders.view.lkml"
include: "/views/users.view.lkml"

explore: orders {
  view_label: "[Orders] (Dim)"
  join: _orders_joinpaths {
    relationship: one_to_one
    type: left_outer
    sql_on: FALSE
         {% if orders_msr_tbl._in_query %}  OR ${_orders_joinpaths.path} = 'orders' {%endif%}
         {% if orders_msr_exp._in_query %}  OR ${_orders_joinpaths.path} = 'orders' {%endif%}
         {% if order_items._in_query %} OR ${_orders_joinpaths.path} = 'order_items' {%endif%}
         ;;
  }

  join: order_items {
    relationship: one_to_one
    type: left_outer
    sql_on: ${_orders_joinpaths.path} = 'order_items'
      AND ${order_items.order_id} = ${orders.id} ;;
  }

  join: orders_msr_tbl {
    from: orders
    view_label: "[Orders] (Msr)(Table)"
    relationship: one_to_one
    type: left_outer
    sql_on: ${_orders_joinpaths.path} = 'orders'
      AND ${orders_msr_tbl.id} = ${orders.id} ;;
  }

  join: orders_msr_exp {
    from: orders
    view_label: "[Orders] (Msr)(Expr)"
    relationship: one_to_one
    sql_table_name: UNNEST([orders]) ;;
    sql_on: ${_orders_joinpaths.path} = 'orders';;
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  # join: orders_aggregated_order_items {
  #   type: left_outer
  #   sql_on: ${orders_aggregated_order_items.order_id} = ${orders.id};;
  #   relationship: one_to_one
  # }
}

view: _orders_joinpaths {
  derived_table: {
    sql:
    SELECT 'orders' AS path
    UNION ALL
    SELECT 'order_items'
    ;;
  }
  dimension: path {hidden:yes primary_key:yes}
}

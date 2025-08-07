include: "/views/events.view.lkml"
include: "/views/orders.view.lkml"
include: "/views/users.view.lkml"


explore: events {
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
  join: orders {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: one_to_many
  }
}

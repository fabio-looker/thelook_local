include: "/views/events.view.lkml"
include: "/views/orders.view.lkml"
include: "/views/users.view.lkml"

view: none {}
explore: all_the_things {
  from: none
  #extension: required
  #ojof ojof: yes

  join: orders {

  }
  join: events {

  }
  join: users {

  }
}

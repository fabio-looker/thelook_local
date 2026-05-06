include: "/views/events.view.lkml"
include: "/views/orders.view.lkml"
include: "/views/users.view.lkml"

explore: ecomm_multifact {
  extension: required
  #ojof ojof: yes

  join: orders {

  }
  join: events {

  }
  join: users {

  }
  join: invalid {

  }
}

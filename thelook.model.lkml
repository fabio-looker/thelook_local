connection: "default_bigquery_connection"

include: "*.view"
include: "explores/orders.explore.lkml"
include: "explores/order_items.explore.lkml"

# include all the dashboards
# include: "*.dashboard"

# datagroup: users_dg {
#   max_cache_age: "1 minute"
#   sql_trigger: select minute(now())  ;;
# }


explore: gravatar_demo {
  persist_for: "1 hour"
  label: "My Gravatar Demo has a pretty long label"
}
view: gravatar_demo {
  derived_table: {
    sql: SELECT 'Fabio' as name, 'fabio@looker.com' as email ;;
  }
  dimension: user_gravatar {
    sql: MD5(${TABLE}.email) ;;
    html: <img src="https://gravatar.com/avatar/{{value}}?s=80"> ;;
  }
  dimension: complex_user_gravatar {
    sql: MD5(${TABLE}.email) ;;
    html:
    <div style="">
      <div style="width:80px;height:80px;overflow: hidden;border-radius: 50%;">
       <img src="//gravatar.com/avatar/{{value}}?s=80" />
      </div>
    <div style="width:80px;text-align:center;top:-1em">{{gravatar_demo.name}}</div>
    </div>
    ;;
  }
  dimension: name {
    sql: ${TABLE}.name ;;
    html: <a target="_parent" href="https://fabio-looker.github.io/looker_sso_tool/#ifr2=dashboards/1">{{value}}</a> ;;
  }
  dimension: user_domain_logo {
    #Redshift sql: RIGHT(${TABLE}.email,LEN(${TABLE}.email) - STRPOS(${TABLE}.email,'@')) ;;
    #MySQL
    sql: RIGHT(${TABLE}.email,CHAR_LENGTH(${TABLE}.email) - LOCATE('@',${TABLE}.email))  ;;
    html:
      <div style="width:80px;height:80px;padding-top:-20px;overflow: hidden;border-radius: 50%;">
       <img src="//logo.clearbit.com/{{value}}?size=80" />
      </div>
      ;;
  }
  dimension: time {
    type: string
    sql:NOW() ;;
  }
  dimension: test_uri {
    sql: '___ ___+___/___&___''___"___?___=___:___#___' ;;
    html:<div style="white-space: pre;">
    {{value}} (original)
    {{value | encode_uri}} (encode_uri)
    {{value | url_encode}} (url_encode)
    {{value | escape}} (escape)
    {{value | escape_once}} (escape_once)
    {{value | url_escape}} (url_escape)
    {{value | url_param_escape}} (url_param_escape)
    {{value | h}} (h)
    </div>
    ;;
  }
}







# asdkljasdlkjasdklajsdaklsjd







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

# explore: inventory_items {
#   join: products {
#     #type: left_outer
#     #sql_on: ${inventory_items.product_id} = ${products.id} ;;
#     sql: {% if _user_attributes['x'] == 'ALL'  %}
#
#           {% else %}
#           INNER JOIN segments AS products ON ...
#           {% endif %};;
#     relationship: many_to_one
#   }
#   sql_always_where:
#           {% if _user_attributes['x'] == 'ALL'  %}
#           1=1
#           {% else %}
#            ${products.segment_id} = _user_attributes['x']
#           {% endif %} ;;
# }

explore: products {}

# explore: t1 {
#   label: "Transactions"
#   join: orders {
#     type: left_outer
#     sql_on: ${t1.order_id} = ${orders.id} ;;
#     relationship: many_to_one
#   }
#   join: orders_aggregated_order_items {
#     type: left_outer
#     sql_on: ${orders_aggregated_order_items.order_id} = ${orders.id};;
#     relationship: one_to_one
#   }

#   join: inventory_items {
#     type: left_outer
#     sql_on: ${t1.inventory_item_id} = ${inventory_items.id} ;;
#     relationship: many_to_one
#   }

#   join: users {
#     type: left_outer
#     sql_on: ${orders.user_id} = ${users.id} ;;
#     relationship: many_to_one
#   }

#   join: products {
#     type: left_outer
#     sql_on: ${inventory_items.product_id} = ${products.id} ;;
#     relationship: many_to_one
#   }
# }

explore: user_data {
  # persist_with: users_dg
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

explore:  yesno_explore {
    from:  yesno_view
    #sql_always_where: 1=1 --${yesno_filter_wo_sql} ;;

}
view:  yesno_view {
  derived_table: {
    sql:
      SELECT 1 as id, true as bool
      UNION ALL
      SELECT 2 as id, false as bool
      UNION ALL
      SELECT 3 as id, NULL as bool
      ;;
    #sql_trigger_value:  SELECT NOW() ;;
    #indexes: ["n"]
  }
  dimension: id {
    sql: ${TABLE}.id ;;
    type: number
  }
  dimension: yesno_dim {
    sql: ${TABLE}.n ;;
    type: yesno
  }
  dimension: id_as_string {
    sql: ''||${TABLE}.id ;;
    type: string
  }
}

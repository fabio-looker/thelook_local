view: orders {
  sql_table_name: demo_db.orders ;;

  dimension: id {
    #primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: explore_links {
    sql: 'Links' ;;
    link: {
      label: ".../dashboards/..."
      url: "/dashboards/1?embed_domain=fabio-looker.github.io&thelook_user_id={{user_attributes['thelook_user_id']}}"
    }
    link: {
      label: "/explore/..."
      url: "/explore/thelook/orders"
    }
    link: {
      label: "/explore/... (fixed)"
      url: "/explore/thelook/orders?embed_domain=fabio-looker.github.io"
    }
    link: {
      label: "...localhost/explore..."
      url: "https://localhost:9999/explore/thelook/orders"
    }
    link: {
      label: "...localhost2/explore..."
      url: "https://localhost2:9999/explore/thelook/orders"
    }
    link: {
      label: "sso_tool"
      url: "https://fabio-looker.github.io/looker_sso_tool#o=(embed_path:/embed/explore/thelook/orders)"
    }
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at ;;
  }

  dimension: status {
    type: string
    action: {
      label: "Test action - dimension"
      url: "https://example.com/nosuchresource/?value={{ value }}&rendered={{ rendered }}"
    }
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: true
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
    value_format: "0;0;;"
  }
  measure:  boom {
    type:  number
    sql: 1/0 ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [id, users.last_name, users.first_name, users.id, order_items.count, t1.count]
  }
}

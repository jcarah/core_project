include: "*.view.lkml"

explore: order_items_core {
#   extension: required
  join: orders_core {
    type: left_outer
    sql_on: ${order_items_core.order_id} = ${orders_core.id} ;;
    relationship: many_to_one
  }

  join: inventory_items_core {
    type: left_outer
    sql_on: ${order_items_core.inventory_item_id} = ${inventory_items_core.id} ;;
    relationship: many_to_one
  }

  join: users_core {
    type: left_outer
    sql_on: ${orders_core.user_id} = ${users_core.id} ;;
    relationship: many_to_one
  }

  join: products_core {
    type: left_outer
    sql_on: ${inventory_items_core.product_id} = ${products_core.id} ;;
    relationship: many_to_one
  }
}

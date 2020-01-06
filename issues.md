---
title: Issues - 50⛔ 83⚠️  
navigation: true
---
<p style="text-align:right;color:#cccs">
Generated Mon, 06 Jan 2020 22:31:45 GMT

</p>



<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;">
<b>Issues</b>
(
   50⛔ 
 83⚠️ 
)
</summary>



<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;">
<b><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#e1">E1</a>. Substitution operator used</b>
(

 1⚠️ 
)
</summary>

<table style="border:solid 1px #ccc">
<thead style="background-color:darkblue;color:white"><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>

<tr>
<td>⚠️</td>
<td>model:thelook&#47;explore:pop&#47;join:pop_aggregates <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>pop_aggregates.join_date should be referenced using the substitution operator</td>
</tr>

</tbody>
</table>


</details>



<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;">
<b><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#e2">E2</a>. Primary keys used</b>
(
   21⛔ 

)
</summary>

<table style="border:solid 1px #ccc">
<thead style="background-color:darkblue;color:white"><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:events&#47;join:users <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for users in users join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:events&#47;join:orders <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for users in orders join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:order_items&#47;join:orders <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for order_items in orders join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:order_items&#47;join:inventory_items <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for inventory_items in inventory_items join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:order_items&#47;join:users <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for users in users join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:order_items&#47;join:products <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for products in products join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:orders&#47;join:users <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for users in users join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:orders&#47;join:orders_aggregated_order_items <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for orders_aggregated_order_items in orders_aggregated_order_items join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:orders&#47;join:orders_aggregated_order_items <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for orders in orders_aggregated_order_items join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:t1&#47;join:orders <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for orders in orders join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:t1&#47;join:orders_aggregated_order_items <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for orders_aggregated_order_items in orders_aggregated_order_items join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:t1&#47;join:orders_aggregated_order_items <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for orders in orders_aggregated_order_items join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:t1&#47;join:inventory_items <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for inventory_items in inventory_items join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:t1&#47;join:users <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for users in users join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:t1&#47;join:products <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for products in products join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:user_data&#47;join:users <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for users in users join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:user_data&#47;join:orders <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for users in orders join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:user_data&#47;join:orders_aggregated_order_items <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for orders_aggregated_order_items in orders_aggregated_order_items join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:user_data&#47;join:orders_aggregated_order_items <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for orders in orders_aggregated_order_items join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:pop&#47;join:within <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for pop in within join</td>
</tr>

<tr>
<td>⛔</td>
<td>model:thelook&#47;explore:pop&#47;join:pop_aggregates <a href="&#47;projects&#47;thelook_local&#47;files&#47;thelook.model.lkml" style="text-decoration: none">⧉</a></td>
<td>No PKs dimensions used for pop_aggregates in pop_aggregates join</td>
</tr>

</tbody>
</table>


</details>



<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;">
<b><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f1">F1</a>. No inter-view dependencies</b>
(
   2⛔ 

)
</summary>

<table style="border:solid 1px #ccc">
<thead style="background-color:darkblue;color:white"><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>

<tr>
<td>⛔</td>
<td>view:pop&#47;field:date_field <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:pop&#47;field:date_field" style="text-decoration: none">⧉</a></td>
<td>date_field references another view, orders,  via  orders.created_at </td>
</tr>

<tr>
<td>⛔</td>
<td>view:pop_aggregates&#47;field:reference_date <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:pop_aggregates&#47;field:reference_date" style="text-decoration: none">⧉</a></td>
<td>reference_date references another view, pop,  via ${pop.SQL_DATEADD}</td>
</tr>

</tbody>
</table>


</details>



<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;">
<b><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f3">F3</a>. Count fields filtered</b>
(
   10⛔ 

)
</summary>

<table style="border:solid 1px #ccc">
<thead style="background-color:darkblue;color:white"><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>

<tr>
<td>⛔</td>
<td>view:events&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;events.view.lkml#view:events&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>Type:count measure at view:events/field:count does not have a filter applied</td>
</tr>

<tr>
<td>⛔</td>
<td>view:inventory_items&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;inventory_items.view.lkml#view:inventory_items&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>Type:count measure at view:inventory_items/field:count does not have a filter applied</td>
</tr>

<tr>
<td>⛔</td>
<td>view:order_items&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_items.view.lkml#view:order_items&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>Type:count measure at view:order_items/field:count does not have a filter applied</td>
</tr>

<tr>
<td>⛔</td>
<td>view:orders&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;orders.view.lkml#view:orders&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>Type:count measure at view:orders/field:count does not have a filter applied</td>
</tr>

<tr>
<td>⛔</td>
<td>view:products&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;products.view.lkml#view:products&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>Type:count measure at view:products/field:count does not have a filter applied</td>
</tr>

<tr>
<td>⛔</td>
<td>view:schema_migrations&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;schema_migrations.view.lkml#view:schema_migrations&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>Type:count measure at view:schema_migrations/field:count does not have a filter applied</td>
</tr>

<tr>
<td>⛔</td>
<td>view:t1&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;t1.view.lkml#view:t1&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>Type:count measure at view:t1/field:count does not have a filter applied</td>
</tr>

<tr>
<td>⛔</td>
<td>view:user_data&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;user_data.view.lkml#view:user_data&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>Type:count measure at view:user_data/field:count does not have a filter applied</td>
</tr>

<tr>
<td>⛔</td>
<td>view:users_nn&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;users_nn.view.lkml#view:users_nn&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>Type:count measure at view:users_nn/field:count does not have a filter applied</td>
</tr>

<tr>
<td>⛔</td>
<td>view:users&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;users.view.lkml#view:users&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>Type:count measure at view:users/field:count does not have a filter applied</td>
</tr>

</tbody>
</table>


</details>



<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;">
<b><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#f4">F4</a>. Description or hidden</b>
(

 82⚠️ 
)
</summary>

<table style="border:solid 1px #ccc">
<thead style="background-color:darkblue;color:white"><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>

<tr>
<td>⚠️</td>
<td>view:events&#47;field:id <a href="&#47;projects&#47;thelook_local&#47;files&#47;events.view.lkml#view:events&#47;field:id" style="text-decoration: none">⧉</a></td>
<td>view:events/field:id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:events&#47;field:id_plus_two <a href="&#47;projects&#47;thelook_local&#47;files&#47;events.view.lkml#view:events&#47;field:id_plus_two" style="text-decoration: none">⧉</a></td>
<td>view:events/field:id_plus_two is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:events&#47;field:type_id <a href="&#47;projects&#47;thelook_local&#47;files&#47;events.view.lkml#view:events&#47;field:type_id" style="text-decoration: none">⧉</a></td>
<td>view:events/field:type_id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:events&#47;field:user_id <a href="&#47;projects&#47;thelook_local&#47;files&#47;events.view.lkml#view:events&#47;field:user_id" style="text-decoration: none">⧉</a></td>
<td>view:events/field:user_id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:events&#47;field:value <a href="&#47;projects&#47;thelook_local&#47;files&#47;events.view.lkml#view:events&#47;field:value" style="text-decoration: none">⧉</a></td>
<td>view:events/field:value is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:events&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;events.view.lkml#view:events&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>view:events/field:count is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:events&#47;field:sum <a href="&#47;projects&#47;thelook_local&#47;files&#47;events.view.lkml#view:events&#47;field:sum" style="text-decoration: none">⧉</a></td>
<td>view:events/field:sum is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:id <a href="&#47;projects&#47;thelook_local&#47;files&#47;inventory_items.view.lkml#view:inventory_items&#47;field:id" style="text-decoration: none">⧉</a></td>
<td>view:inventory_items/field:id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:cost <a href="&#47;projects&#47;thelook_local&#47;files&#47;inventory_items.view.lkml#view:inventory_items&#47;field:cost" style="text-decoration: none">⧉</a></td>
<td>view:inventory_items/field:cost is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:product_id <a href="&#47;projects&#47;thelook_local&#47;files&#47;inventory_items.view.lkml#view:inventory_items&#47;field:product_id" style="text-decoration: none">⧉</a></td>
<td>view:inventory_items/field:product_id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:cost_bucket <a href="&#47;projects&#47;thelook_local&#47;files&#47;inventory_items.view.lkml#view:inventory_items&#47;field:cost_bucket" style="text-decoration: none">⧉</a></td>
<td>view:inventory_items/field:cost_bucket is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;inventory_items.view.lkml#view:inventory_items&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>view:inventory_items/field:count is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:total_cost <a href="&#47;projects&#47;thelook_local&#47;files&#47;inventory_items.view.lkml#view:inventory_items&#47;field:total_cost" style="text-decoration: none">⧉</a></td>
<td>view:inventory_items/field:total_cost is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:inventory_items&#47;field:cost_bucket_size <a href="&#47;projects&#47;thelook_local&#47;files&#47;inventory_items.view.lkml#view:inventory_items&#47;field:cost_bucket_size" style="text-decoration: none">⧉</a></td>
<td>view:inventory_items/field:cost_bucket_size is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:id <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_items.view.lkml#view:order_items&#47;field:id" style="text-decoration: none">⧉</a></td>
<td>view:order_items/field:id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:inventory_item_id <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_items.view.lkml#view:order_items&#47;field:inventory_item_id" style="text-decoration: none">⧉</a></td>
<td>view:order_items/field:inventory_item_id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:order_id <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_items.view.lkml#view:order_items&#47;field:order_id" style="text-decoration: none">⧉</a></td>
<td>view:order_items/field:order_id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:sale_price_tier <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_items.view.lkml#view:order_items&#47;field:sale_price_tier" style="text-decoration: none">⧉</a></td>
<td>view:order_items/field:sale_price_tier is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:order_items&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_items.view.lkml#view:order_items&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>view:order_items/field:count is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:pop&#47;field:SQL_TABLE_NAME <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:pop&#47;field:SQL_TABLE_NAME" style="text-decoration: none">⧉</a></td>
<td>view:pop/field:SQL_TABLE_NAME is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:pop&#47;field:inner_period_type <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:pop&#47;field:inner_period_type" style="text-decoration: none">⧉</a></td>
<td>view:pop/field:inner_period_type is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:pop&#47;field:outer_period_type <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:pop&#47;field:outer_period_type" style="text-decoration: none">⧉</a></td>
<td>view:pop/field:outer_period_type is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:pop&#47;field:date_field <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:pop&#47;field:date_field" style="text-decoration: none">⧉</a></td>
<td>view:pop/field:date_field is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:pop&#47;field:join_date <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:pop&#47;field:join_date" style="text-decoration: none">⧉</a></td>
<td>view:pop/field:join_date is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:pop&#47;field:SQL_CURRENT_DATE <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:pop&#47;field:SQL_CURRENT_DATE" style="text-decoration: none">⧉</a></td>
<td>view:pop/field:SQL_CURRENT_DATE is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:pop&#47;field:SQL_DATEDIFF <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:pop&#47;field:SQL_DATEDIFF" style="text-decoration: none">⧉</a></td>
<td>view:pop/field:SQL_DATEDIFF is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:pop&#47;field:SQL_DATEADD <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:pop&#47;field:SQL_DATEADD" style="text-decoration: none">⧉</a></td>
<td>view:pop/field:SQL_DATEADD is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:pop&#47;field:date_filter <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:pop&#47;field:date_filter" style="text-decoration: none">⧉</a></td>
<td>view:pop/field:date_filter is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:pop_aggregates&#47;field:reference_date <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:pop_aggregates&#47;field:reference_date" style="text-decoration: none">⧉</a></td>
<td>view:pop_aggregates/field:reference_date is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:pop_aggregates&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:pop_aggregates&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>view:pop_aggregates/field:count is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:numbers&#47;field:n <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:numbers&#47;field:n" style="text-decoration: none">⧉</a></td>
<td>view:numbers/field:n is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:order_size_distribution&#47;field:order_size_items <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_size_distribution.view.lkml#view:order_size_distribution&#47;field:order_size_items" style="text-decoration: none">⧉</a></td>
<td>view:order_size_distribution/field:order_size_items is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:order_size_distribution&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_size_distribution.view.lkml#view:order_size_distribution&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>view:order_size_distribution/field:count is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:order_size_distribution&#47;field:count_orders_by_size <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_size_distribution.view.lkml#view:order_size_distribution&#47;field:count_orders_by_size" style="text-decoration: none">⧉</a></td>
<td>view:order_size_distribution/field:count_orders_by_size is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:orders_aggregated_order_items&#47;field:item_count <a href="&#47;projects&#47;thelook_local&#47;files&#47;orders_aggregated_order_items.view.lkml#view:orders_aggregated_order_items&#47;field:item_count" style="text-decoration: none">⧉</a></td>
<td>view:orders_aggregated_order_items/field:item_count is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:orders_aggregated_order_items&#47;field:order_amount <a href="&#47;projects&#47;thelook_local&#47;files&#47;orders_aggregated_order_items.view.lkml#view:orders_aggregated_order_items&#47;field:order_amount" style="text-decoration: none">⧉</a></td>
<td>view:orders_aggregated_order_items/field:order_amount is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:orders_aggregated_order_items&#47;field:average_items_per_order <a href="&#47;projects&#47;thelook_local&#47;files&#47;orders_aggregated_order_items.view.lkml#view:orders_aggregated_order_items&#47;field:average_items_per_order" style="text-decoration: none">⧉</a></td>
<td>view:orders_aggregated_order_items/field:average_items_per_order is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:orders_aggregated_order_items&#47;field:average_order_value <a href="&#47;projects&#47;thelook_local&#47;files&#47;orders_aggregated_order_items.view.lkml#view:orders_aggregated_order_items&#47;field:average_order_value" style="text-decoration: none">⧉</a></td>
<td>view:orders_aggregated_order_items/field:average_order_value is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:orders_aggregated_order_items&#47;field:total_order_value <a href="&#47;projects&#47;thelook_local&#47;files&#47;orders_aggregated_order_items.view.lkml#view:orders_aggregated_order_items&#47;field:total_order_value" style="text-decoration: none">⧉</a></td>
<td>view:orders_aggregated_order_items/field:total_order_value is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:orders&#47;field:id <a href="&#47;projects&#47;thelook_local&#47;files&#47;orders.view.lkml#view:orders&#47;field:id" style="text-decoration: none">⧉</a></td>
<td>view:orders/field:id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:orders&#47;field:explore_links <a href="&#47;projects&#47;thelook_local&#47;files&#47;orders.view.lkml#view:orders&#47;field:explore_links" style="text-decoration: none">⧉</a></td>
<td>view:orders/field:explore_links is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:orders&#47;field:status <a href="&#47;projects&#47;thelook_local&#47;files&#47;orders.view.lkml#view:orders&#47;field:status" style="text-decoration: none">⧉</a></td>
<td>view:orders/field:status is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:orders&#47;field:user_id <a href="&#47;projects&#47;thelook_local&#47;files&#47;orders.view.lkml#view:orders&#47;field:user_id" style="text-decoration: none">⧉</a></td>
<td>view:orders/field:user_id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:orders&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;orders.view.lkml#view:orders&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>view:orders/field:count is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:orders&#47;field:boom <a href="&#47;projects&#47;thelook_local&#47;files&#47;orders.view.lkml#view:orders&#47;field:boom" style="text-decoration: none">⧉</a></td>
<td>view:orders/field:boom is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:products&#47;field:id <a href="&#47;projects&#47;thelook_local&#47;files&#47;products.view.lkml#view:products&#47;field:id" style="text-decoration: none">⧉</a></td>
<td>view:products/field:id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:products&#47;field:brand <a href="&#47;projects&#47;thelook_local&#47;files&#47;products.view.lkml#view:products&#47;field:brand" style="text-decoration: none">⧉</a></td>
<td>view:products/field:brand is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:products&#47;field:category <a href="&#47;projects&#47;thelook_local&#47;files&#47;products.view.lkml#view:products&#47;field:category" style="text-decoration: none">⧉</a></td>
<td>view:products/field:category is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:products&#47;field:department <a href="&#47;projects&#47;thelook_local&#47;files&#47;products.view.lkml#view:products&#47;field:department" style="text-decoration: none">⧉</a></td>
<td>view:products/field:department is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:products&#47;field:item_name <a href="&#47;projects&#47;thelook_local&#47;files&#47;products.view.lkml#view:products&#47;field:item_name" style="text-decoration: none">⧉</a></td>
<td>view:products/field:item_name is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:products&#47;field:rank <a href="&#47;projects&#47;thelook_local&#47;files&#47;products.view.lkml#view:products&#47;field:rank" style="text-decoration: none">⧉</a></td>
<td>view:products/field:rank is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:products&#47;field:retail_price <a href="&#47;projects&#47;thelook_local&#47;files&#47;products.view.lkml#view:products&#47;field:retail_price" style="text-decoration: none">⧉</a></td>
<td>view:products/field:retail_price is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:products&#47;field:sku <a href="&#47;projects&#47;thelook_local&#47;files&#47;products.view.lkml#view:products&#47;field:sku" style="text-decoration: none">⧉</a></td>
<td>view:products/field:sku is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:products&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;products.view.lkml#view:products&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>view:products/field:count is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:schema_migrations&#47;field:filename <a href="&#47;projects&#47;thelook_local&#47;files&#47;schema_migrations.view.lkml#view:schema_migrations&#47;field:filename" style="text-decoration: none">⧉</a></td>
<td>view:schema_migrations/field:filename is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:schema_migrations&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;schema_migrations.view.lkml#view:schema_migrations&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>view:schema_migrations/field:count is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:t1&#47;field:id <a href="&#47;projects&#47;thelook_local&#47;files&#47;t1.view.lkml#view:t1&#47;field:id" style="text-decoration: none">⧉</a></td>
<td>view:t1/field:id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:t1&#47;field:inventory_item_id <a href="&#47;projects&#47;thelook_local&#47;files&#47;t1.view.lkml#view:t1&#47;field:inventory_item_id" style="text-decoration: none">⧉</a></td>
<td>view:t1/field:inventory_item_id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:t1&#47;field:order_id <a href="&#47;projects&#47;thelook_local&#47;files&#47;t1.view.lkml#view:t1&#47;field:order_id" style="text-decoration: none">⧉</a></td>
<td>view:t1/field:order_id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:t1&#47;field:sale_price <a href="&#47;projects&#47;thelook_local&#47;files&#47;t1.view.lkml#view:t1&#47;field:sale_price" style="text-decoration: none">⧉</a></td>
<td>view:t1/field:sale_price is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:t1&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;t1.view.lkml#view:t1&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>view:t1/field:count is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:user_data&#47;field:id <a href="&#47;projects&#47;thelook_local&#47;files&#47;user_data.view.lkml#view:user_data&#47;field:id" style="text-decoration: none">⧉</a></td>
<td>view:user_data/field:id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:user_data&#47;field:max_num_orders <a href="&#47;projects&#47;thelook_local&#47;files&#47;user_data.view.lkml#view:user_data&#47;field:max_num_orders" style="text-decoration: none">⧉</a></td>
<td>view:user_data/field:max_num_orders is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:user_data&#47;field:total_num_orders <a href="&#47;projects&#47;thelook_local&#47;files&#47;user_data.view.lkml#view:user_data&#47;field:total_num_orders" style="text-decoration: none">⧉</a></td>
<td>view:user_data/field:total_num_orders is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:user_data&#47;field:user_id <a href="&#47;projects&#47;thelook_local&#47;files&#47;user_data.view.lkml#view:user_data&#47;field:user_id" style="text-decoration: none">⧉</a></td>
<td>view:user_data/field:user_id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:user_data&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;user_data.view.lkml#view:user_data&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>view:user_data/field:count is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users_nn&#47;field:id <a href="&#47;projects&#47;thelook_local&#47;files&#47;users_nn.view.lkml#view:users_nn&#47;field:id" style="text-decoration: none">⧉</a></td>
<td>view:users_nn/field:id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users_nn&#47;field:first_name <a href="&#47;projects&#47;thelook_local&#47;files&#47;users_nn.view.lkml#view:users_nn&#47;field:first_name" style="text-decoration: none">⧉</a></td>
<td>view:users_nn/field:first_name is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users_nn&#47;field:last_name <a href="&#47;projects&#47;thelook_local&#47;files&#47;users_nn.view.lkml#view:users_nn&#47;field:last_name" style="text-decoration: none">⧉</a></td>
<td>view:users_nn/field:last_name is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users_nn&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;users_nn.view.lkml#view:users_nn&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>view:users_nn/field:count is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users&#47;field:id <a href="&#47;projects&#47;thelook_local&#47;files&#47;users.view.lkml#view:users&#47;field:id" style="text-decoration: none">⧉</a></td>
<td>view:users/field:id is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users&#47;field:age <a href="&#47;projects&#47;thelook_local&#47;files&#47;users.view.lkml#view:users&#47;field:age" style="text-decoration: none">⧉</a></td>
<td>view:users/field:age is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users&#47;field:age_tier <a href="&#47;projects&#47;thelook_local&#47;files&#47;users.view.lkml#view:users&#47;field:age_tier" style="text-decoration: none">⧉</a></td>
<td>view:users/field:age_tier is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users&#47;field:city <a href="&#47;projects&#47;thelook_local&#47;files&#47;users.view.lkml#view:users&#47;field:city" style="text-decoration: none">⧉</a></td>
<td>view:users/field:city is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users&#47;field:country <a href="&#47;projects&#47;thelook_local&#47;files&#47;users.view.lkml#view:users&#47;field:country" style="text-decoration: none">⧉</a></td>
<td>view:users/field:country is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users&#47;field:email <a href="&#47;projects&#47;thelook_local&#47;files&#47;users.view.lkml#view:users&#47;field:email" style="text-decoration: none">⧉</a></td>
<td>view:users/field:email is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users&#47;field:first_name <a href="&#47;projects&#47;thelook_local&#47;files&#47;users.view.lkml#view:users&#47;field:first_name" style="text-decoration: none">⧉</a></td>
<td>view:users/field:first_name is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users&#47;field:gender <a href="&#47;projects&#47;thelook_local&#47;files&#47;users.view.lkml#view:users&#47;field:gender" style="text-decoration: none">⧉</a></td>
<td>view:users/field:gender is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users&#47;field:last_name <a href="&#47;projects&#47;thelook_local&#47;files&#47;users.view.lkml#view:users&#47;field:last_name" style="text-decoration: none">⧉</a></td>
<td>view:users/field:last_name is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users&#47;field:state <a href="&#47;projects&#47;thelook_local&#47;files&#47;users.view.lkml#view:users&#47;field:state" style="text-decoration: none">⧉</a></td>
<td>view:users/field:state is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users&#47;field:zip <a href="&#47;projects&#47;thelook_local&#47;files&#47;users.view.lkml#view:users&#47;field:zip" style="text-decoration: none">⧉</a></td>
<td>view:users/field:zip is missing a description</td>
</tr>

<tr>
<td>⚠️</td>
<td>view:users&#47;field:count <a href="&#47;projects&#47;thelook_local&#47;files&#47;users.view.lkml#view:users&#47;field:count" style="text-decoration: none">⧉</a></td>
<td>view:users/field:count is missing a description</td>
</tr>

</tbody>
</table>


</details>



<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;">
<b><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#k1">K1</a>. Primary keys required</b>
(
   15⛔ 

)
</summary>

<table style="border:solid 1px #ccc">
<thead style="background-color:darkblue;color:white"><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>

<tr>
<td>⛔</td>
<td>view: events <a href="&#47;projects&#47;thelook_local&#47;files&#47;events.view.lkml#view:events" style="text-decoration: none">⧉</a></td>
<td>No Primary Key Dimensions found in events</td>
</tr>

<tr>
<td>⛔</td>
<td>view: inventory_items <a href="&#47;projects&#47;thelook_local&#47;files&#47;inventory_items.view.lkml#view:inventory_items" style="text-decoration: none">⧉</a></td>
<td>No Primary Key Dimensions found in inventory_items</td>
</tr>

<tr>
<td>⛔</td>
<td>view: order_items <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_items.view.lkml#view:order_items" style="text-decoration: none">⧉</a></td>
<td>No Primary Key Dimensions found in order_items</td>
</tr>

<tr>
<td>⛔</td>
<td>view: pop <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:pop" style="text-decoration: none">⧉</a></td>
<td>No Primary Key Dimensions found in pop</td>
</tr>

<tr>
<td>⛔</td>
<td>view: pop_aggregates <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:pop_aggregates" style="text-decoration: none">⧉</a></td>
<td>No Primary Key Dimensions found in pop_aggregates</td>
</tr>

<tr>
<td>⛔</td>
<td>view: numbers <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_pop.view.lkml#view:numbers" style="text-decoration: none">⧉</a></td>
<td>No Primary Key Dimensions found in numbers</td>
</tr>

<tr>
<td>⛔</td>
<td>view: order_size_distribution <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_size_distribution.view.lkml#view:order_size_distribution" style="text-decoration: none">⧉</a></td>
<td>No Primary Key Dimensions found in order_size_distribution</td>
</tr>

<tr>
<td>⛔</td>
<td>view: orders_aggregated_order_items <a href="&#47;projects&#47;thelook_local&#47;files&#47;orders_aggregated_order_items.view.lkml#view:orders_aggregated_order_items" style="text-decoration: none">⧉</a></td>
<td>No Primary Key Dimensions found in orders_aggregated_order_items</td>
</tr>

<tr>
<td>⛔</td>
<td>view: orders <a href="&#47;projects&#47;thelook_local&#47;files&#47;orders.view.lkml#view:orders" style="text-decoration: none">⧉</a></td>
<td>No Primary Key Dimensions found in orders</td>
</tr>

<tr>
<td>⛔</td>
<td>view: products <a href="&#47;projects&#47;thelook_local&#47;files&#47;products.view.lkml#view:products" style="text-decoration: none">⧉</a></td>
<td>No Primary Key Dimensions found in products</td>
</tr>

<tr>
<td>⛔</td>
<td>view: schema_migrations <a href="&#47;projects&#47;thelook_local&#47;files&#47;schema_migrations.view.lkml#view:schema_migrations" style="text-decoration: none">⧉</a></td>
<td>No Primary Key Dimensions found in schema_migrations</td>
</tr>

<tr>
<td>⛔</td>
<td>view: t1 <a href="&#47;projects&#47;thelook_local&#47;files&#47;t1.view.lkml#view:t1" style="text-decoration: none">⧉</a></td>
<td>No Primary Key Dimensions found in t1</td>
</tr>

<tr>
<td>⛔</td>
<td>view: user_data <a href="&#47;projects&#47;thelook_local&#47;files&#47;user_data.view.lkml#view:user_data" style="text-decoration: none">⧉</a></td>
<td>No Primary Key Dimensions found in user_data</td>
</tr>

<tr>
<td>⛔</td>
<td>view: users_nn <a href="&#47;projects&#47;thelook_local&#47;files&#47;users_nn.view.lkml#view:users_nn" style="text-decoration: none">⧉</a></td>
<td>No Primary Key Dimensions found in users_nn</td>
</tr>

<tr>
<td>⛔</td>
<td>view: users <a href="&#47;projects&#47;thelook_local&#47;files&#47;users.view.lkml#view:users" style="text-decoration: none">⧉</a></td>
<td>No Primary Key Dimensions found in users</td>
</tr>

</tbody>
</table>


</details>



<details style="margin-left: 3em" open="open">
<summary style="margin-left:-1em;border-bottom:solid 1px #333;">
<b><a href="https://looker-open-source.github.io/look-at-me-sideways/rules.html#t2">T2</a>. Primary keys required</b>
(
   2⛔ 

)
</summary>

<table style="border:solid 1px #ccc">
<thead style="background-color:darkblue;color:white"><tr>
<th>Level</th>
<th>Location</th>
<th>Description</th>
</tr></thead>
<tbody>

<tr>
<td>⛔</td>
<td>view: order_size_distribution <a href="&#47;projects&#47;thelook_local&#47;files&#47;order_size_distribution.view.lkml#view:order_size_distribution" style="text-decoration: none">⧉</a></td>
<td>No Primary Key columns/selectAliases found in order_size_distribution</td>
</tr>

<tr>
<td>⛔</td>
<td>view: orders_aggregated_order_items <a href="&#47;projects&#47;thelook_local&#47;files&#47;orders_aggregated_order_items.view.lkml#view:orders_aggregated_order_items" style="text-decoration: none">⧉</a></td>
<td>No Primary Key columns/selectAliases found in orders_aggregated_order_items</td>
</tr>

</tbody>
</table>


</details>


</details>







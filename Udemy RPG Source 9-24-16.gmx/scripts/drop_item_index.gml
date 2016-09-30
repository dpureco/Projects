///drop_item_index(item_index, amount)
var item_index = argument0;
var amount = argument1
if (instance_exists(o_player_stats)) {
    with (o_player_stats) {
        if (ds_list_find_value(items, item_index) != undefined) {
            item_number[| item_index] -= amount;
            if (item_number[| item_index] <= 0) {
                ds_list_delete(item_number, item_index);
                ds_list_delete(items, item_index);
            }
        }
    }
}

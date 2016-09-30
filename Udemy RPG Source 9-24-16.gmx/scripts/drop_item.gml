///drop_item(item, amount)
var item = argument0;
var amount = argument1
if (instance_exists(o_player_stats)) {
    with (o_player_stats) {
        var item_index = ds_list_find_index(items, item);
        if (item_index) {
            item_number[| item_index] -= amount;
            if (item_number[| item_index] <= 0) {
                ds_list_delete(item_number, item_index);
                ds_list_delete(items, item_index);
            }
        }
    }
}

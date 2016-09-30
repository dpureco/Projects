///pickup_item(item, amount)
var item = argument0;
var amount = argument1
if (instance_exists(o_player_stats)) {
    with (o_player_stats) {
        var item_index = ds_list_find_index(items, item);
        if (item_index) {
            item_number[| item_index] += amount;
        } else {
            ds_list_add(items, item);
            ds_list_add(item_number, amount);
        }
    }
}

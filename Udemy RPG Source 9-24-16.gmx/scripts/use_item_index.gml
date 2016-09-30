///use_item_index(item_index)
var item_index = argument0;

if (instance_exists(o_player_stats)) {
    with (o_player_stats) {
        var item = ds_list_find_value(items, item_index);
        if (item != undefined) {
            var effect = asset_get_index(item[? "effect"]);
            script_execute(effect);
            item_number[| item_index] -= 1;
            if (item_number[| item_index] <= 0) {
                ds_list_delete(item_number, item_index);
                ds_list_delete(items, item_index);
            }
        }
    }
}

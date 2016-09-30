///draw_item_list(xx, y)
var xx = round(argument0); // Note issues with drawing this at non-integer values
var yy = round(argument1);
var list_string = "";
draw_set_font(global.item_font);
with (o_player_stats) {
    for (var i=0; i<ds_list_size(items); i++) {
        var item = items[| i];
        var item_amount = item_number[| i];
        list_string = "x"+string(item_amount)+" "+item[? "name"];
        if (item_amount > 1) list_string+="s";
        if (string_width(list_string) > 58) {
            // Add ...
        }
        draw_text(xx, yy+i*10, list_string);
    }
}
draw_set_font(global.custom_font);

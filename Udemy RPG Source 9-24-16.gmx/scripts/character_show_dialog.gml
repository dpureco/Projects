///character_show_dialog(character, dialog_array)
/*
    This function is designed to be called in a cutscene sequence.
    It will show the dialog. When the dialog reaches the end,
    and the player proceeds, the cutscene will move on to the new action.
*/
var character = argument0;
var dialog_array = argument1;

if (!instance_exists(character)) exit;
if (instance_exists(o_view)) {
    o_view.target[? "x"] = character.x+8;
    o_view.target[? "y"] = character.y+8;
}
if (!instance_exists(o_dialog)) {
    var dialog = instance_create(0, 0, o_dialog);
    dialog.cutscene = id;
    dialog.text = dialog_array;
    dialog.portrait = character.portrait;
    with (dialog) event_user(FORMAT_TEXT);
}

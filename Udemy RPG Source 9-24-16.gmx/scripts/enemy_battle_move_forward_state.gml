///enemy_battle_move_forward_state()
var targetx = o_battle_player.x+32;
battle_set_sprite(FORWARD, 0);

// Calculate the image speed
var dis = (abs(targetx-xstart)/16);
image_speed = 1/(dis/image_number);

// Set the view state
o_battle_view.target[? "x"] = o_battle_player.x+64;
o_battle_view.state = battle_view_focus_state;

// Move to target
if (x != targetx) {
    x = approach(x, targetx, 16);
} else {
    state = enemy_battle_attack_state;
}

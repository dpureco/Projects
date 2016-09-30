///enemy_battle_return_state()
var targetx = xstart;
battle_set_sprite(BACK, 0);

// Move towards start position
if (x != targetx) {
    x = approach(x, targetx, 16);
} else {
    state = enemy_battle_idle_state;
}

///player_battle_return_state
var targetx = xstart;

// Return to the state position
if (x != targetx) {
    x = approach(x, targetx, 16);
} else {
    state = player_battle_idle_state;
}

///battle_view_intro_state
target[? "x"] = 320+160;
target[? "y"] = 90;

// If we have reached the taret change to the idle state
if (point_distance(x, y, target[? "x"], target[? "y"]) < 1) {
    x = target[? "x"];
    y = target[? "y"];
    state = battle_view_idle_state;
}

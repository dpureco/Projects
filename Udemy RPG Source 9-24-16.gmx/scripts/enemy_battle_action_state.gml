///enemy_battle_action_state()
depth = -1;

// Check for attack or death
if (ds_exists(stats, ds_type_map) && stats[? "health"] == draw_health) {
    state = enemy_battle_move_forward_state;
}

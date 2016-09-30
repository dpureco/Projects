///player_battle_attack_state()
change_sprites(s_battle_elizabeth_attack, 0, attack_animation_speed);

// Set the view state
if (animation_hit_frame(1)) {
    o_battle_view.target[? "x"] = o_battle_enemy.xstart-64;
    o_battle_view.state = battle_view_focus_state;
}

// Prepare for damage
if (animation_hit_frame(6)) {
    var timer = instance_create(x, y, o_attack_timer);
    var steps = 3;
    timer.alarm[0] = (steps/image_speed)+image_speed;
}

// Hitflash
if (animation_hit_frame(7)) {
    set_hitflash(o_battle_enemy, room_speed/4);
    o_battle_enemy.state = enemy_battle_hit_state;
    view_screenshake(4, seconds_to_steps(.2));
    
    // Change the view state again
    o_battle_view.state = battle_view_idle_state;
}

// Return to the idle state
if (animation_end()) {
    state = player_battle_idle_state;
    sprite_index = s_battle_elizabeth_idle;
    image_speed = idle_animation_speed;
}


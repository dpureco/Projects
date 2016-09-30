///enemy_battle_attack_state()
var targetx = o_battle_player.x+32;
battle_set_sprite(ATTACKING, 0);

// Hit player
if (animation_hit_frame(1)) {
    set_hitflash(o_battle_player, room_speed/4);
    deal_damage(id, o_battle_player, false);
    o_battle_player.state = player_battle_hit_state;
    o_battle_player.image_index = 0;
    instance_create(o_battle_player.x, o_battle_player.y-32, o_slash);
    view_screenshake(4, seconds_to_steps(.2));
    
    // Change the view state again
    o_battle_view.state = battle_view_idle_state;
}

// End attack
if (animation_end()) {
    state = enemy_battle_return_state;
}

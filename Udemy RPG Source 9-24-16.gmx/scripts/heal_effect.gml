///heal_effect
if (instance_exists(o_player_stats)) {
    with (o_player_stats) {
        stats[? "health"] += 10;
        stats[? "health"] = min(stats[? "health"], stats[? "maxhealth"]);
        instance_create(o_battle_player.x, o_battle_player.y, o_heal_particle_effect);
    }
}

///bomb_effect()
with (o_battle_player) {
    var bomb = instance_create(x, y-16, o_bomb);
    bomb.direction = 45;
}

///end_turn()
/*
    Ends the turn and sets the state of the player
    or enemy based on the new turn.
*/

// This toggles the turn between 0 and 1 using basic binary math
o_battle.turn = (o_battle.turn+1)&1;

// Set the player and enemy states based on the turn
if (o_battle.turn == PLAYER) {
    if (instance_exists(o_battle_player)) {
        o_battle_player.state = player_battle_action_state;
    }
} else {
    if (instance_exists(o_battle_enemy)) {
        o_battle_enemy.state = enemy_battle_action_state;
    }
}


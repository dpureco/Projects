///player_battle_hit_state()
sprite_index = s_battle_elizabeth_hit;
image_speed = .2;

// Move the player based on the position in the animation
var input = (image_index/image_number)*pi;
x = xstart-sin(input)*32;

// Return to the idle state
if (animation_end()) {
    state = player_battle_idle_state;
    sprite_index = s_battle_elizabeth_idle;
    x = xstart;
}


///enemy_battle_hit_state()
sprite_index = sprite[HIT];
image_speed = .2;

// Set the x based on the position in the animation
var input = (image_index/image_number)*pi;
x = xstart+sin(input)*32;

// Return to the idle state
if (animation_end()) {
    state = enemy_battle_idle_state;
    x = xstart;
}

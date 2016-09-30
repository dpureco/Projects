///change_sprites(sprite_index, image_index, image_speed);
/*
    This function will change sprites and set the
    image_index and image_speed. It however, only
    changes sprites if it isn't already set to that sprite.
    This is especially useful in state scripts that are run
    every step.
*/

var sprite = argument0;
var index = argument1;
var spd = argument2;

// Change sprites
if (sprite_index != sprite) {
    sprite_index = sprite;
    image_index = index;
    image_speed = spd;
}

///battle_set_sprite(sprite_macro, image_index)
/*
    Takes a sprite macro value and image index.
    Sets the animation speed and sprite using that
    information.
*/

var macro = argument0;
var index = argument1;
change_sprites(sprite[macro], index, animation_speed[macro]);

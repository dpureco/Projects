///move(hspd, vspd)
/*
    This script attempts to move a character by
    the hspd and vspd amount but will not
    move into solids. It also updates the character's
    facing varible (and thus the sprite).
*/
var hspd = argument0;
var vspd = argument1;

// Horizontal movement
if (!place_meeting(x+hspd, y, o_solid)) {
    x+=hspd;
}

// Vertical movement
if (!place_meeting(x, y+vspd, o_solid)) {
    y+=vspd;
}

// Facing direction
var dir = point_direction(0, 0, hspd, vspd);

// Update the sprite
if (hspd == 0 && vspd == 0) {
    image_speed = 0;
    image_index = 0;
} else {
    image_speed = .2;
    facing = get_facing(dir);
}

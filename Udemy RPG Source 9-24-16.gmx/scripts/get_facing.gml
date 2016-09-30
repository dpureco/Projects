///get_facing(direction)
/*
    Returns RIGHT, LEFT, UP, and DOWN based on the
    direction passed in (See macros).
*/
var dir = argument0;
var facing = round(dir/90);
if (facing == 4) facing = RIGHT;
return facing;

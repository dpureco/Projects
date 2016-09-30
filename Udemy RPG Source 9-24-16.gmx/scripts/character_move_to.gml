///character_move_to(character, x, y, relative, speed, wait_seconds)
/*
    Used in cutscenes to move a character to a new position.
    The wait seconds is how long to wait once before starting
    the next action in the cutscene sequence, once the position
    is reached.
*/

var character = argument0;
var xx = argument1;
var yy = argument2;
var relative = argument3;
var spd = argument4;
var wait_seconds = argument5;
var cutscene = id;

// Make sure the character exists
if (!instance_exists(character)) exit;
if (instance_exists(o_view)) {
    o_view.target[? "x"] = character.x+8;
    o_view.target[? "y"] = character.y+8;
}

with (character) {
    // Create the target
    if (relative) {
        xx = x+xx;
        yy = y+yy;
    }
    
    // Reach target
    if (x = xx && y = yy) {
        image_speed = 0;
        image_index = 0;
        
        with (cutscene) wait(wait_seconds);
    } else {
        // Face the target
        var dir = point_direction(x, y, xx, yy);
        facing = get_facing(dir);
        image_speed = .2;
        
        // Move towards the target
        x = approach(x, xx, spd);
        y = approach(y, yy, spd);
    }
}

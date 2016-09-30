///move_intended_direction(hspd, vspd)
/*
    This function takes an hpsd and a vspd and
    attempts to calculate and move towards and intended
    direction if there is a collision.
*/

var hspd = argument0;
var vspd = argument1;

if (point_distance(0, 0, hspd, vspd) == spd && place_meeting(x+hspd, y+vspd, o_solid)) {
    var dir = point_direction(0, 0, hspd, vspd);
    
    // Get the intended direction
    var i_dir = noone;
    var d = 40;
    for (var s=-1; s<=1; s+=2) {
        if (!position_meeting(x+8+lengthdir_x(12, dir+s*d), y+8+lengthdir_y(12, dir+s*d), o_solid)) {
            i_dir = dir+s*d;
            break;
        }
    }
    
    // Found an intended direction
    if (i_dir != noone) {
        var i_hspd = lengthdir_x(spd, i_dir);
        var i_vspd = lengthdir_y(spd, i_dir);
        faceless_move(sign(i_hspd)*spd, sign(i_vspd)*spd);
    }
}

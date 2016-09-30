///set_hitflash(target, duration);
/*
    Sets hitflash on a battle unit.
*/

var target = argument0;
var duration = argument1;
with (target) {
    hitflash = true;
    alarm[0] = duration;
}

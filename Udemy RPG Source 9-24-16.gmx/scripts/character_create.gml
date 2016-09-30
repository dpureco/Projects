///character_create(character, x, y, wait_seconds)
/*
    This function is used inside a cutscene to add a new character
    to the overworld.
*/
var character = argument0;
var xx = argument1;
var yy = argument2;
var wait_seconds = argument3;

if (!instance_exists(character)) {
    instance_create(xx, yy, character);
} else {
    wait(wait_seconds);
}

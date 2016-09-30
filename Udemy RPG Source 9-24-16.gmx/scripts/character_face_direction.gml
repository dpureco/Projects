///character_face_direction(character, facing, wait_seconds)
/*
    This function is used in a cutscene to change the direction
    a character faces.
*/
var character = argument0;
var facing = argument1;
var wait_seconds = argument2;

if (!instance_exists(character)) exit;
character.facing = facing
wait(wait_seconds);

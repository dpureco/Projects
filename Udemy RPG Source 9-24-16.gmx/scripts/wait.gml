///wait(seconds)
/*
    This function is used in a cutscene to add a pause/wait time
*/
var seconds = argument0;
var steps = seconds*room_speed;

// Set the alarm
if (alarm[0] == -1) {
    alarm[0] = steps;
}

// End the wait
if (alarm[0] == 0) {
    action++;
}

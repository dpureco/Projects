///elizabeth_move_state()
/*
    This state is used to move Elizabeth. It also
    handles speaking with NPC's and random
    encounters.
*/

// Get the input for movement
var hspd = (o_input.right - o_input.left)*spd;
var vspd = (o_input.down - o_input.up)*spd;

// Move Elizabeth applying a speed
move(hspd, vspd);

// Attempt to slide (This code will likely change)
move_intended_direction(hspd, vspd);

// Get the direction we are facing
var xdir = lengthdir_x(8, facing*90);
var ydir = lengthdir_y(8, facing*90);

// Check for a speaker object
var speaker = instance_place(x+xdir, y+ydir, o_speaker);

// If there is a speaker object and we press the action button
if (o_input.action && speaker != noone) {
    /// Activate the dialog
    with (speaker) {
        if (!instance_exists(dialog)) {
            dialog = instance_create(0, 0, dialog_object);
            
            // Is it a dialog or a cutscene?
            if (dialog.object_index == o_dialog) {
                dialog.text = text;
                dialog.portrait = portrait;
                with (dialog) event_user(FORMAT_TEXT);
                other.state = elizabeth_talking_state;
            }
        }
    }
}

// Check for random encounter
if (!instance_exists(o_last_encounter)) {
    instance_create(x, y, o_last_encounter);
    o_last_encounter.distance = random_range(32, 256);
} else {
    // I'm using a distance to keep random encounters form being too frequent
    if (distance_to_object(o_last_encounter) >= o_last_encounter.distance) {
        o_last_encounter.distance = random_range(32, 256);
        o_last_encounter.x = x;
        o_last_encounter.y = y;
        random_encounter(1);
    }
}

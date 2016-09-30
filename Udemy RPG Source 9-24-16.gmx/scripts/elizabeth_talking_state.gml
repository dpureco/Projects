///elizabeth_talking_state()
/*
    This state is used to freeze Elizabeth while dialog is showing.
*/
image_speed = 0;
image_index = 0;

// When dialog is gone switch back to the move state
if (!instance_exists(o_dialog)) {
    state = elizabeth_move_state;
}

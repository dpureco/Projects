///animation_hit_frame(frame)
/*
    Returns true if an animation hits a specific
    frame.
*/
var frame = argument[0]; // The frame to check for
return (image_index >= frame+1 - image_speed) && (image_index < frame+1);

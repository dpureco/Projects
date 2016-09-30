///get_input()
/*
    Get input and store it in variables for later use.
    This script should be called in the input object.
*/
up = keyboard_check(vk_up);
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
down = keyboard_check(vk_down);
up_pressed = keyboard_check_pressed(vk_up);
right_pressed = keyboard_check_pressed(vk_right);
left_pressed = keyboard_check_pressed(vk_left);
down_pressed = keyboard_check_pressed(vk_down);
action = keyboard_check_pressed(ord('X'));
back = keyboard_check_pressed(ord('Z'));


///scr_move_state

movement = MOVE;

if (obj_input.dash_key) {
    var xdir = lengthdir_x(8, face*90);
    var ydir = lengthdir_y(8, face*90);
    var speaker = instance_place(x+xdir, y+ydir, obj_speaker);
    
    if (speaker != noone) {
        // Talk to speaker
        with (speaker){
            if (!instance_exists(dialog)) {
                dialog = instance_create(x+xoffset, y+yoffset, obj_dialog);
                dialog.text = text;
            } else {
                dialog.text_page++;
                dialog.text_count = 0;
                if (dialog.text_page > array_length_1d(dialog.text)-1) {
                    with (dialog) {
                        instance_destroy();
                    }
                }
            }
        }
    } else if (obj_player_stats.stamina >= DASH_COST) {
        // Dash
        state = scr_dash_state;
        alarm[0] = room_speed/6;
        obj_player_stats.stamina -= DASH_COST;
        obj_player_stats.alarm[0] = room_speed;
    }
}

if (obj_input.attack) {
    image_index = 0;
    state = scr_attack_state;
}

if (obj_input.spell_key) {
    var p = instance_create(x, y, obj_projectile);
    if (len == 0) {
        dir = face * 90;
    }
    var xforce = lengthdir_x(20, dir);
    var yforce = lengthdir_y(20, dir);
    p.creator = id;
    p.damage = obj_player_stats.attack;
    with (p) {
        physics_apply_impulse(x, y, xforce, yforce);
    }
}

// Swap weapon
if (obj_input.swap_key) {
    var nearest_weapon = instance_nearest(x, y, obj_weapon_item);
    if (place_meeting(x, y+4, nearest_weapon)) {
        scr_swap_weapon(nearest_weapon);
    }
}

// Get direction
dir = point_direction(0, 0, obj_input.xaxis, obj_input.yaxis);

// Get the length
if (obj_input.xaxis == 0 && obj_input.yaxis == 0) {
    len = 0;
} else {
    len = spd;
    scr_get_face(dir);
}

// Get the hspd and vspd
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control the sprite
image_speed = .2;
if (len == 0) image_index =0;


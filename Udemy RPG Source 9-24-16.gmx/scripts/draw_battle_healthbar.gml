///draw_battle_healthbar(x, y, health, maxhealth)
/*
    Uses a location and health and max health variables to
    calculate and draw a health bar.
*/
var xx = argument0;
var yy = argument1;
var hth = argument2;
var maxhth = argument3;
var index = 0;

// Only calculate index if hth isn't 0
if (hth >= 0) {
    index = (hth/maxhth)*(sprite_get_number(s_health_bar)-1);
}

// Draw the health bar
draw_sprite(s_health_bar, index, xx, yy);

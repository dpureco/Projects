///deal_damage(attacker, defender, critical)
/*
    Takes an attacker, defender, and critical (true or false) and
    deals damage to the defender using that information. This function
    also contains the formula for calculating damage.
*/

var attacker = argument0.stats_object;
var defender = argument1.stats_object;
var critical = argument2;

if (instance_exists(defender) && instance_exists(attacker)) {
    // Magic formula for dealing damage
    defender.stats[? "health"] -= ((attacker.stats[? "attack"]+(attacker.level*5)+(critical*attacker.stats[? "critical"]))*(1-(defender.stats[? "defense"]*.05)))*.5;
    var hit = instance_create(defender.x, defender.y-defender.sprite_height/2, o_hit);
    if (critical) hit.text = "Critical";
}

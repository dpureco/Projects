///random_encounter(chance)
/*
    Initiates a random encounter based on a decimal
    "chance" value passed in (0-1).
*/

if (chance(argument0)) {
    if (instance_exists(o_random_encounters) && instance_exists(o_elizabeth)) {
        if (o_random_encounters.on) {
            encounter();
        }
    } 
}

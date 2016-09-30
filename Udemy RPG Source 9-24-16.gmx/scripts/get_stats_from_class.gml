///get_stats_from_class(class_string);
/*
    Use this function in the create event for the
    battle enemy or Elizabeth's stats object. It will create
    a new stats map from the base class using a class string.
*/
var class_string = argument0;

// Create the stats map
stats = ds_map_create();

// Copy the class stats
ds_map_copy(stats, o_data.classes[? class_string]);

// Set maxhealth and health based on the level
stats[? "maxhealth"] = calculate_health(level, stats[? "health"]);
stats[? "health"] = stats[? "maxhealth"];

// Set the experience for the player based on the level
if (stats[? "type"] == PLAYER) {
    stats[? "maxexperience"] = level*10;
}

///create_heal_particle(sprite, blend, min_life, max_life)
var sprite = argument0; // The sprite to be used for the particle
var blend = argument1; // How the particles should be drawn when they are layered
var min_life = argument2; // Minimum life of the particle (in steps)
var max_life = argument3; // Maximum life of the particle (in steps)

var type = part_type_create(); // Create the particle type and assign the id to a local variable
part_type_alpha2(type, .75, 0); // Set the particle's alpha (first number is alpha at creation and second is alpha at death)
part_type_sprite(type, sprite, false, true, true); // Set the particle's sprite
part_type_blend(type, blend); // Set the particle's blend mode
part_type_size(type, 1, 1, 0, 0); // Set the particle's size (1 means same as sprite)
part_type_life(type, min_life, max_life); // Set the particle's min life
part_type_orientation(type, 0, 0, 0, 0, 0);
part_type_gravity(type, .5, 90);
part_type_direction(type, 90, 90, 0, 0);
part_type_speed(type, 1, 3, 0, 0);

return type; // Return the id of the particle type created

///encounter()
/*
    Initiates an incounter
*/

o_elizabeth.state = elizabeth_encounter_state;
if (!instance_exists(o_battle_transition)) {
    instance_create(0, 0, o_battle_transition);
}

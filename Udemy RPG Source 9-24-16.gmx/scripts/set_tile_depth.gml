///set_tile_depth(layer_depth, yoffset)
/*
    Set tile depths. This loops through the tiles
    in the room and sets their depth.
*/
var layer_depth = argument0;
var yoffset = argument1;
var tiles = tile_get_ids_at_depth(layer_depth);
var array_size = array_length_1d(tiles);
for (var i=0; i<array_size; i++) {
    var tile = tiles[i];
    if (tile_exists(tile)) {
        tile_set_depth(tile, -tile_get_y(tile)+yoffset);
    }
}

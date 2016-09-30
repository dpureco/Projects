///view_approach(x, y, width, height, amount, zoom_amount)
/*
    This function is used to move the view. It also takes a new view width
    and height to allow for zooming.
*/
var xx = argument0;
var yy = argument1;
var width = argument2;
var height = argument3;
var amount = argument4;
var zoom_amount = argument5;

// Move towards the target
x = lerp(x, xx, amount);
y = lerp(y, yy, amount);

// Get the current width and height
var vw = view_wview[0];
var vh = view_hview[0];

// Get the change
var vwc = (vw-width)*zoom_amount;
var vhc = (vh-height)*zoom_amount;

// Get the offset
var xoff = abs(vwc);
var yoff = abs(vwc);

// Scale the view
view_wview[0] -= vwc;
view_hview[0] -= vhc;

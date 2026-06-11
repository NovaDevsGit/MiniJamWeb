

//move destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

// move object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

//update camera view
cam_x = x-view_w_half;
cam_y = y-view_h_half;
camera_set_view_pos(cam,cam_x,cam_y);




//paralax
//layer_y("Background" , cam_y * 0.25); // Change the background layer name to whatever you use in the room editor //Change the 0.25 and 0.5 values to change the speed of the effect
//layer_y("Background2", cam_y * 0.6); // Change the background layer name to whatever you use in the room editor //Change the 0.25 and 0.5 values to change the speed of the effect

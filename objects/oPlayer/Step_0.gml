key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));



//calculate movement
var move = key_right - key_left;


hsp = move * walksp;
vsp = vsp + grv;


if (place_meeting(x,y+1,oWall)) {
	vsp = jumpsp;
}


y+=vsp;
x+=hsp;

	
//set the direction that the player is pointing
if (move == 1)
{
	image_xscale = 1;
}
else if (move == -1)
{
	image_xscale = -1;
}


if y < room_height/2 {
	y = room_height/2;	
}



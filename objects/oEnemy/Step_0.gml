// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FreeState(){
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space) || keyboard_check(ord("W"));
	//unused
	key_down = keyboard_check(vk_down)
	key_action = keyboard_check(vk_shift)

	//calculate movement
	var move = key_right - key_left;


	hsp = move * walksp;
	vsp = vsp + grv;


	//check if jumping and take action
	//if (place_meeting(x,y+1,oWall)) && (key_jump) && (canjump = true)
	//{
	//	vsp = -10;
	//	inair = true;
	//}

	if (key_jump) && (canjump>1)
	{
		vsp = -10;
		inair = true;
		canjump = 0;
	}


	//horizontal collision
	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x + sign(hsp);
		}

		hsp = 0;
	
	}

	//jump cancelling
	if (inair = true) && (key_jump = false)
	{
		grv = 0.7;
	}

	//vertical collision
	if (place_meeting(x,y+vsp,oWall))
	{
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
	
		vsp = 0;
		grv = 0.3;
		inair = false;

	}

	//if on floor
	if (place_meeting(x,y+1,oWall))
	{
		canjump = 10;
	}

	//how long has it been since on ground
	canjump = canjump - 1;
}
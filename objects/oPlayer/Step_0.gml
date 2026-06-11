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
	
	

if (key_jump) && (canjump>1)
{
	vsp = jumpsp;
	inair = true;
	canjump = 0;
}
if (inair && vsp > 0)
{
	image_index = 3	
}

//pasted in
hsp_final = hsp + hsp_f;
hsp_f = hsp_final - floor(abs(hsp_final))*sign(hsp_final);
hsp_final -= hsp_f;
 
vsp_final = vsp + vsp_f;
vsp_f = vsp_final - floor(abs(vsp_final))*sign(vsp_final);
vsp_final -= vsp_f;
 
//same old place_meeting collision code.
if (place_meeting(x+hsp_final,y,par_collide))
{
	var inc = sign(hsp_final);
	while (!place_meeting(x+inc,y,par_collide)) x+= inc;
	hsp_final = 0;
	hsp = 0;
}

 
if (place_meeting(x,y+vsp_final,par_collide))
{
	var inc = sign(vsp_final);
	while (!place_meeting(x,y+inc,par_collide)) y+= inc;
	vsp_final = 0;
	vsp = 0;
}
	
	
y+=vsp_final;
x+=hsp_final;
//end of pasted in

//if on floor (for coyote time)
if (place_meeting(x,y+1,par_collide))
{
	canjump = 8;
	inair = false;
	image_index = 0;
}


//how long has it been since on ground
canjump = canjump - 1;
	
//set the direction that the player is pointing
if (move == 1)
{
	image_xscale = 1;
}
else if (move == -1)
{
	image_xscale = -1;
}
	

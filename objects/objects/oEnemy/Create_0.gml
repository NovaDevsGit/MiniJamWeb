hsp_final = 0;
hsp_f = 0;
vsp_final = 0;
vsp_f = 0;
par_collide = [layer_tilemap_get_id("tColl"), oGate, oWall];
//par_death = [layer_tilemap_get_id("tDeath")];



hsp = 0;
vsp = 0;
grv = 0.25;
walksp = 2;
jumpsp = -5;


inair = false;
canjump = true;
//MFS is scaler
maxfallspeed = 6;
window_set_size(1600, 900);
var disw = display_get_width();
var dish = display_get_height();
window_set_position(disw/10, dish/10);

hsp_final = 0;
hsp_f = 0;
vsp_final = 0;
vsp_f = 0;
par_collide = [oWall];




hsp = 0;
vsp = 0;
grv = 0.25;
walksp = 1.5;
jumpsp = -5;


inair = false;
canjump = true;
//MFS is scaler
maxfallspeed = 6;
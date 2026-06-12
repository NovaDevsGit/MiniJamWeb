window_set_size(1600, 900);
disw = display_get_width();
dish = display_get_height();
window_set_position(disw/10, dish/10);

hsp = 0;
vsp = 0;

downwardsp = 0;
walksp = 2;
jumpsp = -4;
grv = 0.15;
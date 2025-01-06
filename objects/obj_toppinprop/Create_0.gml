image_speed = 0.35;
state = states.normal;
image_xscale = choose(-1, 1);
alarm[0] = 80 + irandom(70);
hsp = 0;
vsp = 0;
hsp_carry = 0;
vsp_carry = 0;
grav = 0.5;
platformid = -4;
idlespr = scr_get_toppin_sprite("cheese", "idle");
movespr = scr_get_toppin_sprite("cheese", "run");
tauntspr = scr_get_toppin_sprite("cheese", "taunt")
depth = 1;
while (scr_solid(x, y))
	y--;

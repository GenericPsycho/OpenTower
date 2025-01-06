hsp = 0;
vsp = 0;
hsp_carry = 0;
vsp_carry = 0;
grav = 0.5;
platformid = -4;
grounded = false;
usepalette = false;
start = false;
stunspr = -4;
angryspr = -4;
use_collision = true;
spr_palette = (global.option_datoggle ? spr_peppalette : spr_peppaletteOG);
paletteselect = 1;
with (instance_create(x, y + 10, obj_jumpdust))
	image_xscale = -1;

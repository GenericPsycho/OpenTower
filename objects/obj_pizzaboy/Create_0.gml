scr_initenemy();
grav = 0.5;
hsp = 0;
vsp = 0;
movespeed = 0;
state = states.walk;
stunned = 0;
alarm[0] = 150;
roaming = true;
collectdrop = 5;
flying = false;
straightthrow = false;
cigar = false;
cigarcreate = false;
stomped = false;
shot = false;
reset = false;
flash = false;
landspr = spr_pizzaboy;
idlespr = spr_pizzaboy;
fallspr = spr_pizzaboy;
stunfallspr = spr_pizzaboy_stun;
walkspr = spr_pizzaboy;
turnspr = spr_pizzaboy;
recoveryspr = spr_pizzaboy;
grabbedspr = spr_pizzaboy;
scaredspr = spr_pizzaboy;
image_xscale = -1;
hp = 1;
slapped = false;
grounded = true;
birdcreated = false;
boundbox = false;
spr_dead = spr_pizzaboy;
important = false;
grabbedby = 0;
heavy = false;
depth = 0;
stuntouchbuffer = 0;
if global.extras_anchovies
{
	instance_change(obj_ancho, 0)
	idlespr = spr_ancho;
	stunfallspr = spr_anchobounce;
	walkspr = spr_ancho;
	grabbedspr = spr_anchobounce;
	scaredspr = spr_ancho_scared;
	spr_dead = spr_anchodead;
	spr_palette = palette_anchovie;
	paletteselect = 0;
	snotty = false
}
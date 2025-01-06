scr_initenemy();
shot = false;
totemID = -4;
totemdir = 1;
grav = 0.5;
hsp = 0;
vsp = 0;
movespeed = 3;
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
hp = 2;
hitboxcreate = false;
grounded = true;
idlespr = spr_indiancheese_walk;
stunfallspr = spr_indiancheese_stun;
walkspr = spr_indiancheese_walk;
grabbedspr = spr_indiancheese_stun;
scaredspr = spr_indiancheese_scared;
image_xscale = -1;
flash = false;
slapped = false;
birdcreated = false;
boundbox = false;
spr_dead = spr_indiancheese_dead;
important = false;
heavy = false;
depth = 0;
jumptimer = 50;
arcprojectiletimer = 25;
elite = true;
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
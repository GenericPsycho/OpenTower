scr_initenemy();
grav = 0.5;
hsp = 0;
vsp = 0;
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
bombreset = 0;
hp = 1;
grounded = true;
idlespr = spr_canongoblin_walk;
stunfallspr = spr_canongoblin_stun;
walkspr = spr_canongoblin_walk;
stunspr = spr_canongoblin_stun;
grabbedspr = spr_canongoblin_stun;
scaredspr = spr_canongoblin_scared;
sprite_index = spr_canongoblin_walk;
image_xscale = -1;
flash = false;
slapped = false;
birdcreated = false;
boundbox = false;
spr_dead = spr_canongoblin_dead;
important = false;
depth = 0;
grabbedby = 0;
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
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
hp = 2;
grounded = true;
idlespr = spr_pizzagoblin_idle;
stunfallspr = spr_pizzagoblin_stun;
walkspr = spr_pizzagoblin_walk;
stunspr = spr_pizzagoblin_stun;
grabbedspr = spr_pizzagoblin_stun;
scaredspr = spr_pizzagoblin_scared;
sprite_index = spr_pizzagoblin_walk;
image_xscale = -1;
flash = false;
slapped = false;
birdcreated = false;
boundbox = false;
spr_dead = spr_pizzagoblin_dead;
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
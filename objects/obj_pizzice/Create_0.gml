scr_initenemy();
bombreset = 0;
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
flash = false;
landspr = spr_pizzice_walk;
idlespr = spr_pizzice_walk;
fallspr = spr_pizzice_walk;
stunfallspr = spr_pizzice_stun;
walkspr = spr_pizzice_walk;
turnspr = spr_pizzice_walk;
recoveryspr = spr_pizzice_walk;
grabbedspr = spr_pizzice_stun;
scaredspr = spr_pizzice_stun;
ragespr = spr_pizzice_stun;
image_xscale = -1;
hp = 1;
slapped = false;
grounded = true;
birdcreated = false;
boundbox = false;
spr_dead = spr_pizzice_dead;
important = false;
heavy = false;
depth = 0;
paletteselect = 0;
spr_palette = palette_cheeseslime;
sprite_index = spr_pizzice_walk;
grabbedby = 0;
stuntouchbuffer = 0;
scaredbuffer = 0;
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
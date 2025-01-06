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
idlespr = spr_kentukykenny_idle;
stunfallspr = spr_kentukykenny_stun;
walkspr = spr_kentukykenny_walk;
stunspr = spr_kentukykenny_stun;
grabbedspr = spr_kentukykenny_stun;
scaredspr = spr_kentukykenny_scared;
image_xscale = -1;
flash = false;
slapped = false;
birdcreated = false;
boundbox = false;
spr_dead = spr_kentukykenny_dead;
important = false;
heavy = false;
depth = 0;
paletteselect = 1;
spr_palette = spr_kentukykenny_palette;
usepalette = true;
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
scr_initenemy();
turner = true;
grav = 0;
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
hp = 2;
hitboxcreate = false;
grounded = false;
idlespr = spr_kentukybomber_move;
stunfallspr = spr_kentukybomber_stun;
walkspr = spr_kentukybomber_move;
grabbedspr = spr_kentukybomber_stun;
scaredspr = spr_kentukybomber_scared;
image_xscale = -1;
flash = false;
slapped = false;
birdcreated = false;
boundbox = false;
spr_dead = spr_kentukybomber_dead;
important = false;
heavy = false;
depth = 0;
grabbedby = 0;
stuntouchbuffer = 0;
laserbuffer = 100;
shoot = false;
turntimer = 0;
turnstart = false;
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
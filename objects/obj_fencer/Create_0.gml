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
hp = 3;
hitboxcreate = false;
grounded = true;
idlespr = spr_fencer;
stunfallspr = spr_fencer_stun;
walkspr = spr_fencer;
grabbedspr = spr_fencer_stun;
scaredspr = spr_fencer_scared;
flash = false;
slapped = false;
birdcreated = false;
boundbox = false;
spr_dead = spr_fencer_dead;
important = false;
heavy = false;
depth = 0;
charging = false;
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
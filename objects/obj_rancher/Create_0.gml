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
bombreset = 0;
hp = 2;
grounded = true;
idlespr = spr_ranch_idle;
stunfallspr = spr_ranch_stun;
walkspr = spr_ranch_idle;
stunspr = spr_ranch_stun;
grabbedspr = spr_ranch_stun;
scaredspr = spr_ranch_scared;
sprite_index = spr_ranch_idle;
flash = false;
slapped = false;
birdcreated = false;
boundbox = false;
spr_dead = spr_ranch_dead;
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
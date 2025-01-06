scr_initenemy();
snd = fmod_event_create_instance("event:/sfx/enemies/demoncharge");
snd_count = 0;
underground = true;
hitboxID = -4;
idle = true;
grav = 0.5;
hsp = 0;
vsp = 0;
movespeed = 7;
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
landspr = spr_slimebounce;
idlespr = spr_golfdemon_idle;
fallspr = spr_golfdemon_dead;
stunfallspr = spr_golfdemon_stun;
walkspr = spr_golfdemon_walk;
turnspr = spr_golfdemon_walk;
recoveryspr = spr_golfdemon_walk;
grabbedspr = spr_golfdemon_dead;
scaredspr = spr_golfdemon_dead;
spr_palette = spr_minijohn_palette;
image_xscale = -1;
hp = 4;
slapped = false;
grounded = true;
birdcreated = false;
boundbox = false;
spr_dead = spr_golfdemon_dead;
important = false;
heavy = false;
depth = 0;
paletteselect = 0;
grabbedby = 0;
momentum = 5;
hitboxcreate = false;
image_speed = 0.35;
steppy = 0;
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
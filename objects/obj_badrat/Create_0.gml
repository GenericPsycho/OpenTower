scr_initenemy();
cooldown = 50;
hitboxID = -4;
possess_movespeed = 0;
bumpcooldown = 0;
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
landspr = spr_badrat_stun;
idlespr = spr_badrat_walk;
fallspr = spr_badrat_stun;
stunfallspr = spr_badrat_stun;
walkspr = spr_badrat_walk;
turnspr = spr_badrat_walk;
recoveryspr = spr_badrat_walk;
grabbedspr = spr_badrat_stun;
scaredspr = spr_badrat_scared;
image_xscale = -1;
hp = 1;
slapped = false;
grounded = true;
birdcreated = false;
boundbox = false;
spr_dead = spr_badrat_dead;
important = false;
heavy = false;
depth = 0;
paletteselect = 0;
spr_palette = palette_cheeseslime;
sprite_index = walkspr;
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
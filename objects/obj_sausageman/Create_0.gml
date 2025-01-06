scr_initenemy();
is_controllable = true;
possess_movespeed = 0;
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
landspr = spr_sausageman_walk;
idlespr = spr_sausageman_walk;
fallspr = spr_sausageman_walk;
stunfallspr = spr_sausageman_stun;
walkspr = spr_sausageman_walk;
turnspr = spr_sausageman_walk;
recoveryspr = spr_sausageman_walk;
grabbedspr = spr_sausageman_stun;
scaredspr = spr_sausageman_scared;
ragespr = spr_sausageman_scared;
image_xscale = -1;
hp = 1;
slapped = false;
grounded = true;
birdcreated = false;
boundbox = false;
spr_dead = spr_sausageman_shot;
important = false;
heavy = false;
depth = 0;
paletteselect = 0;
spr_palette = palette_cheeseslime;
sprite_index = spr_sausageman_walk;
grabbedby = 0;
stuntouchbuffer = 0;
scaredbuffer = 0;
whoopass = false;
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
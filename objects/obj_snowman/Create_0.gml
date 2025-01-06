scr_initenemy();
grav = 0.5;
hsp = 0;
vsp = 0;
movespeed = 6;
state = states.charge;
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
landspr = spr_newpizzice_walk;
idlespr = spr_newpizzice_walk;
fallspr = spr_newpizzice_walk;
stunfallspr = spr_newpizzice_stun;
walkspr = spr_newpizzice_walk;
turnspr = spr_newpizzice_walk;
recoveryspr = spr_newpizzice_walk;
grabbedspr = spr_newpizzice_stun;
scaredspr = spr_newpizzice_stun;
hp = 2;
slapped = false;
grounded = true;
birdcreated = false;
boundbox = false;
hitboxcreate = false;
spr_dead = spr_newpizzice_stun;
important = false;
depth = 0;
heavy = false;
mask_index = spr_player_mask;
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
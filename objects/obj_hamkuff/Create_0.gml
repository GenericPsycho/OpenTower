scr_initenemy();
is_controllable = true;
possess_movespeed = 0;
attract_player = false;
shakestun = false;
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
landspr = spr_hamkuff_idle;
idlespr = spr_hamkuff_idle;
fallspr = spr_hamkuff_stun;
stunfallspr = spr_hamkuff_stun;
walkspr = spr_hamkuff_idle;
turnspr = spr_hamkuff_idle;
recoveryspr = spr_hamkuff_stun;
grabbedspr = spr_hamkuff_stun;
scaredspr = spr_hamkuff_stun;
hp = 1;
slapped = false;
grounded = true;
birdcreated = false;
boundbox = false;
spr_dead = spr_hamkuff_stun;
important = false;
heavy = false;
depth = 0;
paletteselect = 0;
spr_palette = palette_cheeseslime;
grabbedby = 0;
stuntouchbuffer = 0;
scaredbuffer = 0;
grabsound = false;
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
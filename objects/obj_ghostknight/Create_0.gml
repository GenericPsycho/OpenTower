scr_initenemy();
image_alpha = 0.5;
parryable = false;
is_controllable = true;
shakestun = false;
grav = 0.5;
hsp = 0;
vsp = 0;
state = states.walk;
stunned = 0;
alarm[5] = 1;
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
grounded = true;
idlespr = spr_ghostknight_move;
stunfallspr = spr_ghostknight_stun;
walkspr = spr_ghostknight_move;
grabbedspr = spr_ghostknight_move;
scaredspr = spr_ghostknight_scared;
flash = false;
slapped = false;
birdcreated = false;
boundbox = false;
spr_dead = spr_ghostknight_dead;
important = false;
heavy = false;
depth = 0;
paletteselect = 0;
spr_palette = palette_forknight;
grabbedby = 0;
stuntouchbuffer = 0;
ragedash = 0;
ragecooldown = 0;
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
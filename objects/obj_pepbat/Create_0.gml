scr_initenemy();
grav = 0.5;
hsp = 0;
vsp = 0;
hit = false;
state = states.idle;
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
idlespr = spr_pepbat_idle;
stunfallspr = spr_pepbat_stun;
walkspr = spr_pepbat_move;
stunspr = spr_pepbat_stun;
grabbedspr = spr_pepbat_stun;
scaredspr = spr_pepbat_scared;
flash = false;
slapped = false;
birdcreated = false;
boundbox = false;
spr_dead = spr_pepbat_dead;
important = false;
depth = 0;
grabbedby = 0;
paletteselect = 1;
spr_palette = palette_pepgoblin;
stuntouchbuffer = 0;
sfxcooldown = 0;
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
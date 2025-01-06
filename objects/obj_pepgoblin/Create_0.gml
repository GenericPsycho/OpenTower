scr_initenemy();
grav = 0.5;
kickbuffer = 0;
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
bombreset = 0;
hp = 2;
grounded = true;
idlespr = spr_pepgoblin;
stunfallspr = spr_pepgoblinstun;
walkspr = spr_pepgoblin;
stunspr = spr_pepgoblinstun;
grabbedspr = spr_pepgoblinstun;
scaredspr = spr_pepgoblin_scared;
flash = false;
slapped = false;
birdcreated = false;
boundbox = false;
spr_dead = spr_pepgoblin_dead;
important = false;
depth = 0;
grabbedby = 0;
paletteselect = 1;
spr_palette = palette_pepgoblin;
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
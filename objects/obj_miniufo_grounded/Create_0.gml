scr_initenemy();
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
landspr = spr_ufogrounded_land;
idlespr = spr_ufogrounded_walk;
fallspr = spr_ufogrounded_fall;
stunfallspr = spr_ufogrounded_stun;
walkspr = spr_ufogrounded_walk;
turnspr = spr_slimeturn;
recoveryspr = spr_ufogrounded_walk;
grabbedspr = spr_ufogrounded_stun;
scaredspr = spr_ufogrounded_scared;
image_xscale = -1;
hp = 1;
slapped = false;
grounded = true;
birdcreated = false;
boundbox = false;
spr_dead = spr_ufolive_dead;
important = false;
heavy = false;
depth = 0;
paletteselect = 0;
spr_palette = palette_cheeseslime;
sprite_index = spr_ufogrounded_walk;
grabbedby = 0;
stuntouchbuffer = 0;
scaredbuffer = 0;
turner = true;
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
scr_initenemy();
slope_buffer = 8;
tired = false;
killprotection = true;
grav = 0.5;
hsp = 0;
vsp = 0;
movespeed = 3;
state = states.walk;
stunned = 0;
alarm[0] = 1500;
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
lasthp = hp;
hitboxcreate = false;
grounded = true;
idlespr = spr_tank_walk;
stunfallspr = spr_tank_stun;
walkspr = spr_tank_walk;
grabbedspr = spr_tank_stun;
scaredspr = spr_tank_stun;
flash = false;
slapped = false;
birdcreated = false;
boundbox = false;
spr_dead = spr_tank_dead;
important = false;
heavy = false;
depth = 0;
charging = false;
grabbedby = 0;
stuntouchbuffer = 0;
content = obj_cheeseslime;
spr_content_dead = spr_slimedead;
spawnenemyID = obj_null;
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
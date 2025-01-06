scr_initenemy();
cooldown = 0;
hitboxID = -4;
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
landspr = spr_player_land;
idlespr = spr_player_idle;
fallspr = spr_player_fall;
stunfallspr = spr_pepclone_stun;
walkspr = spr_player_move;
turnspr = spr_player_move;
recoveryspr = spr_player_land;
grabbedspr = spr_pepclone_stun;
scaredspr = spr_player_hurt;
image_xscale = -1;
hp = 1;
slapped = false;
grounded = true;
birdcreated = false;
boundbox = false;
spr_dead = spr_pepclone_death;
important = false;
heavy = false;
depth = 0;
paletteselect = 0;
spr_palette = palette_cheeseslime;
grabbedby = 0;
stuntouchbuffer = 0;
scaredbuffer = 0;
snd = fmod_event_create_instance("event:/sfx/enemies/cloneattack");

if obj_player1.character == "E"
{
	landspr = spr_playerE_land;
	idlespr = spr_playerE_idle;
	fallspr = spr_playerE_fall;
	stunfallspr = spr_pluclone_stun;
	walkspr = spr_playerE_move;
	turnspr = spr_playerE_move;
	recoveryspr = spr_playerE_land;
	grabbedspr = spr_pluclone_stun;
	scaredspr = spr_playerE_hurt;
	spr_dead = spr_pluclone_death;
	sprite_index = idlespr
}

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
	sprite_index = idlespr
}
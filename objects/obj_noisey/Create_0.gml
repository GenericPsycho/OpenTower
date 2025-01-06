scr_initenemy();
bounce = false;
important = true;
grav = 0.5;
hsp = 0;
vsp = 0;
x_to = x;
y_to = y;
dir = 0;
float_hsp = 0;
float_vsp = 0;
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
hp = 1;
hitboxcreate = false;
grounded = true;
idlespr = spr_noisey_walk;
stunfallspr = spr_noisey_stun;
walkspr = spr_noisey_walk;
grabbedspr = spr_noisey_grabbed;
scaredspr = spr_noisey_scared;
flash = false;
slapped = false;
birdcreated = false;
boundbox = false;
spr_dead = spr_noisey_dead;
important = false;
heavy = false;
depth = 0;
paletteselect = 0;
spr_palette = palette_forknight;
grabbedby = 0;
stuntouchbuffer = 0;
ragedash = 0;
ragecooldown = 0;
if obj_player1.character == "E"
{
	idlespr = spr_wynaut_walk;
	stunfallspr = spr_wynaut_stun;
	walkspr = spr_wynaut_walk;
	grabbedspr = spr_wynaut_grabbed;
	scaredspr = spr_wynaut_scared;
	spr_dead = spr_wynaut_dead;
}
if ((!obj_player1.ispeppino) && !global.doisemode)
{
	spr_palette = spr_noiseboss_palette;
	usepalette = true;
	paletteselect = 1;
}

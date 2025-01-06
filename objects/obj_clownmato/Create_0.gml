scr_initenemy();
stompable = false;
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
landspr = spr_clownmato_fall;
idlespr = spr_clownmato_fall;
fallspr = spr_clownmato_fall;
stunfallspr = spr_clownmato_stun;
walkspr = spr_clownmato_fall;
turnspr = spr_clownmato_fall;
recoveryspr = spr_clownmato_fall;
grabbedspr = spr_clownmato_stun;
scaredspr = spr_clownmato_fall;
spr_dead = spr_clownmato_dead;
balloontimer = 100;
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

event_inherited();
attackmaxspeed = 6;
idle = true;
disx = 150;
landspr = spr_farmer2_idle;
idlespr = spr_farmer2_throwstart;
fallspr = spr_farmer2_idle;
stunfallspr = spr_farmer2_stun;
walkspr = spr_farmer2_walk;
turnspr = spr_farmer2_idle;
recoveryspr = spr_farmer2_idle;
grabbedspr = spr_farmer2_idle;
scaredspr = spr_farmer2_scared;
ragespr = spr_farmer2_attack;
spr_dead = spr_farmer2_dead;
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
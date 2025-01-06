event_inherited();
idle = true;
disx = 150;
landspr = spr_peasanto_idle;
idlespr = spr_peasanto_throwstart;
fallspr = spr_peasanto_idle;
stunfallspr = spr_peasanto_stun;
walkspr = spr_peasanto_walk;
turnspr = spr_peasanto_idle;
recoveryspr = spr_peasanto_stun;
grabbedspr = spr_peasanto_stun;
scaredspr = spr_peasanto_scared;
ragespr = spr_peasanto_flameattack;
spr_dead = spr_peasanto_dead;
sprite_index = walkspr;
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
	sprite_index = idlespr;
}
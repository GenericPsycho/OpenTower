event_inherited();
walkspr = global.extras_sendoff ? spr_miniwoonmove : spr_slimemove;
idlespr = global.extras_sendoff ? spr_miniwoonidle : spr_slimeidle;
spr_dead = global.extras_sendoff ? spr_miniwoondead : spr_slimedead;
image_speed = 0.35;
use_palette = true;
spr_palette = palette_cheeseslime;
paletteselect = 1;
if global.extras_anchovies
{
	sprite_index = spr_anchobounce
	idlespr = spr_ancho;
	walkspr = spr_ancho_charge;
	spr_dead = spr_anchodead;
	spr_palette = palette_anchovie;
}

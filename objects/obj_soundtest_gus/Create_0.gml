image_speed = 0.35;
depth = 50;
idlespr = spr_lonegustavo_idle;
dancespr = spr_gusdance;
palinfo = get_pep_palette_info();
if obj_player1.ispeppino && obj_player1.character == "E"
{
	idlespr = spr_lonepika_idle;
	dancespr = spr_pikadance;
}
if (!obj_player1.ispeppino || global.swapmode)
{
	idlespr = spr_noisette_idle;
	dancespr = spr_noisettedance;
	palinfo = get_noise_palette_info()
	sprite_index = idlespr;
}

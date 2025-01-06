event_inherited();
walkspr = spr_stick_towercollapse_walk;
idlespr = spr_stick_towercollapse_idle;
if obj_player1.character == "E"
{
	walkspr = spr_gholdengo_towercollapse_walk;
	idlespr = spr_gholdengo_towercollapse_idle;
	sprite_index = idlespr;
}
image_speed = 0.35;

if (!obj_player1.ispeppino || global.swapmode)
{
	walkspr = spr_noisey_ctop_walk;
	idlespr = spr_noisey_ctop_idle;
	sprite_index = idlespr;
	use_palette = true;
	var _info = get_noise_palette_info();
	paletteselect = _info.paletteselect;
	spr_palette = _info.spr_palette;
	palettetexture = _info.patterntexture;
}

if (global.leveltosave == "forest" || global.leveltosave == "street")
	stick = isnoisette ? 2 : 1;
else if (irandom(100) <= 15)
	stick = isnoisette ? 2 : 1;
if obj_player1.ispeppino
{
	var r = string_letters(room_get_name(room));
	if ((sprite_index != spr_gustavo_exitsign && sprite_index != spr_pika_exitsign) || r == "saloon" || room == space_11b || r == "freezer" || r == "chateau")
		stick = false;
}
if stick != 0
	ystart -= 6;
if (!obj_player1.ispeppino || global.swapmode)
{
	sprite_index = spr_noiseyexit_fall;
	var _palinfo = get_noise_palette_info();
	paletteselect = _palinfo.paletteselect;
	spr_palette = _palinfo.spr_palette;
	patterntexture = _palinfo.patterntexture;
	if stick == 2
		sprite_index = spr_noisette_fall;
}

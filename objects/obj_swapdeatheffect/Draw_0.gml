shader_set(global.Pal_Shader);
if !ispeppino
	spr_palette = (global.option_datoggle ? spr_peppalette : spr_peppaletteOG);
else
{
	spr_palette = global.option_datoggle ? spr_noisepalette : spr_noisepaletteOG;
	if (room == boss_pizzaface && instance_exists(obj_pizzaface_thunderdark))
		spr_palette = global.option_datoggle ? spr_noisepalette_rage : spr_noisepalette_rageOG;
}
pal_swap_set(spr_palette, paletteselect, false);
pattern_set(global.Base_Pattern_Color, sprite_index, image_index, image_xscale, image_yscale, patterntexture);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
pattern_reset();
shader_reset();

shader_set(global.Pal_Shader);
var palinfo = get_pep_palette_info();
pattern_set(global.Base_Pattern_Color, sprite_index, image_index, image_xscale, image_yscale, palinfo.patterntexture);
var pal = palinfo.paletteselect;
pal_swap_set(obj_player1.character == "E" ? spr_plupalette : (global.option_datoggle ? spr_peppalette : spr_peppaletteOG), pal, false);
draw_self();
if clone
{
	pal_swap_set(obj_player1.character == "E" ? spr_plupalette : (global.option_datoggle ? spr_peppalette : spr_peppaletteOG), 13, false);
	draw_self();
}
pattern_reset();
shader_reset();

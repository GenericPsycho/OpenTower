shader_set(global.Pal_Shader);
var _palinfo = get_pep_palette_info();
pattern_set(global.Base_Pattern_Color, sprite_index, image_index, image_xscale, image_yscale, _palinfo.patterntexture);
pal_swap_set(global.option_datoggle ? spr_ratmountpalette : spr_ratmountpaletteOG, _palinfo.paletteselect, false);
if obj_player1.character == "E"
	pal_swap_set(spr_ratpikapalette, _palinfo.paletteselect, false);
draw_self();
pattern_reset();
shader_reset();

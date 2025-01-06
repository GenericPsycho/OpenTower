shader_set(global.Pal_Shader);
var _palinfo = palinfo;
pattern_set(global.Base_Pattern_Color, sprite_index, image_index, image_xscale, image_yscale, _palinfo.patterntexture);
pal_swap_set(global.option_datoggle ? spr_ratmountpalette : spr_ratmountpaletteOG, _palinfo.paletteselect, false);
if obj_player1.character == "E"
	pal_swap_set(spr_ratpikapalette, _palinfo.paletteselect, false);
if !obj_player1.ispeppino || global.swapmode
	pal_swap_set(global.option_datoggle ? spr_noisepalette : spr_noisepaletteOG, _palinfo.paletteselect, false);
draw_self();
pattern_reset();
shader_reset();

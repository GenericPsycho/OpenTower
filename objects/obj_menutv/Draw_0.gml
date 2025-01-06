var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
if (sprite_index == spr_menutv1_confirmN || sprite_index == spr_menutv1_selectedN || sprite_index == spr_menutv2_confirmN || sprite_index == spr_menutv2_selectedN || sprite_index == spr_menutv3_confirmN || sprite_index == spr_menutv3_selectedN || sprite_index == spr_menutv1_confirmS || sprite_index == spr_menutv1_selectedS || sprite_index == spr_menutv2_confirmS || sprite_index == spr_menutv2_selectedS || sprite_index == spr_menutv3_confirmS || sprite_index == spr_menutv3_selectedS)
{
    shader_set(global.Pal_Shader);
	var game = global.gameN[obj_mainmenu.currentselect];
	var pal = game.palette;
	var tex = game.palettetexture;
	pattern_set(global.Base_Pattern_Color, sprite_index, image_index, image_xscale, image_yscale, tex);
	pal_swap_set(global.option_datoggle ? spr_noisepalette : spr_noisepaletteOG, pal, false);
	draw_self();
	pattern_reset();
	shader_reset();
	if (global.gameN[obj_mainmenu.currentselect].palette == "17.000000" && global.option_lang == "en")
        obj_mainmenu.biobondscream = obj_mainmenu.saveselectD
    else
        obj_mainmenu.biobondscream = obj_mainmenu.saveselectN
}
// MOD
else if (sprite_index == spr_menutv1_confirmE || sprite_index == spr_menutv1_selectedE || sprite_index == spr_menutv2_confirmE || sprite_index == spr_menutv2_selectedE || sprite_index == spr_menutv3_confirmE || sprite_index == spr_menutv3_selectedE)
{
    shader_set(global.Pal_Shader);
	var game = global.gameE[obj_mainmenu.currentselect];
	var pal = game.palette;
	var tex = game.palettetexture;
	pattern_set(global.Base_Pattern_Color, sprite_index, image_index, image_xscale, image_yscale, tex);
	pal_swap_set(spr_plupalette, pal, false);
	draw_self();
	pattern_reset();
	shader_reset();
}

else
{
	var palselect = 0
	if obj_mainmenu.shownoise && !obj_mainmenu.showswap
	{
		palselect = 1
        if (global.option_lang == "en" && obj_mainmenu.currentselect >= 0)
		{
			if ((sprite_index == spr_menutv1_idle || sprite_index == spr_menutv1_trans) && global.gameN[0].palette == "17.000000")
			|| ((sprite_index == spr_menutv2_idle || sprite_index == spr_menutv2_trans) && global.gameN[1].palette == "17.000000")
			|| ((sprite_index == spr_menutv3_idle || sprite_index == spr_menutv3_trans) && global.gameN[2].palette == "17.000000")
				palselect = 3
			else if global.option_datoggle
			{
				if ((sprite_index == spr_menutv1_idle || sprite_index == spr_menutv1_trans) && global.gameN[0].palette == "7.000000")
				|| ((sprite_index == spr_menutv2_idle || sprite_index == spr_menutv2_trans) && global.gameN[1].palette == "7.000000")
				|| ((sprite_index == spr_menutv3_idle || sprite_index == spr_menutv3_trans) && global.gameN[2].palette == "7.000000")
					palselect = 6
				else if ((sprite_index == spr_menutv1_idle || sprite_index == spr_menutv1_trans) && global.gameN[0].palette == "8.000000")
				|| ((sprite_index == spr_menutv2_idle || sprite_index == spr_menutv2_trans) && global.gameN[1].palette == "8.000000")
				|| ((sprite_index == spr_menutv3_idle || sprite_index == spr_menutv3_trans) && global.gameN[2].palette == "8.000000")
					palselect = 7
				else if ((sprite_index == spr_menutv1_idle || sprite_index == spr_menutv1_trans) && global.gameN[0].palette == "9.000000")
				|| ((sprite_index == spr_menutv2_idle || sprite_index == spr_menutv2_trans) && global.gameN[1].palette == "9.000000")
				|| ((sprite_index == spr_menutv3_idle || sprite_index == spr_menutv3_trans) && global.gameN[2].palette == "9.000000")
					palselect = 8
				else if ((sprite_index == spr_menutv1_idle || sprite_index == spr_menutv1_trans) && global.gameN[0].palette == "10.000000")
				|| ((sprite_index == spr_menutv2_idle || sprite_index == spr_menutv2_trans) && global.gameN[1].palette == "10.000000")
				|| ((sprite_index == spr_menutv3_idle || sprite_index == spr_menutv3_trans) && global.gameN[2].palette == "10.000000")
					palselect = 9
				else if ((sprite_index == spr_menutv1_idle || sprite_index == spr_menutv1_trans) && global.gameN[0].palette == "11.000000")
				|| ((sprite_index == spr_menutv2_idle || sprite_index == spr_menutv2_trans) && global.gameN[1].palette == "11.000000")
				|| ((sprite_index == spr_menutv3_idle || sprite_index == spr_menutv3_trans) && global.gameN[2].palette == "11.000000")
					palselect = 10
			}
		}
	}
	else if obj_mainmenu.showswap
		palselect = 2
	else if obj_mainmenu.showeevee
		palselect = 4
    shader_set(global.Pal_Shader);
	pal_swap_set(spr_menutv_palette, palselect, false);
	draw_sprite(sprite_index, image_index, x, y);
	shader_reset();
}

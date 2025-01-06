function get_pep_palette_info()
{
	if global.swapmode
	{
		var pal = 1;
		return 
		{
			spr_palette: obj_player1.character == "E" ? spr_plupalette : (global.option_datoggle ? spr_peppalette : spr_peppaletteOG),
			paletteselect: obj_player1.player_paletteselect[pal],
			patterntexture: obj_player1.player_patterntexture[pal]
		};
	}
	else if obj_savesystem.ispeppino
	{
		return 
		{
			spr_palette: obj_player1.spr_palette,
			paletteselect: obj_player1.paletteselect,
			patterntexture: global.palettetexture
		};
	}
	return 
	{
		spr_palette: obj_player1.character == "E" ? spr_plupalette : (global.option_datoggle ? spr_peppalette : spr_peppaletteOG),
		paletteselect: 1,
		patterntexture: noone
	};
}
function get_noise_palette_info()
{
	if global.swapmode
	{
		var pal = 0;
		return 
		{
			spr_palette: global.option_datoggle ? spr_noisepalette : spr_noisepaletteOG,
			paletteselect: obj_player1.player_paletteselect[pal],
			patterntexture: obj_player1.player_patterntexture[pal]
		};
	}
	else if !obj_savesystem.ispeppino
	{
		return 
		{
			spr_palette: obj_player1.spr_palette,
			paletteselect: obj_player1.paletteselect,
			patterntexture: global.palettetexture
		};
	}
	return 
	{
		spr_palette: global.option_datoggle ? spr_noisepalette : spr_noisepaletteOG,
		paletteselect: 1,
		patterntexture: noone
	};
}
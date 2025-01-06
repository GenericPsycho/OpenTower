with (instance_create(x, y, obj_sausageman_dead))
{
   	sprite_index = spr_titlepep_punch;
	image_speed = 0;
	image_index = irandom(sprite_get_number(sprite_index) - 1);
	if other.currentselect != -1
	{
		var pal = global.game[other.currentselect].palette;
		var tex = global.game[other.currentselect].palettetexture;
		if other.shownoise && other.showswap
		{
			pal = global.gameN[other.currentselect].palette_player2;
			tex = global.gameN[other.currentselect].palettetexture_player2;
		}
		if other.showeevee
		{
			var pal = global.gameE[other.currentselect].palette;
			var tex = global.gameE[other.currentselect].palettetexture;
		}

		use_palette = true;
		spr_palette = (global.option_datoggle ? spr_peppalette : spr_peppaletteOG);
		paletteselect = pal;
		oldpalettetexture = tex;
	}
}
pep_debris = true

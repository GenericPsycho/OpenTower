if obj_player1.ispeppino != ispeppino
{
	ispeppino = obj_player1.ispeppino;
	paletteselect = 0;
	if obj_player1.ispeppino
		palettes = obj_player1.character == "E" ? player_palettes[2] : player_palettes[0];
	else
		palettes = player_palettes[1];
	with obj_player1
	{
		if paletteselect > 2
		{
			for (var i = 0; i < array_length(other.palettes); i++)
			{
				var pal = other.palettes[i][2];
				var info = ispeppino ? get_pep_palette_info() : get_noise_palette_info();
				if (pal == info.paletteselect && (array_length(other.palettes[i]) <= 3 || (array_length(other.palettes[i]) > 3 && other.palettes[i][3] == info.patterntexture)))
				{
					other.paletteselect = i;
					break;
				}
			}
		}
	}
	if global.option_datoggle && obj_player1.character != "E"
		palettetitle = lang_get_value(concat("dresser_", palettes[paletteselect][0], "titleMOD"));
	else
	{
		if palettes[paletteselect][0] == "john" && obj_player1.character == "E"
			palettetitle = lang_get_value(concat("dresser_", palettes[paletteselect][0], "Etitle"));
		else
			palettetitle = lang_get_value(concat("dresser_", palettes[paletteselect][0], "title"));
	}
	palettedesc = lang_get_value_newline(concat("dresser_", palettes[paletteselect][0]));
}
showtext = place_meeting(x, y, obj_player);
if (instance_exists(obj_transfotip))
	showtext = false;
if showtext
	alpha = Approach(alpha, 1, 0.1);
else
	alpha = Approach(alpha, 0, 0.1);

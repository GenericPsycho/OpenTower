if (instance_exists(obj_player1))
{
	if (obj_player1.ispeppino || room == Mainmenu)
	{
		fmod_set_parameter("isnoise", 0, true);
		fmod_set_parameter("iseevee", obj_player1.character == "E" ? 1 : 0, true);
		fmod_set_parameter("ispeppina", obj_player1.character == "R" ? 1 : 0, true);
	}
	else
		fmod_set_parameter("isnoise", 1, true);
	
    if (global.doisemode && global.option_lang == "en")
	{
	    fmod_set_parameter("isdoise", 1, true)
		if !obj_player1.ispeppino
			obj_player.spr_breakdance = spr_playerN_opagangnamstyle
		else if obj_player1.ispeppino && obj_player1.character == "P"
			obj_player.spr_breakdance = spr_player_breakdance
	}
	else
	{
		fmod_set_parameter("isdoise", 0, true)
		if !obj_player1.ispeppino
			obj_player.spr_breakdance = spr_playerN_breakdancing
		else if obj_player1.ispeppino && obj_player1.character == "P"
			obj_player.spr_breakdance = spr_player_breakdance
	}
		
	if fmod_get_parameter("isdoise") != 0 && !global.swapmode && obj_player.state == states.animatronic
		fmod_set_parameter("doiseisdead", 1, true)
	else
		fmod_set_parameter("doiseisdead", 0, true)
	
	if (obj_player1.character == "E" && global.option_lang != "en")
		fmod_set_parameter("blocked", 1, true);
	else
		fmod_set_parameter("blocked", 0, true);

	var peppalinfo = get_pep_palette_info()
	var noisepalinfo = get_noise_palette_info()
	fmod_set_parameter("usingGP", ((peppalinfo.patterntexture >= 150 && peppalinfo.patterntexture <= 159) || (noisepalinfo.patterntexture >= 150 && noisepalinfo.patterntexture <= 159)) ? 1 : 0, true)

	if global.solitude
	{
		fmod_set_parameter("solitude", (noisepalinfo.paletteselect - 6), true);
		switch(room)
		{
			case tower_1:
				fmod_set_parameter("answer", 1, true);
				break;
			case tower_2:
				fmod_set_parameter("answer", 2, true);
				break;
			case tower_3:
				fmod_set_parameter("answer", 3, true);
				break;
			case tower_4:
				fmod_set_parameter("answer", 4, true);
				break;
			case tower_5:
				fmod_set_parameter("answer", 5, true);
				break;
		}
	}
	else
	{
		fmod_set_parameter("solitude", 0, true);
		fmod_set_parameter("faction", 0, true);
	}
}
fmod_set_parameter("swapmode", global.swapmode ? 1 : 0, true);
fmod_set_parameter("lario", global.extras_lario ? 1 : 0, true);
fmod_set_parameter("cum", global.extras_cum ? 1 : 0, true);
fmod_set_parameter("datoggle", global.option_datoggle ? 1 : 0, true);
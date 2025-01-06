if !showswap
{
	global.swapmode = false;
	global.charsavefile = ""
	with obj_player1
	{
		character = "P";
		ispeppino = other.shownoise ? false : true;
		global.doisemode = other.shownoise && (global.gameN[other.currentselect].palette == "17.000000" && global.option_lang == "en") ? true : false
		if !ispeppino
			global.charsavefile = "N"
		// MOD
		if other.showeevee || global.charsavefile == "E"
		{
			character = "E";
			global.charsavefile = "E"
		}
		scr_characterspr();
	}
	scr_start_game(currentselect + 1, shownoise ? false : true);
}
else
{
	var grouparr = ["characterselectgroup"];
	with obj_player
	{
		targetRoom = characterselect;
		targetDoor = "A";
		state = states.titlescreen;
	}
	global.swapmode = true;
	global.currentsavefile = currentselect + 1;
	with (instance_create(0, 0, obj_fadeout))
		group_arr = grouparr;
}


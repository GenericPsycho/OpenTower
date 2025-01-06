text = lang_get_value("clotheshintintro")
ini_open_from_string(obj_savesystem.ini_str)
var lvl = ["entrance", "medieval", "ruin", "dungeon", "badland", "graveyard", "farm", "saloon", "plage", "forest", "space", "minigolf", "street", "sewer", "industrial", "freezer", "chateau", "kidsparty", "war", "exit", "b_pepperman", "b_vigilante", "b_noise", "b_fakepep", "b_pizzaface"];
var map = ds_map_create();
ds_map_set(map, "pp", 6);
ds_map_set(map, "p", 5);
ds_map_set(map, "s", 4);
ds_map_set(map, "a", 3);
ds_map_set(map, "b", 2);
ds_map_set(map, "c", 1);
ds_map_set(map, "d", 0);
for (var i = 0; i < array_length(lvl); i++)
{
	var rank = ini_read_string("Ranks", lvl[i], "d");
	if (ds_map_find_value(map, rank) >= ds_map_find_value(map, "s"))
	{
		global.grannyquest = true
		break;
	}
}
ds_map_destroy(map);
ini_close();

if global.grannyquest
{
	var ptrns = ["nge", "mn", "sg", "si", "cocs", "vv", "stfg", "gp"]
	ini_open_from_string(obj_savesystem.ini_str_options);
	var ps =
	[
		ini_read_real("GrannyQuest", ptrns[0], false),
		ini_read_real("GrannyQuest", ptrns[1], false),
		ini_read_real("GrannyQuest", ptrns[2], false),
		ini_read_real("GrannyQuest", ptrns[3], false),
		ini_read_real("GrannyQuest", ptrns[4], false),
		ini_read_real("GrannyQuest", ptrns[5], false),
		ini_read_real("GrannyQuest", ptrns[6], false),
		ini_read_real("GrannyQuest", ptrns[7], false),
		ini_read_real("GrannyQuest", "completed", false)
	]
	ini_close()
	if ps[0] && !ps[1]
		text = lang_get_value("clotheshint2");
	else if ps[1] && !ps[2]
		text = lang_get_value("clotheshint3");
	else if ps[2] && !ps[3]
		text = lang_get_value(global.triedtocheat != 0 ? "clotheshint4cheat" : "clotheshint4");
	else if ps[3] && !ps[4]
		text = lang_get_value(global.triedtocheat != 0 ? "clotheshint5cheat" : (global.triedtocheat == 1.5 ? "clotheshint4cheat" : "clotheshint5"));
	else if ps[4]&& !ps[5]
		text = lang_get_value(obj_player1.character == "E" ? "clotheshint6E" : "clotheshint6");
	else if ps[5] && !ps[6]
		text = lang_get_value("clotheshint7");
	else if ps[6] && !ps[7]
		text = lang_get_value("clotheshint8");
	else if !ps[8] && !ps[0]
		text = lang_get_value("clotheshint1");
	else
	{
		var ff = irandom(100);
		if ff <= 5
		{
			FF = true
			text = FFtext[irandom_range(0, 33)]
		}			
		else
		{
			var dream = irandom(100) <= 15 ? "Create my own Analog Horror blog! I think I'll call it ANALOGIUM.xyz or something like that..." : "Create my own marketable Febby plush before Chrissy does- wait... I can't do it because I'm a fictional character? FUCK!"
			text = concat(lang_get_value("clotheshintoutro"), dream)
		}
	}
}

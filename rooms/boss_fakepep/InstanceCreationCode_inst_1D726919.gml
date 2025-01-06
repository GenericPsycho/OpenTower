var _first = true;
ini_open_from_string(obj_savesystem.ini_str);
if (ini_read_real("Game", "fakepepportrait", false))
	_first = false;
ini_write_real("Game", "fakepepportrait", true);
obj_savesystem.ini_str = ini_close();

if (_first)
{
	bossspr = spr_vsfakepep2;
	vstitle = spr_vstitle_fakepep2;
	if obj_player1.character == "E"
	{
		bossspr = spr_vsditto2;
		vstitle = spr_vstitle_ditto2;
	}
}
else
{
	bossspr = spr_vsfakepep;
	vstitle = spr_vstitle_fakepep;
	if obj_player1.character == "E"
	{
		bossspr = spr_vsditto;
		vstitle = spr_vstitle_ditto;
	}
}

boss_hp = 10;
boss_hpsprite = obj_player1.character == "E" ? spr_bossfight_dittohp : spr_bossfight_fakepephp;
boss_palette = spr_bossfight_fakepeppalette;
boss_columnmax = 3;
boss_hp_x += 50;

if (!obj_player1.ispeppino || global.swapmode)
{
	bossspr = spr_vsfakepep;
	vstitle = spr_vstitle_fakepep2;
}

boss_func = function()
{
	var eh = 0;
	var p = 0;
	with (obj_fakepepboss)
	{
		eh = elitehit;
		p = phase;
	}
	if (p == 1)
		boss_hp = eh;
	else if (p == 2)
		boss_hp = eh;
	else if (p == 0)
	{
		boss_hp = 0;
		if (room == boss_fakepephallway)
			boss_hp = 1;
	}
};

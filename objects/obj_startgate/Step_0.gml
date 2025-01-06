if !obj_player1.ispeppino && global.extras_betternoise && !global.swapmode
{
	titlecard_sprite = spr_titlecardsN;
	if global.doisemode
		titlecard_sprite = spr_titlecardsD;	
}
else if global.swapmode && global.extras_betternoise
{
	titlecard_sprite = spr_titlecardsS;
	if global.doisemode
		titlecard_sprite = spr_titlecardsSD;	
}
else
	titlecard_sprite = spr_titlecards
if obj_player1.character == "E"
	titlecard_sprite = spr_titlecardsE;
	
if level == "forest"
{
	title_index = global.extras_lario ? 0 : 9
	title_sprite = global.extras_lario ? spr_titlecards_titleLario : spr_titlecards_title
}
else if level == "farm"
{
	if global.swapmode
	{
		title_index = global.extras_betternoise ? 0 : 6
		title_sprite = global.extras_betternoise ? spr_titlecards_titleS : spr_titlecards_title
	}
	else
	{
	    title_index = !obj_player1.ispeppino && global.extras_betternoise ? 0 : 6
		title_sprite = !obj_player1.ispeppino && global.extras_betternoise ? spr_titlecards_titleN : spr_titlecards_title
	}
}
else if level == "golf"
	title_sprite = !obj_player1.ispeppino && global.extras_betternoise ? spr_titlecards_titleN : spr_titlecards_title2

drawing = place_meeting(x, y, obj_player);
image_index = 0;
scr_hub_bg_step();
if (!pizza && (highscore > 0 || (boss && hats > 0)) && bbox_in_camera(view_camera[0], 0) && distance_to_object(obj_player) < 150)
{
	pizza = true;
	if !boss
	{
		if level == "tutorial"
			exit;
		with (instance_create(x, y - SCREEN_HEIGHT, obj_startgate_pizza))
		{
			y_to = other.y - 125;
			highscore = [];
			highscorepos = 0;
			var s = string(other.highscore);
			for (var i = 1; i <= string_length(s); i++)
			{
				var c = string_char_at(s, i);
				array_push(highscore, [c, 0, 0]);
			}
			switch other.rank
			{
				case "p":
					rank_index = other.rankplus == 1 ? 6 : 5;
					sprite_index = spr_gatepizza_5;
					break;
				case "s":
					rank_index = 4;
					sprite_index = spr_gatepizza_5;
					break;
				case "a":
					rank_index = 3;
					sprite_index = spr_gatepizza_4;
					break;
				case "b":
					rank_index = 2;
					sprite_index = spr_gatepizza_3;
					break;
				case "c":
					rank_index = 1;
					sprite_index = spr_gatepizza_2;
					break;
				default:
					rank_index = 0;
					sprite_index = spr_gatepizza_1;
					break;
			}
		}
	}
	else
	{
		with (instance_create(x, y - 125, obj_startgate_hats))
		{
			ini_open_from_string(obj_savesystem.ini_str);
			hats = ini_read_real("Hats", other.level, 0);
			extrahats = ini_read_real("Extrahats", other.level, 0);
			switch other.rank
			{
				case "p":
					rank_index = other.rankplus == 1 ? 6 : 5;
					break;
				case "s":
					rank_index = 4;
					break;
				case "a":
					rank_index = 3;
					break;
				case "b":
					rank_index = 2;
					break;
				case "c":
					rank_index = 1;
					break;
				default:
					rank_index = 0;
					break;
			}
			ini_close();
		}
	}
}
if !drawing
{
	var dis = 250;
	bgalpha = distance_to_object(obj_player) / dis;
	bgalpha -= 0.25;
	if bgalpha > 1
		bgalpha = 1;
	if bgalpha < 0
		bgalpha = 0;
}
else
	bgalpha = Approach(bgalpha, 0, 0.1);

ini_open_from_string(obj_savesystem.ini_str);
lapsrecord = lang_get_value("gatelaprecord");
currentrecord = ini_read_real("Laps", level, 0);
ini_close()
showtext = place_meeting(x, y, obj_player);
if (instance_exists(obj_transfotip))
	showtext = false;
if showtext
	alpha = Approach(alpha, 1, 0.1);
else
	alpha = Approach(alpha, 0, 0.1);
function scr_get_toppin_sprite(argument0, argument1)
{
	var toppin = argument0;
	var status = argument1;
	var picktoppin = global.extras_toppinswap;
	var toppinindex = "";
	var statusindex = "";
	var toppinsprite = ""
	
	switch picktoppin
	{
		case 1:
			toppinindex = concat("toppingal", toppin);
			if status == "rank"
				toppinsprite = "spr_ranktoppingals"
			else if status != "idle"
				toppinsprite = concat("spr_", toppinindex, "_", status);
			else
				toppinsprite = concat("spr_", toppinindex);
			break;
		case 2:
			if toppin == "shroom"
				toppinindex = "cookiepurevanilla";
			else if toppin == "cheese"
				toppinindex = "cookiehollyberry";
			else if toppin == "tomato"
				toppinindex = "cookiedarkcacao";
			else if toppin == "sausage"
				toppinindex = "cookiegoldencheese";
			else if toppin == "pineapple"
				toppinindex = "cookiewhitelily";
			if status == "rank"
				toppinsprite = "spr_rankcookies"
			else if status != "idle"
				toppinsprite = concat("spr_", toppinindex, "_", status);
			else
				toppinsprite = concat("spr_", toppinindex);
			break;
		case 3:
			toppinindex = concat("xmas", toppin, "toppin")
			if status == "rank"
				toppinsprite = "spr_ranktoppins"
			else
			{
				statusindex = status;
				if status == "run"
					statusindex = "walk"
				else if status == "panic"
					statusindex = "idle"
				toppinsprite = concat("spr_", toppinindex, "_", statusindex);
			}
			break;
		case 4:
			if toppin == "shroom"
				toppinindex = "twarrior1";
			else if toppin == "cheese"
				toppinindex = "twarrior2";
			else if toppin == "tomato"
				toppinindex = "twarrior3";
			else if toppin == "sausage"
				toppinindex = "twarrior4";
			else if toppin == "pineapple"
				toppinindex = "twarrior5";
			if status == "rank"
				toppinsprite = "spr_ranktoppins"
			else
			{
				statusindex = status;
				if status == "taunt"
					statusindex = "pose"
				else if status == "panic"
					statusindex = "hurt"
				else if status == "intro"
					statusindex = "attack"
				toppinsprite = concat("spr_", toppinindex, "_", statusindex);
			}
			break;
		default:
			toppinindex = concat("toppin", toppin);
			if status == "rank"
				toppinsprite = "spr_ranktoppins"
			else if status != "idle"
				toppinsprite = concat("spr_", toppinindex, "_", status);
			else
				toppinsprite = concat("spr_", toppinindex);
			break;
	}
		return asset_get_index(toppinsprite)
}
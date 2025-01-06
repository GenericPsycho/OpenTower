x = 32;
start = false;
finish = false;
height = sprite_get_height(sprite_index);
alarm[0] = 150;
image_speed = 0.35;
fmod_event_one_shot("event:/sfx/misc/kashing");
if obj_player1.character == "E"
	sprite_index = spr_gholdengonotification;
if (!obj_player1.ispeppino || global.swapmode)
{
	sprite_index = spr_noisettenotification;
	if global.doisemode
		sprite_index = spr_doisettenotification;
	if global.solitude
	{
		var noisepalinfo = get_noise_palette_info();
		if noisepalinfo.paletteselect != 11
		{
			if room == tower_5
				sprite_index = spr_xavierfinalnotification
			else
				sprite_index = spr_xaviernotification;
		}
		else
		{
			if room == tower_5
				sprite_index = spr_maddenfinalnotification
			else
				sprite_index = spr_maddennotification;
		}
	}
}
y = -height - 50;

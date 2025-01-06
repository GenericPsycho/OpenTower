y = -sprite_height;
down = true;
movespeed = 2;
depth = -100;
if global.lapcount <= 3
{	
	fmod_event_one_shot("event:/sfx/misc/lap2start");
	if global.lapcount == 2
		sprite_index = spr_lap2
	else if global.lapcount == 3
		sprite_index = spr_lapplus
}

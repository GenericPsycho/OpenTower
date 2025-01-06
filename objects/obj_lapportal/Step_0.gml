if ((global.panic || instance_exists(obj_wartimer)) && sprite_index != spr_pizzaportal_outline)
{
	image_alpha = 1;
	if sprite_index == spr_pizzaportal
	{
		playerid = -4;
		with obj_player
		{
			if (other.playerid == noone && place_meeting(x, y, other))
			{
				fmod_event_one_shot_3d("event:/sfx/misc/secretenter", x, y);
				with obj_camera
					lock = true;
				state = states.actor;
				visible = false;
				other.sprite_index = character == "E" ? spr_pizzaportalendE : spr_pizzaportalend;
				if !ispeppino
					other.sprite_index = spr_pizzaportalendN;
				other.image_index = 0;
				other.playerid = id;
				fmod_event_one_shot_3d("event:/sfx/misc/lapenter", x, y);
				if (ds_list_find_index(global.saveroom, other.id) == -1)
				{
					if global.extras_inflap == 0
						ds_list_add(global.saveroom, other.id);
					global.lapcount ++;
					var combodeduction = ((global.extras_inflap == 2 && global.deduction && global.combo != 0) ? (global.combo / 3) : 4)
					if global.fill > 0
					{
						if !other.exittimer
						{
							if global.lapcount >= 3 && global.extras_inflap == 2
								global.fill = (global.fill + global.lapcount) * combodeduction
						}
						else
						{
							if global.lapcount >= 2 && global.extras_inflap != 0
								global.fill = ((global.fill + global.lapcount) * (combodeduction * 2))
						}
						if global.deduction && global.fill >= global.escapetimer
								global.fill = global.escapetimer
						else if !global.deduction && global.fill >= (global.escapetimer / 2)
							global.fill = (global.escapetimer / 2)
					}
					if other.wartimer && global.lapcount >= 3
					{
						fmod_event_one_shot("event:/sfx/ui/wartimerup");
						with obj_wartimer
						{
							var combowar = ((global.deduction && global.combo != 0) ? global.combo : 0)
							var extratime = combowar != 0 ? 200 : 300 + combowar
							{
								for (addseconds += other.seconds; other.minutes > 0; addseconds += extratime)
									other.minutes--;
								alarm[0] = -1;
								alarm[2] = 1;
							}
						}
					}
					global.collect += 3000;
					global.combotime = 60;
					ini_open_from_string(obj_savesystem.ini_str)
					if (global.lapcount > ini_read_real("Laps", global.leveltosave, 0))
						global.laprecord = true;
					else
						global.laprecord = false;
					ini_close()
					with (instance_create(x, y, obj_smallnumber))
						number = string(3000);
				}
			}
		}
	}
	else if (sprite_index == spr_pizzaportalend || sprite_index == spr_pizzaportalendN || sprite_index == spr_pizzaportalendE)
	{
		with playerid
		{
			hsp = 0;
			vsp = 0;
			visible = false;
		}
		if floor(image_index) == image_number - 1
		{
			image_index = image_number - 1;
			image_speed = 0;
			if (!instance_exists(obj_fadeout))
			{
				with obj_player
				{
					targetDoor = "LAP";
					targetRoom = other.targetRoom;
				}
				for (var i = 0; i < ds_list_size(global.escaperoom); i++)
				{
					var b = ds_list_find_value(global.escaperoom, i);
					var q = ds_list_find_index(global.baddieroom, b);
					var t = false;
					if q == -1
					{
						q = ds_list_find_index(global.saveroom, b);
						t = true;
					}
					if q != -1
					{
						if !t
							ds_list_delete(global.baddieroom, q);
						else
							ds_list_delete(global.saveroom, q);
					}
				}
				global.lap = true;
				instance_create(0, 0, obj_fadeout);
				
				with obj_music
				{
					if global.lapcount >= 3 && !other.exittimer
						fmod_event_instance_set_parameter(panicmusicID, "inflap", irandom_range(1, 15), true)
					else if global.lapcount >= 2 && other.exittimer
						fmod_event_instance_set_parameter(escapeID, "inflap", irandom_range(1, 6), true)
				}
			}
		}
	}
}
else
	image_alpha = 0.5;

use_static = true;
static_index = sprite_get_number(spr_tvstatic) - 1;
static_dir = -1;
fmod_event_one_shot("event:/sfx/ui/tvswitchback");
with playerid
{
	if !isgustavo
	{
		var r = string_letters(room_get_name(room))
        if (!instance_exists(obj_peddito))
		{
            state = states.normal
			if r == "freezer" && global.doisemode && !global.swapmode
			{
				fmod_set_parameter("doiseisdead", 1, true)
				global.iced = true;
				sprite_index = spr_doise_deadice;
				state = states.animatronic;
			}
		}
		else
		{
			fmod_set_parameter("doiseisdead", 1, true)
			state = states.animatronic;
            global.killedbypeddito = true;
			global.pedditoiscoming = false;
			obj_camera.lock = false;
			global.combotime = 0;
			instance_destroy(obj_comboend);
            instance_destroy(obj_peddito)
		}
    }
	else
		state = states.ratmount;
	visible = true;
	x = roomstartx;
	y = roomstarty;
	landAnim = false;
	swap_player();
}

with obj_ghostfollow
{
	x = xstart;
	y = ystart;
}

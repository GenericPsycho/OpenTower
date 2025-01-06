switch state
{
    case states.idle:
		if selected
		{
			state = states.transition;
			sprite_index = transspr;
			image_index = 0;
		}
		break;
	
	case states.transition:
		if floor(image_index) == image_number - 1
		{
			if selected
			{
				if (fmod_event_instance_is_playing(staticsnd))
					fmod_event_instance_stop(staticsnd, true);
				state = states.normal;
				sprite_index = selectedspr;
				noisehead = irandom(sprite_get_number(global.solitude ? spr_titlecard_solitude : (global.doisemode ? spr_titlecard_doise : spr_titlecard_noise)) - 1);
				surface_rebuild = true;
				/* OG
				var _started = obj_mainmenu.shownoise ? global.gameN[trigger].started : global.game[trigger].started;
				*/
				// MOD
				var _started = global.game[trigger].started;
				if obj_mainmenu.shownoise || obj_mainmenu.showswap
					_started = global.gameN[trigger].started;
				else if obj_mainmenu.showeevee
					_started = global.gameE[trigger].started;
				
				if !_started
				{
					sprite_index = transspr;
					image_index = sprite_get_number(sprite_index) - 2;
				}
			}
			else
			{
				state = states.idle;
				sprite_index = idlespr;
			}
		}
		break;
	
	case states.normal:
		if (sprite_index == transspr && floor(image_index) == image_number - 1)
			image_index = image_number - 3;
		if !selected
		{
			sprite_index = transspr;
			image_index = 2;
			state = states.transition;
		}
		break;
}
if sprite_index == spr_menutv1_selectedN && obj_mainmenu.showswap
	sprite_index = spr_menutv1_selectedS;
else if sprite_index == spr_menutv2_selectedN && obj_mainmenu.showswap
	sprite_index = spr_menutv2_selectedS;
else if sprite_index == spr_menutv3_selectedN && obj_mainmenu.showswap
	sprite_index = spr_menutv3_selectedS;
else if sprite_index == spr_menutv1_selectedS && obj_mainmenu.shownoise && !obj_mainmenu.showswap
	sprite_index = spr_menutv1_selectedN;
else if sprite_index == spr_menutv2_selectedS && obj_mainmenu.shownoise && !obj_mainmenu.showswap
	sprite_index = spr_menutv2_selectedN;
else if sprite_index == spr_menutv3_selectedS && obj_mainmenu.shownoise && !obj_mainmenu.showswap
	sprite_index = spr_menutv3_selectedN;
if (sprite_index == transspr && !instance_exists(obj_option))
{
    if (!fmod_event_instance_is_playing(staticsnd))
		fmod_event_instance_play(staticsnd);
}
else
    fmod_event_instance_stop(staticsnd, true);
x = (SCREEN_WIDTH / 2) - (480 - xstart);

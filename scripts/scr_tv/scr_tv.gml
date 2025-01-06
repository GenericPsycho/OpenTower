function tv_set_idle()
{
	with obj_tv
	{
		state = states.normal
		sprite_index = spr_tv_idle;
		if obj_player1.character == "E"
			sprite_index = spr_tv_idleE;
	}
}
function tv_reset()
{
	with obj_tv
	{
		state = states.normal;
		sprite_index = spr_tv_idle;
		if obj_player1.character == "E"
			sprite_index = spr_tv_idleE;
		ds_list_clear(tvprompts_list);
	}
}
function tv_create_prompt(text, type, sprite, textspeed)
{
	return [text, type, sprite, textspeed];
}
function tv_push_prompt(text, type, sprite, textspeed)
{
	with obj_tv
	{
		var b = [text, type, sprite, textspeed];
		var play = false;
		switch type
		{
			case tvprompt.normal:
				play = true;
				ds_list_insert(tvprompts_list, 0, b);
				break;
			
			case tvprompt.trigger:
				var placed = false;
				for (var i = 0; i < ds_list_size(tvprompts_list); i++)
				{
					var b2 = ds_list_find_value(tvprompts_list, i);
					if b2[1] == tvprompt.transfo
					{
						if i == 0
							play = true;
						ds_list_insert(tvprompts_list, i, b);
						placed = true;
						break;
					}
				}
				if !placed
					ds_list_add(tvprompts_list, b);
				break;
			
			case tvprompt.transfo:
				ds_list_add(tvprompts_list, b);
				break;
		}
		if play
			state = states.normal;
	}
}
function tv_push_prompt_array(prompt_array)
{
	for (var i = 0; i < array_length(prompt_array); i++)
	{
		with obj_tv
		{
			var b = prompt_array[i];
			tv_push_prompt(b[0], b[1], b[2], b[3]);
		}
	}
}
function tv_push_prompt_once(prompt_array, prompt_entry)
{
	with obj_tv
	{
		if special_prompts == noone
			return false;
		var b = ds_map_find_value(special_prompts, prompt_entry);
		if (is_undefined(b))
			return false;
		if b != true
		{
			tv_push_prompt(prompt_array[0], prompt_array[1], prompt_array[2], prompt_array[3]);
			ds_map_set(special_prompts, prompt_entry, 1);
			ini_open_from_string(obj_savesystem.ini_str);
			ini_write_real("Prompts", prompt_entry, 1);
			obj_savesystem.ini_str = ini_close();
			return true;
		}
		return false;
	}
}
function tv_default_condition()
{
	return place_meeting(x, y, obj_player);
}
function tv_get_palette()
{
	if !instance_exists(obj_player1)
		exit;
	
	var _info = obj_player1.ispeppino ? get_pep_palette_info() : get_noise_palette_info();
	spr_palette = _info.spr_palette;
	if obj_player1.isgustavo && obj_player1.ispeppino
	{
		spr_palette = global.option_datoggle ? spr_ratmountpalette : spr_ratmountpaletteOG;
		if obj_player1.character == "E"
			spr_palette = spr_ratpikapalette;
	}
	paletteselect = _info.paletteselect;
	patterntexture = _info.patterntexture;
}
function tv_do_expression(sprite, reset_pal = false, force_pep = false)
{
	with obj_tv
	{
		if expressionsprite != sprite && bubblespr == noone
		{
			state = states.tv_whitenoise;
			expressionsprite = sprite;
			switch expressionsprite
			{
				case spr_tv_exprhurt:
				case spr_tv_exprhurtN:
				case spr_tv_hurtG:
				case spr_tv_exprhurtE:
				case spr_tv_hurtK:
					expressionbuffer = 60
					break
				case spr_tv_exprhurt1:
				case spr_tv_exprhurt2:
				case spr_tv_exprhurt3:
				case spr_tv_exprhurt4:
				case spr_tv_exprhurt5:
				case spr_tv_exprhurt6:
				case spr_tv_exprhurt7:
				case spr_tv_exprhurt8:
				case spr_tv_exprhurt9:
				case spr_tv_exprhurt10:
				case spr_tv_exprhurtN1:
				case spr_tv_exprhurtN2:
				case spr_tv_exprhurtN3:
				case spr_tv_exprhurtN4:
				case spr_tv_exprhurtN5:
				case spr_tv_exprhurtN6:
				case spr_tv_exprhurtN7:
				case spr_tv_exprhurtN8:
				case spr_tv_exprhurtN9:
				case spr_tv_exprhurtN10:
				case spr_tv_exprhurt1E:
				case spr_tv_exprhurt2E:
				case spr_tv_exprhurt3E:
					expressionbuffer = 100
					break
				case spr_tv_exprcollect:
				case spr_tv_exprcollectE:
					expressionbuffer = 150
					if obj_player.isgustavo
					{
						expressionsprite = obj_player1.character == "E" ? spr_tv_happyK : spr_tv_happyG
						if (irandom(100) <= 50)
							fmod_event_one_shot_3d("event:/sfx/voice/brickok", obj_player1.x, obj_player1.y)
					}
					if (irandom(100) <= 50)
						scr_fmod_soundeffect(obj_player1.snd_voiceok, obj_player1.x, obj_player1.y)
					break;
			}
			if (!force_pep && instance_exists(obj_player1) && !obj_player1.ispeppino)
			{
				var n = asset_get_index(sprite_get_name(sprite) + "N");
				if n > -1
					expressionsprite = n;
			}
			if reset_pal
				reset_palette = true;
			else
				reset_palette = false;
		}
	}
}
function scr_tv_get_transfo_sprite()
{
		var _state = obj_player1.state;
		if (_state == states.backbreaker || _state == states.chainsaw)
			_state = obj_player1.tauntstoredstate;
		var _spr = noone;
		if (instance_exists(obj_bucketfollower))
			_spr = global.extras_cum ? spr_tv_cumbucket : spr_tv_bucket;
		switch _state
		{
			case states.knightpep:
			case states.knightpepattack:
			case states.knightpepbump:
			case states.knightpepslopes:
				_spr = spr_tv_knight;
				if obj_player1.character == "E"
					_spr = spr_tv_knightE;
				break;
			case states.bombpep:
			case states.bombgrab:
				_spr = spr_tv_bombpep;
				if obj_player1.character == "E"
					_spr = spr_tv_bombpepE;
				break;
			case states.fireass:
				_spr = spr_tv_fireass;
				if obj_player1.character == "E"
					_spr = spr_tv_fireassE;
				if (obj_player1.sprite_index == obj_player1.spr_scaredjump1 || obj_player1.sprite_index == obj_player1.spr_scaredjump2)
				{
					_spr = spr_tv_scaredjump;
					if obj_player1.character == "E"
						_spr = spr_tv_scaredjumpE;
				}
				break;
			case states.tumble:
				if (obj_player1.sprite_index == obj_player1.spr_tumble || obj_player1.sprite_index == obj_player1.spr_tumblestart || obj_player1.sprite_index == obj_player1.spr_tumbleend)
				{
					_spr = spr_tv_tumble;
					if obj_player1.character == "E"
						_spr = spr_tv_tumbleE;
				}
				else if obj_player1.shotgunAnim
				{
					_spr = spr_tv_shotgun;
					if obj_player1.character == "E"
						_spr = spr_tv_shotgunE;
				}
				break;
			case states.firemouth:
				_spr = spr_tv_firemouth;
				if obj_player1.character == "E"
					_spr = spr_tv_firemouthE;
				break;
			case states.ghost:
			case states.ghostpossess:
				_spr = spr_tv_ghost;
				if obj_player1.character == "E"
					_spr = spr_tv_ghostE;
				break;
			case states.stunned:
				if obj_player1.sprite_index == obj_player1.spr_squished
					_spr = spr_tv_squished;
				break;
			case states.normal:
			case states.jump:
			case states.handstandjump:
			case states.crouch:
			case states.ladder:
			case states.mach3:
			case states.machslide:
			case states.bump:
				with obj_player1
				{
					if shotgunAnim
					{
						_spr = spr_tv_shotgun;
						if obj_player1.character == "E"
							_spr = spr_tv_shotgunE;
					}
					else if global.mort
					{
						_spr = spr_tv_mort;
						if obj_player1.character == "E"
							_spr = spr_tv_mortE;
					}
				}
				break;
			case states.freefallprep:
			case states.freefall:
			case states.freefallland:
				if obj_player1.shotgunAnim
				{
					_spr = spr_tv_shotgun;
					if obj_player1.character == "E"
						_spr = spr_tv_shotgunE;
				}
				break;
			case states.pistol:
				if global.mort
				{
					_spr = spr_tv_mort;
					if obj_player1.character == "E"
						_spr = spr_tv_mortE;
				}
				break;
			case states.shotgun:
			case states.shotgunshoot:
			case states.shotgunfreefall:
			case states.shotgunjump:
			case states.shotgundash:
			case states.shotguncrouch:
			case states.shotguncrouchjump:
				_spr = spr_tv_shotgun;
				if obj_player1.character == "E"
					_spr = spr_tv_shotgunE;
				break;
			case states.barrel:
			case states.barreljump:
			case states.barrelslide:
			case states.barrelclimbwall:
				_spr = spr_tv_barrel;
				if obj_player1.character == "E"
					_spr = spr_tv_barrelE;
				break;
			case states.golf:
				_spr = spr_tv_golf;
				if obj_player1.character == "E"
					_spr = spr_tv_golfE;
				break;
			case states.rocket:
			case states.rocketslide:
				_spr = spr_tv_rocket;
				if obj_player1.character == "E"
					_spr = spr_tv_rocketE;
				break;
			case states.cheeseball:
				_spr = spr_tv_cheeseball;
				if obj_player1.character == "E"
					_spr = spr_tv_cheeseballE;
				break;
			case states.cheesepep:
			case states.cheesepepjump:
			case states.cheesepepstick:
			case states.cheesepepstickside:
			case states.cheesepepstickup:
				_spr = spr_tv_cheesepep;
				if obj_player1.character == "E"
					_spr = spr_tv_cheesepepE;
				break;
			case states.boxxedpep:
			case states.boxxedpepjump:
			case states.boxxedpepspin:
				_spr = spr_tv_boxxedpep;
				if obj_player1.character == "E"
					_spr = spr_tv_boxxedpepE;
				break;
			case states.rideweenie:
				_spr = spr_tv_weenie;
				if obj_player1.character == "E"
					_spr = spr_tv_weenieE;
				break;
			case states.mort:
			case states.mortattack:
			case states.morthook:
			case states.mortjump:
				_spr = spr_tv_mort;
				if obj_player1.character == "E"
					_spr = spr_tv_mortE;
				break;
			case states.mach2:
			case states.climbwall:
			case states.machroll:
			case states.grind:
				if obj_player1.skateboarding
					_spr = spr_tv_clown;
				else if obj_player1.shotgunAnim
				{
					_spr = spr_tv_shotgun;
					if obj_player1.character == "E"
						_spr = spr_tv_shotgunE;
				}
				break;
		}
		with obj_player1
		{
			if state == states.actor && sprite_index == spr_tumble
			{
				_spr = spr_tv_tumble;
				if obj_player1.character == "E"
					_spr = spr_tv_tumbleE;
			}
		}
		return _spr;
}

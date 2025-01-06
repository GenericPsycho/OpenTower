if notdrank
{
	with (instance_create(x, y, obj_sausageman_dead))
		sprite_index = spr_pedditodead
	if global.pedditosprite == spr_peddito_madden
	{
		with (instance_create(x, y, obj_sausageman_dead))
			sprite_index = spr_peddito_maddenmask
	}
	global.pedditoiscoming = false;
}

else if pedditoisdead
{
	var spr_dead = global.iced ? spr_pedditodeadfreezer : spr_pedditodead
	if global.iced
	{
		fmod_event_one_shot_3d("event:/sfx/misc/breakice", x, y);
		global.killedbypeddito = true;
	}
	else
		fmod_event_one_shot_3d("event:/modded-sfx/voice/peddito-scream", x, y);
	with (instance_create(x, y, obj_sausageman_dead))
		sprite_index = spr_dead
	if global.pedditosprite == spr_peddito_madden
	{
		with (instance_create(x, y, obj_sausageman_dead))
			sprite_index = spr_peddito_maddenmask
	}
	global.pedditoiscoming = false;
}
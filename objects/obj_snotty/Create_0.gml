depth = 0;
if (is_holiday(holiday.halloween))
{
	instance_destroy();
	with (instance_create(x, y, obj_halloweennpc))
	{
		sprite_index = spr_snottyghost;
		if global.extras_anchovies
			sprite_index = spr_snartyghost
		image_alpha = 0.6;
	}
}
if global.extras_anchovies
	sprite_index = spr_snarty
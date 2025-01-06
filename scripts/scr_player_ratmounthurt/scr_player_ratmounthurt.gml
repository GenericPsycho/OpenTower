function scr_player_ratmounthurt()
{
	if global.killedbypeddito
		exit;
	hsp = -xscale * movespeed;
	landAnim = false;
	jumpAnim = false;
	hurted = true;
	gusdashpadbuffer = 0;
	if (place_meeting(x + sign(hsp), y, obj_solid) && !place_meeting(x, y + sign(hsp), obj_slope))
		movespeed = 0;
	alarm[5] = 2;
	alarm[7] = 80;
	if grounded && vsp > 0
	{
		state = states.ratmount;
		movespeed = 0;
	}
	if brick
	{
		sprite_index = spr_player_ratmounthurt;
		if character == "E"
			sprite_index = spr_playerK_ratmounthurt;
	}
	else
	{
		sprite_index = spr_lonegustavo_hurt;
		if character == "E"
			sprite_index = spr_lonepika_hurt;
	}
	image_speed = 0.35;
}

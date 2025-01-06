function scr_scareenemy()
{
	var player = instance_nearest(x, y, obj_player);
	if state != states.grabbed && state != states.stun && state != states.hit && state != states.secret
	{
		if ((player.x > (x - 400) && player.x < (x + 400)) && (y <= (player.y + 90) && y >= (player.y - 130)) && ((player.xscale > 0 && x >= player.x) || (player.xscale < 0 && x <= player.x)))
		{
			if (sprite_index != scaredspr && state != states.idle && state != states.stun && state != states.staggered && (player.state == states.chainsawbump || player.ratmount_movespeed == 12 || player.state == states.mach3 || player.state == states.rideweenie || player.state == states.rocket || player.state == states.tacklecharge || player.state == states.knightpepslopes || (player.state == states.grab && player.swingdingdash <= 0 && player.sprite_index == player.spr_swingding)))
			{
				if (collision_line(x, y, player.x, player.y, obj_solid, false, true) == noone)
				{
					state = states.idle;
					sprite_index = scaredspr;
					if x != player.x
						image_xscale = -sign(x - player.x);
					scaredbuffer = 100;
					if (irandom(100) <= 5) && global.extras_scream == 0
						fmod_event_one_shot_3d("event:/modded-sfx/voice/sillywillyscreamy", x, y)
					else
					{
						if global.extras_scream == 1
							fmod_event_one_shot_3d("event:/modded-sfx/voice/sillywillyscreamy", x, y)
						else if global.extras_scream == 2
							fmod_event_one_shot_3d("event:/modded-sfx/voice/sillywillyearrape", x, y)
					}
					if vsp < 0
						vsp = 0;
					if grounded
						vsp = -3;
				}
			}
		}
	}
}

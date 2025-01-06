if instance_exists(obj_noiseboss)
{
	if state == 0
	{
		x = Approach(x, obj_noiseboss.x, abs(hsp));
		y = lerp(y, obj_noiseboss.y, 0.08);
		if place_meeting(x, y, obj_noiseboss)
		{
			state++;
			noisex = obj_noiseboss.x - x;
			noisey = obj_noiseboss.y - y;
			vsp = 0;
			with obj_noiseboss
			{
				fmod_event_one_shot("event:/modded-sfx/voice/screamingnoise")
				substate = states.ending;
				sprite_index = spr_playerN_bossintro;
				image_index = 0;
			}
		}
	}
	else
	{
		vsp = Approach(vsp, -11, 0.8);
		x += hsp;
		y += vsp;
		with obj_noiseboss
		{
			x = other.x + other.noisex;
			y = other.y + other.noisey;
		}
		if x > room_width + 1200
		{
			instance_destroy();
			instance_destroy(obj_noiseboss);
			layer_set_visible(layer_get_id("Assets_2"), false);
			var lay1 = layer_get_id("Backgrounds_4");
			var lay2 = layer_get_id("Backgrounds_5");
			var bg1 = layer_background_get_id(lay1);
			var bg2 = layer_background_get_id(lay2);
			layer_background_sprite(bg1, bg_doisebossBG2end);
			layer_background_sprite(bg2, bg_doisebossBG1end);
			layer_background_speed(bg2, 0.35);
			layer_hspeed(lay1, 0);
			layer_vspeed(lay1, 0);
			layer_hspeed(lay2, 0);
			layer_vspeed(lay2, 0);
			instance_destroy(obj_doisecreature);
			if !obj_player1.ispeppino
			{
				with (instance_create(0, 0, obj_pizzahead_whitefade))
					whitefade = 1;
			}
		}
	}
}
if (room != boss_noise)
{
	if obj_player.state == states.door && !global.leavinglevel && sprite_index != spr_null
	{
		instance_create(x, y, obj_genericpoofeffect);
		sprite_index = spr_null
		with (instance_create(x, y, obj_sausageman_dead))
			sprite_index = spr_peppinodead
		if sprite_index == spr_peddito_madden
		{
			with (instance_create(x, y, obj_sausageman_dead))
				sprite_index = spr_peddito_maddenmask
		}
	}
	else if obj_player.state != states.door && sprite_index == spr_null
		sprite_index = global.pedditosprite
		
    if state == 0
    {
        x = Approach(x, obj_player.x, abs(hsp))
        y = lerp(y, obj_player.y, 0.08)
        if place_meeting(x, y, obj_player) && sprite_index != spr_null
        {
			if cankill && obj_player.sprite_index != spr_doise_deadice
			{
				obj_camera.lock = true
				state++
	            noisex = obj_player.x - x
		        noisey = obj_player.y - y
			    vsp = 0
	            with (obj_player)
		        {
			        fmod_event_one_shot_3d("event:/modded-sfx/playerN/doisescream", x, y);
	                state = states.bossintro
		            sprite_index = spr_playerN_scream
					if floor(image_index) == image_number - 1 && sprite_index == spr_playerN_scream
						sprite_index = spr_playerN_screamloop
	                image_index = 0
		            xscale = -1
			    }
	        }
			else if ((cankill && obj_player.sprite_index == spr_doise_deadice) || (!cankill))
			{
				pedditoisdead = true;
				instance_destroy()
			}
		}
    }
    else
    {
        vsp = Approach(vsp, -11, 0.8)
        x += hsp
        y += vsp
        with (obj_player)
        {
            x = other.x + other.noisex
            y = other.y + other.noisey
        }
    }
}
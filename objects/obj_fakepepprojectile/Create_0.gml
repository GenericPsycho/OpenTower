hsp = 0;
vsp = 0;
grav = 0;
hithsp = 0;
hitvsp = 0;
image_speed = 0.35;
depth = -5;
alarm[0] = 1;
if (place_meeting(x, y, obj_solid))
	instance_destroy();
sprite_index = obj_player1.character == "E" ? spr_spitcheese_spikeE : spr_spitcheese_spike

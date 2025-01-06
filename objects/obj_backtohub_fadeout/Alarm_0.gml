if (!instance_exists(obj_player1))
{
	alarm[0] = 1;
	instance_activate_object(obj_player1);
}
else
{
	if reset
	{
		global.levelreset = false;
		scr_playerreset(false);
		with obj_music
			event_perform(ev_other, ev_room_start);
	}
	pos_player = true;
	obj_player1.x = obj_player1.backtohubstartx;
	obj_player1.y = obj_player1.backtohubstarty - (SCREEN_HEIGHT * 2);
	obj_player1.state = states.backtohub;
	if global.doisemode && !global.swapmode && global.killedbypeddito
		obj_player1.sprite_index = spr_doise_deadair
	else if global.doisemode && !global.swapmode && global.iced
		obj_player1.sprite_index = spr_doise_deadice
	else
	{
		obj_player1.sprite_index = obj_player1.spr_slipbanan1;
		obj_player1.image_index = 10;
	}
}

global.levelcomplete = true;
global.noisejetpack = false;
global.pistol = false;
scr_playerreset();
with obj_player
{
	swap_player();
	global.pistol = false;
	global.noisejetpack = false;
	noisepizzapepper = false;
	
	if global.killedbypeddito
	{
		instance_destroy(obj_peddito)
		targetDoor = "HUB";
		targetRoom = backtohubroom;
		room = backtohubroom;
		x = backtohubstartx;
		y = backtohubstarty;
		x = backtohubstartx;
		y = backtohubstarty - (SCREEN_HEIGHT * 2);
		state = states.backtohub;
		sprite_index = global.iced ? spr_doise_deadice : spr_doise_deadair;
	}
	else
	{
		targetDoor = "HUB";
		targetRoom = backtohubroom;
		room = backtohubroom;
		x = backtohubstartx;
		y = backtohubstarty;
		state = states.comingoutdoor;
		sprite_index = spr_walkfront;
	}
	image_index = 0;
	image_blend = c_white;
}
global.exitrank = false;
global.leveltorestart = -4;
global.leveltosave = -4;
global.level_minutes = 0;
global.level_seconds = 0;

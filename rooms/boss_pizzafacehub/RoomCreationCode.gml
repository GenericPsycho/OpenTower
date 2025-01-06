pal_swap_init_system(shd_pal_swapper);
notification_push(notifs.boss_dead, [boss_pizzafacehub]);
gameframe_caption_text = lang_get_value("caption_boss_pizzafacehub");

ini_open_from_string(obj_savesystem.ini_str);
ini_write_real("w5stick", "bosskey", true);
obj_savesystem.ini_str = ini_close();
gamesave_async_save();

if obj_player1.ispeppino && !global.swapmode
{
	if obj_player1.character == "E"
	{
		layer_set_visible("Backgrounds_Ring4", true);
		layer_set_visible("Backgrounds_Ring2", false);
	}
	else
	{
		layer_set_visible("Backgrounds_Ring2", true);
		layer_set_visible("Backgrounds_Ring4", false);
	}
	layer_set_visible("Backgrounds_Ring3", false);
	layer_set_visible("Backgrounds_Ring5", false);
}
else
{
	layer_set_visible("Backgrounds_Ring2", false);
	layer_set_visible("Backgrounds_Ring4", false);
	if ( global.doisemode)
	{
		layer_set_visible("Backgrounds_Ring5", false);
		layer_set_visible("Backgrounds_Ring3", true);
	}
	else
	{
		layer_set_visible("Backgrounds_Ring5", true);
		layer_set_visible("Backgrounds_Ring3", false);
	}
}

with obj_player1
{
	tauntstoredstate = states.normal;
	landAnim = true;
	state = states.animation;
	buffer = 100;
	sprite_index = spr_slipbanan2;
	image_index = sprite_get_number(spr_slipbanan2) - 1;
	image_speed = 0.35;
	if !ispeppino
	{
		sprite_index = spr_playerN_bombend;
		image_index = 0;
	}
}
global.roommessage = "PIZZA TOWER ISLAND";
global.leveltorestart = tower_finalhallway;

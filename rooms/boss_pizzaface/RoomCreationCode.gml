pal_swap_init_system(shd_pal_swapper);
global.roommessage = "PIZZA TOWER ISLAND";
global.leveltorestart = room;
gameframe_caption_text = lang_get_value("caption_boss_pizzaface");
global.level_minutes = 0;
global.level_seconds = 0;

with obj_player
{
	backtohubroom = tower_outside;
	backtohubstartx = 522;
	backtohubstarty = 2328;
}

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
		layer_set_visible("Backgrounds_Ring3", false);
		layer_set_visible("Backgrounds_Ring5", true);
	}
	else
	{
		layer_set_visible("Backgrounds_Ring3", true);
		layer_set_visible("Backgrounds_Ring5", false);
	}
}

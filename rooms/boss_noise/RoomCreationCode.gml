pal_swap_init_system(shd_pal_swapper);
global.roommessage = "PIZZA TOWER ISLAND";
gameframe_caption_text = lang_get_value("caption_boss_noise");
if (((!obj_player1.ispeppino) || global.swapmode) && !global.doisemode)
{
	doisebg_set_layer("Assets_2");
	doisebg_set_layer("Backgrounds_Ring2");
	layer_set_visible("Backgrounds_4", true);
	layer_set_visible("Backgrounds_5", true);
	instance_destroy(obj_micnoise, false);
}
else
{
	doisebg_set_layer("Assets_2");
	doisebg_set_layer("Backgrounds_Ring2");
	if obj_player1.character == "E"
	{
		var backtower = layer_get_id("Backgrounds_1")
		var backbuilding = layer_get_id("Backgrounds_2");
		var backballoon = layer_get_id("Backgrounds_3");
		var backballoonscroll = layer_get_id("Backgrounds_scroll");
		var backrocktower = layer_background_get_id(backtower)
		var backrocket = layer_background_get_id(backbuilding);
		var backmeowth = layer_background_get_id(backballoon);
		var backballmeow = layer_background_get_id(backballoonscroll)
		layer_background_change(backrocktower, bg_wobbuffetbossBG4)
		layer_background_change(backrocket, bg_wobbuffetbossBG2)
		layer_background_change(backmeowth, bg_wobbuffetballooncrash)
		layer_background_change(backballmeow, bg_wobbuffetbossBG3)
	}
}

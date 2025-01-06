pal_swap_init_system(shd_pal_swapper);
global.roommessage = "PIZZA TOWER ISLAND";
gameframe_caption_text = lang_get_value("caption_boss_fakepep");
if obj_player1.character == "E"
{
	var backlayer = layer_get_id("Backgrounds_2");
	var backditto = layer_background_get_id(backlayer);
	layer_background_change(backditto, bg_ditto)
}
			
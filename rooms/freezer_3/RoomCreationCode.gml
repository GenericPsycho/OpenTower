pal_swap_init_system(shd_pal_swapper)
global.roommessage = "PIZZA TOWER ISLAND"
if (global.panic || ((!obj_player1.ispeppino) && (!global.swapmode)) || ((obj_player1.ispeppino) && (obj_player1.character == "E")))
{
	var lay = layer_get_id("Assets_2")
	layer_set_visible(lay, 0)
}

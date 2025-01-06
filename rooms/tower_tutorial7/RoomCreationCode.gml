pal_swap_init_system(shd_pal_swapper);
global.roommessage = "PIZZA TOWER ISLAND";
var lay_id = layer_get_id("Assets_BG1")
var pep1 = layer_sprite_get_id(lay_id, "tutorialpep4")
var pep2 = layer_sprite_get_id(lay_id, "tutorialpep6")
var plu1 = layer_sprite_get_id(lay_id, "tutorialplu4")
var plu2 = layer_sprite_get_id(lay_id, "tutorialplu6")
if obj_player1.character == "E"
{
	layer_sprite_alpha(pep1, 0)
	layer_sprite_alpha(pep2, 0)
	layer_sprite_alpha(plu1, 1)
	layer_sprite_alpha(plu2, 1)
}
else
{
	layer_sprite_alpha(pep1, 1)
	layer_sprite_alpha(pep2, 1)	
	layer_sprite_alpha(plu1, 0)
	layer_sprite_alpha(plu2, 0)
}
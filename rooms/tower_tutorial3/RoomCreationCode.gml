pal_swap_init_system(shd_pal_swapper);
global.roommessage = "PIZZA TOWER ISLAND";
var lay_id = layer_get_id("Assets_BG1")
var pep = layer_sprite_get_id(lay_id, "tutorialpep1")
var plu = layer_sprite_get_id(lay_id, "tutorialplu1")
if obj_player1.character == "E"
{
	layer_sprite_alpha(pep, 0)
	layer_sprite_alpha(plu, 1)
}
else
{
	layer_sprite_alpha(pep, 1)	
	layer_sprite_alpha(plu, 0)
}
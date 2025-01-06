pal_swap_init_system(shd_pal_swapper)
global.roommessage = "PIZZA TOWER ISLAND"
var lay_id = layer_get_id("Assets_1")
var gus = layer_sprite_get_id(lay_id, "graphic_606CD6FF")
var pika = layer_sprite_get_id(lay_id, "graphic_6A2C10AA")
var noise = layer_sprite_get_id(lay_id, "graphic_1D834491")
var doise = layer_sprite_get_id(lay_id, "graphic_6BE70D7C")
if obj_player1.ispeppino
{
	if obj_player1.character == "E"
	{
		layer_sprite_alpha(gus, 0)
		layer_sprite_alpha(pika, 1)
	}
	else
	{
		layer_sprite_alpha(gus, 1)
		layer_sprite_alpha(pika, 0)
	}
	layer_sprite_alpha(noise, 0)
	layer_sprite_alpha(doise, 0)
}
else
{
	layer_sprite_alpha(gus, 0)
	layer_sprite_alpha(pika, 0)
	if ( global.doisemode)
	{
		layer_sprite_alpha(noise, 0)
		layer_sprite_alpha(doise, 1)
	}
	else
	{
		layer_sprite_alpha(noise, 1)
		layer_sprite_alpha(doise, 0)
	}
}

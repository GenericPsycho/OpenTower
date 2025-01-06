pal_swap_init_system(shd_pal_swapper);
if ( global.doisemode)
    global.roommessage = lang_get_value("room_towerdoisette")
else
    global.roommessage = lang_get_value("room_towernoisette")
if ( global.doisemode)
{
	layer_set_visible("Backgrounds_1", false);
	layer_set_visible("Backgrounds_2", true);
}
else
{
	layer_set_visible("Backgrounds_1", true);
	layer_set_visible("Backgrounds_2", false);
}

var noisette = layer_sprite_get_id(layer_get_id("Assets_BG"), "graphic_3A7E4828")
var doisette = layer_sprite_get_id(layer_get_id("Assets_BG"), "graphic_452A77EB")
var seat_1N = layer_sprite_get_id(layer_get_id("Assets_1"), "graphic_28A5B5D0")
var seat_1D = layer_sprite_get_id(layer_get_id("Assets_1"), "graphic_9221AD5")
var seat_2N = layer_sprite_get_id(layer_get_id("Assets_1"), "graphic_764D4B66")
var seat_2D = layer_sprite_get_id(layer_get_id("Assets_1"), "graphic_3CCF1643")
if ( global.doisemode)	
{
	layer_sprite_alpha(noisette, 0)
	layer_sprite_alpha(seat_1N, 0)
	layer_sprite_alpha(seat_2N, 0)
	layer_sprite_alpha(doisette, 1)
	layer_sprite_alpha(seat_1D, 1)
	layer_sprite_alpha(seat_2D, 1)
}
else
{
	layer_sprite_alpha(noisette, 1)
	layer_sprite_alpha(seat_1N, 1)
	layer_sprite_alpha(seat_2N, 1)
	layer_sprite_alpha(doisette, 0)
	layer_sprite_alpha(seat_1D, 0)
	layer_sprite_alpha(seat_2D, 0)
}

if (global.panic)
{
	with (obj_door)
		instance_create(x + 50, y + 96, obj_rubble);
	with (obj_bossdoor)
		instance_create(x + 50, y + 96, obj_rubble);
	instance_destroy(obj_door);
	instance_destroy(obj_bossdoor);
}

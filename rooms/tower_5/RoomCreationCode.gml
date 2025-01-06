pal_swap_init_system(shd_pal_swapper)
global.roommessage = lang_get_value("room_tower5")
if (global.panic == 0)
	gameframe_caption_text = lang_get_value("caption_tower5")
if global.panic
{
	with (obj_door)
		instance_create((x + 50), (y + 96), obj_rubble)
	with (obj_bossdoor)
		instance_create((x + 50), (y + 96), obj_rubble)
	instance_destroy(obj_door)
	instance_destroy(obj_bossdoor)
}
var lay_id = layer_get_id("Assets_1")
var pep = layer_sprite_get_id(lay_id, "graphic_4320583E")
var plu = layer_sprite_get_id(lay_id, "graphic_526015E")
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
global.door_sprite = spr_door
global.door_index = 4
scr_random_granny()

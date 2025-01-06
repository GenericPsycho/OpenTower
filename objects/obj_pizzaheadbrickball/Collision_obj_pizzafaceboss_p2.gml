if comeback
{
	if other.state == states.throwing && other.brick
	{
		other.sprite_index = obj_player1.character == "E" ? spr_meowth_ratballcatch : spr_pizzahead_ratballcatch;
		other.image_index = 0;
	}
	instance_destroy();
}

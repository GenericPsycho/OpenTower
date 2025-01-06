sprite_index = spr_gusbrickscared;
if obj_player1.character == "E"
	sprite_index = spr_pikabrickscared;
if (distance_to_object(obj_player1) <= 100)
{
	if ((obj_player1.x >= x && obj_player.xscale == -1) || (obj_player1.x <= x && obj_player.xscale == 1))
	{
		if obj_player1.xscale == 1
		{
			sprite_index = spr_gusbricknotscaredL;
			if obj_player1.character == "E"
				sprite_index = spr_pikabricknotscaredL;
		}
		else
		{
			sprite_index = spr_gusbricknotscared;
			if obj_player1.character == "E"
				sprite_index = spr_pikabricknotscared;
		}
	}
}

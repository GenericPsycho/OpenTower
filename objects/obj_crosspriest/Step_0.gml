mask_index = spr_priest_idle
if obj_player1.character == "E"
	mask_index = spr_chansey_idle
if sprite_index == spr_crosspriest_pray || sprite_index == spr_crosschansey_pray
{
	with obj_player1
	{
		if holycross <= 0
		{
			other.sprite_index = spr_crosspriest_idle;
			if character == "E"
				other.sprite_index = spr_crosschansey_idle;
		}
	}
}

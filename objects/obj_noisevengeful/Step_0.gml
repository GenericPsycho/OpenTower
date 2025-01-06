if (distance_to_object(obj_player1) < 250)
{
	sprite_index = spr_noisevengeful1;
	if obj_player1.character == "E"
		sprite_index = spr_wobbuffetvengeful1;
}
else
{
	sprite_index = spr_noisevengeful2;
	if obj_player1.character == "E"
		sprite_index = spr_wobbuffetvengeful2;
}
if (!obj_player1.ispeppino || global.swapmode)
	sprite_index = spr_bucket;

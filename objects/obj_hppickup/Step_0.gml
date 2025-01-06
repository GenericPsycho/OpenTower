scr_collide();
if !obj_player1.ispeppino
	sprite_index = spr_bossfight_noiseHP;
else
{
	sprite_index = spr_bossfight_playerhp;
	if obj_player1.character == "E"
	{
		sprite_index = spr_bossfight_plumehp;
		if obj_player1.paletteselect == 12
			sprite_index = spr_bossfight_plumehp_alt
	}
}

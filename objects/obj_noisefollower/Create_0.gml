event_inherited();
walkspr = spr_noise_exitmove;
idlespr = spr_noise_exitidle;
image_speed = 0.35;

if obj_player1.character == "E"
{
	walkspr = spr_wobbuffet_exitmove;
	idlespr = spr_wobbuffet_exitidle;
	sprite_index = spr_wobbuffet_exitidle;
}
if !obj_player1.ispeppino || global.swapmode
{
	walkspr = spr_bucket;
	idlespr = spr_bucket;
	sprite_index = spr_bucket;
	
	spr_palette = spr_bucketpalette;
	paletteselect = global.extras_cum ? 1 : 0;
	use_palette = true;
}

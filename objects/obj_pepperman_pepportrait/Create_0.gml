depth = 20;
sourcehsp = 0;
if obj_player1.character == "E"
	sprite_index = spr_pepperman_pluportrait
if !obj_player1.ispeppino
{
	sprite_index = spr_pepperman_noiseportrait;
	if ( global.doisemode)
		sprite_index = spr_pepperman_doiseportrait;
}

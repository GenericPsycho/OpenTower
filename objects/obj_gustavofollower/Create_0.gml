event_inherited();
walkspr = spr_gus_exitwalk;
idlespr = spr_gus_exitidle;
if obj_player1.character == "E"
{
	walkspr = spr_pika_exitwalk;
	idlespr = spr_playerK_ratmountidle;
	sprite_index = spr_pika_exitidle;
}
image_speed = 0.35;
use_palette = true;
var _info = get_pep_palette_info();
paletteselect = _info.paletteselect;
spr_palette = global.option_datoggle ? spr_ratmountpalette : spr_ratmountpaletteOG;
if obj_player1.character == "E"
	spr_palette = spr_ratpikapalette;
palettetexture = _info.patterntexture;

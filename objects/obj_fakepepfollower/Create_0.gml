event_inherited();
walkspr = obj_player1.character == "E" ? spr_ditto_exitwalk : spr_fakepeppino_exitwalk;
idlespr = obj_player1.character == "E" ? spr_ditto_exitidle : spr_fakepeppino_exitidle;
spr_dead = obj_player1.character == "E" ? spr_ditto_stun : spr_fakepeppino_stun;
image_speed = 0.35;
use_palette = true;
var _info = get_pep_palette_info();
paletteselect = _info.paletteselect;
spr_palette = _info.spr_palette;
palettetexture = _info.patterntexture;
sprite_index = obj_player1.character == "E" ? spr_ditto_exitidle : spr_fakepeppino_exitidle
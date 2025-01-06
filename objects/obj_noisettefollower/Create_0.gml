event_inherited();
walkspr = spr_noisette_walk;
idlespr = spr_noisette_idle;
sprite_index = spr_noisette_idle;
image_speed = 0.35;
use_palette = true;
var _info = get_noise_palette_info();
paletteselect = _info.paletteselect;
spr_palette = global.option_datoggle ? spr_noisepalette : spr_noisepaletteOG;
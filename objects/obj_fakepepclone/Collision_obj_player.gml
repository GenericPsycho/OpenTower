if ((state == states.freefall && (sprite_index != spr_fakepeppino_bodyslamland && sprite_index != spr_ditto_bodyslamland)) || (state == states.mach2 && attackspeed >= 50) || state == states.Sjump || (state == states.throwing && (sprite_index == spr_fakepeppino_flailing || sprite_index == spr_ditto_flailing)))
{
	if other.flash
		flash = false;
	scr_hurtplayer(other);
}

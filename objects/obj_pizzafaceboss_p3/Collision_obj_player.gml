if (state == states.freefall || (state == states.mach2 && attackspeed >= 18) || state == states.Sjump || ((state == states.throwing || state == states.jetpack) && attackspeed > 0))
{
	if other.flash
		flash = false;
	scr_hurtplayer(other);
}

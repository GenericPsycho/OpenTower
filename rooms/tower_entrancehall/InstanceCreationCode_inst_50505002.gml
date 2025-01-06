if !global.extras_randomrat
	spr_idle = choose(spr_ratblock, spr_ratblock1, spr_ratblock2, spr_ratblock3, spr_ratblock4, spr_ratblock5, spr_ratblock6, spr_ratblock7);
if fmod_get_parameter("blocked") != 1
	instance_destroy();
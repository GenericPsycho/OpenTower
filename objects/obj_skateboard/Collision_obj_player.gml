if other.state != states.chainsaw && other.skateboarding == 0 && obj_player1.character != "E"
{
	fmod_event_one_shot_3d("event:/sfx/misc/honkhonk", x, y);
	if global.option_datoggle
		fmod_event_instance_play(other.clownsong)
	instance_create(x, y, obj_genericpoofeffect);
	other.movespeed = 10;
	other.state = states.mach2;
	other.skateboarding = true;
	other.clowntimer = 300;
}

selected = 1; // 0 is pep, 1 is noise
image_speed = 0.35;
ready = false;
depth = -2;

noiseselect = fmod_event_create_instance("event:/sfx/ui/noiseselect")
doiseselect = fmod_event_create_instance("event:/modded-sfx/ui/doiseselect")
selectN = noiseselect

with obj_player
	state = states.titlescreen;

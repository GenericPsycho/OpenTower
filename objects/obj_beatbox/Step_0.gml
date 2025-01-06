scr_collide();
if !global.option_mute_beatbox
	fmod_event_instance_set_3d_attributes(snd, x, y);
if obj_player1.sprite_index != obj_player1.spr_breakdance
{
	instance_create(x, y, obj_genericpoofeffect);
	instance_destroy();
}

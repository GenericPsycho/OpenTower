spr_idle = spr_ratblock;
spr_dead = spr_ratblock_dead;
spr_deadbombed = spr_ratblock_dead2;
if global.extras_randomrat && spr_idle != spr_ratblock6
	spr_idle = choose(spr_ratblock, spr_ratblock1, spr_ratblock2, spr_ratblock3, spr_ratblock4, spr_ratblock5, spr_ratblock7)
if spr_idle == spr_ratblock1
{
	spr_dead = spr_ratblock1_dead
	spr_deadbombed = spr_ratblock1_dead2
}
else if spr_idle == spr_ratblock2
{
	spr_dead = spr_ratblock2_dead
	spr_deadbombed = spr_ratblock2_dead2
}
else if spr_idle == spr_ratblock3
{
	spr_dead = spr_ratblock3_dead
	spr_deadbombed = spr_ratblock3_dead2
}
else if spr_idle == spr_ratblock4
{
	spr_dead = spr_ratblock4_dead
	spr_deadbombed = spr_ratblock4_dead2
}
else if spr_idle == spr_ratblock5
{
	spr_dead = spr_ratblock5_dead
	spr_deadbombed = spr_ratblock5_dead2
}
else if spr_idle == spr_ratblock6
{
	spr_dead = spr_ratblock6_dead
	spr_deadbombed = spr_ratblock6_dead2
}
else if spr_idle == spr_ratblock7
{
	spr_dead = spr_ratblock7_dead2
	spr_deadbombed = spr_ratblock7_dead
}
depth = 2;
anim = false;
baddie = false;
animy = 0;
sniffsnd = fmod_event_create_instance("event:/sfx/rat/ratsniff");
fmod_event_instance_set_3d_attributes(sniffsnd, x, y);
use_sound = true;
deadsnd = "event:/sfx/rat/ratdead";
if (place_meeting(x + 1, y, object_index) && place_meeting(x - 1, y, object_index))
	use_sound = false;
if (use_sound && place_meeting(x + 1, y, object_index) && !place_meeting(x - 1, y, object_index))
	use_sound = false;

sprite_index = spr_idle
global.bombed = false;
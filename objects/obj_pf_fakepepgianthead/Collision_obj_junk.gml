if other.thrown
{
	instance_destroy();
	with obj_pf_fakepep
	{
		x = other.x;
		y = other.y;
		create_particle(x, y, particle.genericpoofeffect);
		state = states.stun;
		stunned = 1000;
		sprite_index = obj_player1.character == "E" ? spr_ditto_vulnerable : spr_fakepeppino_vulnerable;
		image_index = 0;
	}
	instance_destroy(other);
}

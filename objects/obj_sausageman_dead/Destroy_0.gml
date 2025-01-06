if (instance_exists(obj_swapmodefollow) && (sprite_index == spr_player_deathend || sprite_index == spr_playerN_deathend || sprite_index == spr_playerE_deathend || sprite_index == spr_player_ratmountgameover || sprite_index == spr_playerK_ratmountgameover))
	create_particle(obj_swapmodefollow.x, obj_swapmodefollow.y, particle.genericpoofeffect);

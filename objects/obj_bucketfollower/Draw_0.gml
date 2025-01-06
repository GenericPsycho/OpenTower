draw_sprite_ext(sprite_index, image_index, x, y + yoffset, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
shader_set(global.Pal_Shader);
pal_swap_set(spr_bucketpalette, global.extras_cum ? 1 : 0);
draw_self();
shader_reset();

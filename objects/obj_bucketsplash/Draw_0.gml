shader_set(global.Pal_Shader);
pal_swap_set(spr_bucketpalette, global.extras_cum ? 1 : 0);
draw_self();
shader_reset();

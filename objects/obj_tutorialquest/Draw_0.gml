shader_set(global.Pal_Shader);
pal_swap_set(palette_granny, FF ? 3 : 2, 0);
draw_self();
shader_reset();

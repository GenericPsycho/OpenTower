if showgranny
{
	shader_set(global.Pal_Shader);
	pal_swap_set(palette_granny, 1, 0);
	draw_self();
	shader_reset();
}
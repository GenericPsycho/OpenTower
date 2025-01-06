if !obj_player1.ispeppino || global.swapmode
{
	shader_set(global.Pal_Shader);
	var _palinfo = get_noise_palette_info();
	pattern_set(global.Base_Pattern_Color, sprite_index, image_index, image_xscale, image_yscale, _palinfo.patterntexture);
	pal_swap_set(global.option_datoggle ? spr_noisepalette : spr_noisepaletteOG, _palinfo.paletteselect, false);
	draw_self();
	pattern_reset();
	shader_reset();
}
else
	draw_self();

if drawing
{
	draw_set_font(global.moneyfont);
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	var cx = x;
	var cy = (y - 130) + money_y;
	draw_sprite(spr_stickmoney, 0, cx, cy);
	draw_text(cx + 20, cy, maxscore);
}

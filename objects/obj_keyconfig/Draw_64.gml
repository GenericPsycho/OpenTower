draw_set_font(lang_get_font(global.solitude ? "tutorialfont" : "bigfont"));
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

var c = (key_select == -1) ? c_white : c_gray;
if global.solitude 
	c = (key_select == -1) ? c_red : c_maroon;
tdp_draw_text_color((SCREEN_WIDTH / 2) - 250, 50, lang_get_value("option_back"), c, c, c, c, 1);

var ks = key_select;
if ks < 0
	ks = 0;

select_visual = lerp(select_visual, ks, 0.1);
var xx = (SCREEN_WIDTH / 2) - 60;
for (var i = 0; i < array_length(input); i++)
{
	draw_set_font(lang_get_font(global.solitude ? "tutorialfont" : "bigfont"));
	tdp_draw_set_halign(fa_left);
	tdp_draw_set_valign(fa_top);
	
	var b = input[i];
	var in = controller ? tdp_input_get(concat(b[0], "C")) : tdp_input_get(b[0]);
	c = (key_select == i) ? c_white : c_gray;
	if global.solitude 
		c = (key_select == i) ? c_red : c_maroon;
	var yy = (50 - (select_visual * 50)) + (50 * i);
	
	shader_set(global.Pal_Shader);
	pal_swap_set(spr_bloodlinepalette, global.solitude ? 1 : 0, false);
	if array_length(b) < 2
		draw_sprite_ext(spr_controlicons, i, xx, yy, 1, 1, 0, c, 1);
	else
		tdp_draw_text_color(xx, yy, lang_get_value(b[1]), c, c, c, c, 1);
	shader_reset();
	
	var icon_array = tdp_get_icons(in);
	var x2 = SCREEN_WIDTH - 64;
	
	tdp_draw_set_halign(fa_center);
	tdp_draw_set_valign(fa_middle);
	tdp_draw_set_font(lang_get_font("tutorialfont"));
	for (var j = array_length(icon_array) - 1; j >= 0; j--)
	{
		var q = icon_array[j];
		draw_sprite_ext(q.sprite_index, q.image_index, x2, yy, 1, 1, 0, c, 1);
		if q.str != ""
			tdp_draw_text_color(x2 + 16, yy + 14, q.str, c_black, c_black, c_black, c_black, 1);
		x2 -= 48;
	}
}
tdp_text_commit(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
draw_set_font(lang_get_font("creditsfont"));
draw_set_halign(fa_left);
draw_set_valign(fa_top);
global.tdp_text_try_outline = true;
shader_set(global.Pal_Shader);
pal_swap_set(spr_bloodlinepalette, global.solitude ? 1 : 0, false);
scr_draw_text_arr(32, SCREEN_HEIGHT - 240, tip);
shader_reset();
global.tdp_text_try_outline = false;
tdp_text_commit(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
if selecting
{
	var color = global.solitude ? c_red : c_white
	draw_set_font(lang_get_font(global.solitude ? "tutorialfont" : "bigfont"));
	tdp_draw_set_halign(fa_center);
	tdp_draw_set_valign(fa_middle);
	draw_set_alpha(0.5);
	draw_rectangle_color(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, 0, 0, 0, 0, false);
	draw_set_alpha(1);
	tdp_draw_text_color(SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2, lang_get_value("option_press_any"), color, color, color, color, 1);
}
tdp_text_commit(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);

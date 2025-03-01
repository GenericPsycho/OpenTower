function scr_palette_textureOLD()
{
	var cx = camera_get_view_x(view_camera[0]);
	var cy = camera_get_view_y(view_camera[0]);
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	draw_rectangle(cx, cy, cx + 960, cy + 540, false);
	draw_set_alpha(1);
	draw_sprite_ext(sprite, index, _x, _y, _xscale, _yscale, _angle, blend, 1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	var xs = sprite_get_width(sprite) / sprite_get_width(global.palettetexture);
	var ys = sprite_get_height(sprite) / sprite_get_height(global.palettetexture);
	var xx = _x;
	var yy = _y;
	draw_sprite_ext(global.palettetexture, 0, xx, yy, xs, ys, 0, blend, alpha);
	gpu_set_alphatestenable(false);
	if !_gui
		gpu_set_blendmode(bm_normal);
	else
		reset_blendmode();
}
function scr_get_texture_array()
{
	return [
		["funny", !global.option_datoggle ? (obj_player1.character == "E" ? spr_plupattern1 : spr_peppattern1) : spr_peppattern1M],
		["itchy", !global.option_datoggle ? (obj_player1.character == "E" ? spr_plupattern2 : spr_peppattern2) : spr_peppattern2M],
		["pizza", !global.option_datoggle ? (obj_player1.character == "E" ? spr_plupattern3 : spr_peppattern3) : spr_peppattern3M],
		["stripes", !global.option_datoggle ? (obj_player1.character == "E" ? spr_plupattern4 : spr_peppattern4) : spr_peppattern4M],
		["goldemanne", !global.option_datoggle ? (obj_player1.character == "E" ? spr_plupattern5 : spr_peppattern5) : spr_peppattern5M],
		["bones", !global.option_datoggle ? (obj_player1.character == "E" ? spr_plupattern6 : spr_peppattern6) : spr_peppattern6M],
		["pp", !global.option_datoggle ? (obj_player1.character == "E" ? spr_plupattern7 : spr_peppattern7) : spr_peppattern7M],
		["war", !global.option_datoggle ? (obj_player1.character == "E" ? spr_plupattern8 : spr_peppattern8) : spr_peppattern8M],
		["john", !global.option_datoggle ? (obj_player1.character == "E" ? spr_plupattern9 : spr_peppattern9) : spr_peppattern9M],
		["candy", !global.option_datoggle ? spr_peppattern10 : spr_peppattern10M],
		["bloodstained", !global.option_datoggle ? spr_peppattern11 : spr_peppattern11M],
		["bat", !global.option_datoggle ? spr_peppattern12 : spr_peppattern12M],
		["pumpkin", !global.option_datoggle ? spr_peppattern13 : spr_peppattern13M],
		["fur", !global.option_datoggle ? spr_peppattern14 : spr_peppattern14M],
		["flesh", !global.option_datoggle ? spr_peppattern15 : spr_peppattern15M],
		
		["racer", !global.option_datoggle ? spr_noisepattern1 : spr_noisepattern1M],
		["comedian", !global.option_datoggle ? spr_noisepattern2 : spr_noisepattern2M],
		["banana", !global.option_datoggle ? spr_noisepattern3 : spr_noisepattern3M],
		["noiseTV", !global.option_datoggle ? spr_noisepattern4 : spr_noisepattern4M],
		["madman", !global.option_datoggle ? spr_noisepattern5 : spr_noisepattern5M],
		["bubbly", !global.option_datoggle ? spr_noisepattern6 : spr_noisepattern6M],
		["welldone", !global.option_datoggle ? spr_noisepattern7 : spr_noisepattern7M],
		["grannykisses", !global.option_datoggle ? spr_noisepattern8 : spr_noisepattern8M],
		["towerguy", !global.option_datoggle ? spr_noisepattern9 : spr_noisepattern9M],
		
		["nge", spr_dapattern1],
		["mn", spr_dapattern2],
		["sg", spr_dapattern3],
		["si", spr_dapattern4],
		["cocs", spr_dapattern5],
		["vv", spr_dapattern6],
		["stfg", spr_dapattern7],
		["gp", spr_dapattern8]
	];
}
function scr_get_texture_palette(texture)
{
	var _arr = scr_get_texture_array();
	if texture != "none"
	{
		for (var i = 0; i < array_length(_arr); i++)
		{
			if _arr[i][0] == texture
				return _arr[i][1];
		}
	}
	return noone;
}
function scr_get_texture_name(texture)
{
	var _arr = scr_get_texture_array();
	if texture != noone
	{
		for (var i = 0; i < array_length(_arr); i++)
		{
			if _arr[i][1] == texture
				return _arr[i][0];
		}
	}
	return "none";
}
function scr_palette_texture(sprite, subimg, x, y, xscale, yscale, rot = 0, col = c_white, alpha = 1, gui = false, texture = noone)
{
	if texture == noone
		texture = global.palettetexture;
	if texture == noone
		exit;
	
	if event_type == ev_draw && event_number == ev_gui
		gui = true;
	else
		gui = false;
	
	if shader_current() == global.Pal_Shader
		pal_swap_set(obj_player1.character == "E" ? spr_plupalette : (global.option_datoggle ? spr_peppalette : spr_peppaletteOG), 1, false);
	
	if !surface_exists(global.palettesurface)
		global.palettesurface = surface_create(960, 540);
	if !surface_exists(global.palettesurfaceclip)
		global.palettesurfaceclip = surface_create(960, 540);
	
	var cx = camera_get_view_x(view_camera[0]);
	var cy = camera_get_view_y(view_camera[0]);
	if gui
	{
		cx = 0;
		cy = 0;
	}
	
	surface_set_target(global.palettesurfaceclip);
	draw_clear_alpha(0, 0);
	draw_rectangle_color(0, 0, 960, 540, c_white, c_white, c_white, c_white, false);
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sprite, subimg, x - cx, y - cy, xscale, yscale, rot, c_white, 1);
	if gui
		reset_blendmode();
	else
		gpu_set_blendmode(bm_normal);
	surface_reset_target();
	surface_set_target(global.palettesurface);
	var sw = sprite_get_width(sprite);
	var sh = sprite_get_height(sprite);
	var xs = sw / sprite_get_width(texture);
	var ys = sh / sprite_get_height(texture);
	var xo = sprite_get_xoffset(sprite);
	var yo = sprite_get_yoffset(sprite);
	var xx = x - cx - xo;
	var yy = y - cy - yo;
	
	if xscale < 0
		xx = ((x - cx) + xo) - sw;
	if yscale < 0
		yy = ((y - cy) + yo) - sh;
	
	draw_sprite_ext(texture, 0, xx, yy, xs + 4, ys + 4, 0, col, 1);
	gpu_set_blendmode(bm_subtract);
	draw_surface(global.palettesurfaceclip, 0, 0);
	if gui
		reset_blendmode();
	else
		gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_surface_ext(global.palettesurface, cx, cy, 1, 1, 0, c_white, alpha);
}

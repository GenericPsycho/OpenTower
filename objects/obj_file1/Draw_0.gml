pal_swap_set((global.option_datoggle ? spr_peppalette : spr_peppaletteOG), obj_player.paletteselect, false);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
shader_reset();

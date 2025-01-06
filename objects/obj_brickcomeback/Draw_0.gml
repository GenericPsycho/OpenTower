shader_set(global.Pal_Shader);
pal_swap_set(global.option_datoggle ? spr_ratmountpalette : spr_ratmountpaletteOG, obj_player1.paletteselect, false);
draw_self();
shader_reset();

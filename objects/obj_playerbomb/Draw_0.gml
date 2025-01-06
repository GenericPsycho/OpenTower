if ( !global.doisemode)
{
    if obj_drawcontroller.use_dark
        return;
    shader_set(global.Pal_Shader)
    pattern_set(global.Base_Pattern_Color, sprite_index, image_index, image_xscale, image_yscale, patterntexture)
    pal_swap_set(spr_palette, paletteselect, false)
    draw_self()
    pattern_reset()
    shader_reset()
}
else if ( global.doisemode)
{
    if obj_drawcontroller.use_dark
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, angle, c_black, image_alpha)
    else
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, angle, image_blend, image_alpha)
}
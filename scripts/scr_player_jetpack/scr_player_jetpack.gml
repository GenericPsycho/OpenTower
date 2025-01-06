function scr_player_jetpack() //gml_Script_scr_playerN_jetpack
{
    hsp = movespeed
    move = key_right + key_left
    vsp = 0
    image_speed = 0.35
    if ((!instance_exists(obj_jumpdust)) && sprite_index != spr_playerN_jetpackslide)
    {
        with (instance_create(x, (y + -15), obj_jumpdust))
            image_xscale = obj_player.xscale
    }
    if (key_up && (!key_down))
        vsp = -3
    if (key_down && (!key_up))
        vsp = 3
    hsp = 15 * xscale
    if (scr_solid((x + sign(hsp)), y) && (!(place_meeting((x + sign(hsp)), y, obj_mach3solid))) && (!scr_slope()) && (scr_solid_slope((x + sign(hsp)), y) || place_meeting((x + sign(hsp)), y, obj_solid)) && (!(place_meeting((x + sign(hsp)), y, obj_metalblock))) && (!(place_meeting((x + sign(hsp)), y, obj_destructibles))) && (!(place_meeting((x + sign(hsp)), y, obj_climbablewall))))
    {
        sprite_index = spr_hitwall
        fmod_event_one_shot_3d("event:/sfx/pep/groundpound", x, y)
        fmod_event_one_shot_3d("event:/sfx/pep/bumpwall", x, y)
        hsp = 0
        flash = false
        state = states.bump
        hsp = -6 * xscale
        vsp = -6
        mach2 = 0
        image_index = 0
        instance_create((x + xscale * 15), (y + 10), obj_bumpeffect)
    }
    if key_jump2
    {
        jumpstop = false
        vsp = -15
        state = states.jump
        scr_fmod_soundeffect(jumpsnd, x, y)
        sprite_index = spr_playerN_noisebombspinjump
        image_index = 0
        image_speed = 0.35
        with (instance_create(x, y, obj_jumpdust))
            image_xscale = other.xscale
    }
    if (punch_afterimage > 0)
        punch_afterimage--
    else
    {
        punch_afterimage = 2
        with (create_blur_afterimage(x, y, sprite_index, image_index, xscale))
            playerid = other.id
    }
    if (move == xscale)
    {
        if (hsp < 24)
            hsp += 0.25
    }
    if (key_down && grounded && sprite_index == spr_playerN_jetpackboost)
        sprite_index = spr_playerN_jetpackslide
    if (grounded && (!key_down) && sprite_index == spr_playerN_jetpackslide && (!(scr_solid(x, (y - 16)))) && (!(scr_solid(x, (y - 32)))))
        sprite_index = spr_playerN_jetpackboost
    if ((!grounded) && sprite_index == spr_playerN_jetpackslide)
        sprite_index = spr_playerN_jetpackboost
    if key_taunt
        scr_dotaunt()
}

scr_initenemy();
grav = 0.5;
hsp = 0;
vsp = 0;
grounded = false;
movespeed = 2;
hitboxcreate = false;
state = states.walk;
image_speed = 0.35;
sign_id = -4;
spr_dead = spr_piraneapple_dead;
alarm[1] = 10;
mask_index = spr_player_mask;
platformid = -4;
hsp_carry = 0;
vsp_carry = 0;
hamspotted = false;
if global.extras_anchovies
{
	sprite_index = spr_ancho;
	instance_change(obj_ancho, 0)
	idlespr = spr_ancho;
	stunfallspr = spr_anchobounce;
	walkspr = spr_ancho;
	grabbedspr = spr_anchobounce;
	scaredspr = spr_ancho_scared;
	spr_dead = spr_anchodead;
	spr_palette = palette_anchovie;
	paletteselect = 0;
	snotty = false
}
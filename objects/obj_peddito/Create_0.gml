doisekill = false
if instance_exists(obj_noiseboss)
{
    var dir = point_direction(x, y, obj_noiseboss.x, obj_noiseboss.y)
    hsp = lengthdir_x(16, dir)
    vsp = lengthdir_y(16, dir)
    state = states.normal
}
else
{
    dir = point_direction(x, y, obj_player.x, obj_player.y)
	global.pedditosprite = irandom(100) <= 10 ? spr_peddito_madden : spr_peddito;
	global.pedditoiscoming = true;
}

notdrank = false
hsp = lengthdir_x(16, dir);
vsp = lengthdir_y(16, dir);
state = 0; // not an enum

cankill = global.doisemode && !global.swapmode && !obj_player1.ispeppino ? true : false;
pedditoisdead = false;
sprite_index = global.pedditosprite;
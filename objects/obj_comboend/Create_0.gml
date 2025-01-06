combo = 0;
comboscore = 0;
comboscoremax = 0;
combominus = 0;
timer_max = 1;
timer = 0;
title_index = 0.35;
very = 0;
depth = obj_particlesystem.depth - 1;
alarm[0] = 1;
x = 832;
y = 197;
ystart = y;
depth = -300;
with obj_player
{
	if (!place_meeting(x, y, obj_exitgate) && room != tower_tutorial1N && room != tower_tutorial2D && room != tower_tutorial2N && room != tower_tutorial3N)
	{
		global.combodropped = 1
		global.deduction = false
		if (!ispeppino && global.doisemode && (!global.swapmode) && (!instance_exists(obj_peddito)) && state != states.animatronic && state != states.backtohub)
			instance_create(0, y, obj_peddito);
	}
}

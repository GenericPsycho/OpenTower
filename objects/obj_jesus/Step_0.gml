var _cam_x = camera_get_view_x(view_camera[0])
var _cam_y = camera_get_view_y(view_camera[0])
x = _cam_x
y = _cam_y
if global.extras_jesus
{
	if (jesuscheck == 0)
	{
		if (global.combotime <= 40 && global.combo > 0 && !((is_bossroom() || room == tower_entrancehall || room == tower_johngutterhall || instance_exists(obj_tutorialbook))))
	    {
			alarm[0] = irandom_range(60, 70)
		    jesuscheck = 1
	    }
	
	}
	if (image_index == 29)
		image_speed = 0
	if (global.combotime == 60)
	    jesuscheck = 0
}

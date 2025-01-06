pal_swap_init_system_fix(shd_pal_swapper);
global.roommessage = "PIZZA TOWER WESTERN BUILD V3";
global.longintro = 1;
tdp_text_init();

global.holiday = holiday.none;
global.cantoggle = true
global.togglehalloween = false
var date = date_current_datetime();
var month = date_get_month(date);
var day = date_get_day(date);
if month == 10 || (month == 11 && day <= 14) || global.togglehalloween
{
	global.holiday = holiday.halloween;
	if month == 10 || (month == 11 && day <= 14)
	{
		global.cantoggle = false;
		global.togglehalloween = false;
	}
}
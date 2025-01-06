if obj_mainmenu.shownoise && !obj_mainmenu.showswap
{
	selectedspr = spr_menutv3_selectedN;
	confirmspr = spr_menutv3_confirmN;
}
else if obj_mainmenu.showswap
{
	selectedspr = spr_menutv3_selectedS;
	confirmspr = spr_menutv3_confirmS;
}
else if obj_mainmenu.showeevee
{
	selectedspr = spr_menutv3_selectedE;
	confirmspr = spr_menutv3_confirmE;
}
else
{
	selectedspr = spr_menutv3_selected;
	confirmspr = spr_menutv3_confirm;
}

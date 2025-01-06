if obj_mainmenu.shownoise && !obj_mainmenu.showswap
{
	selectedspr = spr_menutv2_selectedN;
	confirmspr = spr_menutv2_confirmN;
}
else if obj_mainmenu.showswap
{
	selectedspr = spr_menutv2_selectedS;
	confirmspr = spr_menutv2_confirmS;
}
else if obj_mainmenu.showeevee
{
	selectedspr = spr_menutv2_selectedE;
	confirmspr = spr_menutv2_confirmE;
}
else
{
	selectedspr = spr_menutv2_selected;
	confirmspr = spr_menutv2_confirm;
}

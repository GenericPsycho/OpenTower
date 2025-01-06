if obj_mainmenu.shownoise && !obj_mainmenu.showswap
{
	selectedspr = spr_menutv1_selectedN;
	confirmspr = spr_menutv1_confirmN;
}
else if obj_mainmenu.showswap
{
	selectedspr = spr_menutv1_selectedS;
	confirmspr = spr_menutv1_confirmS;
}
else if obj_mainmenu.showeevee
{
	selectedspr = spr_menutv1_selectedE;
	confirmspr = spr_menutv1_confirmE;
}
else
{
	selectedspr = spr_menutv1_selected;
	confirmspr = spr_menutv1_confirm;
}

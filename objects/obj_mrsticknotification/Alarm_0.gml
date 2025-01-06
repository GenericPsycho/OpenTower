start = true;
if sprite_index == spr_mrsticknotification
	create_transformation_tip(lang_get_value_newline("mrsticknotification"));
else if sprite_index == spr_noisettenotification
	create_transformation_tip(lang_get_value_newline("noisettenotification"));
else if sprite_index == spr_doisettenotification
	create_transformation_tip(lang_get_value_newline("doisettenotification"));
else if sprite_index == spr_xaviernotification
{
	if room == tower_1
		create_transformation_tip(lang_get_value_newline("ncpdfirst"));
	else if room == tower_2
		create_transformation_tip(lang_get_value_newline("ncpdsecond"));
	else if room == tower_3
		create_transformation_tip(lang_get_value_newline("ncpdthird"));
	else if room == tower_4
		create_transformation_tip(lang_get_value_newline("ncpdfourth"));
}
else if sprite_index == spr_xavierfinalnotification
	create_transformation_tip(lang_get_value_newline("ncpdfifth"));
else if sprite_index == spr_maddennotification
{
	if room == tower_1
		create_transformation_tip(lang_get_value_newline("flatlinefirst"));
	else if room == tower_2
		create_transformation_tip(lang_get_value_newline("flatlinesecond"));
	else if room == tower_3
		create_transformation_tip(lang_get_value_newline("flatlinethird"));
	else if room == tower_4
		create_transformation_tip(lang_get_value_newline("flatlinefourth"));
}
else if sprite_index == spr_maddenfinalnotification
	create_transformation_tip(lang_get_value_newline("flatlinefifth"));
else if sprite_index == spr_noisetterabbitTV || sprite_index == spr_doisetterabbitTV
	create_transformation_tip(lang_get_value_newline("noisetterabbitnotification"));
else if sprite_index == spr_gholdengonotification
	create_transformation_tip(lang_get_value_newline("gholdengonotification"));
else
	create_transformation_tip(lang_get_value_newline("mrmooneynotification"));

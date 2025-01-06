if fmod_get_parameter("blocked") == 1 || ((obj_player1.paletteselect == 17 || obj_player2.paletteselect == 17) && global.option_lang != "en")
{
	text = lang_get_value_granny("languagestopD")
	if obj_player1.character == "E"
		text = lang_get_value_granny("languagestopE")
}
else
	instance_destroy()
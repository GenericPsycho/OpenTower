if (global.panic == 0)
{
	text = lang_get_value("tutorial24");
	if obj_player1.character == "E"
		text = lang_get_value("tutorial24E");
}
else
	text = lang_get_value("getout");

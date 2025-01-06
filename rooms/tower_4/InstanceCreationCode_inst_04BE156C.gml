if global.option_datoggle
	text = lang_get_value_granny("garbage12")
else
{
	text = lang_get_value_granny("modgarbage12")
	if obj_player1.character == "E"
		text = lang_get_value_granny("modgarbage12E")
	if (!obj_player1.ispeppino)
		text = lang_get_value_granny("modgarbage12N")
	if global.swapmode
		text = lang_get_value_granny("modgarbage12S")
}

text = lang_get_value_granny(global.option_datoggle ? "modgarbage7" : "garbage7")
if obj_player1.character == "E"
	text = lang_get_value_granny(global.option_datoggle ? "modgarbage7E" : "garbage7E")
if (!obj_player1.ispeppino)
{
	text = lang_get_value_granny(global.option_datoggle ? "modgarbage7N" : "garbage7N")
	if global.doisemode
		text = lang_get_value_granny(global.option_datoggle ? "modgarbage7D" : "garbage7D")
}
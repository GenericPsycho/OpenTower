text = lang_get_value_granny(global.option_datoggle ? "modgarbage2" : "garbage2")
if obj_player1.character == "E"
	text = lang_get_value_granny(global.option_datoggle ? "modgarbage2E" : "garbage2E")
if (!obj_player1.ispeppino)
{
	text = lang_get_value_granny(global.option_datoggle ? "modgarbage2N" : "garbage2N")
	if (global.doisemode)
        text = lang_get_value_granny(global.option_datoggle ? "modgarbage2D" : "garbage2D")
}
if global.swapmode && global.option_datoggle
	text = lang_get_value_granny("garbage2S")
text = lang_get_value_granny(global.option_datoggle ? "modgarbage1" : "garbage1")
if obj_player1.character == "E"
	text = lang_get_value_granny(global.option_datoggle ? "modgarbage1E" : "garbage1E")
if (!obj_player1.ispeppino)
{
	text = lang_get_value_granny(global.option_datoggle ? "modgarbage1N" : "garbage1N")
	if (global.doisemode)
        text = lang_get_value_granny(global.option_datoggle ? "modgarbage1D" : "garbage1D")
}
if global.swapmode && global.option_datoggle
	text = lang_get_value_granny("garbage1S")
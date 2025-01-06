text = lang_get_value_granny(global.option_datoggle ? "modgarbage5" : "garbage5")
if obj_player1.character == "E"
	text = lang_get_value_granny(global.option_datoggle ? "modgarbage5E" : "garbage5E")
if (!obj_player1.ispeppino)
	text = lang_get_value_granny(global.option_datoggle ? "modgarbage5N" : (global.doisemode ? "garbage5D" : "garbage5N"))
if global.swapmode && global.option_datoggle
	text = lang_get_value_granny("modgarbage5S")
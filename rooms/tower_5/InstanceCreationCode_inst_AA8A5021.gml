if !global.option_datoggle
	text = lang_get_value_granny("garbage15")
else
{
	text = lang_get_value_granny("modgarbage15")
	if global.swapmode
		text = lang_get_value_granny("modgarbage15S")
}

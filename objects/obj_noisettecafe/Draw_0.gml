var _x = x - 23;
var _y = y + 66;
if !vengeful
{
	if !obj_player1.ispeppino && global.doisemode && obj_player1.state == states.backbreaker
        draw_sprite(spr_doisettecringe, image_index, x, y)
    else
		draw_sprite(noisette1, image_index, x, y);
	draw_sprite(vigilante1, image_index, _x, _y);
}
else
{
	if !obj_player1.ispeppino && global.doisemode && obj_player1.state == states.backbreaker
        draw_sprite(spr_doisettecringe, image_index, x, y)
    else
		draw_sprite(noisette2, image_index, x, y);
	draw_sprite(vigilante2, image_index, _x, _y);
}

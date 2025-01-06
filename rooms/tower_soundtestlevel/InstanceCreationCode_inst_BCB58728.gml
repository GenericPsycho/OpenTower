targetRoom = secret_entrance;
level = "secretworld";
sprite_index = spr_gate_secret;
bgsprite = spr_gate_secretBG;
title_index = 0;
title_sprite = spr_titlecardsecrettitle;
titlecard_sprite = spr_titlecardsecret;
titlecard_index = 0;
title_music = "event:/music/secretworldtitle";
group_arr = ["kidspartygroup"];

if !obj_player1.ispeppino && global.extras_betternoise && !global.swapmode
	titlecard_sprite = global.doisemode ? spr_titlecardsecretD : spr_titlecardsecretN;
if global.swapmode
	titlecard_sprite = global.doisemode ? spr_titlecardsecretSD : spr_titlecardsecretS;
if obj_player1.character == "E"
	titlecard_sprite = spr_titlecardsecretE;
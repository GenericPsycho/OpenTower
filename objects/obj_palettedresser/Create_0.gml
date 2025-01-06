depth = 100;
player_palettes = [];
modtitles = [];
player_palettes[0] = [
	["classic", true, 1],
	["unfunny", false, 3],
	["money", false, 4],
	["sage", false, 5],
	["blood", false, 6],
	["tv", false, 7],
	["dark", false, 8],
	["shitty", false, 9],
	["golden", false, 10],
	["garish", false, 11],
	["mooney", false, 15],
	["funny", false, 12, !global.option_datoggle ? spr_peppattern1 : spr_peppattern1M],
	["itchy", false, 12, !global.option_datoggle ? spr_peppattern2 : spr_peppattern2M],
	["pizza", false, 12, !global.option_datoggle ? spr_peppattern3 : spr_peppattern3M],
	["stripes", false, 12, !global.option_datoggle ? spr_peppattern4 : spr_peppattern4M],
	["goldemanne", false, 12, !global.option_datoggle ? spr_peppattern5 : spr_peppattern5M],
	["bones", false, 12, !global.option_datoggle ? spr_peppattern6 : spr_peppattern6M],
	["pp", false, 12, !global.option_datoggle ? spr_peppattern7 : spr_peppattern7M],
	["war", false, 12, !global.option_datoggle ? spr_peppattern8 : spr_peppattern8M],
	["john", false, 12, !global.option_datoggle ? spr_peppattern9 : spr_peppattern9M]
];
player_palettes[1] = [
	["classicN", true, 1],
	["boise", false, 3],
	["roise", false, 4],
	["poise", false, 5],
	["reverse", false, 6],
	["critic", false, 7],
	["outlaw", false, 8],
	["antidoise", false, 9],
	["flesheater", false, 10],
	["super", false, 11],
	["porcupine", false, 15],
	["feminine", false, 16],
	["realdoise", false, 17],
	["forest", false, 18],
	["racer", false, 28, !global.option_datoggle ? spr_noisepattern1 : spr_noisepattern1M],
	["comedian", false, 27, !global.option_datoggle ? spr_noisepattern2 : spr_noisepattern2M],
	["banana", false, 26, !global.option_datoggle ? spr_noisepattern3 : spr_noisepattern3M],
	["noiseTV", false, 25, !global.option_datoggle ? spr_noisepattern4 : spr_noisepattern4M],
	["madman", false, 24, !global.option_datoggle ? spr_noisepattern5 : spr_noisepattern5M],
	["bubbly", false, 23, !global.option_datoggle ? spr_noisepattern6 : spr_noisepattern6M],
	["welldone", false, 22, !global.option_datoggle ? spr_noisepattern7 : spr_noisepattern7M],
	["grannykisses", false, 21, !global.option_datoggle ? spr_noisepattern8 : spr_noisepattern8M],
	["towerguy", false, 20, !global.option_datoggle ? spr_noisepattern9 : spr_noisepattern9M]
];
player_palettes[2] = [
	["classicE", true, 1],
	["shiny", false, 7],
	["vaporeon", false, 15],
	["jolteon", false, 6],
	["flareon", false, 9],
	["espeon", false, 11],
	["umbreon", false, 8],
	["leafeon", false, 4],
	["glaceon", false, 5],
	["sylveon", false, 10],
	["reverseE", false, 3],
	["funny", false, 12, !global.option_datoggle ? spr_plupattern1 : spr_peppattern1M],
	["itchy", false, 12, !global.option_datoggle ? spr_plupattern2 : spr_peppattern2M],
	["pizza", false, 12, !global.option_datoggle ? spr_plupattern3 : spr_peppattern3M],
	["stripes", false, 12, !global.option_datoggle ? spr_plupattern4 : spr_peppattern4M],
	["goldemanne", false, 12, !global.option_datoggle ? spr_plupattern5 : spr_peppattern5M],
	["bones", false, 12, !global.option_datoggle ? spr_plupattern6 : spr_peppattern6M],
	["pp", false, 12, !global.option_datoggle ? spr_plupattern7 : spr_peppattern7M],
	["war", false, 12, !global.option_datoggle ? spr_plupattern8 : spr_peppattern8M],
	["john", false, 12, !global.option_datoggle ? spr_plupattern9 : spr_peppattern9M]
];

ini_open_from_string(obj_savesystem.ini_str_options);
for (var i = 0; i < array_length(player_palettes); i++)
{
	array_push(player_palettes[i], ["candy", false, i == 1 ? 29 : 12, !global.option_datoggle ? spr_peppattern10 : spr_peppattern10M]);
	array_push(player_palettes[i], ["bloodstained", false, i == 1 ? 30 : 12, !global.option_datoggle ? spr_peppattern11 : spr_peppattern11M]);
	array_push(player_palettes[i], ["bat", false, i == 1 ? 31 : 12, !global.option_datoggle ? spr_peppattern12 : spr_peppattern12M]);
	array_push(player_palettes[i], ["pumpkin", false, i == 1 ? 32 : 12, !global.option_datoggle ? spr_peppattern13 : spr_peppattern13M]);
	array_push(player_palettes[i], ["fur", false, i == 1 ? 33 : 12, !global.option_datoggle ? spr_peppattern14 : spr_peppattern14M]);
	array_push(player_palettes[i], ["flesh", false, i == 1 ? 34 : 12, !global.option_datoggle ? spr_peppattern15 : spr_peppattern15M]);
	array_push(player_palettes[i], ["nge", false, i == 1 ? 35 : 12, spr_dapattern1]);
	array_push(player_palettes[i], ["mn", false, i == 1 ? 36 : 12, spr_dapattern2]);
	array_push(player_palettes[i], ["sg", false, i == 1 ? 37 : 12, spr_dapattern3]);
	array_push(player_palettes[i], ["si", false, i == 1 ? 38 : 12, spr_dapattern4]);
	array_push(player_palettes[i], ["cocs", false, i == 1 ? 39 : 12, spr_dapattern5]);
	array_push(player_palettes[i], ["vv", false, i == 1 ? 40 : 12, spr_dapattern6]);
	array_push(player_palettes[i], ["stfg", false, i == 1 ? 41 : 12, spr_dapattern7]);
	array_push(player_palettes[i], ["gp", false, i == 1 ? 42 : 12, spr_dapattern8]);
	for (var j = 1; j < array_length(player_palettes[i]); j++)
	{
		if (ini_read_real("Palettes", player_palettes[i][j][0], false))
			player_palettes[i][j][1] = true;
	}
}
ini_close();

scr_create_uparrowhitbox();

paletteselect = 0;
ispeppino = -1;
showtext = false;
alpha = 0;
palettetitle = "";
palettedesc = "";

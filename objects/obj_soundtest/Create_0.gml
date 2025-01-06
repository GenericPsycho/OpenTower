music_pos = 0;
play = false;
global.leveltorestart = -4;
instance_destroy(obj_pigtotal);
music_arr = [
	["event:/music/soundtest/intro", "Press Start to Begin Anthem - DAGames"],
	["event:/music/soundtest/pizzadeluxe", "Press Start Together - DAGames"],
	["event:/modded-music/making", "In The Making! - Will Ryan"],
	["event:/music/soundtest/funiculi", "Mr. Dirty Balls - DAGames"],
	["event:/music/soundtest/pizzatime", "I'll Make Them Whole - DAGames"],
	["event:/music/soundtest/lap", "Brace For The Freight Train - DAGames"],
	["event:/music/soundtest/unearthly", "Flumpty's Jam - DAGames"],
	["event:/music/soundtest/hotspaghetti", "Build The Machine - DAGames"],
	["event:/music/soundtest/coldspaghetti", "Build Our Machine: Rock Version - DAGames"],
	["event:/music/soundtest/theatrical", "Founder's Pack 1 - DAGames"],
	["event:/music/soundtest/putonashow", "Founder's Pack 2 - DAGames"],
	["event:/music/soundtest/dungeon", "Hands of a Slayer - DAGames"],
	["event:/music/soundtest/pepperman", "Take My Breath Away - DAGames"],
	["event:/music/soundtest/oregano", "I'll Find My Way - IRIS"],
	["event:/music/soundtest/ufo", "Into The Beyond - IRIS"],
	["event:/music/soundtest/tombstone", "We Stand In The Line - IRIS"],
	["event:/music/soundtest/mort", "Angel Wings - Will Ryan"],
	["event:/music/soundtest/kidsmenu", "This Is Your Fate - Will Ryan"],
	["event:/music/soundtest/yeehaw", "Looking For a Showdown - DAGames"],
	["event:/music/soundtest/vigilante", "About To Explode - W.A.R"],
	["event:/music/soundtest/tropical", "Bullet To The Brain - Onyx Colony"],
	["event:/music/soundtest/forest1", "Imagination - W.A.R"],
	["event:/music/soundtest/gustavo", "We Stand - W.A.R"],
	["event:/music/soundtest/forest2", "Come To My Back Garden - W.A.R"],
	["event:/music/soundtest/extraterrestrial", "Ambush - DAGames"],
	["event:/music/soundtest/goodeatin", "Slave To The Factory Line - DAGames"],
	["event:/music/soundtest/noise", "Living Life Without The Cord - Will Ryan Originals"],
	["event:/music/soundtest/bitethecrust", "Yellow - DAGames"],
	["event:/music/soundtest/wayoftheitalian", "Blue: SSD - DAGames"],
	["event:/music/soundtest/engineer", "BioBond - IRIS"],
	["event:/music/soundtest/saucemachine", "BioTide - IRIS"],
	["event:/music/soundtest/tubular", "I'm The Purple Guy - DAGames"],
	["event:/music/soundtest/preheat", "The Spirit Divine - DAGames"],
	["event:/music/soundtest/celsius", "Time of Your Life - DAGames"],
	["event:/music/soundtest/plains", "Until Dawn: Remake - DAGames"],
	["event:/music/soundtest/fakepep", "Dimetrix - IRIS"],
	["event:/modded-music/deadlock", "Plague: Deadlock - IRIS"],
	["event:/music/soundtest/chateau", "Are You Proud of Me Now? - DAGames"],
	["event:/music/soundtest/tunnely", "Moving Up In The World - DAGames"],
	["event:/music/soundtest/thousand", "Atomic Renegade: Remake - DAGames"],
	["event:/music/soundtest/unexpectancy1", "Silence The Anarchy - Onyx Colony"],
	["event:/music/soundtest/unexpectancy2", "Castle That Burns - IRIS"],
	["event:/music/soundtest/unexpectancy3", "Know Your Place - Will Ryan Originals"],
	["event:/music/soundtest/bye", "HOAA: Resurrection Medley - IRIS"],
	["event:/music/soundtest/notime", "Gold: SSD - DAGames"],
	["event:/music/w1/entrancesecret", "The Streisand Effect - DAGames"],
	["event:/music/w1/medievalsecret", "Freaky Machine - DAGames"],
	["event:/music/w1/ruinsecret", "Get Out - DAGames"],
	["event:/music/w1/dungeonsecret", "One By One - DAGames"],
	["event:/music/w2/desertsecret", "We Will Reform - IRIS"],
	["event:/music/w2/graveyardsecret", "A Desolate Becoming - IRIS"],
	["event:/music/w2/farmsecret", "Hey, You Good Lookin' - Will Ryan"],
	["event:/music/w2/saloonsecret", "Old Town Horse - IRIS... i guess?"],
	["event:/music/w3/beachsecret", "In Time To See You Die - Onyx Colony"],
	["event:/music/w3/forestsecret", "We Are The Garden Gnomes - Will Ryan"],
	["event:/music/w3/spacesecret", "Star War - Onyx Colony"],
	["event:/music/w3/golfsecret", "Slave To The Prince of Bel Air - DAGames"],
	["event:/music/w4/streetsecret", "Red - DAGames"],
	["event:/music/w4/industrialsecret", "Lost In a Corporate World - Onyx Colony"],
	["event:/music/w4/sewersecret", "It's Time To Die - DAGames"],
	["event:/music/w4/freezersecret", "Until Dawn - DAGames"],
	["event:/music/w5/kidspartysecret", "Close To Home - DAGames"],
	["event:/music/w5/warsecret", "Colossal Carnage - DAGames"],
	["event:/music/secretworld", "Shitpost Medley - DAGames n' W.A.R"],
	["event:/music/soundtest/halloweenpause", "A Techno Halloween! - Will Ryan"],
	["event:/music/soundtest/halloweenstart", "Return To The Motherland - DAGames"],
	["event:/music/soundtest/halloweenrace", "Bonds To The Grave - DAGames"],
	["event:/modded-music/train", "BFTFT: Remix - DAGames n' Silva Hound"]
];
if global.extras_inflap != 0
{
	array_push(music_arr, ["event:/music/soundtest/pizzatimenoise", "Shot Down By The Mirror - DAGames"])
	array_push(music_arr, ["event:/music/soundtest/lap2noise", "Mad Man - DAGames"])
	array_push(music_arr, ["event:/music/soundtest/noisefinalescape", "HOAA Medley - IRIS"])
	array_push(music_arr, ["event:/modded-music/hold", "Can't Hold Me Back - DAGames"])
	array_push(music_arr, ["event:/modded-music/blackssd", "Black: SSD - DAGames"])
	array_push(music_arr, ["event:/modded-music/hoaaalt", "HOAA Medley: Alt Version - IRIS"])
	array_push(music_arr, ["event:/modded-music/retribution", "Retribution - DAGames"])
	array_push(music_arr, ["event:/modded-music/gameover", "Game Over - DAGames"])
	array_push(music_arr, ["event:/modded-music/greenssd", "Green: SSD - DAGames"])
	array_push(music_arr, ["event:/modded-music/layers", "Layers of Fear - DAGames"])
	array_push(music_arr, ["event:/modded-music/relived", "HOAA: Relived Medley - IRIS"])
	array_push(music_arr, ["event:/modded-music/dream", "Dream On - DAGames"])
	array_push(music_arr, ["event:/modded-music/wave", "Summon The Wave - DAGames"])
	array_push(music_arr, ["event:/modded-music/dotd", "DOTD Medley - IRIS"])
	array_push(music_arr, ["event:/modded-music/champion", "Born Champion - DAGames"])
	array_push(music_arr, ["event:/modded-music/sky", "Sky Hygh - DAGames"])
	array_push(music_arr, ["event:/modded-music/gt", "GT Medley - IRIS"])
}
if obj_player1.character == "E"
{
	music_arr =
	[
		["event:/modded-music/gangster", "Gangster Videogame Music - Will Ryan"],
		["event:/modded-music/dream", "Dream On - DAGames"],
		["event:/modded-music/wave", "Summon The Wave - DAGames"],
		["event:/modded-music/mind", "Break My Mand - DAGames"],
		["event:/modded-music/gospel", "Gospel of Dismay - DAGames"],
		["event:/modded-music/shaggy", "The Real Slim Shaggy - Nenorama n' DAGames"],
		["event:/modded-music/martyr", "This Is Martyr - Onyx Colony"],
		["event:/modded-music/nothere", "Not Here All Night - DAGames"],
		["event:/modded-music/wantout", "We Want Out - DAGames"],
		["event:/modded-music/unfixable", "Unfixable - DAGames"],
		["event:/modded-music/hellbent", "Hellbent - Chi-Chi n' DAGames"],
		["event:/modded-music/trinity", "Trinity - DAGames"],
		["event:/modded-music/dotd", "DOTD Medley - IRIS"],
		["event:/modded-music/determined", "I Stay Determined - DAGames"]
	];
	if global.extras_inflap != 0
	{
		array_push(music_arr, ["event:/music/soundtest/pizzatime", "I'll Make Them Whole - DAGames"])
		array_push(music_arr, ["event:/music/soundtest/lap", "Brace For The Freight Train - DAGames"])
		array_push(music_arr, ["event:/modded-music/train", "BFTFT: Remix - DAGames n' Silva Hound"])
		array_push(music_arr, ["event:/music/soundtest/bye", "HOAA: Resurrection Medley - IRIS"])
		array_push(music_arr, ["event:/music/soundtest/pizzatimenoise", "Shot Down By The Mirror - DAGames"])
		array_push(music_arr, ["event:/music/soundtest/lap2noise", "Mad Man - DAGames"])
		array_push(music_arr, ["event:/music/soundtest/noisefinalescape", "HOAA Medley - IRIS"])
		array_push(music_arr, ["event:/modded-music/hold", "Can't Hold Me Back - DAGames"])
		array_push(music_arr, ["event:/modded-music/blackssd", "Black: SSD - DAGames"])
		array_push(music_arr, ["event:/modded-music/hoaaalt", "HOAA Medley: Alt Version - IRIS"])
		array_push(music_arr, ["event:/modded-music/retribution", "Retribution - DAGames"])
		array_push(music_arr, ["event:/modded-music/gameover", "Game Over - DAGames"])
		array_push(music_arr, ["event:/modded-music/greenssd", "Green: SSD - DAGames"])
		array_push(music_arr, ["event:/modded-music/layers", "Layers of Fear - DAGames"])
		array_push(music_arr, ["event:/modded-music/relived", "HOAA: Relived Medley - IRIS"])
		array_push(music_arr, ["event:/modded-music/champion", "Born Champion - DAGames"])
		array_push(music_arr, ["event:/modded-music/sky", "Sky Hygh - DAGames"])
		array_push(music_arr, ["event:/modded-music/gt", "GT Medley - IRIS"])
	}
}
else if obj_player1.character == "R"
{
	music_arr =
	[
		["event:/modded-music/mountains", "Tallest Mountains - Will Ryan"],
		["event:/modded-music/champion", "Born Champion - DAGames"],
		["event:/modded-music/sky", "Sky Hygh - DAGames"],
		["event:/modded-music/date", "Another Date: Remake - DAGames"],
		["event:/modded-music/breathN", "Take My Breath Away: Nightcore - DAGames"],
		["event:/modded-music/explodeN", "About to Explode: Nightcore - W.A.R"],
		["event:/modded-music/discord", "Discord - CG5 n' DAGames"],
		["event:/modded-music/cordN", "LLWTC: Nightcore - Will Ryan Originals"],
		["event:/modded-music/allnight", "Not Here All Night: Alt Mix - DAGames"],
		["event:/modded-music/dimetrixN", "Dimetrix: Nightcore - IRIS"],
		["event:/modded-music/deadlockN", "Plague: Nightlock - IRIS"],
		["event:/modded-music/cyanide", "Instruments of Cyanide - DAGames"],
		["event:/modded-music/exile", "Birth From Exile - IRIS"],
		["event:/modded-music/gt", "GT Medley - IRIS"],
		["event:/modded-music/bjaraborn", "One More - IRIS"]
	];
	if global.extras_inflap != 0
	{
		array_push(music_arr, ["event:/music/soundtest/pizzatime", "I'll Make Them Whole - DAGames"])
		array_push(music_arr, ["event:/music/soundtest/lap", "Brace For The Freight Train - DAGames"])
		array_push(music_arr, ["event:/modded-music/train", "BFTFT: Remix - DAGames n' Silva Hound"])
		array_push(music_arr, ["event:/music/soundtest/bye", "HOAA: Resurrection Medley - IRIS"])
		array_push(music_arr, ["event:/music/soundtest/pizzatimenoise", "Shot Down By The Mirror - DAGames"])
		array_push(music_arr, ["event:/music/soundtest/lap2noise", "Mad Man - DAGames"])
		array_push(music_arr, ["event:/music/soundtest/noisefinalescape", "HOAA Medley - IRIS"])
		array_push(music_arr, ["event:/modded-music/hold", "Can't Hold Me Back - DAGames"])
		array_push(music_arr, ["event:/modded-music/blackssd", "Black: SSD - DAGames"])
		array_push(music_arr, ["event:/modded-music/hoaaalt", "HOAA Medley: Alt Version - IRIS"])
		array_push(music_arr, ["event:/modded-music/retribution", "Retribution - DAGames"])
		array_push(music_arr, ["event:/modded-music/gameover", "Game Over - DAGames"])
		array_push(music_arr, ["event:/modded-music/greenssd", "Green: SSD - DAGames"])
		array_push(music_arr, ["event:/modded-music/layers", "Layers of Fear - DAGames"])
		array_push(music_arr, ["event:/modded-music/relived", "HOAA: Relived Medley - IRIS"])
		array_push(music_arr, ["event:/modded-music/dream", "Dream On - DAGames"])
		array_push(music_arr, ["event:/modded-music/wave", "Summon The Wave - DAGames"])
		array_push(music_arr, ["event:/modded-music/dotd", "DOTD Medley - IRIS"])
	}
}
if (!obj_player1.ispeppino)
{
    if ( !global.doisemode)
	{
        music_arr = 
		[
			["event:/modded-music/lieutenant", "Wake Up Lieutenant - DAGames"],
			["event:/music/soundtest/pizzatimenoise", "Shot Down By The Mirror - DAGames"],
			["event:/music/soundtest/lap2noise", "Mad Man - DAGames"],
			["event:/music/soundtest/entrancenoise", "Follow Greet Wait Repeat - DAGames"],
			["event:/modded-music/calling", "I'm Calling - W.A.R"],
			["event:/music/soundtest/doise", "Addict - Lollia n' DAGames"],
			["event:/modded-music/die", "It's Time To Die: O.S. Mix - DAGames"],
			["event:/music/soundtest/pizzaheadnoise", "Goliath's Throne: Rethroned - IRIS"],
			["event:/music/soundtest/noisefinalescape", "HOAA Medley - IRIS"],
			["event:/music/soundtest/creditsnoise", "Cup De Grace - DAGames"],
			["event:/music/w4/sewersecret", "I'm The Purple Guy: Secret Mix - DAGames"]
		];
		if global.extras_inflap != 0
		{
			array_push(music_arr, ["event:/music/soundtest/pizzatime", "I'll Make Them Whole - DAGames"])
			array_push(music_arr, ["event:/music/soundtest/lap", "Brace For The Freight Train - DAGames"])
			array_push(music_arr, ["event:/modded-music/train", "BFTFT: Remix - DAGames n' Silva Hound"])
			array_push(music_arr, ["event:/music/soundtest/bye", "HOAA: Resurrection Medley - IRIS"])
			array_push(music_arr, ["event:/modded-music/hold", "Can't Hold Me Back - DAGames"])
			array_push(music_arr, ["event:/modded-music/blackssd", "Black: SSD - DAGames"])
			array_push(music_arr, ["event:/modded-music/hoaaalt", "HOAA Medley: Alt Version - IRIS"])
			array_push(music_arr, ["event:/modded-music/retribution", "Retribution - DAGames"])
			array_push(music_arr, ["event:/modded-music/gameover", "Game Over - DAGames"])
			array_push(music_arr, ["event:/modded-music/greenssd", "Green: SSD - DAGames"])
			array_push(music_arr, ["event:/modded-music/layers", "Layers of Fear - DAGames"])
			array_push(music_arr, ["event:/modded-music/relived", "HOAA: Relived Medley - IRIS"])
			array_push(music_arr, ["event:/modded-music/dream", "Dream On - DAGames"])
			array_push(music_arr, ["event:/modded-music/wave", "Summon The Wave - DAGames"])
			array_push(music_arr, ["event:/modded-music/dotd", "DOTD Medley - IRIS"])
			array_push(music_arr, ["event:/modded-music/champion", "Born Champion - DAGames"])
			array_push(music_arr, ["event:/modded-music/sky", "Sky Hygh - DAGames"])
			array_push(music_arr, ["event:/modded-music/gt", "GT Medley - IRIS"])
		}
	}
    else
	{
        music_arr = 
		[
			["event:/modded-music/kitty", "Bad Kitty - DAGames"],
			["event:/modded-music/hold", "Can't Hold Me Back - DAGames"],			
			["event:/modded-music/blackssd", "Black: SSD - DAGames"],
			["event:/modded-music/humanity", "Dear Humanity - Onyx Colony"],
			["event:/modded-music/falling", "Falling Down Stairs Remix! - Will Ryan"],
			["event:/music/soundtest/noise", "Living Life Without The Cord - Will Ryan Originals"],
			["event:/modded-music/die", "It's Time To Die: O.S. Mix - DAGames"],
			["event:/modded-music/throne", "Goliath's Throne - IRIS"],
			["event:/modded-music/hoaaalt", "HOAA Medley: Alt Version - IRIS"],
			["event:/music/soundtest/creditsnoise", "Cup De Grace - DAGames"],
			["event:/music/w4/sewersecret", "I'm The Purple Guy: Secret Mix - DAGames"]
		];
		if global.extras_inflap != 0
		{
			array_push(music_arr, ["event:/music/soundtest/pizzatime", "I'll Make Them Whole - DAGames"])
			array_push(music_arr, ["event:/music/soundtest/lap", "Brace For The Freight Train - DAGames"])
			array_push(music_arr, ["event:/modded-music/train", "BFTFT: Remix - DAGames n' Silva Hound"])
			array_push(music_arr, ["event:/music/soundtest/bye", "HOAA: Resurrection Medley - IRIS"])
			array_push(music_arr, ["event:/music/soundtest/noisefinalescape", "HOAA Medley - IRIS"])
			array_push(music_arr, ["event:/modded-music/retribution", "Retribution - DAGames"])
			array_push(music_arr, ["event:/modded-music/gameover", "Game Over - DAGames"])
			array_push(music_arr, ["event:/modded-music/greenssd", "Green: SSD - DAGames"])
			array_push(music_arr, ["event:/modded-music/layers", "Layers of Fear - DAGames"])
			array_push(music_arr, ["event:/modded-music/relived", "HOAA: Relived Medley - IRIS"])
			array_push(music_arr, ["event:/modded-music/dream", "Dream On - DAGames"])
			array_push(music_arr, ["event:/modded-music/wave", "Summon The Wave - DAGames"])
			array_push(music_arr, ["event:/modded-music/dotd", "DOTD Medley - IRIS"])
			array_push(music_arr, ["event:/modded-music/champion", "Born Champion - DAGames"])
			array_push(music_arr, ["event:/modded-music/sky", "Sky Hygh - DAGames"])
			array_push(music_arr, ["event:/modded-music/gt", "GT Medley - IRIS"])
		}
	}
}
if global.swapmode
{
    if !global.doisemode
	{
		music_arr = [
			["event:/modded-music/ladies", "Here Comes The Ladies - DAGames"],
			["event:/modded-music/retribution", "Retribution - DAGames"],
			["event:/modded-music/gameover", "Game Over - DAGames"],
			["event:/modded-music/page", "Turn The Final Page - DAGames"],
			["event:/modded-music/iamme", "I Am Me - DAGames"],
			["event:/modded-music/stand", "We Stand In Line - IRIS"],
			["event:/modded-music/imagination", "Imagination! - Will Ryan"],
			["event:/modded-music/boomzoom", "Boomer VS. Zoomer - Bantermation"],
			["event:/modded-music/slave", "STTFL Remix - DAGames n' TLT"],
			["event:/modded-music/blue", "Blue - DAGames"],
			["event:/modded-music/purple", "I'm The Purple Guy: Alt. Mix - DAGames"],
			["event:/modded-music/dawn", "Until Dawn: R.R.F. Mix - DAGames"],
			["event:/modded-music/behind", "Left Behind - DAGames"],
			["event:/modded-music/atomic", "Atomic Renegade - DAGames"],
			["event:/modded-music/bloodline", "Join The Bloodline - Will Ryan Originals"],
			["event:/modded-music/relived", "HOAA: Relived Medley - IRIS"],
			["event:/modded-music/brothers", "Brothers In Arms - DAGames"],
			["event:/modded-music/hail", "Hail To The Jester Queen n' King - DAGames"],
			["event:/modded-music/havok", "Havok Be Thy Game: Rethroned - IRIS"],
			["event:/music/w1/medievalsecret", "Freaky Machine: Chromatic Mix - DAGames"],
			["event:/music/w2/graveyardsecret", "Forget This - Onyx Colony"],
			["event:/music/w2/farmsecret", "Crank It Loud - W.A.R"],
			["event:/music/w3/golfsecret", "Slave To The Factory Line: Secret Mix - DAGames"],
			["event:/music/w4/streetsecret", "Red - DAGames"],
			["event:/music/w4/sewersecret", "It's Time To Die: Alt. Secret Mix - DAGames"],
			["event:/music/w4/freezersecret", "Until Dawn: Secret Mix - DAGames"],
			["event:/music/w5/kidspartysecret", "March Onward To Your Nightmare - DAGames"],
			["event:/music/secretworld", "Shitpost Medley: Alt. Mix - W.A.R n' DAGames"]
		]
		if global.extras_inflap != 0
		{
			array_push(music_arr, ["event:/music/soundtest/pizzatime", "I'll Make Them Whole - DAGames"])
			array_push(music_arr, ["event:/music/soundtest/lap", "Brace For The Freight Train - DAGames"])
			array_push(music_arr, ["event:/modded-music/train", "BFTFT: Remix - DAGames n' Silva Hound"])
			array_push(music_arr, ["event:/music/soundtest/bye", "HOAA: Resurrection Medley - IRIS"])
			array_push(music_arr, ["event:/music/soundtest/pizzatimenoise", "Shot Down By The Mirror - DAGames"])
			array_push(music_arr, ["event:/music/soundtest/lap2noise", "Mad Man - DAGames"])
			array_push(music_arr, ["event:/music/soundtest/noisefinalescape", "HOAA Medley - IRIS"])
			array_push(music_arr, ["event:/modded-music/hold", "Can't Hold Me Back - DAGames"])
			array_push(music_arr, ["event:/modded-music/blackssd", "Black: SSD - DAGames"])
			array_push(music_arr, ["event:/modded-music/hoaaalt", "HOAA Medley: Alt Version - IRIS"])
			array_push(music_arr, ["event:/modded-music/greenssd", "Green: SSD - DAGames"])
			array_push(music_arr, ["event:/modded-music/layers", "Layers of Fear - DAGames"])
			array_push(music_arr, ["event:/modded-music/dream", "Dream On - DAGames"])
			array_push(music_arr, ["event:/modded-music/wave", "Summon The Wave - DAGames"])
			array_push(music_arr, ["event:/modded-music/dotd", "DOTD Medley - IRIS"])
			array_push(music_arr, ["event:/modded-music/champion", "Born Champion - DAGames"])
			array_push(music_arr, ["event:/modded-music/sky", "Sky Hygh - DAGames"])
			array_push(music_arr, ["event:/modded-music/gt", "GT Medley - IRIS"])
		}
	}
	else
	{
		music_arr = [
			["event:/modded-music/ladies", "Here Comes The Ladies - DAGames"],
			["event:/modded-music/greenssd", "Green: SSD - DAGames"],
			["event:/modded-music/layers", "Layers of Fear - DAGames"],
			["event:/modded-music/lost", "Lost In The Dark - DAGames"],
			["event:/modded-music/iamme", "I Am Me - DAGames"],
			["event:/modded-music/stand", "We Stand In Line - IRIS"],
			["event:/modded-music/imagination", "Imagination! - Will Ryan"],
			["event:/modded-music/boomzoom", "Boomer VS Zoomer - Bantermation"],
			["event:/modded-music/slave", "STTFL Remix - DAGames n' TLT"],
			["event:/modded-music/blue", "Blue - DAGames"],
			["event:/modded-music/purple", "I'm The Purple Guy: Alt. Mix - DAGames"],
			["event:/modded-music/dawn", "Until Dawn: R.R.F. Mix - DAGames"],
			["event:/modded-music/behind", "Left Behind - DAGames"],
			["event:/modded-music/atomic", "Atomic Renegade - DAGames"],
			["event:/modded-music/bloodline", "Join The Bloodline - Will Ryan Originals"],
			["event:/modded-music/relived", "HOAA: Relived Medley - IRIS"],
			["event:/modded-music/brothers", "Brothers In Arms - DAGames"],
			["event:/modded-music/hail", "Hail To The Jester Queen n' King - DAGames"],
			["event:/modded-music/havok", "Havok Be Thy Game: Rethroned - IRIS"],
			["event:/music/w1/medievalsecret", "Freaky Machine: Chromatic Mix - DAGames"],
			["event:/music/w2/graveyardsecret", "Forget This - Onyx Colony"],
			["event:/music/w2/farmsecret", "Crank It Loud - W.A.R"],
			["event:/music/w3/golfsecret", "Slave To The Factory Line: Secret Mix - DAGames"],
			["event:/music/w4/streetsecret", "Red - DAGames"],
			["event:/music/w4/sewersecret", "It's Time To Die: Alt. Secret Mix - DAGames"],
			["event:/music/w4/freezersecret", "Until Dawn: Secret Mix - DAGames"],
			["event:/music/w5/kidspartysecret", "March Onward To Your Nightmare - DAGames"],
			["event:/music/secretworld", "Shitpost Medley: Alt. Mix - W.A.R n' DAGames"]
		]
		if global.extras_inflap != 0
		{
			array_push(music_arr, ["event:/music/soundtest/pizzatime", "I'll Make Them Whole - DAGames"])
			array_push(music_arr, ["event:/music/soundtest/lap", "Brace For The Freight Train - DAGames"])
			array_push(music_arr, ["event:/modded-music/train", "BFTFT: Remix - DAGames n' Silva Hound"])
			array_push(music_arr, ["event:/music/soundtest/bye", "HOAA: Resurrection Medley - IRIS"])
			array_push(music_arr, ["event:/music/soundtest/pizzatimenoise", "Shot Down By The Mirror - DAGames"])
			array_push(music_arr, ["event:/music/soundtest/lap2noise", "Mad Man - DAGames"])
			array_push(music_arr, ["event:/music/soundtest/noisefinalescape", "HOAA Medley - IRIS"])
			array_push(music_arr, ["event:/modded-music/hold", "Can't Hold Me Back - DAGames"])
			array_push(music_arr, ["event:/modded-music/blackssd", "Black: SSD - DAGames"])
			array_push(music_arr, ["event:/modded-music/hoaaalt", "HOAA Medley: Alt Version - IRIS"])
			array_push(music_arr, ["event:/modded-music/retribution", "Retribution - DAGames"])
			array_push(music_arr, ["event:/modded-music/gameover", "Game Over - DAGames"])
			array_push(music_arr, ["event:/modded-music/dream", "Dream On - DAGames"])
			array_push(music_arr, ["event:/modded-music/wave", "Summon The Wave - DAGames"])
			array_push(music_arr, ["event:/modded-music/dotd", "DOTD Medley - IRIS"])
			array_push(music_arr, ["event:/modded-music/champion", "Born Champion - DAGames"])
			array_push(music_arr, ["event:/modded-music/sky", "Sky Hygh - DAGames"])
			array_push(music_arr, ["event:/modded-music/gt", "GT Medley - IRIS"])
		}
	}
}

if !global.option_datoggle
{
	music_arr = [
		["event:/music/soundtest/intro", "Time For A Smackdown - MrSauceman"],
		["event:/music/soundtest/pizzadeluxe", "Pizza Deluxe - PostElvis"],
		["event:/music/soundtest/funiculi", "funiculi funicula - ClascyJitto"],
		["event:/music/soundtest/pizzatime", "It's Pizza Time! - MrSauceman"],
		["event:/music/soundtest/lap", "The Death That I Deservioli - MrSauceman"],
		["event:/music/soundtest/mondays", "Mondays - MrSauceman"],
		["event:/music/soundtest/unearthly", "Unearthly Blues - MrSauceman"],
		["event:/music/soundtest/hotspaghetti", "Hot Spaghetti - MrSauceman"],
		["event:/music/soundtest/coldspaghetti", "Cold Spaghetti - MrSauceman"],
		["event:/music/soundtest/theatrical", "Theatrical Shenanigans - MrSauceman"],
		["event:/music/soundtest/putonashow", "Put On A Show!! - ClascyJitto"],
		["event:/music/soundtest/dungeon", "Dungeon Freakshow - ClascyJitto"],
		["event:/music/soundtest/pepperman", "Pepperman Strikes! - MrSauceman"],
		["event:/music/soundtest/tuesdays", "Tuesdays - MrSauceman"],
		["event:/music/soundtest/oregano", "Oregano Desert - ClascyJitto"],
		["event:/music/soundtest/ufo", "Oregano UFO - ClascyJitto"],
		["event:/music/soundtest/tombstone", "Tombstone Arizona - MrSauceman"],
		["event:/music/soundtest/mort", "Mort's Farm - ClascyJitto"],
		["event:/music/soundtest/kidsmenu", "What's On The Kid's Menu? - ClascyJitto"],
		["event:/music/soundtest/yeehaw", "Yeehaw Deliveryboy - ClascyJitto"],
		["event:/music/soundtest/vigilante", "Calzonification - MrSauceman"],
		["event:/music/soundtest/wednesdays", "Wednesdays - ClascyJitto"],
		["event:/music/soundtest/tropical", "Tropical Crust - MrSauceman"],
		["event:/music/soundtest/forest1", "mmm yess put the tree on my pizza - ClascyJitto"],
		["event:/music/soundtest/gustavo", "gustavo - ClascyJitto"],
		["event:/music/soundtest/forest2", "Wudpecker - ClascyJitto"],
		["event:/music/soundtest/goodeatin", "Good Eatin' - ClascyJitto"],
		["event:/music/soundtest/extraterrestial", "Extraterrestial Wahwahs - MrSauceman"],
		["event:/music/soundtest/noise", "Pimpin' Hot Stuff - MrSauceman"],
		["event:/music/soundtest/thursdays", "Thursdays - ClascyJitto"],
		["event:/music/soundtest/tubular", "Tubular Trash Zone - MrSauceman"],
		["event:/music/soundtest/engineer", "Pizza Engineer - MrSauceman"],
		["event:/music/soundtest/saucemachine", "Peppino's Sauce Machine - MrSauceman"],
		["event:/music/soundtest/bitethecrust", "Bite The Crust - MrSauceman"],
		["event:/music/soundtest/wayoftheitalian", "Way of the Italian - MrSauceman"],
		["event:/music/soundtest/preheat", "dont preheat your oven - ClascyJitto"],
		["event:/music/soundtest/celsius", "Celsius Troubles - ClascyJitto"],
		["event:/music/soundtest/plains", "On the Rocks - MrSauceman"],
		["event:/music/soundtest/fakepep", "Pizza Time Never Ends!! - ClascyJitto"],
		["event:/music/soundtest/fridays", "Fridays - MrSauceman"],
		["event:/music/soundtest/chateau", "There's A Bone In My Spaghetti! - MrSauceman"],
		["event:/music/soundtest/tunnely", "Tunnely Shimbers - MrSauceman"],
		["event:/music/soundtest/thousand", "Thousand March - MrSauceman"],
		["event:/music/soundtest/unexpectancy1", "Unexpectancy, Part 1 - MrSauceman"],
		["event:/music/soundtest/unexpectancy2", "Unexpectancy, Part 2 - MrSauceman"],
		["event:/music/soundtest/unexpectancy3", "Unexpectancy, Part 3 - MrSauceman"],
		["event:/music/soundtest/bye", "Bye Bye There! - MrSauceman"],
		["event:/music/soundtest/notime", "Receding Hairline Celebration Party - MrSauceman"],
		["event:/music/soundtest/meatphobia", "Meatphobia - MrSauceman"],
		["event:/music/soundtest/mayhem", "Pizza Mayhem Instrumental - MrSauceman"],
		["event:/music/soundtest/mayhem2", "Pizza Mayhem - MrSauceman"],
		["event:/music/w1/entrancesecret", "An Entrance Secret - ClascyJitto"],
		["event:/music/w1/medievalsecret", "A Medieval Secret - ClascyJitto"],
		["event:/music/w1/dungeonsecret", "A Dungeon Secret - ClascyJitto"],
		["event:/music/w1/ruinsecret", "A Ruin Secret - ClascyJitto"],
		["event:/music/w2/desertsecret", "A Desert Secret - ClascyJitto"],
		["event:/music/w2/farmsecret", "A Farm Secret - ClascyJitto"],
		["event:/music/w2/graveyardsecret", "An Undead Secret - ClascyJitto"],
		["event:/music/w2/saloonsecret", "A Saloon Secret - ClascyJitto"],
		["event:/music/w3/beachsecret", "A Secret in the Sands - ClascyJitto"],
		["event:/music/w3/forestsecret", "A Secret in the Trees - ClascyJitto"],
		["event:/music/w3/golfsecret", "A Secret Hole in One - ClascyJitto"],
		["event:/music/w3/spacesecret", "An Space Secret - ClascyJitto"],
		["event:/music/w4/freezersecret", "A Frozen Secret - ClascyJitto"],
		["event:/music/w4/industrialsecret", "An Industry Secret - ClascyJitto"],
		["event:/music/w4/sewersecret", "A Sewer Secret - ClascyJitto"],
		["event:/music/w4/streetsecret", "A Secret In The Streets - ClascyJitto"],
		["event:/music/w5/kidspartysecret", "A Secret You Don't Want To Find - ClascyJitto"],
		["event:/music/w5/warsecret", "A War Secret - ClascyJitto"],
		["event:/music/soundtest/secretworld", "Secret Lockin' - ClascyJitto"],
		["event:/music/soundtest/halloweenpause", "Spacey Pumpkins - MrSauceman"],
		["event:/music/soundtest/halloweenstart", "The Bone Rattler - MrSauceman"],
		["event:/music/soundtest/halloweenrace", "The Runner - PostElvis"]
	]
if ((!obj_player1.ispeppino) || global.swapmode)
    music_arr = [
		["event:/music/soundtest/entrancenoise", "The Noise's Jam-Packed Radical Anthem - MrSauceman"],
		["event:/music/soundtest/doise", "Impasta Syndrome - MrSauceman"],
		["event:/music/soundtest/pizzatimenoise", "Distasteful Anchovi - ClascyJitto"],
		["event:/music/soundtest/lap2noise", "World Wide Noise - ClascyJitto"],
		["event:/music/soundtest/pizzaheadnoise", "Unexpectancy, Part 3 (Remix) - ClascyJitto"],
		["event:/music/soundtest/noisefinalescape", "I Need A Noise - MrSauceman"],
		["event:/music/soundtest/creditsnoise", "New Noise Resolutionz - ClascyJitto"]
	]
}

index = 0;
music_event = fmod_event_create_instance(music_arr[0][0]);

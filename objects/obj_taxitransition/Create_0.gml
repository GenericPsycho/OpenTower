bgsprite = -4;
bgindex = 0;
shake_mag = 0;
shake_mag_acc = 0;
shakecount = 0;
fade = 0;
fadein = true;
start = false;
depth = -600;
alarm[0] = 140;
fmod_set_parameter("musicmuffle", 1, false);

/* DON'T ASK ABOUT THIS, IS LIKE THE COCONUT ON TF2, BUT ONLY FOR SWAP MODE
 *	-GP
 */ 
if room == boss_pizzaface
	instance_destroy()
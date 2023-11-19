// Author: Zak

// ADD THIS TO description.ext - DEFINES THE LOCATION OF THE SOUND FILE TO BE USED
class CfgSounds {
	sounds[] = {};
	class hitReactionSound {
		name = "hitReactionSound";
		sound[] = {"\sounds\body_1", 300, 1};
		titles[] = {0,""};
	};
};

// COPY PASTE THIS INTO THE INIT OF EVERY PLAYER UNIT IN THE EDITOR - THIS CODE MUST BE EXCEUTED LOCALY TO WORK CORRECTLY (as far as I know anyway :3 )
this addEventHandler ["Hit",{playSound "hitReactionSound"}];
// initServer.sqf
// Author: Zak
// Based off code by Larrow 

//for use with simunitions only
//when unit is knocked uncon, check if not player. if not player, set to captive
//systemChat "test";
[ "ace_unconscious" , {
	params[ "_unit" , "_state" ];
	if ( _state ) then {
		sleep 2;
		//systemChat str _unit;
		//systemChat str _state;
		if ( isPlayer _unit == false ) then {
			//systemChat "Unit is AI";
			try{
				["ACE_captives_setSurrendered", [_unit, true], _unit] call CBA_fnc_targetEvent /* stolen from Dedmen, bc idk how event handlers work apparently :p UPDATE20231119 - I know how they work now (vaugely) */
			} catch { /* I don't know how to read the captive state of a unit, so this catches errors from trying to make a surrendered unit surrender again*/ };
		} else { /* do nothing */};
	};
}] call CBA_fnc_addEventHandler;
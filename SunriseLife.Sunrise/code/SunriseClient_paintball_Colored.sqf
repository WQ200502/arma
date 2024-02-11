/*
	
	Filename: 	SunriseClient_paintball_Colored.sqf
	Project: 	Sunrise Life
	Author:		Sunrise Team
	Steam:		Sunrise Team


*/
#include "..\script_macros.hpp"
params [
	["_unit",Objnull,[Objnull]],
	["_shooter",Objnull,[Objnull]]
];
if (isNull _unit) exitWith {};
if (isNull _shooter) exitWith {[_unit,"colored"] call SunriseClient_system_clearGlobalVar};
if (!alive _unit OR !(_unit GVAR ["inPBfight",false])) exitWith {[_unit,"colored"] call SunriseClient_system_clearGlobalVar};

if (_shooter isKindOf "Man" && alive _unit) then {
	if !(_unit GVAR ["colored",false]) then {
		_unit SVAR ["colored",true,true];		
		[2,format["Вас подстрелил %1! Вы выбываете из игры",GVAR_RNAME(_shooter)]] remoteExecCall ["SunriseClient_system_broadcast",_unit];		
		["dead",GVAR_RNAME(player)] remoteExecCall ["SunriseClient_paintball_Message",RCLIENT];
		disableUserInput true;
		_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL _unit);
		_obj setPosATL (getPosATL _unit);
		[_unit,"AinjPfalMstpSnonWnonDf_carried_fallwc"] remoteExecCall ["SunriseClient_system_animSync",RCLIENT];
		_unit attachTo [_obj,[0,0,0]];
		for "_i" from 1 to 10 do {
			titleText[format["Для вас бой закончится через %1 сек.", (11 - _i)],"PLAIN"];
			uiSleep 1;			
		};
		detach _unit;
		[_unit,"amovppnemstpsraswrfldnon"] remoteExecCall ["SunriseClient_system_animSync",RCLIENT];
		titleText["","PLAIN"];
		[_unit,"colored"] call SunriseClient_system_clearGlobalVar;	
		[_unit,"inPBfight"] call SunriseClient_system_clearGlobalVar;	
		disableUserInput false;		
	};
} else {	
	[_unit,"colored"] call SunriseClient_system_clearGlobalVar;
};
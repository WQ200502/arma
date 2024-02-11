/*

	Filename: 	SunriseClient_system_copSiren.sqf
	Project: 	Sunrise Life
	Author:		Sunrise Team
	Steam:		Sunrise Team


*/
#include "..\..\script_macros.hpp"
private _vehicle = param [0,objNull,[objNull]];
if (isNull _vehicle) exitWith {};
if !(_vehicle GVAR ["siren",false]) exitWith {};

while {true} do {
	if (isNull _vehicle) exitWith {};
	if (EQUAL((crew _vehicle),[]) OR !alive _vehicle) then {[_vehicle,"siren"] call SunriseClient_system_clearGlobalVar};
	if !(_vehicle GVAR ["siren",false]) exitWith {};
	_vehicle say3D ["SirenLong", 300, 1];
	uiSleep 5.6;
};
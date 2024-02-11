/*

	Filename: 	SunriseClient_system_isHospitalNear.sqf
	Project: 	Sunrise Life
	Author:		Sunrise Team
	Steam:		Sunrise Team


*/
#include "..\..\script_macros.hpp"
private _unit = param [0,ObjNull,[ObjNull]];
if (isNull _unit) exitWith {false}; //Bad type

private _return = false;
private _hospital = nearestObjects[getPosATL _unit,["Land_Defibrillator_F"],15];

{
	if (_x GVAR ["hospitalRevive",false]) exitWith {_return = true};
} forEach _hospital;

_return;
/*
	
	Filename: 	SunriseClient_system_nearestDoor.sqf
	Project: 	Sunrise Life
	Author:		Sunrise Team
	Steam:		Sunrise Team


*/
#include "..\..\script_macros.hpp"
private _house = param [0,ObjNull,[ObjNull]];
if (isNull _house) exitWith {0};
if !(_house isKindOf "House_F") exitWith {0};

private _door = 0;
private _doors = getNumber(configFile >> "CfgVehicles" >> (typeOf _house) >> "numberOfDoors");
for "_i" from 1 to _doors do {	
	_worldSpace = _house modelToWorld (_house selectionPosition format["Door_%1_trigger",_i]);	
	if (player distance _worldSpace < 2) exitWith {_door = _i};
};

_door;
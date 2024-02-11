/*

	Filename: 	SunriseClient_gather_checkZone.sqf
	Project: 	Sunrise Life
	Author:		Sunrise Team
	Steam:		Sunrise Team


*/
#include "..\script_macros.hpp"
private _return = "";
private ["_curConfig","_resourceZones","_zoneSize"];
{
	_curConfig = _x;
	_resourceZones = getArray(_curConfig >> "zones");
	_zoneSize = getNumber(_curConfig >> "zoneSize");
	{
		if ([player,_x] call CBA_fnc_getDistance < _zoneSize) exitWith {_return = configName _curConfig};
	} forEach _resourceZones;
	if !(EQUAL(_return,"")) exitWith {};
} forEach ("true" configClasses (missionConfigFile >> "LifeCfgGather"));

_return
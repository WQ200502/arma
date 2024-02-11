/*

	Filename: 	SunriseClient_system_copHouseOwner.sqf
	Project: 	Sunrise Life
	Author:		Sunrise Team
	Steam:		Sunrise Team


*/
#include "..\..\script_macros.hpp"
private _house = param [0,ObjNull,[ObjNull]];
if (isNull _house OR !(_house isKindOf "House_F")) exitWith {};
if (isNil {(_house GVAR "house_owner")}) exitWith {[localize "STR_House_Raid_NoOwner","error"] call SunriseClient_gui_bottomNotification};

private _uid = (_house GVAR "house_owner") select 0;
if !([_uid] call SunriseClient_system_isUIDActive) exitWith {hint localize "STR_House_Raid_OwnerOff"};

hint parseText format["<t color='#FF0000'><t size='2'>" +(localize "STR_House_Raid_Owner")+ "</t></t><br/>%1",(_house GVAR "house_owner") select 1];
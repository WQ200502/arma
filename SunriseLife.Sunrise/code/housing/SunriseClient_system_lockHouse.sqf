/*

	Filename: 	SunriseClient_system_lockHouse.sqf
	Project: 	Sunrise Life
	Author:		Sunrise Team
	Steam:		Sunrise Team


*/
#include "..\..\script_macros.hpp"
private _house = param [0,ObjNull,[ObjNull]];
if (isNull _house OR !(_house isKindOf "House_F")) exitWith {};
if (isNil {_house GVAR "house_owner"}) exitWith {};

if !(_house in life_vehicles OR _house in life_tempHouses) exitWith {hint "У вас нет ключей от дома"};

private _house_box = _house GVAR ["house_box",objNull];

if (!isNull _house_box && {[_house_box] call SunriseClient_system_isTrunkInUse}) exitWith {hint "Хранилище используется"};

if (_house GVAR ["locked",false]) then {
	private _uid = (_house GVAR "house_owner") select 0;
	if !([_uid] call SunriseClient_system_isUIDActive) exitWith {[localize "STR_House_OwnerOffline","error"] call SunriseClient_gui_bottomNotification};
	if (server_restartSoon) exitWith {hint "Надвигается буря. Доступ к контейнеру закрыт."};

	[[_house,player],"unlockHouseContainer","SYS",false] call SunriseClient_system_hcExec;

	//titleText ["Отправка запроса на сервер...","PLAIN"];
} else {
	if (!isNull _house_box) then {deleteVehicle _house_box;};	
	[_house,"house_box"] call SunriseClient_system_clearGlobalVar;
	_house SVAR ["locked",true,true];
	//titleText[localize "STR_House_StorageLock","PLAIN"];
	[localize "STR_House_StorageLock"] spawn SunriseClient_gui_Notification;
};
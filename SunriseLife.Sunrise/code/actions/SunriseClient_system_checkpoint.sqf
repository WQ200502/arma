/*

	Filename: 	SunriseClient_system_checkpoint.sqf
	Project: 	Sunrise Life
	Author:		Sunrise Team
	Steam:		Sunrise Team


*/
#include "..\..\script_macros.hpp"
private ["_checkpointMark","_origName","_vehicleData","_vehicleName","_cP","_time","_cpRate","_markColor","_gFund","_kppStand"];
_checkpointMark = param [0,"",[""]];

_kppStand = nearestObject [player, "Land_InfoStand_V2_F"];
if (isNil {grpPlayer GVAR "gang_name"}) exitWith {titleText[localize "STR_GNOTF_CreateGang","PLAIN"]};
if (_kppStand GVAR ["gangOwner",grpNull] isEqualTo grpPlayer) exitWith {hint "Ваша группировка уже захватила КПП"};
if (life_medDuty) exitWith {hint "Медики не имеют права захватывать КПП"};
if (_kppStand GVAR ["inCapture",FALSE]) exitWith {hint "Это КПП уже захватывается"};
if ((grpPlayer GVAR ["gang_license","-1"] isEqualTo "-1") && !(grpPlayer isEqualTo life_copGroup)) exitWith {hint "Только прем. организации могут захватывать КПП"};
private _minCops = LIFE_SETTINGS(getNumber,"life_cop_min");
if (count units life_copGroup < _minCops) exitWith {hint format[localize "STR_Civ_NotEnoughCops",_minCops]};
switch (_checkpointMark) do
{
	//case "base_kpp_kavala":{_origName = localize "STR_MF_CPKavala";};
	case "base_kpp_atira":{_origName = localize "STR_MF_CPAtira";};
};
[0,format["%1 захватывается силами %2", _origName,grpPlayer GVAR "gang_name"]] remoteExecCall ["SunriseClient_system_broadcast",RCLIENT];
hint "Захватываем КПП";

call SunriseClient_actions_inUse;

_cP = 0;
_time = 0.2;
_cpRate = 0.001;//0.001 = 8.3 минуты
_time = 0.6;
titleText["Захватываем КПП","PLAIN"];
while{true} do {
	uiSleep _time;
	_cP = _cP + _cpRate;
	[_cP,"process"] call SunriseClient_system_progressBar;
	[_kppStand,"inCapture",true] call CBA_fnc_setVarNet;
	if (_cP >= 1 OR (position player distance getmarkerpos _checkpointMark > 50) OR (call SunriseClient_system_isInterrupted)) exitWith {[_kppStand,"inCapture"] call SunriseClient_system_clearGlobalVar;};
};
["life_progress"] call SunriseClient_gui_DestroyRscLayer;
life_action_inUse = false;

if (call SunriseClient_system_isInterrupted) exitWith {[_kppStand,"inCapture"] call SunriseClient_system_clearGlobalVar;};

if (position player distance getmarkerpos _checkpointMark > 50) exitWith {hint "Вы слишком далеко от КПП, держитесь в 50 метрах от него";[_kppStand,"inCapture"] call SunriseClient_system_clearGlobalVar;};
_markColor = switch(true) do {
	case (life_copDuty): {"ColorWEST";};
	default {"ColorCIV";};
};
_checkpointMark setMarkerText format ["%1 захвачен силами %2", _origName,grpPlayer GVAR "gang_name"];
_checkpointMark setMarkerColor _markColor;
[_kppStand,"inCapture"] call SunriseClient_system_clearGlobalVar;
hint "Вы успешно захватили КПП. Ваша группировка получила 50000 на счет банды.";
[0,format["%1 был захвачен силами %2", _origName,grpPlayer GVAR "gang_name"]] remoteExecCall ["SunriseClient_system_broadcast",RCLIENT];
_gFund = grpPlayer GVAR ["gang_bank",-1];
if (EQUAL(_gFund,-1)) then {
	["atm","add",50000] call SunriseClient_system_myCash;
	hint "Не удалось определить баланс группы. Начислено на банковский счет. Сообщите админу!";
} else {
	ADD(_gFund,50000);
	grpPlayer SVAR ["gang_bank",_gFund,true];
	[[1,grpPlayer,steamid],"updateGang"] call SunriseClient_system_hcExec;
};
[_kppStand,"gangOwner",grpPlayer] call CBA_fnc_setVarNet;
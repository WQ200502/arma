/*

	Filename: 	SunriseClient_system_deathScreenSetKiller.sqf
	Project: 	Sunrise Life
	Author:		Sunrise Team
	Steam:		Sunrise Team


*/
#include "..\..\script_macros.hpp"
private _uiDisp = GVAR_UINS ["Death_Screen_V2",displayNull];
if (isNull _uiDisp) exitWith {};

private _killerPID = param [0,"",[""]];
if (EQUAL(_killerPID,"")) then {
	(_uiDisp displayCtrl 66601) ctrlSetStructuredText parseText format ["<t size='0.9' align='center' valign='middle'><br/>Ваш PID: %1<br/>%2</t>",steamid,server_timeText];
} else {
	(_uiDisp displayCtrl 66601) ctrlSetStructuredText parseText format ["<t size='0.9' align='center' valign='middle'><br/>Ваш PID: %1<br/>PID убийцы: %2<br/>%3</t>",steamid,_killerPID,server_timeText];
};
/*

	Filename: 	SunriseClient_system_spikeStrip.sqf
	Project: 	Sunrise Life
	Author:		Sunrise Team
	Steam:		Sunrise Team


*/
#include "..\..\script_macros.hpp"
private["_position","_spikeStrip"];
if !(["srl_MetalWire"] call SunriseClient_system_removeItem) exitWith {["Не удалось удалить предмет","error"] call SunriseClient_gui_bottomNotification};

_spikeStrip = "Land_Razorwire_F" createVehicle [0,0,0];
_spikeStrip attachTo[player,[0,5.5,0]];
_spikeStrip setDir 90;
_spikeStrip SVAR ["item","spikeDeployed",true];

life_action_spikeStripDeploy = player addAction[localize "STR_ISTR_Spike_Place",{if (!isNull life_spikestrip) then {detach life_spikeStrip; life_spikeStrip = ObjNull;}; player removeAction life_action_spikeStripDeploy; life_action_spikeStripDeploy = nil;},"",999,false,false,"",'!isNull life_spikestrip'];
life_spikestrip = _spikeStrip;
waitUntil {uiSleep 0.3; isNull life_spikeStrip};
if (!isNil "life_action_spikeStripDeploy") then {player removeAction life_action_spikeStripDeploy;};
if (isNull _spikeStrip) exitWith {life_spikestrip = ObjNull;};
_spikeStrip setPos [(getPos _spikeStrip select 0),(getPos _spikeStrip select 1),0];
_spikeStrip setDamage 1;
life_action_spikeStripPickup = player addAction[localize "STR_ISTR_Spike_Pack",SunriseClient_system_packupSpikes,"",0,false,false,"",
' _spikes = nearestObjects[getPos player,["Land_Razorwire_F"],8] select 0; !isNil "_spikes" && !isNil {(_spikes getVariable "item")}'];
[_spikeStrip] remoteExecCall ["SunriseServer_system_spikeStrip",RSERV];
[] call SunriseClient_fast_hudWeaponUpdate;
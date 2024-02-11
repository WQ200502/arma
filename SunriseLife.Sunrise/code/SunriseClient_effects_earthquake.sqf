/*

	Filename: 	SunriseClient_effects_earthquake.sqf
	Project: 	Sunrise Life
	Author:		Sunrise Team
	Steam:		Sunrise Team


*/
#include "..\script_macros.hpp"
private _power = 2.1;
private _duration = 20;
private _compensation = 10;
private _frequency = 30;
private _eqsound = "Earthquake_04";
private _offset = 1;

enableCamShake true;
playsound _eqsound;
"DynamicBlur" ppEffectEnable true;
"DynamicBlur" ppEffectAdjust [_power/2];
"DynamicBlur" ppEffectCommit _offset;
uiSleep _offset;
"DynamicBlur" ppEffectAdjust [0];
"DynamicBlur" ppEffectCommit (_duration - _compensation);
addCamShake [_power, _duration + _compensation, _frequency];
uiSleep ( _duration - _compensation );
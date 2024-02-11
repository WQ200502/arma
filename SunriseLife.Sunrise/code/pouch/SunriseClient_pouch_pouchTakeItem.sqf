/*
	
	Filename: 	SunriseClient_system_houseTakeItem.sqf
	Project: 	Sunrise Life
	Author:		Sunrise Team
	Steam:		Sunrise Team


*/
#include "..\..\script_macros.hpp"
disableSerialization;
if (life_action_inUse) exitWith {};
if (EQUAL((lbCurSel 4102),-1)) exitWith {hint "Не выбрано"};

private _item = CONTROL_DATA(4102);
private _num = ctrlText 4105;

if !([_num] call SunriseClient_system_isnumber) exitWith {["Укажите количество в цифровом формате, а не символьном","error"] call SunriseClient_gui_bottomNotification;};
_num = parseNumber(_num);
if (_num <= 0) exitWith {hint "Число больше нуля..."};

private _itemInfo = [_item] call SunriseClient_system_itemDetails;
if (EQUAL(_itemInfo,[])) exitWith {};
if !([_item] call SunriseClient_system_canUseItem) exitWith {["Вы не можете использовать этот предмет","error"] call SunriseClient_gui_bottomNotification};

private _playerItems = [] call SunriseClient_system_getPlayerItems;

life_pouch params ["_pouch_data", "_pouch_weight"];
private _itemCaregory = _itemInfo select 4;
private _itemType = _itemInfo select 5;
private _itemWeight = _itemInfo select 6;


private _indexP = [_item,_playerItems] call SunriseClient_system_index;
private _indexH = [_item,_pouch_data] call SunriseClient_system_index;

if (EQUAL(_indexH,-1)) exitWith {hint "У вас нет такого предмета в хранилище"};
if (EQUAL(_itemCaregory,"Equipment") && (_num > 1)) exitWith {hint "Предметы одежды можно забирать только по одному"};

private _val = (_pouch_data select _indexH) select 1;
if (_num > _val) exitWith {hint "У вас нет такого количества предметов в хранилище"};

private _added = false;
private _misc = false;
private _numReal = 0;
private _message = "";

switch (true) do {
	case (EQUAL(_itemType,"Uniform")): {
		if !(EQUAL(PUNIFORM,"")) then {
			_added = [_item] call SunriseClient_system_addItemToInventory;
			if !(_added) then {_message = "Слот униформы занят и нет места в инвентаре. Или уберите текущую униформу, или освободите место в инвентаре."};
		} else {
			_added = [_item] call SunriseClient_system_addItem;
			if !(_added) then {_message = "Не удалось добавить униформу"};
		};
	};
	case (EQUAL(_itemType,"Vest")): {
		if !(EQUAL(PVEST,"")) then {
			_added = [_item] call SunriseClient_system_addItemToInventory;
			if !(_added) then {_message = "Слот бронежилета занят и нет места в инвентаре. Или уберите текущий бронежилет, или освободите место в инвентаре."};
		} else {
			_added = [_item] call SunriseClient_system_addItem;
			if !(_added) then {_message = "Не удалось добавить бронежилет"};
		};
	};
	case (EQUAL(_itemType,"Backpack")): {
		if (EQUAL(PBACKPACK,"")) then {
			_added = [_item] call SunriseClient_system_addItem;
			if !(_added) then {_message = "Не удалось добавить рюкзак"};
		} else {
			_message = "Нельзя положить рюкзак в рюазак. Уберите или выкиньте текущий!";
		};
	};

	default {
		for "_x" from 1 to _num do {
			if ([_item] call SunriseClient_system_addItem) then {
				_numReal = _numReal + 1;
				_misc = true;
			};
		};
		if (_numReal > 0) then {
			_added = true;
			if (_numReal > 1) then {
				_message = format["Взято из хранилища %1: %2 из %3",_itemInfo select 1,_numReal,_num];
			};
		} else {_message = "Не удалось добавить"};
	};
};


if !(_added) exitWith {hint format["%1",_message]};

private _takeButton = CONTROL(4100,4109);
call SunriseClient_actions_inUse;
player say3D "storeitem";
_takeButton ctrlEnable false;

if (EQUAL(_message,"")) then {
	hint "Предмет взят из хранилища";
} else {
	hint format["%1",_message];
};

if (_misc) then {
	_num = _numReal;
};

if (EQUAL((_val - _num),0)) then {
	_pouch_data set[_indexH,[-1]];
	_pouch_data = _pouch_data - [[-1]];
} else {
	_pouch_data set[_indexH,[_item,_val - _num]];
};

_pouch_weight = _pouch_weight - (_itemWeight * _num);

life_pouch = [_pouch_data,_pouch_weight];
[nil,(GVAR_UINS["House_Container_Filter",0])] call SunriseClient_pouch_pouchMenuFilter;

uiSleep 2;
_takeButton ctrlEnable true;
life_action_inUse = false;
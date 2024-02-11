/*

	Filename: 	SunriseClient_system_weaponShopBuyMags.sqf
	Project: 	Sunrise Life
	Author:		Sunrise Team
	Steam:		Sunrise Team


*/
#include "..\..\script_macros.hpp"
disableSerialization;
if (EQUAL((lbCurSel 38407),-1)) exitWith {titleText [localize "STR_Shop_Weapon_NoSelect","PLAIN"]};
if !([ctrlText 38408] call SunriseClient_system_isnumber) exitWith {titleText ["Укажите количество в цифровом формате, а не символьном","PLAIN"]};
private _num = parseNumber(ctrlText 38408);
if (_num <= 0) exitWith {};

private _item = CONTROL_DATA(38407);
if !(player canAdd _item) exitWith {titleText [localize "STR_NOTF_NoRoom","PLAIN"]};

private _priceMulti = CONTROL_VALUE(38407);
private _price = round (M_CONFIG(getNumber,"LifeCfgItems",_item,"price") / _priceMulti);
if (FETCH_CONST(life_donator) > 0) then {_price = [_price] call SunriseClient_system_discount};
if ((_price * _num) > CASH) exitWith {titleText [localize "STR_NOTF_NotEnoughMoney","PLAIN"]};

private _buyCount = 0;
private _moneyCount = 0;
for "_x" from 1 to _num do {
	if ([_item] call SunriseClient_system_addItem) then {
		_buyCount = _buyCount + 1;
		_moneyCount = _moneyCount + _price;
	};
};
if (_buyCount > 0) then {
	["cash","take",_moneyCount,"weaponShopBuyMags"] call SunriseClient_system_myCash;
	player say3D "caching";
	titleText [format[localize "STR_Shop_Weapon_BoughtItems",([_item] call SunriseClient_system_itemDetails) select 1,[_moneyCount] call SunriseClient_system_numberText,_buyCount,_num],"PLAIN"];
} else {titleText ["не удалось купить","PLAIN"]};

ctrlSetText[601,format["Наличность: $%1       ",[CASH] call SunriseClient_system_numberText]];

true
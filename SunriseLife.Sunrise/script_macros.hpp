/* System Wide Stuff */
#define SUB(var1,var2) var1 = var1 - var2
#define ADD(var1,var2) var1 = var1 + var2
#define SEL(ARRAY,INDEX) (ARRAY select INDEX)
#define DCASH SunriseClientCashMoneyD
#define CASH SunriseClientCashMoney
#define BANK SunriseClientAtmMoney
#define GANG_FUNDS grpPlayer GVAR ["gang_bank",0]
#define GANG_NAME grpPlayer GVAR ["gang_name",""]
#define VAR(NAME) SunriseClient##NAME

//RemoteExec Macros
#define RSERV 2 //Only server
#define RCLIENT -2 //Except server
#define RANY 0 //Global

//Namespace Macros
#define SVAR_MNS missionNamespace setVariable
#define GVAR_MNS missionNamespace getVariable
#define SVAR_UINS uiNamespace setVariable
#define SVAR_PNS parsingNamespace setVariable
#define GVAR_UINS uiNamespace getVariable
#define SVAR_PRNS profileNamespace setVariable
#define GVAR_PRNS profileNamespace getVariable

//Scripting Macros
#define CONST(var1,var2) var1 = compileFinal (if (typeName var2 == "STRING") then {var2} else {str(var2)})
#define CONSTVAR(var) var = compileFinal (if (typeName var == "STRING") then {var} else {str(var)})
#define FETCH_CONST(var) (call var)
#define PVAR_ALL(var) publicVariable var
#define PVAR_SERV(var) publicVariableServer var
#define PVAR_ID(var,id) id publicVariableClient var
#define GVAR getVariable
#define SVAR setVariable
#define RIFLE primaryWeapon player
#define RIFLE_ITEMS primaryWeaponItems player
#define PISTOL handgunWeapon player
#define PISTOL_ITEMS handgunItems player
#define LAUNCHER secondaryWeapon player
#define LAUNCHER_ITEMS secondaryWeaponItems player
#define PHEADGEAR headGear player
#define PBINOCULAR binocular player
#define PUNIFORM uniform player
#define PUNIFORM_ITEMS uniformItems player
#define PVEST vest player
#define PVEST_ITEMS vestItems player
#define PBACKPACK backpack player
#define PBACKPACK_ITEMS backpackItems player
#define PGOOGLES goggles player
#define P_ASSIGNED assignedItems player
#define CURWEAPON currentWeapon player
#define ANIMSTATE animationState player
#define GVAR_RNAME(unit1) unit1 GVAR ["realname",""]
#define GVAR_RTITLE(unit1) unit1 GVAR ["realtitle",""]
#define GVAR_RESTRAINED(unit1) unit1 GVAR ["restrained",false]
#define NOTATTACHED(unit1) (isNull attachedTo unit1)

//Display Macros
#define CONTROL(disp,ctrl) ((findDisplay ##disp) displayCtrl ##ctrl)

#define CONTROL_DATA(ctrl) (lbData[ctrl,lbCurSel ctrl])
#define CONTROL_VALUE(ctrl) (lbValue[ctrl,lbCurSel ctrl])
#define CONTROL_TEXT(ctrl) (lbText[ctrl,lbCurSel ctrl])

#define CONTROL_DATAI(ctrl,index) ctrl lbData index
#define CONTROL_TEXTI(ctrl,index) ctrl lbText index
#define CONTROL_VALUEI(ctrl,index) ctrl lbValue index

#define SETFADE(ctrl,var,commit) \
ctrl ctrlSetFade var; \
ctrl ctrlCommit commit;

#define FADEANIM(ctrl,commit) \
ctrl ctrlSetFade 1; \
ctrl ctrlCommit 0; \
ctrl ctrlSetFade 0; \
ctrl ctrlCommit commit;

//System Macros
#define grpPlayer group player
#define steamid getPlayerUID player

//Condition Macros
#define EQUAL(condition1,condition2) condition1 isEqualTo condition2
#define ISANIMSTATE(condition1) (animationState player) isEqualTo condition1
#define ISPSIDE(condition1) playerSide isEqualTo condition1
#define NOTINVEH(condition1) isNull objectParent condition1
#define KINDOF_ARRAY(a,b) [##a,##b] call {_veh = _this select 0;_types = _this select 1;_res = false; {if (_veh isKindOf _x) exitwith { _res = true };} forEach _types;_res}

#define LSALIVE(unit1) unit1 GVAR ["lifeState",""] isEqualTo "HEALTHY"
#define LSNOTALIVE(unit1) unit1 GVAR ["lifeState",""] in ["RESPAWN","INCAPACITATED","DEAD"]

#define LSINCAP(unit1) unit1 GVAR ["lifeState",""] isEqualTo "INCAPACITATED"
#define LSDEAD(unit1) unit1 GVAR ["lifeState",""] isEqualTo "DEAD"
#define LSRESP(unit1) unit1 GVAR ["lifeState",""] isEqualTo "RESPAWN"

//new for config system
#define M_CONFIG(TYPE,CFG,CLASS,ENTRY) TYPE(missionConfigFile >> CFG >> CLASS >> ENTRY)
#define M_CONFIG2(TYPE,CFG,SECTION,CLASS,ENTRY) TYPE(missionConfigFile >> CFG >> SECTION >> CLASS >> ENTRY)
#define BASE_CONFIG(CFG,CLASS) inheritsFrom(configFile >> CFG >> CLASS)
#define FETCH_CONFIG(TYPE,CFG,SECTION,CLASS,ENTRY) TYPE(configFile >> CFG >> SECTION >> CLASS >> ENTRY)
#define FETCH_CONFIG2(TYPE,CFG,CLASS,ENTRY) TYPE(configFile >> CFG >> CLASS >> ENTRY)
#define FETCH_CONFIG3(TYPE,CFG,SECTION,CLASS,ENTRY,SUB) TYPE(configFile >> CFG >> SECTION >> CLASS >> ENTRY >> SUB)
#define FETCH_CONFIG4(TYPE,CFG,SECTION,CLASS,ENTRY,SUB,SUB2) TYPE(configFile >> CFG >> SECTION >> CLASS >> ENTRY >> SUB >> SUB2)

#define ITEM_VARNAME(varName) format ["life_inv_%1",M_CONFIG(getText,"LifeCfgVirtualItems",varName,"variable")]
#define ITEM_VALUE(varName) GVAR_MNS [ITEM_VARNAME(varName),0]
#define ITEM_NAME(varName) localize M_CONFIG(getText,"LifeCfgVirtualItems",varName,"displayName")
#define ITEM_ICON(varName) M_CONFIG(getText,"LifeCfgVirtualItems",varName,"icon")
#define ITEM_WEIGHT(varName) M_CONFIG(getNumber,"LifeCfgVirtualItems",varName,"weight")

#define LIFE_SETTINGS(TYPE,SETTING) TYPE(missionConfigFile >> "LifeCfgSettings" >> SETTING)
#define LIFE_SETTINGSWORLD(TYPE,WRD,SETTING) TYPE(missionConfigFile >> "LifeCfgSettings" >> WRD >> SETTING)
#define LIFE_GTITLE(WRD,TTL) getText(missionConfigFile >> "LifeCfgGarages" >> WRD >> TTL >> "displayName")

#define LIFE_MARKERWORLD(TYPE,WRD,SETTING) TYPE(missionConfigFile >> "LifeCfgMapMarkers" >> WRD >> SETTING)

#define ARC_SETTINGS(TYPE,SETTING) TYPE(missionConfigFile >> "LifeCfgArcheology" >> SETTING)
#define WZ_SETTINGS(TYPE,SETTING) TYPE(missionConfigFile >> "LifeCfgWarZones" >> SETTING)
#define INIT_BUTTON(VAR,CTRL,NAME,ACTION) \
_b##VAR = _display displayCtrl ##CTRL; \
_b##VAR ctrlShow true; \
_b##VAR ctrlSetText NAME; \
_b##VAR buttonSetAction ACTION 
#define IS_VIP (call life_donator) > 0
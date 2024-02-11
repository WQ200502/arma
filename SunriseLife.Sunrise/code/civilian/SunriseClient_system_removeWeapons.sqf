/*

	Filename: 	SunriseClient_system_removeWeapons.sqf
	Project: 	Sunrise Life
	Author:		Sunrise Team
	Steam:		Sunrise Team


*/
#include "..\..\script_macros.hpp"
private["_cop","_ItemInfo","_uniform","_vest","_headgear ","_pWeapon","_sWeapon","_hWeapon","_whitelist","_itemArray"];
_cop = param [0,Objnull,[objNull]];
if (EQUAL(_cop,player)) exitWith {};
if (life_copDuty) exitWith {};
if ([LIFE_SETTINGS(getText,"life_weaponSearchException")] call SunriseClient_system_conditionsCheck) exitWith {};

if (isNull _cop OR !(GVAR_RESTRAINED(player))) exitWith {};

_whitelist = 
[
	"hgun_P07_F",
	"arifle_SDAR_F",
	"hlc_smg_mp5k",
	"Weapon_tippmann_x7_F",
	"Weapon_tippmann_x7_UMP_F",
	"Paintball_Gun_Black_F",
	
	"sunrise_Tool_Axe", 
	"sunrise_Tool_PickAxe", 
	"sunrise_Tool_Shovel",
	"sunrise_Tool_Hoe",
	
	"NVGoggles_OPFOR",
	"NVGoggles_INDEP", 
	"NVGoggles",
	
	"srl_CarltonDraught",
	"srl_Coopers",
	"srl_Corona",
	"srl_Jimbeam",
	"srl_SmithsChips",
	"srl_Steak",
	"srl_defibrillator", 
	"srl_ItemRepairKit", 
	"srl_bottleclean_100", 
	"srl_bottleclean_50",
	"srl_canteen_clean_3",
	"srl_canteen_clean_2",
	"srl_canteen_clean_1",
	"srl_canopener",
	"srl_matches",
	"srl_Fuelcan",
	"srl_Fuelcan_empty",
	"srl_ItemDetoxin",
	"srl_ItemRadX",
	"srl_bottle_empty",
	"srl_canteen_empty",
	"srl_canteen_salt",
	"srl_bottle_salt",
	"srl_knife",
	"srl_Waterpure",
	"srl_antibiotic",
	"srl_vitaminbottle",
	"srl_bandage",
	"srl_painkillers",
	"srl_ItemMorphine",
	"srl_ItemSurgeryKit",
	"srl_Buffout",
	"srl_Meat",
	"srl_MeatC",
	"srl_cereal",
	"srl_TacticalBacon",
	"srl_BakedBeans",
	"srl_franta",
	"srl_Spirit",
	"srl_redgull",
	"srl_woodenLog",
	
	"tf_microdagr",
	"tf_fadak",
	"tf_anprc154",
	"tf_anprc148jem",

	"acc_flashlight",

	"V_BandollierB_khk",
	"V_Press_F",
	"V_Rangemaster_belt",
	"V_RebreatherB",
	"V_TacVest_brn",
	"V_TacVest_khk",
	"V_TacVestIR_blk",
	"EXT_Tac_Vest_1",
	"EXT_Tac_Vest_2",
	"EXT_Tac_Vest_3",
	"EXT_Tac_Vest_4",
	"EXT_Tac_Vest_5",
	"EXT_Tac_Vest_6",

	"A3LCatShirt",
	"A3LCloudShirt",
	"A3LCokeShirt",
	"A3LHandShirt",
	"A3LPikaShirt",
	"A3LTigerShirt",
	"A3LWolfShirt",
	"A3L_Badoodlenoodleshirt",
	"A3L_BergenMurica",
	"A3L_CivShirtAdidas",
	"A3L_CivShirtAdidasMake",
	"A3L_CivShirtAdidas_r",
	"A3L_CivShirtAnotherCat",
	"A3L_CivShirtBillabong",
	"A3L_CivShirtBillabong2",
	"A3L_CivShirtDJ",
	"A3L_CivShirtDiamond",
	"A3L_CivShirtGetHigh",
	"A3L_CivShirtGrumpyCat",
	"A3L_CivShirtHollister",
	"A3L_CivShirtKeepCalm",
	"A3L_CivShirtNikeCamo",
	"A3L_CivShirtNikeDoIt",
	"A3L_CivShirtNikeDoIt2",
	"A3L_CivShirtNikeFeet",
	"A3L_CivShirtOhBoy",
	"A3L_CivShirtProbe",
	"A3L_CivShirtRelationships",
	"A3L_CivShirtThanksObama",
	"A3L_CivShirtVans",
	"A3L_CivShirtVans2",
	"A3L_CivShirtVolcom",
	"A3L_CivShirtVolcomLogo",
	"A3L_CivShirtVolcomMonster",
	"A3L_Dude_Outfit",
	"A3L_Farmer_Outfit",
	"A3L_Lacoste_C",
	"A3L_Lacoste_G",
	"A3L_Lacoste_S",
	"A3L_Lacoste_T",
	"A3L_Worker_Outfit",
	"B_AssaultPack_cbr",
	"B_Bergen_sgg",
	"B_Carryall_khk",
	"B_Carryall_oli",
	"B_FieldPack_ocamo",
	"B_Kitbag_cbr",
	"B_Kitbag_mcamo",
	"B_TacticalPack_oli",
	"B_mas_Kitbag_des",
	"BlGnGy_uni",
	"BlGyBr_uni",
	"BluePlaid_uni",
	"Extremo_santa_backpack",
	"G_Aviator",
	"G_Combat",
	"G_Diving",
	"G_EWK_Cig1",
	"G_EWK_Cig2",
	"G_EWK_Cig3",
	"G_EWK_Cig4",
	"G_EWK_Cig5",
	"G_EWK_Cig6",
	"G_EWK_Glasses_Cig1",
	"G_EWK_Glasses_Cig2",
	"G_EWK_Glasses_Cig3",
	"G_EWK_Glasses_Cig4",
	"G_EWK_Glasses_Cig5",
	"G_EWK_Glasses_Cig6",
	"G_EWK_Shemag_GRE",
	"G_EWK_Shemag_tan",
	"G_Lady_Blue",
	"G_Lady_Dark",
	"G_Lady_Mirror",
	"G_Lowprofile",
	"G_Shades_Black",
	"G_Shades_Blue",
	"G_Sport_BlackWhite",
	"G_Sport_Blackred",
	"G_Sport_Blackyellow",
	"G_Sport_Checkered",
	"G_Squares",
	"GbGyBr_uni",
	"GnBlBr_uni",
	"GnGyBr_uni",
	"GreenPlaid_uni",
	"GyBlBr_uni",
	"H_BandMask_blk",
	"H_Bandanna_cbr",
	"H_Bandanna_gry",
	"H_Bandanna_khk",
	"H_Bandanna_sgg",
	"H_Bandanna_surfer",
	"H_Booniehat_tan",
	"H_Cap_blu",
	"H_Cap_grn",
	"H_Cap_grn_BI",
	"H_Cap_oli",
	"H_Cap_press",
	"H_Cap_red",
	"H_Cap_tan",
	"H_Hat_blue",
	"H_Hat_brown",
	"H_Hat_checker",
	"H_Hat_grey",
	"H_Hat_tan",
	"H_RacingHelmet_1_F",
	"H_RacingHelmet_1_black_F",
	"H_RacingHelmet_1_blue_F",
	"H_RacingHelmet_1_green_F",
	"H_RacingHelmet_1_red_F",
	"H_RacingHelmet_1_white_F",
	"H_RacingHelmet_2_F",
	"H_RacingHelmet_3_F",
	"H_RacingHelmet_4_F",
	"H_StrawHat",
	"KAEL_SUITS_BR_F15",
	"KAEL_SUITS_BR_F16",
	"KAEL_SUITS_BR_F17",
	"KAEL_SUITS_BR_F18",
	"KAEL_SUITS_BR_F19",
	"KAEL_SUITS_BR_F20",
	"KAEL_SUITS_BR_F21",
	"KAEL_SUITS_BR_F22",
	"KAEL_SUITS_BR_F23",
	"KAEL_SUITS_BR_F24",
	"KAEL_SUITS_BR_F25",
	"KAEL_SUITS_BR_F29",
	"KAEL_SUITS_BR_F30",
	"KAEL_SUITS_BR_F31",
	"KAEL_SUITS_BR_F32",
	"KAEL_SUITS_BR_F33",
	"KAEL_SUITS_BR_F34",
	"KAEL_SUITS_BR_F35",
	"MotherTrucker_uni",
	"OrBlBr_uni",
	"OrGnGy_uni",
	"OrGyBr_uni",
	"OrangePlaid_uni",
	"PAT_nigga",
	"PAT_nigga2",
	"PAT_nigga2_5",
	"PinkPlaid_uni",
	"PkGnGy_uni",
	"PkGyBr_uni",
	"RdBlBr_uni",
	"RdGnGy_uni",
	"RdGyBr_uni",
	"RedPlaid_uni",
	"SFG_Tac_BeardB",
	"SFG_Tac_BeardD",
	"SFG_Tac_BeardG",
	"SFG_Tac_BeardO",
	"SFG_Tac_moustacheB",
	"SFG_Tac_moustacheD",
	"SFG_Tac_moustacheG",
	"SFG_Tac_moustacheO",
	"SFG_Tac_smallBeardB",
	"SFG_Tac_smallBeardD",
	"SFG_Tac_smallBeardG",
	"SFG_Tac_smallBeardO",
	"TRYK_B_Belt_CYT",
	"TRYK_B_Belt_tan",
	"TRYK_B_Kitbag_Base",
	"TRYK_Beard",
	"TRYK_Beard2",
	"TRYK_Beard3",
	"TRYK_Beard4",
	"TRYK_Beard_BK",
	"TRYK_Beard_BK2",
	"TRYK_Beard_BK3",
	"TRYK_Beard_BK4",
	"TRYK_Beard_BW",
	"TRYK_Beard_BW2",
	"TRYK_Beard_BW3",
	"TRYK_Beard_BW4",
	"TRYK_R_CAP_OD_US",
	"TRYK_R_CAP_TAN",
	"TRYK_SUITS_BLK_F",
	"TRYK_SUITS_BR_F",
	"TRYK_Shemagh_shade",
	"TRYK_Shemagh_shade_MH",
	"TRYK_U_B_Denim_T_BK",
	"TRYK_U_B_Denim_T_WH",
	"TRYK_U_B_PCUGs_OD",
	"TRYK_U_B_PCUGs_OD_R",
	"TRYK_U_B_PCUGs_gry",
	"TRYK_U_B_PCUGs_gry_R",
	"TRYK_U_B_RED_T_BR",
	"TRYK_U_B_wh_tan_Rollup_CombatUniform",
	"TRYK_U_denim_hood_nc",
	"TRYK_U_denim_jersey_blk",
	"TRYK_U_denim_jersey_blu",
	"TRYK_r_cap_tan_Glasses",
	"TRYK_shirts_DENIM_BL",
	"TRYK_shirts_DENIM_BWH",
	"TRYK_shirts_DENIM_R",
	"TRYK_shirts_DENIM_RED2",
	"TRYK_shirts_DENIM_WH",
	"TRYK_shirts_DENIM_WHB",
	"TRYK_shirts_DENIM_od",
	"TRYK_shirts_DENIM_ylb",
	"U_B_Wetsuit",
	"U_C_Driver_1",
	"U_C_Driver_1_black",
	"U_C_Driver_1_blue",
	"U_C_Driver_1_green",
	"U_C_Driver_1_orange",
	"U_C_Driver_1_red",
	"U_C_Driver_1_white",
	"U_C_Driver_2",
	"U_C_Driver_3",
	"U_C_Driver_4",
	"U_C_HunterBody_grn",
	"U_C_Journalist",
	"U_C_Man_casual_1_F",
	"U_C_Man_casual_2_F",
	"U_C_Man_casual_3_F",
	"U_C_Man_casual_4_F",
	"U_C_Man_casual_5_F",
	"U_C_Man_casual_6_F",
	"U_C_Poloshirt_blue",
	"U_C_Poloshirt_burgundy",
	"U_C_Poloshirt_redwhite",
	"U_C_Poloshirt_salmon",
	"U_C_Poloshirt_stripped",
	"U_C_Poloshirt_tricolour",
	"U_C_Poor_2",
	"U_C_WorkerCoveralls",
	"U_C_man_sport_1_F",
	"U_C_man_sport_2_F",
	"U_C_man_sport_3_F",
	"U_IG_Guerilla2_2",
	"U_IG_Guerilla2_3",
	"U_IG_Guerilla3_1",
	"U_OrestesBody",
	"U_PMC_BluPolo_BgPants",
	"U_PMC_BluePlaidShirt_BeigeCords",
	"U_PMC_BrnPolo_BgPants",
	"U_PMC_GrnPolo_BgPants",
	"U_PMC_RedPlaidShirt_DenimCords",
	"U_PMC_WTShirt_DJeans",
	"U_PMC_WhtPolo_BgPants",
	"U_PMC_WhtPolo_BluPants",
	"U_PMC_WhtPolo_GrnPants",
	"WhBlBr_uni",
	"YellowPlaid_uni",
	"YlBlBr_uni",
	"YlGnGy_uni",
	"sunrise_DHL_Belt",
	"sunrise_DHL_Cap",
	"sunrise_DHL_Employee",
	"bag_like",
	"bag_like_blue",
	"bag_like_red",
	"cg_awesome1",
	"cg_bb1",
	"cg_beats1",
	"cg_bendozlia3",
	"cg_bipolar1",
	"cg_burgerking1",
	"cg_chickens1",
	"cg_condoms1",
	"cg_csgo1",
	"cg_deeznuts1",
	"cg_et1",
	"cg_evolution1",
	"cg_ferrari1",
	"cg_fightclub1",
	"cg_gameover1",
	"cg_hand1",
	"cg_herpderp1",
	"cg_homer1",
	"cg_iamstupid1",
	"cg_illuminati1",
	"cg_jason1",
	"cg_joker1",
	"cg_kfc1",
	"cg_leppy1",
	"cg_lsd1",
	"cg_peanut1",
	"cg_pika1",
	"cg_rageface1",
	"cg_rastaciv",
	"cg_shark1",
	"cg_stoned1",
	"cg_turtles1",
	"cg_upyours1",
	"checkered_uni",
	"faux_press_clothing",
	"faux_press_helmet",
	"kaelmario",
	"kaelmonty",
	"kaelmonty2",
	"koilbender_2",
	"koilbp_11",
	"koilbp_12",
	"koilbp_13",
	"koilbp_15",
	"koilbp_16",
	"koilbp_18",
	"koilbp_2",
	"koilbp_3",
	"koilbp_8",
	"koilbp_9",
	"koilgraf_2",
	"koilgraf_3",
	"koilgucci",
	"koilpanda",
	"koilsponge_1",
	"poloranger_uni",
	"rds_Profiteer_cap1",
	"rds_Profiteer_cap2",
	"rds_Profiteer_cap3",
	"rds_Profiteer_cap4",
	"rds_Villager_cap1",
	"rds_Villager_cap2",
	"rds_Villager_cap3",
	"rds_Villager_cap4",
	"rds_Woodlander_cap1",
	"rds_Woodlander_cap2",
	"rds_Woodlander_cap3",
	"rds_Woodlander_cap4",
	"rds_uniform_Profiteer1",
	"rds_uniform_Profiteer2",
	"rds_uniform_Profiteer3",
	"rds_uniform_Profiteer4",
	"rds_uniform_Villager1",
	"rds_uniform_Villager2",
	"rds_uniform_Villager3",
	"rds_uniform_Villager4",
	"rds_uniform_Woodlander1",
	"rds_uniform_Woodlander2",
	"rds_uniform_Worker1",
	"rds_uniform_Worker2",
	"rds_uniform_Worker3",
	"rds_uniform_Worker4",
	"rds_uniform_assistant",
	"rds_uniform_citizen1",
	"rds_uniform_citizen2",
	"rds_uniform_citizen3",
	"rds_uniform_citizen4",
	"rds_uniform_priest",
	"rds_uniform_schoolteacher",
	"rds_worker_cap1",
	"rds_worker_cap2",
	"rds_worker_cap3",
	"rds_worker_cap4",
	"sab_CUAV_bp_orange",
	"sohoku_uni",
	"tf_anprc155",
	"xmas_santa_blufor_uniform",
	"xmas_santa_ind_uniform",
	"xmas_santa_opfor_uniform"
	
];

_uniform = PUNIFORM;
_vest = PVEST;
_headgear = PHEADGEAR;
_pWeapon = RIFLE;
_sWeapon = LAUNCHER;
_hWeapon = PISTOL;


if (!(EQUAL(_pWeapon,"")) && {!(_pWeapon in _whitelist)}) then {
	player removeWeapon _pWeapon;
	_ItemInfo = [_pWeapon] call SunriseClient_system_itemDetails;
	//systemchat format["%1, ваше нелегальное оружие (%3) изъято сотрудником полиции %2", GVAR_RNAME(player), GVAR_RNAME(_cop), _ItemInfo select 1];
	
	["info","",format["%1, ваше нелегальное оружие (%3) изъято сотрудником полиции %2", GVAR_RNAME(player), GVAR_RNAME(_cop), _ItemInfo select 1],true] call SunriseClient_message;
};

if (!(EQUAL(_hWeapon,"")) && {!(_hWeapon in _whitelist)}) then {
	player removeWeapon _hWeapon;
	_ItemInfo = [_hWeapon] call SunriseClient_system_itemDetails;	
	//systemchat format["%1, ваше нелегальное оружие (%3) изъято сотрудником полиции %2", GVAR_RNAME(player), GVAR_RNAME(_cop), _ItemInfo select 1];
	
	["info","",format["%1, ваше нелегальное оружие (%3) изъято сотрудником полиции %2", GVAR_RNAME(player), GVAR_RNAME(_cop), _ItemInfo select 1],true] call SunriseClient_message;
};

if (!(EQUAL(_sWeapon,"")) && {!(_sWeapon in _whitelist)}) then {
	player removeWeapon _sWeapon;
	_ItemInfo = [_sWeapon] call SunriseClient_system_itemDetails;
	//systemchat format["%1, ваше нелегальное оружие (%3) изъято сотрудником полиции %2", GVAR_RNAME(player), GVAR_RNAME(_cop), _ItemInfo select 1];
	
	["info","",format["%1, ваше нелегальное оружие (%3) изъято сотрудником полиции %2", GVAR_RNAME(player), GVAR_RNAME(_cop), _ItemInfo select 1],true] call SunriseClient_message;
};
//удаляем магазины
{
	if (_x in ["RPG7_PG7VR","srl_grinder","srl_MetalWire","srl_blastingcharge","srl_headBag","srl_ducttape","srl_lockpick"]) then {player removeMagazine _x};
} foreach (magazines player);
//удаляем нелегал


if (!(EQUAL(_vest,"")) && {!(_vest in _whitelist)}) then {
	removeVest player;	
	//systemchat format["%1, ваша нелегальная разгрузка изъята сотрудником полиции %2", GVAR_RNAME(player), GVAR_RNAME(_cop)];
	
	["info","",format["%1, ваша нелегальная разгрузка изъята сотрудником полиции %2", GVAR_RNAME(player), GVAR_RNAME(_cop)],true] call SunriseClient_message;
};

if (!(EQUAL(_uniform,"")) && {!(_uniform in _whitelist)}) then {
	removeUniform player;	
	//systemchat format["%1, ваша нелегальная одежда изъята сотрудником полиции %2", GVAR_RNAME(player), GVAR_RNAME(_cop)];
	
	["info","",format["%1, ваша нелегальная одежда изъята сотрудником полиции %2", GVAR_RNAME(player), GVAR_RNAME(_cop)],true] call SunriseClient_message;
};


["IllegalFound"] remoteExecCall ["SunriseClient_experience_addExp",_cop];


[] call SunriseClient_system_saveGear;
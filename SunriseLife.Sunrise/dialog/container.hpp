class SunriseDialogContainer
{
	idd = 4100;
	name = "SunriseDialogContainer";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "[_this select 0] call SunriseClient_gui_Tiles";
	
	class controlsBackground
	{
		class Blackout: RscText
		{
			idc = -1;
			x = "safezoneX";
			y = "safezoneY";
			w = "safezoneW";
			h = "safezoneH";

			colorBackground[] = { 0, 0, 0, 0.25 };
		};
		class Tiles: RscTiles {};
		
		class RscTitleText : RscTitle
		{			
			idc = 4101;
			text = "";
			x = 0.2984 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.4032 * safezoneW;
			h = 0.044 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		
		class HouseWeight : RscTitleText
		{
			idc = 4104;
			colorBackground[] = {0, 0, 0, 0};
			style = 1;
			text = "";
		};
		
		class RscContainerText : RscText
		{
			idc = -1;			
			text = "$STR_Trunk_TInventory";
			sizeEx = 0.04;
			
			x = 0.2984 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.196431 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		
		class RscPlayerText : RscText
		{
			idc = -1;			
			text = "$STR_Trunk_PInventory";
			sizeEx = 0.04;
			
			x = 0.505169 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.196431 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};	

		class ContainerBG: RscText
		{
			idc = -1;
			x = 0.2984 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.196431 * safezoneW;
			h = 0.319 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class PlayerBG: RscText
		{
			idc = -1;
			x = 0.505169 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.196431 * safezoneW;
			h = 0.319 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		
	};
	
	class Controls
	{
		class HouseGear : RscListBox
		{
			idc = 4102;
			text = "";
			
			x = 0.303569 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.186092 * safezoneW;
			h = 0.264 * safezoneH;
		};
		
		class PlayerGear : RscListBox
		{
			idc = 4103;
			text = "";
			
			x = 0.510338 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.186092 * safezoneW;
			h = 0.297 * safezoneH;
		};
		
		class HouseEdit : RscEdit
		{
			idc = 4105;
			text = "1";
			sizeEx = 0.030;
			x = 0.2984 * safezoneW + safezoneX;
			y = 0.665 * safezoneH + safezoneY;
			w = 0.0310154 * safezoneW;
			h = 0.033 * safezoneH;
		};
		
		class PlayerEdit : RscEdit
		{
			idc = 4106;
			text = "1";
			sizeEx = 0.030;
			x = 0.505169 * safezoneW + safezoneX;
			y = 0.665 * safezoneH + safezoneY;
			w = 0.0310154 * safezoneW;
			h = 0.033 * safezoneH;
		};
		
		class TakeItem : RscButtonUC
		{
			idc = 4109;
			text = "Взять";			
			onButtonClick = "[] spawn SunriseClient_system_houseTakeItem;";
			x = 0.334585 * safezoneW + safezoneX;
			y = 0.665 * safezoneH + safezoneY;
			w = 0.160246 * safezoneW;
			h = 0.033 * safezoneH;
		};
		
		class StoreItem : RscButtonUC
		{
			idc = 4108;
			text = "Положить";			
			onButtonClick = "[] spawn SunriseClient_system_houseStoreItem;";
			x = 0.541354 * safezoneW + safezoneX;
			y = 0.665 * safezoneH + safezoneY;
			w = 0.160246 * safezoneW;
			h = 0.033 * safezoneH;
		};
		
		class ButtonClose : RscButtonUC {
			idc = -1;			
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = 0.401785 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.196431 * safezoneW;
			h = 0.033 * safezoneH;
		};
		
		class FilterList : RscCombo
		{
			idc = 4107;
			onLBSelChanged = "_this call SunriseClient_system_containerMenuFilter";
			x = 0.303569 * safezoneW + safezoneX;
			y = 0.621 * safezoneH + safezoneY;
			w = 0.186092 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
};
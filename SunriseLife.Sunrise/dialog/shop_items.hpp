class SunriseDialogVirtualItemShop {
	idd = 2400;
	name= "SunriseDialogVirtualItemShop";
	movingEnable = 0;
	enableSimulation = 1;
	onLoad = "[_this select 0] call SunriseClient_gui_Tiles";
	
	class controlsBackground {
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
		
		class MainBackground:RscExtremoGui_DialogBG {			
			idc = -1;
			x = 0.395 * safezoneW + safezoneX;
			y = 0.318 * safezoneH + safezoneY;
			w = 0.21 * safezoneW;
			h = 0.4088 * safezoneH;
		};
	};
	
	class controls {
		class Title : RscExtremoGui_HeaderBG {			
			idc = 2401;
			text = "";
			
			x = 0.395 * safezoneW + safezoneX;
			y = 0.276 * safezoneH + safezoneY;
			w = 0.21 * safezoneW;
			h = 0.042 * safezoneH;
		};

		class CloseImage : RscPicture {
			idc = -1;
			text = "\sunrise_gui\data\v3\button_close.paa";
			
			x = 0.585312 * safezoneW + safezoneX;
			y = 0.2844 * safezoneH + safezoneY;
			w = 0.0144375 * safezoneW;
			h = 0.0252 * safezoneH;
		};

		class CloseButton: RscPictureButtonMenu {
			idc = -1;
			text = "";	
			onButtonClick = "closeDialog 0";
			tooltip = "$STR_Global_Close";
			
			colorBackground[] = {1,1,1,0.004};
			colorBackgroundFocused[] = {1,1,1,0.008};
			colorBackground2[] = {0.75,0.75,0.75,0.004};
					
			x = 0.585312 * safezoneW + safezoneX;
			y = 0.2844 * safezoneH + safezoneY;
			w = 0.0144375 * safezoneW;
			h = 0.0252 * safezoneH;
		};

		class pItemlist : Life_V3_RscListBox 
		{
			idc = 2402;
			text = "";	
			
			x = 0.398934 * safezoneW + safezoneX;
			y = 0.3236 * safezoneH + safezoneY;
			w = 0.203436 * safezoneW;
			h = 0.322 * safezoneH;
		};	

		class sellEdit : RscExtremoGui_Edit 
		{
			idc = 2403;			
			text = "1";
			x = 0.398938 * safezoneW + safezoneX;
			y = 0.654 * safezoneH + safezoneY;
			w = 0.0525 * safezoneW;
			h = 0.028 * safezoneH;
		};

		class ButtonSell : RscExtremoGui_ButtonRed
		{
			idc = -1;
			text = "$STR_VS_SellItem";			
			onButtonClick = "[] call SunriseClient_system_virt_sell";
			
			x = 0.454057 * safezoneW + safezoneX;
			y = 0.6512 * safezoneH + safezoneY;
			w = 0.148309 * safezoneW;
			h = 0.0308 * safezoneH;
		};
		
		class ButtonSellAll : RscExtremoGui_ButtonBlue
		{
			idc = -1;
			text = "Продать всё";			
			onButtonClick = "[true] call SunriseClient_system_virt_sell";
			
			x = 0.397997 * safezoneW + safezoneX;
			y = 0.690178 * safezoneH + safezoneY;
			w = 0.203436 * safezoneW;
			h = 0.0308 * safezoneH;
		};
	};
};
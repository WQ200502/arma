class ExperienceAdded
{
	idd = -1;
	movingEnable = 0;
	enableSimulation = 1;
	fadeout = 0.2;
	fadein = 0.2;
	duration = 6;
	onLoad = "uiNamespace setVariable ['ExperienceAdded',_this select 0];";

	class controls
	{
		class RscText_1000: RscText
		{
			idc = -1;
			x = 0.345312 * safezoneW + safezoneX;
			y = 0.885 * safezoneH + safezoneY;
			w = 0.309375 * safezoneW;
			h = 0.011 * safezoneH;
			colorBackground[] = {1,1,1,0.35};
		};
		class textExpInfo: RscStructuredText
		{
			idc = 3;
			text = ""; //--- ToDo: Localize;
			x = 0.5825 * safezoneW + safezoneX;
			y = 0.863 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {0,0,0,1};
		};
		class textActionText: RscStructuredText
		{
			idc = 4;
			text = ""; //--- ToDo: Localize;
			x = 0.345312 * safezoneW + safezoneX;
			y = 0.863 * safezoneH + safezoneY;
			w = 0.237187 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {0,0,0,1};
		};
		class progressLevelProgress: RscProgress
		{
			idc = 5;
			x = 0.345312 * safezoneW + safezoneX;
			y = 0.885 * safezoneH + safezoneY;
			w = 0.309375 * safezoneW;
			h = 0.011 * safezoneH;
			colorFrame[] = {0,0,0,0};
    		colorBackground[] = {0,0,0,0};
   	 		colorBar[] = {"(profilenamespace getvariable ['GUI_V3_BTBG_R',0])", "(profilenamespace getvariable ['GUI_V3_BTBG_G',0])", "(profilenamespace getvariable ['GUI_V3_BTBG_B',0])", "(profilenamespace getvariable ['GUI_V3_BTBG_A',0.7])"};
		};
	};
};
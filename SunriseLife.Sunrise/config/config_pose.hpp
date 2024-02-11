class CfgPosePlayer {
	class AM_slavicSquat_loop {
		name = "Сесть на карты (#1)";
		description = "";
		action = "AM_slavicSquat_loop";
		actionPre = "AM_slavicSquat_in";
		actionPos = "AM_slavicSquat_out";
		actionPreTime = 1.6;
		actionPosTime = 1.6;
		spawnWeapon = "";
		condition = "true";
		conditionView = "true";
		needVip = 5;
		error_text = "";
	};
	class AM_slavicSquat_unProper_loop {
		name = "Сесть на карты (#2)";
		description = "";
		action = "AM_slavicSquat_unProper_loop";
		actionPre = "AM_slavicSquat_unProper_in";
		actionPos = "AM_slavicSquat_unProper_out";
		actionPreTime = 1.6;
		actionPosTime = 1.6;
		spawnWeapon = "";
		condition = "true";
		conditionView = "true";
		needVip = 0;
		error_text = "";
	};
	class AM_cigaretSmoke_loop {
		name = "Закурить сигарету";
		description = "";
		action = "AM_cigaretSmoke_loop";
		actionPre = "AM_cigaretSmoke_in";
		actionPos = "AM_cigaretSmoke_out";
		actionPreTime = 4.5;
		actionPosTime = 1.5;
		spawnWeapon = "am_binCiga";
		condition = "true";
		conditionView = "true";
		needVip = 0;
		error_text = "";
	};
	class AM_handOnChest_loop {
		name = "Скрестить руки";
		description = "";
		action = "AM_handOnChest_loop";
		actionPre = "AM_handOnChest_in";
		actionPos = "AM_handOnChest_out";
		actionPreTime = 1.6;
		actionPosTime = 1.6;
		spawnWeapon = "";
		condition = "true";
		conditionView = "true";
		needVip = 0;
		error_text = "";
	};
	class AM_handOnStomach_loop {
		name = "Убрать руки в карманы";
		description = "";
		action = "AM_handOnStomach_loop";
		actionPre = "AM_handOnStomach_in";
		actionPos = "AM_handOnStomach_out";
		actionPreTime = 1.6;
		actionPosTime = 1.4;
		spawnWeapon = "";
		condition = "true";
		conditionView = "true";
		needVip = 0;
		error_text = "";
	};
	class AM_policeTablet_loop {
		name = "Записать в планшет";
		description = "";
		action = "AM_policeTablet_loop";
		actionPre = "AM_policeTablet_in";
		actionPos = "AM_policeTablet_out";
		actionPreTime = 1.4;
		actionPosTime = 1.4;
		spawnWeapon = "am_binPda";
		condition = "true";
		conditionView = "true";
		needVip = 0;
		error_text = "";
	};
	class AM_wallLeaning_loop {
		name = "Облокотиться";
		description = "";
		action = "AM_wallLeaning_loop";
		actionPre = "AM_wallLeaning_in";
		actionPos = "AM_wallLeaning_out";
		actionPreTime = 1.4;
		actionPosTime = 1.4;
		spawnWeapon = "";
		condition = "true";
		conditionView = "true";
		needVip = 0;
		error_text = "";
	};

	class AM_rifleIdle_loop {
		name = "Ожидание с основным оружием";
		description = "";
		action = "AM_rifleIdle_loop";
		actionPre = "AM_rifleIdle_in";
		actionPos = "AM_rifleIdle_out";
		actionPreTime = 1.5;
		actionPosTime = 1.5;
		spawnWeapon = "";
		condition = "(!((currentWeapon player) isEqualTo '') && ((currentWeapon player) isEqualTo (primaryWeapon player)))";
		conditionView = "true";
		needVip = 0;
		error_text = "Вы должны взять основное оружие в руки";
	};
	class AM_pistolIdle_loop {
		name = "Ожидание с пистолетом";
		description = "";
		action = "AM_pistolIdle_loop";
		actionPre = "AM_pistolIdle_in";
		actionPos = "AM_pistolIdle_out";
		actionPreTime = 1.4;
		actionPosTime = 1.4;
		spawnWeapon = "";
		condition = "(!((currentWeapon player) isEqualTo '') && ((currentWeapon player) isEqualTo (handGunWeapon player)))";
		conditionView = "true";
		needVip = 0;
		error_text = "Вы должны взять пистолет в руки";
	};
	class AM_launcherIdle_loop {
		name = "Ожидание с РПГ";
		description = "";
		action = "AM_launcherIdle_loop";
		actionPre = "AM_launcherIdle_in";
		actionPos = "AM_launcherIdle_out";
		actionPreTime = 1.4;
		actionPosTime = 1.5;
		spawnWeapon = "";
		condition = "(!((currentWeapon player) isEqualTo '') && ((currentWeapon player isEqualTo secondaryWeapon player) && !(currentWeapon player in ['am_axe','am_batclear','am_batv2','am_bat_saw','am_pickaxe','am_shovel','am_policeStick','am_katana','am_knife','am_dildo','am_tab','am_tab_v1','am_tab_v2','am_tab_v3','am_tab_v4','am_guitar','am_tab_v5','am_tab_v6','am_tab_v7','am_tab_v8'])))";
		conditionView = "true";
		needVip = 0;
		error_text = "Вы должны взять РПГ или другую установку в руки";
	};
	class AM_meleeIdle_loop {
		name = "Ожидание с оружием ближнего боя";
		description = "";
		action = "AM_meleeIdle_loop";
		actionPre = "AM_meleeIdle_in";
		actionPos = "AM_meleeIdle_out";
		actionPreTime = 1.3;
		actionPosTime = 1.2;
		spawnWeapon = "";
		condition = "(currentWeapon player in ['am_axe','am_batclear','am_batv2','am_bat_saw','am_pickaxe','am_shovel','am_policeStick','am_katana','am_knife','am_dildo','am_tab','am_tab_v1','am_tab_v2','am_tab_v3','am_tab_v4','am_guitar','am_tab_v5','am_tab_v6','am_tab_v7','am_tab_v8'])";
		conditionView = "true";
		needVip = 0;
		error_text = "Вы должны взять оружие ближнего боя в руки";
	};
};

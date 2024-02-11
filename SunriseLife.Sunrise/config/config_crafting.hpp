#define true 1
#define false 0
/*
	CLASS:
		variable = имя переменной (для сохранения в базе (recipe_%1) и проверки активна ли)
		displayName = название рецепта (LOCALIZED)
		finalItem = итоговый предмет (class из LifeCfgVirtualItems или игровой предмет)
		virtualMats = массив виртуальных предметов-материалов (class из LifeCfgVirtualItems)
		inventoryMats = массив игровых предметов-материалов
		category = категория (class из LifeCfgRecipesCategories)
		buyable = продается ли в магазине рецептов
		price = цена рецепта
		vip = уровень випки, необходимый для рецепта
		conditions = необходимые условия для крафта
		conditionsMessage = сообщение, выдаваемое при false у conditions
*/
class LifeCfgRecipes {
	//Ресурсы
	class lumber {
		variable = "lumber";
		displayName = "STR_Item_Lumber";
		finalItem = "lumber";
		virtualMats[] = {
			{ "wood", 10 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};

	class plastic {
		variable = "plastic";
		displayName = "STR_Item_Plastic";
		finalItem = "plastic";
		virtualMats[] = {
			{ "bottles", 5 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};

	class metal {
		variable = "metal";
		displayName = "STR_Item_Metal";
		finalItem = "metal";
		virtualMats[] = {
			{ "iron_r", 10 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};

	class cloth {
		variable = "cloth";
		displayName = "STR_Item_Cloth";
		finalItem = "cloth";
		virtualMats[] = {
			{ "cotton", 10 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};

	class lens {
		variable = "lens";
		displayName = "STR_Item_Lens";
		finalItem = "lens";
		virtualMats[] = {
			{ "glass", 10 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};

	class nails {
		variable = "nails";
		displayName = "STR_Item_Nails";
		finalItem = "nails";
		virtualMats[] = {
			{ "allup", 1 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};

	class artpartp {
		variable = "artpartp";
		displayName = "STR_Item_ArtifactP";
		finalItem = "artpartp";
		virtualMats[] = {
			{ "artpart", 20 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};

	class allucan {
		variable = "allucan";
		displayName = "STR_Item_AluminumCans";
		finalItem = "allucan";
		virtualMats[] = {
			{ "allup", 5 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};

	class salema {
		variable = "salema";
		displayName = "STR_Item_SalemaMeat_Fried";
		finalItem = "salema_fried";
		virtualMats[] = {
			{ "salema", 1 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class ornate {
		variable = "ornate";
		displayName = "STR_Item_OrnateMeat_Fried";
		finalItem = "ornate_fried";
		virtualMats[] = {
			{ "ornate", 1 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class mackerel {
		variable = "mackerel";
		displayName = "STR_Item_MackerelMeat_Fried";
		finalItem = "mackerel_fried";
		virtualMats[] = {
			{ "mackerel", 1 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class tuna {
		variable = "tuna";
		displayName = "STR_Item_TunaMeat_Fried";
		finalItem = "tuna_fried";
		virtualMats[] = {
			{ "tuna", 1 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class mullet {
		variable = "mullet";
		displayName = "STR_Item_MulletMeat_Fried";
		finalItem = "mullet_fried";
		virtualMats[] = {
			{ "mullet", 1 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class catshark {
		variable = "catshark";
		displayName = "STR_Item_CatSharkMeat_Fried";
		finalItem = "catshark_fried";
		virtualMats[] = {
			{ "catshark", 1 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class hen {
		variable = "hen";
		displayName = "STR_Item_FriedChicken";
		finalItem = "hen_fried";
		virtualMats[] = {
			{ "hen_raw", 1 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class rooster {
		variable = "rooster";
		displayName = "STR_Item_FriedRooster";
		finalItem = "rooster_fried";
		virtualMats[] = {
			{ "rooster_raw", 1 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class goat {
		variable = "goat";
		displayName = "STR_Item_FriedGoat";
		finalItem = "goat_fried";
		virtualMats[] = {
			{ "goat_raw", 1 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class sheep {
		variable = "sheep";
		displayName = "STR_Item_FriedSheep";
		finalItem = "sheep_fried";
		virtualMats[] = {
			{ "sheep_raw", 1 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class olivec {
		variable = "olivec";
		displayName = "STR_Item_OliveC";
		finalItem = "olivec";
		virtualMats[] = {
			{ "olive", 1 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};

	class cocomilk {
		variable = "cocomilk";
		displayName = "STR_Item_CoconutMilk";
		finalItem = "cocomilk";
		virtualMats[] = {
			{ "coco", 3 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};

	class royalcf {
		variable = "royalcf";
		displayName = "STR_Item_FrozenCrab";
		finalItem = "royalcf";
		virtualMats[] = {
			{ "royalcp", 3 },
			{ "allucan", 1 },
			{ "arwater", 1 }
		};
		inventoryMats[] = {};
		category = "resources";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};

	//食物

	class ItemSalema {
		variable = "ItemSalema";
		displayName = "STR_Item_SalemaMeat_Fried";
		finalItem = "srl_FishC";
		virtualMats[] = {
			{ "salema", 1 }
		};
		inventoryMats[] = {};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class ItemOrnate {
		variable = "ItemOrnate";
		displayName = "STR_Item_OrnateMeat_Fried";
		finalItem = "srl_FishC";
		virtualMats[] = {
			{ "ornate", 1 }
		};
		inventoryMats[] = {};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class ItemMackerel {
		variable = "ItemMackerel";
		displayName = "STR_Item_MackerelMeat_Fried";
		finalItem = "srl_FishC";
		virtualMats[] = {
			{ "mackerel", 1 }
		};
		inventoryMats[] = {};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class ItemTuna {
		variable = "ItemTuna";
		displayName = "STR_Item_TunaMeat_Fried";
		finalItem = "srl_FishC";
		virtualMats[] = {
			{ "tuna", 1 }
		};
		inventoryMats[] = {};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class ItemMullet {
		variable = "ItemMullet";
		displayName = "STR_Item_MulletMeat_Fried";
		finalItem = "srl_FishC";
		virtualMats[] = {
			{ "mullet", 1 }
		};
		inventoryMats[] = {};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class ItemCatshark {
		variable = "ItemCatshark";
		displayName = "STR_Item_CatSharkMeat_Fried";
		finalItem = "srl_FishC";
		virtualMats[] = {
			{ "catshark", 1 }
		};
		inventoryMats[] = {};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class ItemHen {
		variable = "ItemHen";
		displayName = "STR_Item_FriedChicken";
		finalItem = "srl_MeatC";
		virtualMats[] = {
			{ "hen_raw", 1 }
		};
		inventoryMats[] = {};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class ItemRooster {
		variable = "ItemRooster";
		displayName = "STR_Item_FriedRooster";
		finalItem = "srl_MeatC";
		virtualMats[] = {
			{ "rooster_raw", 1 }
		};
		inventoryMats[] = {};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class ItemGoat {
		variable = "ItemGoat";
		displayName = "STR_Item_FriedGoat";
		finalItem = "srl_MeatC";
		virtualMats[] = {
			{ "goat_raw", 1 }
		};
		inventoryMats[] = {};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class ItemSheep {
		variable = "ItemSheep";
		displayName = "STR_Item_FriedSheep";
		finalItem = "srl_MeatC";
		virtualMats[] = {
			{ "sheep_raw", 1 }
		};
		inventoryMats[] = {};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "[getPosATL player, 5] call SunriseClient_system_isFireNear";
		conditionsMessage = "Нужен источник огня в радиусе 5м";
	};

	class ItemJuiceApple {
		variable = "ItemJuiceApple";
		displayName = "STR_Item_AppleJuice";
		finalItem = "srl_Juice";
		virtualMats[] = {
			{ "apple", 3 }
		};
		inventoryMats[] = {
			{ "srl_bottle_empty", 1 }
		};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 1;
		conditions = "";
		conditionsMessage = "";
	};
	class ItemJuicePeach {
		variable = "ItemJuicePeach";
		displayName = "STR_Item_PeachJuice";
		finalItem = "srl_Juice";
		virtualMats[] = {
			{ "peach", 3 }
		};
		inventoryMats[] = {
			{ "srl_bottle_empty", 1 }
		};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 1;
		conditions = "";
		conditionsMessage = "";
	};

	class ItemJuiceMultifruit {
		variable = "ItemJuiceMultifruit";
		displayName = "STR_Item_MultifruitJuice";
		finalItem = "srl_Juice";
		virtualMats[] = {
			{ "apple", 2 },
			{ "peach", 2 }
		};
		inventoryMats[] = {
			{ "srl_bottle_empty", 1 }
		};
		category = "food";
		buyable = false;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};

	class ItemApple {
		variable = "ItemApple";
		displayName = "STR_Item_Apple";
		finalItem = "srl_Apple";
		virtualMats[] = {
			{ "apple", 1 }
		};
		inventoryMats[] = {};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};
	class ItemPeach {
		variable = "ItemPeach";
		displayName = "STR_Item_Peach";
		finalItem = "srl_Peach";
		virtualMats[] = {
			{ "peach", 1 }
		};
		inventoryMats[] = {};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};
	class ItemBanana {
		variable = "ItemBanana";
		displayName = "STR_Item_Banana";
		finalItem = "srl_Banana";
		virtualMats[] = {
			{ "banana", 1 }
		};
		inventoryMats[] = {};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};
	class ItemPineApple {
		variable = "ItemPineApple";
		displayName = "STR_Item_Pineapple";
		finalItem = "srl_PineApple";
		virtualMats[] = {
			{ "anana", 1 }
		};
		inventoryMats[] = {};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};
	class ItemCoconut {
		variable = "ItemCoconut";
		displayName = "STR_Item_Coconut";
		finalItem = "srl_Coconut";
		virtualMats[] = {
			{ "coco", 1 }
		};
		inventoryMats[] = {};
		category = "food";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};

	// медицина
	class ItemJet {
		variable = "ItemJet";
		displayName = "STR_Item_Jet";
		finalItem = "srl_ItemJet";
		virtualMats[] = {
			{ "methp", 2 }
		};
		inventoryMats[] = {};
		category = "medicine";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};
	class ItemPsycho {
		variable = "ItemPsycho";
		displayName = "STR_Item_Psycho";
		finalItem = "srl_ItemPsycho";
		virtualMats[] = {
			{ "methp", 2 }
		};
		inventoryMats[] = {};
		category = "medicine";
		buyable = true;
		price = 30000;
		vip = 1;
		conditions = "";
		conditionsMessage = "";
	};
	class ItemTurbo {
		variable = "ItemTurbo";
		displayName = "STR_Item_Turbo";
		finalItem = "srl_ItemTurbo";
		virtualMats[] = {
			{ "cannabis", 10 }
		};
		inventoryMats[] = {};
		category = "medicine";
		buyable = true;
		price = 30000;
		vip = 1;
		conditions = "";
		conditionsMessage = "";
	};
	class ItemCampFire {
		variable = "ItemCampFire";
		displayName = "STR_Item_FirePlace";
		finalItem = "srl_campFire";
		virtualMats[] = {};
		inventoryMats[] = {
			{ "srl_woodenLog", 1 },
			{ "srl_matches", 1 }
		};
		category = "items";
		buyable = true;
		price = 30000;
		vip = 0;
		conditions = "";
		conditionsMessage = "";
	};
};

class LifeCfgRecipesCategories {
	class resources {
		displayName = "STR_CRAFT_FILTER_Resources";
	};
	class food {
		displayName = "STR_CRAFT_FILTER_Food";
	};
	class medicine {
		displayName = "STR_CRAFT_FILTER_Medical";
	};
	class items {
		displayName = "STR_CRAFT_FILTER_Item";
	};
};
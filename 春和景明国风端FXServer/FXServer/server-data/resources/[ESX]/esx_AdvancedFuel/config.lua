petrolCanPrice = 100

-- lang = "en"
lang = "en"

settings = {}
settings["en"] = {
	openMenu = "按~g~E~w~打开菜单.",
	electricError = "~r~你有一辆电动车.",
	fuelError = "~r~你不在准确的地方.",
	buyFuel = "购买燃料",
	liters = "升",
	percent = "百分比",
	confirm = "确认",
	fuelStation = "加油站",
	boatFuelStation = "船舶加油站",
	avionFuelStation = "飞机|加油站 ",
	heliFuelStation = "直升机|加油站",
	getJerryCan = "按~g~E~w~买一个汽油罐 ("..petrolCanPrice.."$)",
	refeel = "按~g~E~w~给汽车加油.",
	YouHaveBought = "你已经买了 ",
	fuel = " 升燃料",
	price = "价格"
}

settings["fr"] = {
	openMenu = "Appuyez sur ~g~E~w~ pour ouvrir le menu.",
	electricError = "~r~Vous avez une voiture électrique.",
	fuelError = "~r~Vous n'êtes pas au bon endroit.",
	buyFuel = "acheter de l'essence",
	liters = "litres",
	percent = "pourcent",
	confirm = "Valider",
	fuelStation = "Station essence",
	boatFuelStation = "Station d'essence | Bateau",
	avionFuelStation = "Station d'essence | Avions",
	heliFuelStation = "Station d'essence | Hélicoptères",
	getJerryCan = "Appuyez sur ~g~E~w~ pour acheter un bidon d'essence ("..petrolCanPrice.."$)",
	refeel = "Appuyez sur ~g~E~w~ pour remplir votre voiture d'essence.",
	YouHaveBought = "Vous avez acheté ",
	fuel = " litres d'essence",
	price = "prix"
}


showBar = false
showText = true


hud_form = 1 -- 1 : Vertical | 2 = Horizontal
hud_x = 0.175 
hud_y = 0.885

text_x = 0.2575
text_y = 0.975


electricityPrice = 1 -- NOT RANOMED !!

randomPrice = true --Random the price of each stations
price = 1.5 --If random price is on False, set the price here for 1 liter
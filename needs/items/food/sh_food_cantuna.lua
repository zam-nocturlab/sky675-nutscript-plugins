ITEM.name = "Can of Tuna"
ITEM.desc = "A can of tuna."
ITEM.price = 5
ITEM.model = "models/warz/consumables/can_tuna.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.weight = 0.75
ITEM.hungerAmt = 30
ITEM.thirstAmt = 0

local function onUse(item)
	--item.player:EmitSound("items/medshot4.wav", 80, 110)
	--item.player:ScreenFade(1, Color(0, 255, 0, 100), .4, 0)
end
ITEM:hook("use", onUse)

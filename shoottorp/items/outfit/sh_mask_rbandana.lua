ITEM.name = "Red Bandana Mask"
ITEM.desc = "A red paisley bandana."
ITEM.model = "models/sky/dropped/facewrap.mdl"
ITEM.category = "Clothing"
ITEM.skin = 0
ITEM.width = 1
ITEM.height = 1
ITEM.outfitCategory = "mask"
ITEM.price = 3
ITEM.flag = "1"

ITEM.bodyGroups = {
    ["masks"] = 1
}

ITEM.destroyval = {
	["comp_scrap_cloth"] = 1,
}

function ITEM:canWear(ply)
	local model = ply:GetModel()
	if(model:find("sky/stalker") or nut.newchar.isBM(model)) then
		return true
	else
		return false, "Your model cannot wear this item!"
	end
end
ITEM.name = "Green Gas Mask"
ITEM.desc = "A rugged green gas mask."
ITEM.model = "models/sky/dropped/gasmask.mdl"
ITEM.category = "Clothing"
ITEM.skin = 0
ITEM.width = 1
ITEM.height = 1
ITEM.outfitCategory = "mask;eyes"
ITEM.price = 7
ITEM.flag = "1"
--[[
local modelsgoodfor1 = {
	["models/sky/heads/neo.mdl"] = true,

}
]]
local immune = {
	
}

function ITEM:getBodyGroups(ply)
	local bg = {["masks"] = 2}

	local hair = ply:FindBodygroupByName("hair")
	if(hair != -1 and ply:GetBodygroupCount(hair) == 3) then --hide hair too
		--if(modelsgoodfor1[ply:GetModel()]) then 
			if(!string.find(ply:GetModel(), "neo")) then
				bg["hair"] = 1
			end
		--[[else
			bg["hair"] = 2
		end]]
	elseif(hair != -1) then
		bg["hair"] = 1
	end

	return bg
end

function ITEM:canWear(ply)
	local model = ply:GetModel()
	if(model:find("sky/stalker") or nut.newchar.isBM(model)) then
		return true
	else
		return false, "Your model cannot wear this item!"
	end
end
ITEM.name = "Hacking Remote"
ITEM.desc = "todo better name, allows you to hack from far away"
ITEM.model = "models/gibs/manhack_gib02.mdl"
ITEM.price = 1800
ITEM.flag = "m"
ITEM.category = "Hacking"

function ITEM:getDesc()
	local desc = self.desc
	if(self:getData("remote")) then
		desc = desc.."\nThis is connected to hacktool #"..tostring(self:getData("remote")).."."
	end
	return desc
end

function ITEM:onCombineTo(target)
	if(target.base != "base_hacktool" or self:getData("remote")) then return end
	
	local ply = self.player
	local item = self

	target:setData("remote", item.id)
	item:setData("remote", target.id)
	ply:notify("The remote has been connected to the hack tool.")

end

--[[ITEM.functions.--combine = {
    name = "Combine",
    tip = "Equip to active weapon",
    icon = "icon16/wrench.png",
    sound = "labs/ding_on.wav", --like this
    onRun = function(item, id)
        local target = nut.item.instances[id]
        local ply = item.player

		if(id and target) then
			--
			target:setData("remote", item.id)
			item:setData("remote", id)
			ply:notify("The remote has been connected to the hack tool.")
		end
		return false
    end,
    onCanRun = function(item, id)
        local target = nut.item.instances[id]

        if(id and target) then
            if(!IsValid(item.entity) and !item:getData("remote") and target.base == "base_hacktool" and !target:getData("remote")) then    
                return true
            end
        end

        return false
    end
}]]
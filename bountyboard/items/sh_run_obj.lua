--similar to payitem but it cant be customized
ITEM.name = "run objective"
ITEM.model = "models/props_lab/box01a.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.desc = "obj"
ITEM.flag = "m"
ITEM.category = "misc"
ITEM.onGetDropModel = true
ITEM.data = { customName = ITEM.name, customDesc = ITEM.desc }
ITEM.noBusiness = true

ITEM.ignoreStash = true
--[[
ITEM.functions.Custom = {
	name = "Customize",
	tip = "Customize this item",
	icon = "icon16/wrench.png",
	onRun = function(item)
		local client = item.player
		client:requestString("Change Name", "What name do you want this item to have?", function(text)
			item:setData("customName", text)
			client:requestString("Change Description", "What Description do you want this item to have?", function(text)
				item:setData("customDesc", text)
				client:requestString("Change Model", "What Model do you want this item to have?\nBe sure it is a valid model.", function(text) --start of model
					item:setData("customMdl", text)
					client:requestString("Change Pay Base", "What should the minimum this item give in the auction?", function(text) --start of model
						item:setData("paybase", text)
						client:requestString("Change Time To Sell", "What should the time take for the auction to finish? (in seconds)", function(text) --start of model
							item:setData("selltime", text)
						end, item:getData("selltime", 16000)) --end of pay
					end, item:getData("paybase", 100)) --end of pay
				end, item:getData("customMdl", item.model)) --end of model
			end, item:getDesc()) --end of desc
		end, item:getName()) --end of name
			
		--hopefully resets the player's icons
		client:ConCommand("nut_flushicon")
		
		return false
	end,
	
	onCanRun = function(item)
		local client = item.player or item:getOwner()
		return client:IsAdmin()
	end
}
]]
function ITEM:getDesc()
	local desc = self.desc
	
	if(self:getData("customDesc") != nil) then
		desc = self:getData("customDesc")
	end
	
	return Format(desc)
end

function ITEM:getName()
	local name = self.name
	
	if(self:getData("customName") != nil) then
		name = self:getData("customName")
	end
	
	return Format(name)
end

function ITEM:onGetDropModel()
	local model = self.model
	
	if(self:getData("customMdl") != nil) then
		model = self:getData("customMdl")
	end
	
	return Format(model)
end
local PLUGIN = PLUGIN
PLUGIN.name = "Autoevents"
PLUGIN.author = "sky"
PLUGIN.desc = "an in-map version of the run system, may be held together with duct tape idk"

--im prob gonna regret this
nut.config.add("autoeventsEnabled", true, "Whether autoevents are being generated.", nil, {
    category = "Server"    
})
nut.config.add("autoeventsMax", 4, "Max amount of active autoevents allowed, will not create more than this amount.", nil, {
	form = "Int",
	data = {min = 1, max = 10},
	category = "Server"
})

nut.command.add("autoeventsDisableArea", {
	syntax = "<int area> [bool status]",
	adminOnly = true,
	desc = "Used to temp (per session) disable a specific area from being considered in the spawning function.",
	onRun = function(client, arguments)
		if(!arguments[1] or !tonumber(arguments[1])) then return "not a number" end
		local id = tonumber(arguments[1])
		if(self.areas[id]) then
			--uh this is confusing but basically its opposite lmfao
			if(arguments[2] and tobool(arguments[2])) then
				self.areas[id].available = !tobool(arguments[2])
			else
				self.areas[id].available = false
			end
		end
 	end
})

--file names speak for themsleves
nut.util.include("sh_objs.lua")
nut.util.include("sh_areas.lua")

local uniqueid = uniqueid or 0

--list of areas currently being used, see trello or copy explanation here later
PLUGIN.curUsed = PLUGIN.curUsed or {}

PLUGIN.curNextSpawn = PLUGIN.curNextSpawn or nil
PLUGIN.spawnTimer = {1800,3200} --idk for now

if(SERVER) then
	--moved so i can manually restart it
	function PLUGIN:InitTimer()
		timer.Create("autoeventspawner", 600, 0, function()
			if(#self.objs == 0 or #self.areas == 0) then return end --uh just in case lol
			if(CurTime() < self.curNextSpawn) then return end --wait

			if(!nut.config.get("autoeventsEnabled", true)) then return end --were disabled rn?
			if(table.Count(self.curUsed) >= nut.config.get("autoeventsMax", 4)) then return end --no more for now

			if(math.random(1,3) == 1) then return end --33% to not do anything
			self.curNextSpawn = CurTime()+math.random(self.spawnTimer[1], self.spawnTimer[2])


			--if i do area first, ones that only have 1 area like mutant attack
			--will be very rare
			local valobj = {}
			for k,v in pairs(self.objs) do
				if(v.available == false) then
				else --idk if != will work with ^
					valobj[valobj+1] = k
				end
			end
			local obj = valobj[math.random(#valobj)]

			local valids = {}

			for k,v in pairs(self.areas) do
				if(!v.objs[obj]) then continue end
				--its been otherwise disabled
				if(v.available == false) then continue end
				--theres already one here
				if(self.curUsed[k] && self.curUsed[k].active) then continue end

				--i feel like theres a better way to do this, 
				--this could be bad since were doing probably a bunch at once
				local nearby = ents.FindInSphere(v.origin, v.radius)
				local found = self.objs[obj].needplayers or false
				for k2,v2 in pairs(nearby) do
					if(IsValid(v2) 
						&& v2:GetClass():lower() == "player" 
						&& v2:GetMoveType() != MOVETYPE_NOCLIP) then

						if(self.objs[obj].needplayers) then
							found = false
						else
							found = true
						end
						break
					end
				end
				if(found) then continue end

				valids[valids+1] = k
			end
			if(#valids == 0) then return end --no valid areas
			local area = valids[math.random(#valids)]

			self:SpawnArea(area, obj)
		end)

	end

	--idk i did this in the other one
	auto_loadedalready = auto_loadedalready or false
	function PLUGIN:InitializedPlugins()
		if(auto_loadedalready) then
			return
		else
			auto_loadedalready = true
		end

		self.curNextSpawn = CurTime()+math.random(self.spawnTimer[1], self.spawnTimer[2])

		self:InitTimer()
	end

	function PLUGIN:SpawnArea(areaid, obj)
		local area = self.areas[areaid]
		if(obj == nil) then
			local valobj = {}
			for k,v in pairs(self.objs) do
				if(area.objs[k]) then
					valobj[valobj+1] = k
				end
			end
			obj = valobj[math.random(#valobj)]
		end	

		--ok now spawn
		print("spawning event at "..areaid)

		if(self.curUsed[areaid]) then
			self.objs[self.curUsed[areaid].obj].onCleanup(self.curUsed[areaid])
		end
		uniqueid = uniqueid + 1
		self.curUsed[areaid] = {
			["area"] = areaid, --to put on npcs
			["obj"] = obj,
			["active"] = true,
			["uniqueid"] = uniqueid
		}
		nut.log.addRaw("spawning event "..self.objs[obj].name.." ("..obj..") at area "..self.areas[areaid].name.." ("..areaid..")")

		self.objs[obj].onSpawn(self.objs[obj], self.areas[areaid], self.curUsed[areaid])


	end

else --client

end
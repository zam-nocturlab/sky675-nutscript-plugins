--do it like now, 
--also make it where npcs will drop parts/patches/low tier ammo/consumables 
--depending on npc
local PLUGIN = PLUGIN
PLUGIN.name = "Loot Spawning"
PLUGIN.author = "sky"
PLUGIN.desc = "randomly spawns loot"

PLUGIN.lootTables = {
	--[[
	["tableid"] = {
		istableloot = false, --with this, the ids in the table should be a 
					--different loot table to use instead, none still works
		loot = {
			{"id", 1}, --item id, tickets for it added into pool for table
			{"none", 1} --none means no item will spawn if its chosen
		},
		--these are irrelevant as i wont release the things these are related to, 
		--but im leaving it here anyway, they are however required for the current code,
		--feel free to change it to where it isnt
		durability = {5, 30}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0, --random ammo amt when spawning, 0 = all ammo, 1 = just mags, 2 = always max
		--randomAmmo works with credsticks too
	},
	]]
	["common_junk"] = { --junk, melee, misc stuff
		loot = {
			{"lockpick", 1},
			{"comp_mech1", 7},
			{"comp_scrap_cloth", 9},
			{"comp_scrap_metal", 9},
			{"comp_wire1", 7},
			{"comp_duct_tape", 2},
			{"bleach", 5},
			{"flashlight", 5},
			{"wep_m_cleaver", 1},
			{"wep_m_hammer", 1},
			{"wep_m_hatchet", 1},
			{"wep_m_kknife", 1},
			{"wep_m_tknife", 1},
			{"wep_m_pipe", 1},
			{"wep_m_f4knife", 1},
			{"wep_m_f4knuckles", 1},
			{"wep_m_f4pipe", 1},
			{"wep_m_f4switchblade", 1},
			{"wep_m_f4tireiron", 1},
			{"wep_m_crowbar", 1},
			{"wep_m_machete", 1},
			{"wep_m_f4baton", 1},
			{"wep_m_wrench", 1},
			{"wep_m_f4bat", 1},
			{"eyes_glasses", 7},
			--{"eyes_glasses_dark", 8},
			{"hands_bgloves", 6},
			{"head_beanie", 5},
			{"head_gbeanie", 5},
			{"mask_ggasmask", 2},
			{"mask_bgasmask", 1},
			{"mask_rbandana", 3},
			{"mask_bbandana", 2},
			{"mask_respirator", 2},
			{"mask_surgicalmask", 4},

		},
		durability = {100, 100}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0,
	},
	["common_junklite"] = { --junk, melee, misc stuff
		loot = {
			{"lockpick", 1},
			{"comp_mech1", 7},
			{"comp_scrap_cloth", 9},
			{"comp_scrap_metal", 9},
			{"comp_wire1", 7},
			{"comp_duct_tape", 2},
			{"bleach", 5},
			{"flashlight", 5},
			{"wep_m_cleaver", 1},
			{"wep_m_hammer", 1},
			{"wep_m_kknife", 1},
			{"wep_m_pipe", 1},
			{"wep_m_f4knuckles", 1},
			{"wep_m_f4pipe", 1},
			{"wep_m_f4tireiron", 1},
			{"eyes_glasses", 7},
			--{"eyes_glasses_dark", 8},
			{"hands_bgloves", 6},
			{"head_beanie", 5},
			{"head_gbeanie", 5},
			{"mask_ggasmask", 2},
			{"mask_bgasmask", 1},
			{"mask_rbandana", 3},
			{"mask_bbandana", 2},
			{"mask_respirator", 2},
			{"mask_surgicalmask", 4},

		},
		durability = {100, 100}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0,
	},
	["common_clothing"] = { --clothing
		loot = {
			
			{"torso_fem_refw", 2},
			{"torso_fem_refg", 2},
			{"torso_fem_oldrefg", 2},
			{"torso_fem_jacket", 2},
			{"torso_fem_refm", 1},
			{"torso_fem_oldrefcamo", 2},
			{"torso_fem_jackety", 1},
			{"torso_mal_refg", 2},
			{"torso_mal_oldrefb", 2},
			{"torso_mal_jacket", 2},
			{"torso_mal_refw", 2},
			{"torso_mal_refm", 1},
			{"torso_mal_oldrefg", 2},
			{"torso_mal_jacketo", 1},
			{"legs_fem_cwulegs", 1},
			{"legs_fem_cwulegsb", 1},
			{"legs_fem_cit1", 2},
			{"legs_fem_cit2", 2},
			{"legs_fem_cit3", 2},
			{"legs_fem_cit4", 2},
			{"legs_fem_cit5", 2},
			{"legs_fem_track", 2},
			{"legs_mal_cit1", 2},
			{"legs_mal_cit2", 2},
			{"legs_mal_cit3", 2},
			{"legs_mal_cit4", 2},
			{"legs_mal_track", 2},
			
		},
		durability = {100, 100}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0,
	},
	["common_food"] = { --food
		loot = {
			{"drink_beer", 3},
			{"drink_bh_sodacan", 1},
			{"drink_dk_sodacan", 1},
			{"drink_energy", 2},
			{"drink_fi_coffee", 1},
			{"drink_gatorade", 2},
			{"drink_juice", 1},
			{"drink_largesoda", 1},
			{"drink_largewater", 2},
			{"drink_mi_sodacan", 1},
			{"drink_milkcarton", 2},
			{"drink_milkjug", 1},
			{"drink_sb_coffee", 1},
			{"drink_smallwater", 1},
			{"drink_sodacan", 8},
			{"drink_tea", 1},
			{"drink_uc_coffee", 1},
			{"drink_waterbottle", 2},
			{"drink_whiskey", 2},
			{"food_mre", 1}, --rare
			{"food_bagchips", 3},
			{"food_bagoats", 2},
			{"food_banana", 2},
			{"food_barchoc", 3},
			{"food_bargran", 3},
			{"food_canpasta", 3},
			{"food_cansoup", 2},
			{"food_canspam", 3},
			{"food_cantuna", 2},
			{"food_orange", 2},
			{"food_takeout", 2},
			
		},
		durability = {100, 100}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0,
	},
	["uncomm_junk"] = { --rarer junk, meds, etc
		loot = {
			{"comp_tech1", 6},
			{"comp_jar_antiseptic", 6},
			{"datachik1", 2},
			{"datachik2", 2},
			{"datachik3", 1},
			{"radio", 1},
			{"wep_m_bat", 3},
			{"wep_m_etool", 2},
			{"wep_m_fireaxe", 2},
			{"wep_m_fubar", 1},
			{"wep_m_pickaxe", 1},
			{"wep_m_sledge", 2},
			{"wep_m_spade", 2},
			{"wep_m_f4bat", 1},
			{"headlamp", 2},
			{"rep_gunoil", 2},
			{"rep_gunoilru", 3},
			{"rep_solvent", 2},
			{"rep_gunoilrud", 3},
			{"rep_cleaning_p", 2},
			{"rep_cleaning_u", 1},
			--[[
			{"rep_cleaning_n", 4},
			{"rep_cleaning_p", 6},
			{"rep_cleaning_u", 5},
			{"rep_cleaning_ws", 4},
			]]
		},
		durability = {100, 100}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0,
	},
	["uncomm_junklite"] = { --rarer junk, meds, etc
		loot = {
			{"comp_tech1", 10},
			{"comp_jar_antiseptic", 6},
			{"datachik1", 4},
			{"datachik2", 3},
			{"datachik3", 1},
			{"wep_m_crowbar", 1},
			{"wep_m_wrench", 1},
			{"wep_m_f4bat", 1},
			{"wep_m_hatchet", 1},

			{"wep_m_bat", 1},
			{"wep_m_fireaxe", 1},
			{"wep_m_fubar", 1},
			{"wep_m_f4bat", 1},
			--{"headlamp", 2},
			--{"rep_gunoil", 2},
			--{"rep_gunoilru", 3},
			--{"rep_solvent", 2},
			--{"rep_gunoilrud", 3},
			--[[
			{"rep_cleaning_n", 4},
			{"rep_cleaning_p", 6},
			{"rep_cleaning_u", 5},
			{"rep_cleaning_ws", 4},
			]]
		},
		durability = {100, 100}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0,
	},
	["uncomm_ammo"] = { --pistol, buckshot, etc
		loot = {
			--{"ammo_338", 1},
			{"ammo_45acp", 3},
			--{"ammo_45acp_large", 1},
			--{"ammo_45acp_hp", 1},
			--{"ammo_45acp_ap", 1},
			{"ammo_buckshot", 2},
			{"ammo_slug", 1}, 
			{"generic_mag", 1}, 
			--{"ammo_dragon", 1},
			--{"ammo_frag", 1},
			--[[{"ammo_545", 1},
			{"ammo_545_large", 1},
			{"ammo_545_ap", 1},
			{"ammo_545_hp", 1},
			{"ammo_556", 1},
			{"ammo_556_large", 1},
			{"ammo_556_ap", 1},
			{"ammo_556_hp", 1},
			{"ammo_762x39", 1},
			{"ammo_762x39_large", 1},
			{"ammo_762x39_ap", 1},
			{"ammo_762x39_hp", 1},
			{"ammo_762x54", 1},
			{"ammo_762x54_ap", 1},
			{"ammo_762x54_hp", 1},]]
			{"ammo_9x19", 3},
			--{"ammo_9x19_large", 1},
			--{"ammo_9x19_hp", 1},
			--{"ammo_9x19_ap", 1},
		},
		durability = {100, 100}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0,
	},
	["rare_ammo"] = { --other rarer ammo
		loot = {
			--{"ammo_338", 1},
			{"generic_mag", 2}, 
			{"ammo_45acp", 5},
			--{"ammo_45acp_large", 1},
			{"ammo_45acp_hp", 1},
			--{"ammo_45acp_ap", 1},
			{"ammo_buckshot", 4},
			{"ammo_slug", 2}, 
			--{"ammo_dragon", 1},
			--{"ammo_frag", 1},
			{"ammo_545", 1},
			--{"ammo_545_large", 1},
			--{"ammo_545_ap", 1},
			--{"ammo_545_hp", 1},
			{"ammo_556", 1},
			--{"ammo_556_large", 1},
			--{"ammo_556_ap", 1},
			--{"ammo_556_hp", 1},
			{"ammo_762x39", 1},
			--{"ammo_762x39_large", 1},
			--{"ammo_762x39_ap", 1},
			--{"ammo_762x39_hp", 1},
			{"ammo_762x54", 1},
			--{"ammo_762x54_ap", 1},
			--{"ammo_762x54_hp", 1},
			{"ammo_9x19", 5},
			--{"ammo_9x19_large", 1},
			{"ammo_9x19_hp", 1},
			--{"ammo_9x19_ap", 1},
			
		},
		durability = {100, 100}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0,
	},
	["rare_meds"] = {
		loot = {
			
			{"medkit", 3},
			{"meds_bandage", 5},
			{"meds_painkillers", 1},
		},
		durability = {100, 100}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0,
	},
	["rare_wep"] = { --pistols, etc more common stuff
		loot = {
		--	{"wep_ak74", 1},
		--	{"wep_akm", 1},
		--	{"wep_aks", 1},
		--	{"wep_awm", 1},
		--	{"wep_g36c", 1},
			{"wep_glock", 3},
			{"wep_usp", 2},
			{"wep_uspm", 1},
			{"wep_izh", 1},
			{"wep_izhsawn", 2},
		--	{"wep_spas", 1},
			{"wep_m1911", 3},
		--	{"wep_m4a1", 1},
		--	{"wep_m590", 1},
		--	{"wep_mp5", 1},
		--	{"wep_mp5k", 1},
		--	{"wep_rpk", 1},
		--	{"wep_ump", 1},
		--	{"wep_mosin", 1},
		--	{"wep_pkp", 1},
			{"wep_uzi", 1},
		},
		durability = {40, 65}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0,
	},
	["rare_atts"] = { --some atts
		loot = {
			{"ins2_br_supp_45", 2},
			--{"ins2_br_supp_545", 1},
			--{"ins2_br_supp_556", 1},
			--{"ins2_br_supp_762x39", 1},
			--{"ins2_br_supp_762x54", 1},
			{"ins2_br_supp_9mm", 2},
			{"ins2_si_rds", 1},
			--{"ins2_si_2xrds", 1},
			{"ins2_si_eotech", 1},
			{"ins2_fg_grip", 2},
			{"ins2_si_kobra", 1},
			{"ins2_ub_light", 2},
			{"ins2_ub_laser", 1},
			
		},
		durability = {100, 100}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0,
	},
	["epic_wep"] = { --rarer weps
		loot = {
		--	{"wep_ak74", 1},
		--	{"wep_akm", 1},
		--	{"wep_aks", 1},
		--	{"wep_awm", 1},
			{"wep_g36c", 1},
			{"wep_glock", 4},
			{"wep_usp", 2},
			{"wep_uspm", 3},
			{"wep_izh", 2},
			{"wep_izhsawn", 2},
		--	{"wep_spas", 1},
			{"wep_m1911", 4},
		--	{"wep_m4a1", 1},
			{"wep_m590", 2},
			{"wep_mp5", 2},
			{"wep_mp5k", 2},
		--	{"wep_rpk", 1},
		--	{"wep_ump", 1},
			{"wep_mosin", 2},
		--	{"wep_pkp", 1},
			{"wep_uzi", 3},
			
		},
		durability = {35, 60}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0,
	},
	["epic_atts"] = { --all atts
		loot = {
			{"ins2_br_supp_45", 2},
			{"ins2_br_supp_545", 1},
			{"ins2_br_supp_556", 1},
			{"ins2_br_supp_762x39", 1},
			{"ins2_br_supp_762x54", 1},
			{"ins2_br_supp_9mm", 2},
			{"ins2_si_rds", 2},
			{"ins2_si_2xrds", 1},
			{"ins2_si_eotech", 2},
			{"ins2_fg_grip", 3},
			{"ins2_si_kobra", 1},
			{"ins2_ub_light", 3},
			{"ins2_ub_laser", 2},
			
		},
		durability = {100, 100}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0,
	},
	["legend_wep"] = { --super rare weps
		loot = {
			{"wep_ak74", 2},
			{"wep_akm", 2},
			{"wep_aks", 3},
			--{"wep_awm", 1},
			{"wep_g36c", 3},
			--{"wep_glock", 5},
			--{"wep_usp", 3},
			--{"wep_uspm", 3},
			--{"wep_izh", 3},
			--{"wep_izhsawn", 3},
			{"wep_spas", 4},
			--{"wep_m1911", 4},
			{"wep_m4a1", 3},
			{"wep_m590", 5},
			--{"wep_mp5", 2},
			--{"wep_mp5k", 2},
			{"wep_rpk", 1},
			{"wep_ump", 4},
			{"wep_mosin", 4},
			--{"wep_pkp", 1},
			--{"wep_uzi", 3},
			
		},
		durability = {20, 50}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0,
	},
	--dumpsters, trash cans, slum areas, rare melee?
	["trash"] = {
		istableloot = true,
		loot = {
			{"none",8},
			{"common_junklite",4},
			{"common_food",2},
			{"common_clothing",1},
			{"uncomm_junklite",1},
		},
		durability = {100, 100}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0, --random ammo amt when spawning, 0 = all ammo, 1 = just mags, 2 = always max
	},
	["trashrare"] = {
		istableloot = true,
		loot = {
			{"none",14},
			{"common_junklite",5},
			{"common_food",1},
			{"common_clothing",1},
			{"uncomm_junklite",2},
			--{"uncomm_ammo",1},
			{"rare_meds",2},
		},
		durability = {100, 100}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0, --random ammo amt when spawning, 0 = all ammo, 1 = just mags, 2 = always max
	},
	["trashrun"] = {
		istableloot = true,
		loot = {
			{"none",7},
			{"common_junk",4},
			{"common_food",2},
			{"common_clothing",1},
			{"uncomm_junk",1},
		},
		durability = {100, 100}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0, --random ammo amt when spawning, 0 = all ammo, 1 = just mags, 2 = always max
	},
	["trashrunrare"] = {
		istableloot = true,
		loot = {
			{"none",13},
			{"common_junk",5},
			{"common_food",1},
			{"common_clothing",1},
			{"uncomm_junk",2},
			{"uncomm_ammo",1},
			{"rare_meds",2},
		},
		durability = {100, 100}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0, --random ammo amt when spawning, 0 = all ammo, 1 = just mags, 2 = always max
	},
	["tier1"] = {
		istableloot = true,
		loot = {
			{"none",11},
			{"uncomm_ammo",6},
			{"rare_ammo",2},
			--{"rare_wep",1},
			{"rare_atts",1},
			{"rare_meds",3},
		},
		durability = {40, 65}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0, --random ammo amt when spawning, 0 = all ammo, 1 = just mags, 2 = always max
	},
	["tier2"] = {
		istableloot = true,
		loot = {
			{"none",12},
			{"rare_ammo",3},
			{"rare_wep",1},
			{"epic_atts",1},
			{"rare_meds",3},
			--{"epic_wep",1},
		},
		durability = {35, 65}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0, --random ammo amt when spawning, 0 = all ammo, 1 = just mags, 2 = always max
	},
	["tier3"] = { --expert only
		istableloot = true,
		loot = {
			{"none",12},
			{"rare_ammo",4},
			{"epic_atts",3},
			{"rare_meds",3},
			{"epic_wep",3},
			{"legend_wep",1},
		},
		durability = {20, 50}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0, --random ammo amt when spawning, 0 = all ammo, 1 = just mags, 2 = always max
	},
	
}

PLUGIN.dropTables = {
	--[[
	["npc_class"] = {
		loot = {
			{"id", 1},
			{"none", 1}
		},
		durability = {5, 30}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0, --random ammo amt when spawning, 0 = all ammo, 1 = just mags, 2 = always max
	},
	]]
	["nz_sky_synth"] = {
		loot = {
			{"comp_mech1", 11},
			{"comp_mech2", 4},
			{"comp_scrap_metal", 20},
			{"comp_wire1", 14},
			{"comp_duct_tape", 7},
			{"comp_tech1", 16},
			{"none", 54},
		},
		durability = {5, 30}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0, --random ammo amt when spawning, 0 = all ammo, 1 = just mags, 2 = always max
	},

	["npc_vj_sky_citizen"] = {
		loot = {
			{"ammo_45acp", 3},
			{"ammo_9x19", 3},
			{"ammo_buckshot", 2},
			{"meds_bandage", 3},
			{"medkit", 3},
			--{"generic_mag", 2}, 
			{"none", 21},
		},
		durability = {5, 30}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0, --random ammo amt when spawning, 0 = all ammo, 1 = just mags, 2 = always max
	},
	["npc_vj_sky_rebel"] = {
		loot = {
			{"ammo_45acp", 3},
			{"ammo_9x19", 3},
			{"ammo_buckshot", 2},
			{"meds_bandage", 3},
			{"medkit", 5},
			{"meds_painkillers", 1},
			{"generic_mag", 1}, 
			{"none", 20},
		},
		durability = {5, 30}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0, --random ammo amt when spawning, 0 = all ammo, 1 = just mags, 2 = always max
	},
	["npc_vj_sky_mp"] = {
		loot = {
			{"ammo_45acp", 2},
			{"ammo_9x19", 3},
			--{"ammo_buckshot", 1},
			{"meds_bandage", 2},
			{"medkit", 1},
			--{"meds_painkillers", 1},
			{"generic_mag", 1}, 
			{"none", 14},
		},
		durability = {5, 30}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0, --random ammo amt when spawning, 0 = all ammo, 1 = just mags, 2 = always max
	},
	["npc_vj_sky_mp_helix"] = {
		loot = {
			{"ammo_45acp", 1},
			{"ammo_9x19", 2},
			--{"ammo_buckshot", 1},
			{"meds_bandage", 3},
			{"medkit", 2},
			{"meds_painkillers", 1},
			{"generic_mag", 1}, 
			{"none", 14},
		},
		durability = {5, 30}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0, --random ammo amt when spawning, 0 = all ammo, 1 = just mags, 2 = always max
	},
	["npc_vj_sky_mp_storm"] = {
		loot = {
			{"ammo_45acp", 2},
			{"ammo_9x19", 3},
			{"ammo_buckshot", 1},
			--{"meds_bandage", 2},
			{"medkit", 2},
			{"meds_painkillers", 1},
			{"generic_mag", 1}, 
			{"none", 15},
		},
		durability = {5, 30}, --durability when spawned if weapon or suit (for watever reason)
		randomAmmo = 0, --random ammo amt when spawning, 0 = all ammo, 1 = just mags, 2 = always max
	},
}

--config (should move this to the actual config but this works for now)
PLUGIN.maxItems = 40			--this V is not correct anymore
PLUGIN.spawnRate = {5400,9600}--a little over 2 hr to a little under 4 hr, seems like a little too much for me but eh{4800,7200} --1 hr to 2 hr until next spawn
PLUGIN.maxSpawnThresh = 0.5 --if its time for next spawn, and #curItems/maxItems > maxSpawnThresh, items will not be spawned this round
PLUGIN.minplayers = 3

PLUGIN.curSpawnRate = PLUGIN.curSpawnRate or 0
PLUGIN.curSpawnTime = PLUGIN.curSpawnTime or 0
PLUGIN.curItems = PLUGIN.curItems or {} --current items, when one is made its inserted into this with the index being the point it was spawned at
PLUGIN.spawnPos = PLUGIN.spawnPos or {} --spawn positions
--[[ spawnPos table def
{
	pos = vector (the position of the point)
	detectionRange = number (if a player is in the range of this, its removed from the list for spawning then)
	table = string (the tableid of this spawnPos)
}
]]
--these were all either unfinished or bad
--nut.util.include("sh_director.lua")
nut.util.include("sh_commands.lua")
--nut.util.include("sh_scenes.lua")
--nut.util.include("sh_tempstorage.lua")

--returns true if there is a player not in noclip/observer near the point, 
--p is the point index
--yes its intentional that neardeath players makes it return false
function PLUGIN:IsPointClear(p)
	local point = self.spawnPos[p]

	if(point) then
		local lis = ents.FindInSphere(point.pos, point.detectionRange)
		for k, v in pairs(lis) do
			if(v:IsPlayer() and v:GetMoveType() != MOVETYPE_NOCLIP) then
				return false
			end
		end
	end
	return true
end

--will create a new spawn point and add it to the table
--pos is the position of the point
--range is the detection range, if there are players in this range when it is checked nothing will be spawned
--table is the tableid to use for spawning
function PLUGIN:CreateSpawn(pos, range, tabl)
	local new = {}
	new.pos = pos
	new.detectionRange = range
	if(!self.lootTables[tabl]) then
		nut.log.addRaw("A loot spawn point tried to be made, but the table wasnt valid!")
		return
	end
	new.table = tabl

	table.insert(self.spawnPos, new)

	self:SaveData()
end

--this *might* be outdated if loot gets updated at runtime
local realB = {}
for k,v in pairs(PLUGIN.lootTables) do
	realB[k] = {}
	for k2, v2 in pairs(v.loot) do
		for i=1, v2[2] do
			table.insert(realB[k], v2[1])
		end
	end
end
--todo: use a table and call this function with printtable to true
	--if the table is indexed by numbers, can change it to x[math.random(#x)] yakno
function PLUGIN:SpawnAtPos(tabl, pos, callback, printtable)

	local actualPos = pos + Vector(0,0,8) --make it a little higher
	
	local it = "none"
	if(type(tabl) != "table") then
		if(!realB[tabl]) then
			print("table for "..tabl.." doesnt exist")
			return
		end

		it = table.Random(realB[tabl]) 
	else
		it = tabl[math.random(#tabl)]
	end
	if(it == "none") then return end --dont spawn anything

	if(type(tabl) == "table" and tabl.istableloot) then --doing it again lmao
		it = table.Random(realB[it])
	elseif(type(tabl) == "string" and self.lootTables[tabl].istableloot) then
		if(printtable) then
		PrintTable(realB[it])
		end
		it = table.Random(realB[it])
	end

	local item = nut.item.get(it)
	if(!item) then return end --invalid item
	
	local data = {}
	local durabilityMin, durabilityMax = self.lootTables[tabl].durability[1], self.lootTables[tabl].durability[2]
	-- random mag amt if ammo, random durability if wep
	if(item.base == "base_mweapons") then
		data["durability"] = math.random(durabilityMin, durabilityMax)

		local maxclip = weapons.GetStored(item.class).Primary.ClipSize
		if(self.lootTables[tabl].randomAmmo != 2) then
			data["ammo"] = math.random(0, maxclip)
		else
			data["ammo"] = maxclip
		end

		--randomize atts randomly?

	end
	if(item.base == "base_suit") then
		data["armor"] = {}
		if(item.armor) then
			data["armor"].durability = math.random(durabilityMin, durabilityMax)
		for k,v in pairs(item.armor) do
			data["armor"][k] = v
		end
		end
	end
	if(item.base == "base_magazines") then
		if(self.lootTables[tabl].randomAmmo != 2) then
			if(self.lootTables[tabl].randomAmmo == 1) then
				if(!item.ammoBox) then
					data["mag"] = math.random(0, item.ammoMax)
				end
			else
				data["mag"] = math.random((item.ammoBox and 1) or 0, item.ammoMax)
			end
		end
	end
	if(item.base == "base_credstick") then
		if(self.lootTables[tabl].randomAmmo <= 1) then --random money just like loot
			data["money"] = math.random(0, item.moneymax)
		else
			data["money"] = item.moneymax
		end
	end

	nut.item.spawn(it, actualPos, callback, Angle(0, math.random(-180, 180), 0), data)
end

--spawn a round of loot
--will not try to spawn loot at points that have players near them
function PLUGIN:SpawnRound()
	if(!self.spawnPos) then self.spawnPos = {} end
	if(#self.spawnPos == 0) then return end

	--[[
	local realL = {}
	for k,v in pairs(self.lootTables) do
		realL[k] = {}
		for k2, v2 in pairs(v.loot) do
			for i=1, v2[2] do
				table.insert(realL[k], v2[1])
			end
		end
	end
	]]

	for k,v in pairs(self.spawnPos) do
		--changing it so items will get replaced
		if(IsValid(self.curItems[k])) then continue end --dont do anything if theres an item
		if(self:IsPointClear(k)) then 
			if(#self.curItems == self.maxItems) then return end
			if(!realB[v.table]) then --trying to change this to the 1 that is made earlier
				nut.log.addRaw("Loot spawn position "..k.." was deleted: The table it used is invalid now!", FLAG_WARNING)
				table.remove(self.spawnPos, k)
				self:SaveData()
				return
			end

			local actualPos = v.pos + Vector(0,0,8) --make it a little higher

			local it = table.Random(realB[v.table])
			if(it == "none") then continue end --dont spawn anything

			--if(IsValid(self.curItems[k])) then self.curItems[k]:Remove() end --remove the item if its there for another
			
			--this is a table value, get the real one
			if(self.lootTables[v.table].istableloot) then
				it = table.Random(realB[it])
			end

			local item = nut.item.get(it)
			if(!item) then continue end --invalid item
			
			local data = {}
			local durabilityMin, durabilityMax = self.lootTables[v.table].durability[1], self.lootTables[v.table].durability[2]
			-- random mag amt if ammo, random durability if wep
			if(item.base == "base_mweapons") then
				data["durability"] = math.random(durabilityMin, durabilityMax)

				local maxclip = weapons.GetStored(item.class).Primary.ClipSize
				if(self.lootTables[v.table].randomAmmo != 2) then
					data["ammo"] = math.random(0, maxclip)
				else
					data["ammo"] = maxclip
				end

				--randomize atts randomly?

			end
			if(item.base == "base_suit") then
				data["armor"] = {}
				if(item.armor) then
				for k,v in pairs(item.armor) do
					data["armor"][k] = v
					data["armor"][k].durability = math.random(durabilityMin, durabilityMax)
				end
				end
			end
			if(item.base == "base_magazines") then
				if(self.lootTables[v.table].randomAmmo != 2) then
					if(self.lootTables[v.table].randomAmmo == 1) then
						if(!item.ammoBox) then
							data["mag"] = math.random(0, item.ammoMax)
						end
					else
						data["mag"] = math.random((item.ammoBox and 1) or 0, item.ammoMax)
					end
				end
			end
			if(item.base == "base_credstick") then
				if(self.lootTables[v.table].randomAmmo <= 1) then --random money just like loot
					data["money"] = math.random(0, item.moneymax)
				else
					data["money"] = item.moneymax
				end
			end

			nut.item.spawn(it, actualPos, function(item, entity)
				self.curItems[k] = entity 

				--hard overwrite becuz its being annoying
				--its likely never going to be above 1 anyway
				if(item.base == "base_junk") then
					item:setQuantity(1)
				end
					
				entity.temp = true
			end, Angle(0, math.random(-180,180), 0), data)
		end
	end
end

if(SERVER) then
	hook.Add("ShutDown", "removeitems", function()
		
	for k, v in ipairs(ents.FindByClass("nut_item")) do
		if (v.nutItemID and v.temp) then --will this work?
			local item = nut.item.instances[v.nutItemID]
			if(item) then
				item:remove()
			end
		end
	end
	end)

	--hook.Add("InitPostEntity", "pleaserunmyinit", function()
	--function PLUGIN:OnLoaded()
	hook.Add("InitializedPlugins", "pleaserunmyinit", function()
		if(timer.Exists("LootSpawningT")) then return end
		timer.Simple(10, function()
			PLUGIN:SpawnRound() --spawn an initial round of items       
		end)
		PLUGIN.curSpawnRate = math.random(PLUGIN.spawnRate[1], PLUGIN.spawnRate[2])
		timer.Create("LootSpawningT", 1, 0, function()
			if(player.GetCount() <= PLUGIN.minplayers) then return end --we dont want stuff to spawn while there is no players
			if(PLUGIN.curSpawnRate > PLUGIN.curSpawnTime) then
				PLUGIN.curSpawnTime = PLUGIN.curSpawnTime + 1 --idk if += or ++ are things in lua still lol
				return --its not time yet
			end
			PLUGIN.curSpawnTime = 0
			PLUGIN.curSpawnRate = math.random(PLUGIN.spawnRate[1], PLUGIN.spawnRate[2])

			--i just almost made this mistake before i caught myself so reminder: 
			--curItems is a table, maxItems is a number
			realItems = {}
			for k,v in pairs(PLUGIN.curItems) do
				if(IsValid(v)) then
					table.insert(realItems, v)
				end
			end

			if((#realItems/PLUGIN.maxItems) > PLUGIN.maxSpawnThresh) then return end --theres still a majority of items left

			PLUGIN:SpawnRound() --do eeeet
		end)
	end)--)
	local realDropTab = {}
	for k,v in pairs(PLUGIN.dropTables) do
		realDropTab[k] = {}
		for k2, v2 in pairs(v.loot) do
			for i=1, v2[2] do
				table.insert(realDropTab[k], v2[1])
			end
		end
	end

	hook.Add("OnNPCKilled", "dropstuff", function(npc, atk, inf)
		local class = npc:GetClass()
		if(PLUGIN.dropTables[class]) then
			local pos = npc:GetPos() + Vector(0,0,8)
			local it = table.Random(realDropTab[class])

			if(it == "none") then return end
			local item = nut.item.get(it)
			if(!item) then return end

			local data = {}
			local durabilityMin, durabilityMax = PLUGIN.dropTables[class].durability[1], PLUGIN.dropTables[class].durability[2]
			-- random mag amt if ammo, random durability if wep
			if(item.base == "base_mweapons") then
				data["durability"] = math.random(durabilityMin, durabilityMax)
			end
			if(item.base == "base_suit") then
				data["armor"] = {}
				for k,v in pairs(item.armor) do
					data["armor"][k] = v
					data["armor"][k].durability = math.random(durabilityMin, durabilityMax)
				end
			end
			if(item.base == "base_magazines") then
				if(PLUGIN.dropTables[class].randomAmmo != 2) then
					if(PLUGIN.dropTables[class].randomAmmo == 1) then
						if(!item.ammoBox) then
							data["mag"] = math.random(0, item.ammoMax)
						end
					else
						data["mag"] = math.random((item.ammoBox and 1) or 0, item.ammoMax)
					end
				end
			end

			nut.item.spawn(it, pos, function(item, entity)
				entity.temp = true
				--hard overwrite becuz its being annoying
				--its likely never going to be above 1 anyway
				if(item.base == "base_junk") then
					item:setQuantity(1)
				end
				--remove after hour
				timer.Simple(1800, function()
					if(IsValid(entity)) then
						entity:Remove()
					end
				end)
			end, nil, data)
		end
	end)

	function PLUGIN:LoadData()
		if(!self.spawnPos or #self.spawnPos == 0) then
			local data = self:getData() or {scenes = {}, spawns = {}}
			self.spawnPos = data.spawns
			self.scenePos = data.scenes
		end
	end

	function PLUGIN:SaveData()
		self:setData({spawns = self.spawnPos, scenes = self.scenePos})
	end
	util.AddNetworkString("RecLotPoints")
else --client
	local localSpawns = {}
	
	net.Receive("RecLotPoints", function()
		local points = net.ReadTable()
		local time = net.ReadInt(32)
	
		localSpawns = points
	
		timer.Simple(time, function()
			localSpawns = {}
		end)
	end)
	
	function PLUGIN:HUDPaint()
		local client = LocalPlayer()

		local sx, sy = surface.ScreenWidth(), surface.ScreenHeight()
		for type,table in pairs(localSpawns) do
			for k, v in ipairs(localSpawns[type]) do
				local scrPos = v:ToScreen()
				local marginx, marginy = sy*.1, sy*.1
				local x, y = math.Clamp(scrPos.x, marginx, sx - marginx), math.Clamp(scrPos.y, marginy, sy - marginy)
				local distance = client:GetPos():Distance(v)
				local factor = 1 - math.Clamp(distance/1024, 0, 1)
				local size = math.max(10, 32*factor)
				local alpha = math.Clamp(255*factor, 80, 255)

				surface.SetDrawColor(80, 30, 80, alpha)
				surface.DrawRect(x - size/2, y - size/2, size, size)
				local typ = "point"
				if(type == "s") then
					typ = "scene"
				end

				nut.util.drawText(typ.." - id: "..k, x, y-size, ColorAlpha(Color(220,220,220,255),alpha), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, nil, alpha)
			end
		end
	end
end
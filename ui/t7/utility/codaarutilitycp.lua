-- Decompiled with CoDLUIDecompiler by JariK

CoD.AARUtilityCP = {}
CoD.AARUtilityCP.RankIdCol = 0.000000
CoD.AARUtilityCP.RankTableColMinXP = 2.000000
CoD.AARUtilityCP.RankTableColXPToNext = 3.000000
CoD.AARUtilityCP.RankDisplayStringCol = 5.000000
CoD.AARUtilityCP.RankTableColMaxXP = 7.000000
CoD.AARUtilityCP.RankDisplayLevelCol = 14.000000
CoD.AARUtilityCP.ACCOLADE_STATE_NOT_COMPLETED = 0.000000
CoD.AARUtilityCP.ACCOLADE_STATE_COMPLETED_NOT_SEEN = 1.000000
CoD.AARUtilityCP.ACCOLADE_STATE_COMPLETED_SEEN = 2.000000
CoD.AARUtilityCP.UnlockTokenIcon = "uie_img_t7_menu_cacselection_icontokenlarge_CP"
function CoD.AARUtilityCP.GetLastMapName(arg0)
	if CoD.perController[arg0].playedTrainingSim then
		CoD.perController[arg0].playedTrainingSim = nil
		return Dvar.ui_mapname:get()
	else
		if CoD.perController[arg0].lastAARMapName == nil then
			local registerVal1 = Dvar.last_map:get()
			if registerVal1 == nil or registerVal1 == false then
				return Dvar.ui_mapname:get()
			end
			CoD.perController[arg0].lastAARMapName = CoD.mapsTable[registerVal1].rootMapName
		end
	end
	return CoD.perController[arg0].lastAARMapName
end

function CoD.AARUtilityCP.GetLastMissionName(arg0)
	if CoD.AARUtilityCP.lastMissionName == nil then
		local registerVal2 = CoD.AARUtilityCP.GetLastMapName(arg0)
		CoD.AARUtilityCP.lastMissionName = CoD.mapsTable[registerVal2].missionName
	end
	return CoD.AARUtilityCP.lastMissionName
end

function CoD.AARUtilityCP.UseTestData()
	return false
end

function CoD.AARUtilityCP.UpdateDatasourcesForScoreboard(arg0, arg1)
	if arg1 == nil then
		return 
	end
	arg1.ScoreboardWidgetCP0.team1List.Team1:setWidgetType(CoD.ScoreboardRowWidgetCP)
	arg1.ScoreboardWidgetCP0.team1List.Team1:setDataSource("ScoreboardTeam1List")
	arg1.ScoreboardWidgetCP0.team1List.Team1:updateDataSource()
end

function CoD.AARUtilityCP.GetMatchStat(arg0, arg1)
	local registerVal3 = CoD.GetPlayerStats(arg0)
	registerVal3 = registerVal3.PlayerStatsList[arg1].StatValue:get()
	local registerVal5 = CoD.AARUtilityCP.GetLastMapName(arg0)
	local registerVal4 = registerVal3.PlayerStatsByMap[registerVal5].currentStats[arg1]:get()
	registerVal5 = math.floor(registerVal3)
	local registerVal6 = math.floor(registerVal4)
	if registerVal5 < registerVal6 then
		DebugPrint("CoDAARUtilityCP: GetMatchStat was going to be negative!")
		DebugPrint(("
 PlayerStatsList[" .. arg1 .. "].statValue:get() == " .. registerVal3))
		DebugPrint(("
 PlayerStatsByMap[currentmap].currentStats[" .. arg1 .. "]:get() == " .. registerVal4))
		return 0.000000
	end
	return (registerVal5 - registerVal6)
end

function CoD.AARUtilityCP.GetMissionHighestStat(arg0, arg1)
	local registerVal2 = CoD.AARUtilityCP.GetLastMapName(arg0)
	local registerVal3 = CoD.GetPlayerStats(arg0)
	return registerVal3.PlayerStatsByMap[registerVal2].highestStats[arg1]:get()
end

function CoD.AARUtilityCP.SetMissionHighestStat(arg0, arg1, arg2)
	local registerVal3 = CoD.AARUtilityCP.GetLastMapName(arg0)
	local registerVal4 = CoD.GetPlayerStats(arg0)
	registerVal4.PlayerStatsByMap[registerVal3].highestStats[arg1]:set(arg2)
end

function CoD.AARUtilityCP.AddToArray(arg0, arg1)
	if arg0.count == nil then
		arg0.count = 0.000000
	end
	arg0.count = (arg0.count + 1.000000)
	arg0[arg0.count] = arg1
end

function CoD.AARUtilityCP.InitRewards(arg0)
	{}.count = 0.000000
end

function CoD.AARUtilityCP.AddReward(arg0, arg1, arg2)
	{}.type = arg2
	{}.reward = arg1
	CoD.AARUtilityCP.AddToArray(arg0, {})
end

function CoD.AARUtilityCP.GetScoreboardTeamTable(arg0, arg1)
	local registerVal2 = Engine.GetTeamPositions(arg0, Engine.GetCurrentTeamCount())
	local registerVal3 = Engine.GetCurrentTeamCount()
	if registerVal3 < 2.000000 and arg1 == 2.000000 then
		return {}
	end
	local registerVal4 = Engine.GetScoreboardTeamClientCount(Enum.team_t.TEAM_ALLIES)
	local registerVal5 = Engine.GetPlayerStats(arg0)
	local registerVal7 = Engine.GetModelForController(arg0)
	local registerVal8 = Engine.CreateModel(registerVal7, "scoreboardInfo")
	for index10=1.000000, registerVal4, 1.000000 do
		local registerVal16 = Engine.GetScoreboardTeamClientCount(registerVal2[arg1].team)
		if registerVal16 < index10 then
		else
			registerVal16 = Engine.GetScoreboardPlayerData((index10 - 1.000000), registerVal2[arg1].team, Enum.scoreBoardColumns_e.SCOREBOARD_COLUMN_CLIENTNUM)
		end
		local registerVal18 = Engine.milliseconds()
		registerVal16 = registerVal5.AfterActionReportStats.playerStats[registerVal16].score:get()
		local registerVal17 = registerVal5.AfterActionReportStats.playerStats[registerVal16].kills:get()
		registerVal18 = registerVal5.AfterActionReportStats.playerStats[registerVal16].deaths:get()
		local registerVal19 = registerVal5.AfterActionReportStats.playerStats[registerVal16].assists:get()
		local registerVal20 = registerVal5.AfterActionReportStats.playerStats[registerVal16].revives:get()
		local registerVal21 = {}
		registerVal21.team = registerVal2[arg1].team
		local registerVal22 = tonumber(registerVal16)
		registerVal21.clientNum = registerVal22
		registerVal21.score = registerVal16
		registerVal21.kills = registerVal17
		registerVal21.deaths = registerVal18
		registerVal21.assists = registerVal19
		registerVal21.revives = registerVal20
		registerVal22 = {}
		registerVal22.models = registerVal21
		local registerVal26 = Engine.GetGlobalModel()
		local registerVal24 = Engine.GetModelValue(Engine.GetModel(registerVal26, ("scoreboard.team1." .. registerVal16 .. ".ping")))
		registerVal22.models.ping = registerVal24
		table.insert({}, registerVal22)
	end
	return {}
end

function CoD.AARUtilityCP.SetupUIModels(arg0)
	local registerVal1 = CoD.AARUtilityCP.UseTestData()
	local registerVal3 = CoD.GetPlayerStats(arg0)
	local registerVal4 = registerVal3.PlayerStatsList.RANK.StatValue:get()
	local registerVal5 = registerVal3.PlayerStatsList.PLEVEL.StatValue:get()
	local registerVal6 = registerVal3.PlayerStatsList.RANKXP.StatValue:get()
	local registerVal7 = registerVal3.currentRankXP:get()
	local registerVal8 = CoD.AARUtilityCP.GetXPEarnedDuringMatch(registerVal6, registerVal7)
	local registerVal9 = CoD.AARUtilityCP.GetLastMapName(arg0)
	local registerVal12, registerVal13 = CoD.AARUtility.GetLevelAndLevelIconForRank((registerVal4 + 1.000000), (registerVal5 + 1.000000))
	{}.nextLevelIcon = registerVal13
	{}.nextLevel = registerVal12
	if registerVal1 then
		{}.kills = 24.000000
		{}.assists = 14.000000
		{}.score = 11550.000000
		{}.revives = 3.000000
		{}.incaps = 2.000000
		{}.difficulty = 1.000000
		{}.showBestScoreIcon = 1.000000
		{}.showBestKillsIcon = 1.000000
		{}.showBestCompletionTimeIcon = 1.000000
		{}.showBestIncapsIcon = 1.000000
		{}.showBestAssistsIcon = 1.000000
		{}.showBestRevivesIcon = 1.000000
	else
		registerVal12 = CoD.AARUtilityCP.GetMatchStat(arg0, "KILLS")
		{}.kills = registerVal12
		registerVal12 = CoD.AARUtilityCP.GetMatchStat(arg0, "ASSISTS")
		{}.assists = registerVal12
		registerVal12 = CoD.AARUtilityCP.GetMatchStat(arg0, "SCORE")
		{}.score = registerVal12
		registerVal12 = CoD.AARUtilityCP.GetMatchStat(arg0, "REVIVES")
		{}.revives = registerVal12
		registerVal12 = CoD.AARUtilityCP.GetMatchStat(arg0, "INCAPS")
		{}.incaps = registerVal12
		registerVal13 = CoD.AARUtilityCP.GetLastMapName(arg0)
		registerVal12 = registerVal3.PlayerStatsByMap[registerVal13].lastCompletedDifficulty:get()
		{}.difficulty = registerVal12
		{}.showBestScoreIcon = 0.000000
		{}.showBestKillsIcon = 0.000000
		{}.showBestDifficultyIcon = 0.000000
		{}.showBestIncapsIcon = 0.000000
		{}.showBestAssistsIcon = 0.000000
		{}.showBestRevivesIcon = 0.000000
		registerVal12 = CoD.AARUtilityCP.GetMissionHighestStat(arg0, "SCORE")
		registerVal13 = CoD.AARUtilityCP.GetMissionHighestStat(arg0, "KILLS")
		local registerVal14 = CoD.AARUtilityCP.GetMissionHighestStat(arg0, "ASSISTS")
		local registerVal15 = CoD.AARUtilityCP.GetMissionHighestStat(arg0, "REVIVES")
		local registerVal16 = CoD.AARUtilityCP.GetMissionHighestStat(arg0, "INCAPS")
		local registerVal17 = CoD.AARUtilityCP.GetMissionHighestStat(arg0, "HIGHEST_DIFFICULTY")
		if registerVal12 < {}.score and registerVal12 ~= nil then
			{}.showBestScoreIcon = 1.000000
		end
		if registerVal13 < {}.kills and registerVal13 ~= nil then
			{}.showBestKillsIcon = 1.000000
		end
		if registerVal14 < {}.assists and registerVal14 ~= nil then
			{}.showBestAssistsIcon = 1.000000
		end
		if registerVal15 < {}.revives and registerVal15 ~= nil then
			{}.showBestRevivesIcon = 1.000000
		end
		if {}.incaps < registerVal16 and registerVal16 ~= nil then
			{}.showBestIncapsIcon = 1.000000
		end
		if registerVal17 < {}.difficulty then
			{}.showBestDifficultyIcon = 1.000000
		end
	end
	{}.xpEarnedDuringMatch = registerVal8
	registerVal13 = Engine.GetModelForController(arg0)
	registerVal12 = Engine.CreateModel(registerVal13, "aarStats.performanceTabStats")
	registerVal13, registerVal14, registerVal15 = pairs({})
	for index16,value17 in registerVal13, registerVal14, registerVal15 do
		local registerVal19 = Engine.CreateModel(registerVal12, index16)
		Engine.SetModelValue(registerVal19, value17)
	end
end

function CoD.AARUtilityCP.GetXPEarnedDuringMatch(arg0, arg1)
	if (arg0 - arg1) < 0.000000 then
	end
	return 0.000000
end

function CoD.AARUtilityCP.GetModelForRewardItemByIndex(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	return Engine.GetModel(registerVal3, ("aarRewards." .. arg1))
end

function CoD.AARUtilityCP.CheckRankRewards(arg0, arg1, arg2)
	local registerVal3 = Engine.TableLookup(arg0, CoD.rankTable, 0.000000, arg1.rank, arg2)
	if arg1.Rewards == nil then
		arg1.Rewards = {}
	end
	local registerVal4, registerVal5, registerVal6 = registerVal3:gmatch("%S+")
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if index7 == "token" then
			local registerVal10 = Engine.TableLookup(arg0, CoD.rankTable, 0.000000, arg1.rank, 18.000000)
			if registerVal10 ~= nil and registerVal10 ~= "" then
				local registerVal11 = tonumber(registerVal10)
			end
			registerVal11 = Engine.Localize("CPUI_ADD_UNLOCK_TOKENS", (1.000000 + registerVal11))
			{}.name = registerVal11
			{}.description = ""
			{}.icon = CoD.AARUtilityCP.UnlockTokenIcon
		else
			local registerVal9 = Engine.TableLookup(arg0, CoD.statsTable, 4.000000, index7, 6.000000)
			registerVal10 = string.find(index7, "cybercom")
			if registerVal10 then
				registerVal10 = Engine.TableLookup(arg0, CoD.statsTable, 4.000000, index7, 6.000000)
			end
			registerVal10 = Engine.TableLookup(arg0, CoD.statsTable, 4.000000, index7, 3.000000)
			{}.name = registerVal10
			registerVal10 = Engine.TableLookup(arg0, CoD.statsTable, 4.000000, index7, 18.000000)
			{}.description = registerVal10
			{}.icon = registerVal10
		end
		CoD.AARUtilityCP.AddToArray(arg1.Rewards, {})
	end
end

function CoD.AARUtilityCP.GetRankForRankXP(arg0, arg1)
	for index2=0.000000, 19.000000, 1.000000 do
		local registerVal6 = tonumber(Engine.TableLookup(arg0, CoD.rankTable, 0.000000, index2, 7.000000))
		if arg1 < registerVal6 then
			return index2
		end
	end
	return 19.000000
end

function CoD.AARUtilityCP.CheckRankAndPrestige(arg0, arg1, arg2)
	local registerVal3 = CoD.AARUtilityCP.UseTestData()
	if registerVal3 then
		{}.icon = "rank_lcpl_128"
		{}.title = "SOME HIGH RANK"
		{}.description = "Level Someting"
		{}.rank = 1.000000
		for index8=8.000000, 12.000000, 1.000000 do
			CoD.AARUtilityCP.CheckRankRewards(arg0, {}, index8)
		end
		CoD.AARUtilityCP.CheckRankRewards(arg0, {}, 17.000000)
		CoD.AARUtilityCP.AddReward(arg2, {}, "RANK")
	else
		local registerVal7 = arg1.currentRankXP:get()
		local registerVal8 = CoD.AARUtilityCP.GetRankForRankXP(arg0, registerVal7)
		local registerVal9 = arg1.PlayerStatsList.RANKXP.statValue:get()
		local registerVal10 = CoD.AARUtilityCP.GetRankForRankXP(arg0, registerVal9)
		if arg1 and arg1.currentRankXP and 0.000000 < (registerVal10 - registerVal8) then
			for index14=1.000000, (registerVal10 - registerVal8), 1.000000 do
				local registerVal20 = string.format("%02d", ((registerVal8 + index14) + 1.000000))
				{}.icon = ("t7_icon_rank_cp_level_" .. registerVal20 .. "_lrg")
				local registerVal19 = CoD.GetRankName((registerVal8 + index14), 0.000000)
				{}.title = registerVal19
				registerVal19 = Engine.Localize("MENU_LEVEL")
				{}.description = (registerVal19 .. " " .. ((registerVal8 + index14) + 1.000000))
				{}.rank = (registerVal8 + index14)
				for index19=8.000000, 12.000000, 1.000000 do
					CoD.AARUtilityCP.CheckRankRewards(arg0, {}, index19)
				end
				CoD.AARUtilityCP.CheckRankRewards(arg0, {}, 17.000000)
				CoD.AARUtilityCP.AddReward(arg2, {}, "RANK")
			end
		end
	end
end

function CoD.AARUtilityCP.CheckWeaponRewards(arg0, arg1, arg2, arg3, arg4)
	if arg1.Rewards == nil then
		arg1.Rewards = {}
	end
	if arg3 ~= nil and arg3 ~= "" then
		local registerVal6 = Engine.TableLookup(arg0, CoD.attachmentTable, 4.000000, arg3, 0.000000)
		local registerVal7 = Engine.TableLookup(arg0, CoD.attachmentTable, 4.000000, arg3, 3.000000)
		{}.name = registerVal7
		registerVal7 = Engine.GetAttachmentUniqueImageByAttachmentIndex(Enum.eModes.MODE_MULTIPLAYER, arg2, tonumber(registerVal6))
		{}.icon = registerVal7
		{}.description = "CPUI_ATTACHMENT"
		CoD.AARUtilityCP.AddToArray(arg1.Rewards, {})
	end
	if arg4 ~= nil and arg4 ~= "0" and arg4 ~= "" then
		registerVal6 = Engine.Localize(LocalizeIntoString("CPUI_XP_BONUS", tonumber(arg4)))
		{}.name = registerVal6
		{}.icon = "t7_hud_mp_notifications_xp_blue"
		{}.description = ""
		CoD.AARUtilityCP.AddToArray(arg1.Rewards, {})
	end
end

function CoD.AARUtilityCP.CheckWeaponLevels(arg0, arg1, arg2)
	local registerVal3 = CoD.AARUtilityCP.UseTestData()
	if registerVal3 then
		{}.icon = "t7_icon_weapon_ar_standard_sm"
		{}.title = "ARAK 74"
		{}.description = "Level 2"
		CoD.AARUtilityCP.CheckWeaponRewards(arg0, {}, 2.000000, "ar_standard", 2.000000)
		CoD.AARUtilityCP.AddReward(arg2, {}, "WEAPON")
	else
		if arg1 and arg1.currentWeaponLevels then
			for index4=1.000000, 57.000000, 1.000000 do
				local registerVal8 = Engine.TableLookup(arg0, CoD.statsTable, 0.000000, index4, 4.000000)
				if registerVal8 ~= nil and registerVal8 ~= "" then
					local registerVal9 = Engine.TableLookup(arg0, CoD.statsTable, 0.000000, index4, 3.000000)
					local registerVal10 = arg1.itemstats[index4].xp:get()
					local registerVal11 = arg1.currentWeaponLevels[index4]:get()
					local registerVal12 = Engine.TableFindRows(CoD.gunLevelsTable, 2.000000, registerVal8)
					local registerVal13 = tonumber(Engine.TableLookupGetColumnValueForRow(CoD.gunLevelsTable, registerVal12[#], 0.000000))
					local registerVal16 = Engine.TableLookupGetColumnValueForRow(CoD.gunLevelsTable, registerVal12[1.000000], 1.000000)
					registerVal16 = tonumber(Engine.TableLookupGetColumnValueForRow(CoD.gunLevelsTable, (registerVal12[1.000000] + 1.000000), 0.000000))
					registerVal16 = Engine.TableLookupGetColumnValueForRow(CoD.gunLevelsTable, ((registerVal12[1.000000] + 1.000000) + 1.000000), 1.000000)
					local registerVal17 = tonumber(registerVal16)
					registerVal17 = Engine.TableLookupGetColumnValueForRow(CoD.gunLevelsTable, ((registerVal12[1.000000] + 1.000000) + 1.000000), 3.000000)
					local registerVal18 = Engine.TableLookupGetColumnValueForRow(CoD.gunLevelsTable, ((registerVal12[1.000000] + 1.000000) + 1.000000), 4.000000)
					local registerVal19 = Engine.TableLookupGetColumnValueForRow(CoD.gunLevelsTable, ((registerVal12[1.000000] + 1.000000) + 1.000000), 0.000000)
					if registerVal17 ~= "" then
						local registerVal21 = Engine.TableLookup(arg0, CoD.statsTable, 0.000000, index4, 6.000000)
						{}.icon = registerVal21
						{}.title = registerVal9
						registerVal21 = Engine.Localize("MENU_LEVEL")
						local registerVal23 = tonumber(registerVal19)
						{}.description = (registerVal21 .. " " .. (registerVal23 + 2.000000))
						CoD.AARUtilityCP.CheckWeaponRewards(arg0, {}, index4, registerVal17, registerVal18)
						CoD.AARUtilityCP.AddReward(arg2, {}, "WEAPON")
					end
					if registerVal12[#Engine.TableLookupGetColumnValueForRow(CoD.gunLevelsTable, registerVal12[#], 0.000000)] < (((registerVal12[1.000000] + 1.000000) + 1.000000) + 1.000000) then
					else
						local registerVal20 = Engine.TableLookupGetColumnValueForRow(CoD.gunLevelsTable, (((registerVal12[1.000000] + 1.000000) + 1.000000) + 1.000000), 1.000000)
					end
					registerVal13 = Engine.TableLookup(arg0, CoD.statsTable, 0.000000, index4, 2.000000)
					local registerVal15 = CoD.getStatsMilestoneTable(3.000000, Enum.eModes.MODE_CAMPAIGN)
					local registerVal14 = Engine.TableFindRows(registerVal15, 3.000000, registerVal13)
					if registerVal14 ~= nil then
						for index15=1.000000, #3.000000, 1.000000 do
							registerVal19 = arg1.ItemStats[index4].challengeCompleted[(index15 - 1.000000)]:get()
							if registerVal19 ~= 1.000000 then
							end
							if true then
								registerVal21 = CoD.getStatsMilestoneTable(3.000000, Enum.eModes.MODE_CAMPAIGN)
								registerVal20 = Engine.TableLookupGetColumnValueForRow(registerVal21, registerVal14[index15], 9.000000)
								registerVal21 = Engine.TableLookup(arg0, CoD.attachmentTable, 4.000000, registerVal20, 3.000000)
								local registerVal22 = Engine.TableLookup(arg0, CoD.attachmentTable, 4.000000, registerVal20, 6.000000)
								registerVal23 = Engine.TableLookup(arg0, CoD.statsTable, 0.000000, index4, 3.000000)
								{}.icon = registerVal22
								{}.title = registerVal21
								{}.description = registerVal23
								{}.Rewards = {}
								local registerVal27 = CoD.getStatsMilestoneTable(3.000000, Enum.eModes.MODE_CAMPAIGN)
								local registerVal26 = Engine.TableLookupGetColumnValueForRow(registerVal27, registerVal14[index15], 6.000000)
								registerVal27 = Engine.Localize(LocalizeIntoString("CPUI_XP_BONUS", tonumber(registerVal26)))
								{}.name = registerVal27
								{}.icon = "t7_hud_mp_notifications_xp_blue"
								{}.description = ""
								CoD.AARUtilityCP.AddToArray({}.Rewards, {})
								CoD.AARUtilityCP.AddReward(arg2, {}, "WEAPON_CHALLENGE")
								arg1.ItemStats[index4].challengeCompleted[(index15 - 1.000000)]:set(0.000000)
							end
						end
					end
				end
			end
		end
	end
end

function CoD.AARUtilityCP.GetAccoladeMapStatValue(arg0, arg1, arg2)
	local registerVal3 = CoD.AARUtilityCP.UseTestData()
	if registerVal3 then
		Engine.TableLookup(controllerNum, CoD.statsMilestone, 0.000000, arg2, 2.000000)
		return tonumber(Engine.TableLookup)
	else
		local registerVal5 = CoD.AARUtilityCP.GetLastMapName(arg0)
		return arg1.PlayerStatsByMap[registerVal5].accolades[arg2].value:get()
	end
end

function CoD.AARUtilityCP.GetAccoladeMapStatState(arg0, arg1, arg2)
	local registerVal3 = CoD.AARUtilityCP.UseTestData()
	if registerVal3 then
		return CoD.AARUtilityCP.ACCOLADE_STATE_COMPLETED_NOT_SEEN
	else
		local registerVal5 = CoD.AARUtilityCP.GetLastMapName(arg0)
		return arg1.PlayerStatsByMap[registerVal5].accolades[arg2].state:get()
	end
end

function CoD.AARUtilityCP.SetAccoladeMapStatState(arg0, arg1, arg2, arg3)
	local registerVal5 = CoD.AARUtilityCP.GetLastMapName(arg0)
	arg1.PlayerStatsByMap[registerVal5].accolades[arg2].state:set(arg3)
end

function CoD.AARUtilityCP.SetAccoladeMapStatValue(arg0, arg1, arg2, arg3)
	local registerVal5 = CoD.AARUtilityCP.GetLastMapName(arg0)
	arg1.PlayerStatsByMap[registerVal5].accolades[arg2].value:set(arg3)
end

function CoD.AARUtilityCP.GetAccoladeIconFromType(arg0)
	local registerVal1 = string.lower(arg0)
	if registerVal1 == "accuracy" then
		return "uie_accuracy"
	else
		if registerVal1 == "airvehicledestroy" then
			return "uie_air_vehicle"
		else
			if registerVal1 == "bullshark" then
				return "uie_bullshark"
			else
				if registerVal1 == "cybernetics" then
					return "uie_cybernetics"
				else
					if registerVal1 == "defend" then
						return "uie_protect"
					else
						if registerVal1 == "explosion" then
							return "uie_explosion"
						else
							if registerVal1 == "find" then
								return "uie_collectibles"
							else
								if registerVal1 == "grenade" then
									return "uie_grenade"
								else
									if registerVal1 == "groundvehicledestroy" then
										return "uie_ground_vehicle"
									else
										if registerVal1 == "heavyweapon" then
											return "uie_heavy_weapon"
										else
											if registerVal1 == "kills" then
												return "uie_kill"
											else
												if registerVal1 == "melee" then
													return "uie_melee"
												else
													if registerVal1 == "score" then
														return "uie_score"
													else
														if registerVal1 == "stealth" then
															return "uie_stealth"
														else
															if registerVal1 == "traversal" then
																return "uie_traversal"
															else
																if registerVal1 == "trickshot" then
																	return "uie_trickshot"
																else
																	if registerVal1 == "untouched" then
																		return "uie_indestructible"
																	else
																		if registerVal1 == "weapon" then
																			return "uie_weapons"
																		end
																	end
																end
															end
														end
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

function CoD.AARUtilityCP.CheckAccolades(arg0, arg1, arg2)
	local registerVal3 = CoD.AARUtilityCP.UseTestData()
	if registerVal3 then
		{}.icon = "uie_headicon_dead"
		{}.title = "Accolade"
		{}.description = "Can't Touch This"
		CoD.AARUtilityCP.AddReward(arg2, {}, "ACCOLADE")
	else
		if arg1 ~= nil then
			local registerVal4 = CoD.AARUtilityCP.GetLastMissionName(arg0)
			if registerVal4 == nil then
				return 
			end
			local registerVal5 = CoD.AARUtilityCP.GetLastMissionName(arg0)
			registerVal5 = registerVal5:upper()
			registerVal5 = Engine.TableLookup(arg0, CoD.statsMilestone, 4.000000, ("MISSION_" .. registerVal5 .. "_UNTOUCHED"), 0.000000)
			if registerVal5 == "" then
				return 
			end
			local registerVal7 = CoD.AARUtilityCP.GetLastMapName(arg0)
			if CoD.mapsTable[registerVal7].accoladelist == nil then
				return 
			end
			local registerVal9 = CoD.AARUtilityCP.GetLastMapName(arg0)
			registerVal7 = Engine.GetAssetList(CoD.mapsTable[registerVal9].accoladelist)
			for index8=0.000000, 18.000000, 1.000000 do
				local registerVal12 = CoD.AARUtilityCP.GetAccoladeMapStatState(arg0, arg1, index8)
				if registerVal12 ~= CoD.AARUtilityCP.ACCOLADE_STATE_COMPLETED_SEEN then
					if registerVal12 == CoD.AARUtilityCP.ACCOLADE_STATE_COMPLETED_NOT_SEEN then
						local registerVal13 = Engine.TableLookup(arg0, CoD.statsMilestone, 0.000000, (index8 + registerVal5), 4.000000)
						local registerVal15, registerVal16, registerVal17 = pairs(registerVal7)
						for index18,value19 in registerVal15, registerVal16, registerVal17 do
							if value19.challengeReference == registerVal13 then
								local registerVal20 = CoD.AARUtilityCP.GetAccoladeIconFromType(value19.challengeWidget)
							else
							end
						end
						{}.icon = registerVal20
						registerVal16 = Engine.TableLookup(arg0, CoD.statsMilestone, 0.000000, (index8 + registerVal5), 5.000000)
						{}.title = (registerVal16 .. "_NAME")
						{}.description = "ACCOLADES_ACCOLADE_COMPLETED"
						registerVal16 = Engine.TableLookup(arg0, CoD.statsMilestone, 0.000000, (index8 + registerVal5), 7.000000)
						{}.Rewards = {}
						if registerVal16 ~= nil and registerVal16 ~= "" then
							{}.name = "CPUI_ADD_UNLOCK_TOKEN"
							{}.description = ""
							{}.icon = CoD.AARUtilityCP.UnlockTokenIcon
							CoD.AARUtilityCP.AddToArray({}.Rewards, {})
						end
						registerVal17 = Engine.TableLookup(arg0, CoD.statsMilestone, 0.000000, (index8 + registerVal5), 6.000000)
						if registerVal17 ~= nil and registerVal17 ~= "" then
							local registerVal19 = Engine.Localize(LocalizeIntoString("CPUI_XP_BONUS", tonumber(registerVal17)))
							{}.name = registerVal19
							{}.description = ""
							{}.icon = "t7_hud_mp_notifications_xp_blue"
							CoD.AARUtilityCP.AddToArray({}.Rewards, {})
						end
						CoD.AARUtilityCP.AddReward(arg2, {}, "ACCOLADE")
						CoD.AARUtilityCP.SetAccoladeMapStatState(arg0, arg1, index8, CoD.AARUtilityCP.ACCOLADE_STATE_COMPLETED_SEEN)
					else
						CoD.AARUtilityCP.SetAccoladeMapStatValue(arg0, arg1, index8, 0.000000)
					end
				end
			end
		end
	end
end

function CoD.AARUtilityCP.GetDifficultyFromIndex(arg0)
	if arg0 == 0.000000 then
		return "RECRUIT"
	else
		if arg0 == 1.000000 then
			return "REGULAR"
		else
			if arg0 == 2.000000 then
				return "HARDENED"
			else
				if arg0 == 3.000000 then
					return "VETERAN"
				else
					return "HEROIC"
				end
			end
		end
	end
end

function CoD.AARUtilityCP.CheckMissionRewards(arg0, arg1, arg2)
	local registerVal3 = CoD.AARUtilityCP.GetLastMapName(arg0)
	for index8=0.000000, 5.000000, 1.000000 do
		local registerVal12 = arg1.PlayerStatsByMap[registerVal3].previousCompletedDifficulties[index8]:get()
		local registerVal13 = arg1.PlayerStatsByMap[registerVal3].previousReceivedXPForDifficulty[index8]:get()
		local registerVal14 = arg1.PlayerStatsByMap[registerVal3].receivedXPForDifficulty[index8]:get()
		if registerVal12 == 1.000000 then
		end
		if registerVal13 ~= registerVal14 then
			local registerVal16 = CoD.AARUtilityCP.GetDifficultyFromIndex(index8)
			local registerVal17 = CoD.AARUtilityCP.GetLastMapName(arg0)
			registerVal16 = arg1.PlayerStatsByMap[registerVal17].lastCompletedDifficulty:get()
			if index8 == registerVal16 then
				registerVal16 = tonumber(Engine.TableLookup(arg0, CoD.scoreInfoTable, 0.000000, ("complete_mission_" .. registerVal16), 23.000000))
			else
				registerVal16 = tonumber(Engine.TableLookup(arg0, CoD.scoreInfoTable, 0.000000, ("complete_mission_" .. registerVal16), 23.000000))
			end
		end
	end
	if true == true then
		{}.icon = "t7_cp_hud_mission_complete"
		{}.title = "COOP_SMUI_MISSION_COMPLETE"
		{}.description = CoD.mapsTable[registerVal3].mapName
		{}.Rewards = {}
		local registerVal11 = Engine.Localize(LocalizeIntoString("CPUI_XP_BONUS", (0.000000 + registerVal16)))
		{}.name = registerVal11
		{}.icon = "t7_hud_mp_notifications_xp_blue"
		registerVal14 = CoD.AARUtilityCP.GetLastMapName(arg0)
		registerVal12 = CoD.AARUtilityCP.GetDifficultyFromIndex(arg1.PlayerStatsByMap[registerVal14].lastCompletedDifficulty:get())
		{}.description = ("MENU_COMPLETED_" .. registerVal12)
		CoD.AARUtilityCP.AddToArray({}.Rewards, {})
		if (0.000000 + registerVal16) ~= 0.000000 then
			registerVal12 = Engine.Localize(LocalizeIntoString("CPUI_XP_BONUS", (0.000000 + registerVal16)))
			{}.name = registerVal12
			{}.icon = "t7_hud_mp_notifications_xp_blue"
			{}.description = "CPUI_LOWER_DIFFICULTIES"
			CoD.AARUtilityCP.AddToArray({}.Rewards, {})
		end
		if false == true then
			{}.name = "CPUI_ADD_UNLOCK_TOKEN"
			{}.description = ""
			{}.icon = CoD.AARUtilityCP.UnlockTokenIcon
			CoD.AARUtilityCP.AddToArray({}.Rewards, {})
		end
		local registerVal15 = CoD.getStatsMilestoneTable(2.000000, Enum.eModes.MODE_CAMPAIGN)
		local registerVal19 = CoD.AARUtilityCP.GetLastMapName(arg0)
		registerVal12 = tonumber(Engine.TableLookup(arg0, registerVal15, 1.000000, "bodystyle", 3.000000, registerVal19, 2.000000))
		CoD.CCUtility.customizationMode = Enum.eModes.MODE_CAMPAIGN
		CoD.CCUtility.SetEdittingHero(arg0, Engine.GetEquippedHero(arg0, CoD.CCUtility.customizationMode))
		registerVal14 = Engine.GetHeroCustomizationTable(CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits)
		CoD.CCUtility.Heroes.heroCustomizationTable = registerVal14
		{}.name = "CPUI_OUTFIT"
		{}.icon = (CoD.CCUtility.Heroes.heroCustomizationTable.bodies[(registerVal12 + 1.000000)].icon .. "_nstrm")
		{}.description = CoD.CCUtility.Heroes.heroCustomizationTable.bodies[(registerVal12 + 1.000000)].name
		CoD.AARUtilityCP.AddToArray({}.Rewards, {})
		CoD.AARUtilityCP.AddReward(arg2, {}, "MISSION")
	end
end

function CoD.AARUtilityCP.CheckRatingRewards(arg0, arg1, arg2)
	local registerVal4 = Dvar.ui_mapname:get()
	if CoD.mapsTable[registerVal4].isSafeHouse ~= true then
		return 
	end
	local registerVal3 = Engine.GetAssetList("rating_list")
	for index4=0.000000, 3.000000, 1.000000 do
		local registerVal8 = arg1.PlayerStatsByMap.cp_sh_cairo.completedDifficulties[index4]:get()
		local registerVal9 = arg1.PlayerStatsByMap.cp_sh_cairo.previousCompletedDifficulties[index4]:get()
		if registerVal8 ~= registerVal9 then
			{}.icon = registerVal3[(index4 + 1.000000)].ratingImage
			{}.title = registerVal3[(index4 + 1.000000)].ratingName
			{}.description = "CPUI_RATING_EARNED"
			{}.Rewards = {}
			local registerVal13 = Engine.Localize("CPUI_ADD_UNLOCK_TOKENS", registerVal3[(index4 + 1.000000)].tokensAwarded)
			{}.name = registerVal13
			{}.icon = CoD.AARUtilityCP.UnlockTokenIcon
			{}.description = ""
			CoD.AARUtilityCP.AddToArray({}.Rewards, {})
			local registerVal14 = Engine.Localize(LocalizeIntoString("CPUI_XP_BONUS", registerVal3[(index4 + 1.000000)].xpAwarded))
			{}.name = registerVal14
			{}.icon = "t7_hud_mp_notifications_xp_blue"
			{}.description = ""
			CoD.AARUtilityCP.AddToArray({}.Rewards, {})
			CoD.AARUtilityCP.AddReward(arg2, {}, "RATING")
		end
	end
end

function CoD.AARUtilityCP.contains(arg0, arg1)
	for index2=1.000000, #, 1.000000 do
		if arg0[index2] == arg1 then
			return true
		end
	end
	return false
end

function CoD.AARUtilityCP.CheckRedDotRewards(arg0, arg1, arg2)
	local registerVal4 = CoD.getStatsMilestoneTable(3.000000, Enum.eModes.MODE_CAMPAIGN)
	local registerVal3 = Engine.TableFindRows(registerVal4, 3.000000, "attachment")
	for index5=1.000000, #"attachment", 1.000000 do
		local registerVal10 = CoD.getStatsMilestoneTable(3.000000, Enum.eModes.MODE_CAMPAIGN)
		local registerVal9 = Engine.TableLookupGetColumnValueForRow(registerVal10, registerVal3[index5], 13.000000)
		registerVal10 = CoD.AARUtilityCP.contains({}, registerVal9)
		if not registerVal10 then
			table.insert({}, registerVal9)
		end
	end
	for index5=1.000000, ##"attachment", 1.000000 do
		local registerVal11 = CoD.getStatsMilestoneTable(3.000000, Enum.eModes.MODE_CAMPAIGN)
		registerVal10 = Engine.TableFindRows(registerVal11, 13.000000, {}[index5])
		if registerVal10 ~= nil then
			for index11=1.000000, #13.000000, 1.000000 do
				local registerVal15 = arg1.Attachments[{}[index5]].challengeCompleted[(index11 - 1.000000)]:get()
				if registerVal15 ~= 1.000000 then
				end
				if true then
					local registerVal17 = CoD.getStatsMilestoneTable(3.000000, Enum.eModes.MODE_CAMPAIGN)
					local registerVal16 = Engine.TableLookupGetColumnValueForRow(registerVal17, registerVal10[index11], 9.000000)
					{}.icon = ({}[index5] .. "_" .. index11)
					{}.title = ("mpui_reticle_" .. {}[index5] .. "_" .. index11)
					{}.description = "mpui_reticle"
					{}.Rewards = {}
					local registerVal23 = CoD.getStatsMilestoneTable(3.000000, Enum.eModes.MODE_CAMPAIGN)
					local registerVal22 = Engine.TableLookupGetColumnValueForRow(registerVal23, registerVal10[index11], 6.000000)
					registerVal23 = Engine.Localize(LocalizeIntoString("CPUI_XP_BONUS", tonumber(registerVal22)))
					{}.name = registerVal23
					{}.icon = "t7_hud_mp_notifications_xp_blue"
					{}.description = ""
					CoD.AARUtilityCP.AddToArray({}.Rewards, {})
					CoD.AARUtilityCP.AddReward(arg2, {}, "WEAPON_CHALLENGE")
					arg1.Attachments[{}[index5]].challengeCompleted[(index11 - 1.000000)]:set(0.000000)
				end
			end
		end
	end
end

function CoD.AARUtilityCP.CheckCampaignDecorations(arg0, arg1, arg2)
	local registerVal3 = Engine.GetAssetList("cp_medals")
	for index4=1.000000, #, 1.000000 do
		local registerVal9 = arg1.currentPlayerCPDecorations[(index4 - 1.000000)]:get()
		local registerVal10 = arg1.PlayerCPDecorations[(index4 - 1.000000)]:get()
		if registerVal9 ~= registerVal10 then
			{}.icon = registerVal3[index4].smallIcon
			{}.title = registerVal3[index4].displayName
			{}.description = "CPUI_CAMPAIGN_DECORATION"
			{}.Rewards = {}
			local registerVal13 = Engine.Localize(LocalizeIntoString("CPUI_XP_BONUS", registerVal3[index4].XPBonus))
			{}.name = registerVal13
			{}.icon = "t7_hud_mp_notifications_xp_blue"
			{}.description = ""
			CoD.AARUtilityCP.AddToArray({}.Rewards, {})
			CoD.AARUtilityCP.AddReward(arg2, {}, "DECORATION")
		end
	end
end

function CoD.AARUtilityCP.AddRewardsToChallengeReward(arg0, arg1, arg2, arg3)
	if not arg3 then
		local registerVal5 = Engine.Localize(LocalizeIntoString("CPUI_XP_BONUS", arg2))
		{}.name = registerVal5
		{}.icon = "t7_hud_mp_notifications_xp_blue"
		{}.description = ""
	else
		registerVal5 = Engine.Localize(LocalizeIntoString("CP_CHALLENGES_TIER_X", (arg3 + 1.000000)))
		{}.name = registerVal5
		{}.icon = "t7_hud_mp_notifications_xp_blue"
		registerVal5 = Engine.Localize(LocalizeIntoString("CPUI_XP_BONUS", arg2))
		{}.description = registerVal5
	end
	CoD.AARUtilityCP.AddToArray(arg1.Rewards, {})
	return arg1
end

function CoD.AARUtilityCP.CreateChallengeReward(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.getStatsMilestoneTable(3.000000, Enum.eModes.MODE_CAMPAIGN)
	local registerVal8 = Engine.TableGetColumnValueForRow(registerVal4, arg2, 5.000000)
	local registerVal7 = LocalizeIntoString(registerVal8, "", "", "")
	{}.title = registerVal7
	registerVal7 = Engine.TableGetColumnValueForRow(registerVal4, arg2, 12.000000)
	registerVal8 = Engine.TableLookup(arg0, "gamedata/emblems/backgrounds.csv", 4.000000, registerVal7, 3.000000)
	{}.icon = (registerVal8 .. "_nstrm")
	if arg3 then
		{}.description = "CP_CHALLENGES_CHALLENGE_TIER_COMPLETED"
	else
		{}.description = "MPUI_AAR_AWARDS_STATS_MILESTONE"
	end
	{}.Rewards = {}
	return {}
end

function CoD.AARUtilityCP.BuildChallengeTable(arg0)
	CoD.AARUtilityCP.challengeTable = {}
	local registerVal1 = CoD.getStatsMilestoneTable(3.000000, Enum.eModes.MODE_CAMPAIGN)
	local registerVal2 = {}
	registerVal2 = {"missions", "tott", "career"}
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = Engine.GetChallengeInfoForImages(arg0, value7, Enum.eModes.MODE_CAMPAIGN)
		local registerVal9, registerVal10, registerVal11 = ipairs(registerVal8)
		if  ~= nil then
			local registerVal14 = Engine.TableLookupGetColumnValueForRow(registerVal1, .challengeRow, 1.000000)
			if registerVal14 and registerVal14 ~= "0" then
				local registerVal15 = tonumber(registerVal14)
				.tiers = {}
				for index15=(.challengeRow - registerVal15), .challengeRow, 1.000000 do
					local registerVal20 = tonumber(Engine.TableLookupGetColumnValueForRow(registerVal1, index15, 1.000000))
					{}.tierID = registerVal20
					{}.tierRowNum = index15
					registerVal20 = tonumber(Engine.TableLookupGetColumnValueForRow(registerVal1, index15, 2.000000))
					{}.tierTargetValue = registerVal20
					registerVal20 = tonumber(Engine.TableLookupGetColumnValueForRow(registerVal1, index15, 6.000000))
					{}.tierXPEarned = registerVal20
					table.insert(.tiers, {})
				end
			end
			table.insert(CoD.AARUtilityCP.challengeTable, )
		end
	end
	return CoD.AARUtilityCP.challengeTable
end

function CoD.AARUtilityCP.CheckChallengeCompletion(arg0, arg1, arg2)
	local registerVal3 = CoD.getStatsMilestoneTable(3.000000, Enum.eModes.MODE_CAMPAIGN)
	CoD.AARUtilityCP.BuildChallengeTable(arg0)
	local registerVal4, registerVal5, registerVal6 = ipairs(CoD.AARUtilityCP.challengeTable)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if not value8.tiers then
			local registerVal9 = Engine.GetChallengeHasBeenSeen(arg0, value8.challengeRow)
			if not value8.isLocked and not registerVal9 then
				Engine.SetChallengeHasBeenSeen(arg0, value8.challengeRow)
				registerVal9 = CoD.AARUtilityCP.CreateChallengeReward(arg0, arg1, value8.challengeRow)
				local registerVal10 = tonumber(Engine.TableLookupGetColumnValueForRow(registerVal3, value8.challengeRow, 6.000000))
				local registerVal11 = CoD.AARUtilityCP.AddRewardsToChallengeReward(arg0, registerVal9, registerVal10)
				CoD.AARUtilityCP.AddReward(arg2, registerVal11, "CHALLENGE")
			else
				registerVal9 = CoD.AARUtilityCP.CreateChallengeReward(arg0, arg1, value8.challengeRow, value8.isLocked)
				registerVal11, registerVal12, registerVal13 = ipairs(value8.tiers)
				for index14,value15 in registerVal11, registerVal12, registerVal13 do
					local registerVal16 = Engine.GetChallengeHasBeenSeen(arg0, value15.tierRowNum)
					if value15.tierTargetValue <= value8.currChallengeStatValue and not registerVal16 then
						Engine.SetChallengeHasBeenSeen(arg0, value15.tierRowNum)
						registerVal16 = CoD.AARUtilityCP.AddRewardsToChallengeReward(arg0, registerVal9, value15.tierXPEarned, value15.tierID)
					end
				end
				if true then
					CoD.AARUtilityCP.AddReward(arg2, registerVal16, "CHALLENGE")
				end
			end
		end
	end
end

function CoD.AARUtilityCP.GetRewardItemCount(arg0)
	local registerVal3 = Engine.GetModelForController(arg0.controller)
	Engine.GetModel(registerVal3, "aarRewards.aarRewardsCount")
	return Engine.GetModelValue(Engine.GetModel)
end

function CoD.AARUtilityCP.CreateModelsForRewards(arg0)
	if CoD.perController[arg0].fromMaxLevelMessage == true then
		return 
	end
	local registerVal1 = CoD.AARUtilityCP.UseTestData()
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal2, "aarRewards")
	if registerVal3 ~= nil then
		Engine.UnsubscribeAndFreeModel(registerVal3)
	end
	local registerVal4 = Engine.CreateModel(registerVal2, "aarRewards")
	registerVal4 = Engine.GetModel(registerVal2, "aarRewardsCount")
	if registerVal4 ~= nil then
		Engine.UnsubscribeAndFreeModel(registerVal4)
	end
	local registerVal5 = Engine.CreateModel(registerVal4, "aarRewardsCount")
	{}.count = 0.000000
	local registerVal6 = CoD.GetPlayerStats(arg0)
	CoD.AARUtilityCP.CheckRatingRewards(arg0, registerVal6, {})
	CoD.AARUtilityCP.CheckMissionRewards(arg0, registerVal6, {})
	CoD.AARUtilityCP.CheckRankAndPrestige(arg0, registerVal6, {})
	CoD.AARUtilityCP.CheckCampaignDecorations(arg0, registerVal6, {})
	CoD.AARUtilityCP.CheckChallengeCompletion(arg0, registerVal6, {})
	CoD.AARUtilityCP.CheckWeaponLevels(arg0, registerVal6, {})
	CoD.AARUtilityCP.CheckAccolades(arg0, registerVal6, {})
	UploadStats(arg0)
	for index7=1.000000, {}.count, 1.000000 do
		local registerVal12 = Engine.CreateModel(registerVal4, (index7 .. ""))
		local registerVal14 = Engine.CreateModel(registerVal12, "rewardCarouselItemImage")
		Engine.SetModelValue(registerVal14, {}[index7].reward.icon)
		registerVal14 = Engine.CreateModel(registerVal12, "rewardCarouselItemTitle")
		Engine.SetModelValue(registerVal14, {}[index7].reward.title)
		registerVal14 = Engine.CreateModel(registerVal12, "rewardCarouselItemSubtitle")
		Engine.SetModelValue(registerVal14, {}[index7].reward.description)
		if {}[index7].type == "CHALLENGE" then
			registerVal14 = Engine.CreateModel(registerVal12, "rewardCarouselItemType")
			Engine.SetModelValue(registerVal14, "challengeCompleted")
		end
		for index13=1.000000, 4.000000, 1.000000 do
			local registerVal18 = Engine.CreateModel(registerVal12, ("reward" .. index13 .. "InfoVisible"))
			Engine.SetModelValue(registerVal18, 0.000000)
		end
		if {}[index7].reward.Rewards ~= nil and {}[index7].reward.Rewards.count ~= nil then
			for index13=1.000000, {}[index7].reward.Rewards.count, 1.000000 do
				local registerVal17 = Engine.CreateModel(registerVal12, ("reward" .. index13 .. "Info"))
				local registerVal20 = Engine.CreateModel(registerVal17, "rewardName")
				Engine.SetModelValue(registerVal20, {}[index7].reward.Rewards[index13].name)
				registerVal20 = Engine.CreateModel(registerVal17, "rewardImage")
				Engine.SetModelValue(registerVal20, {}[index7].reward.Rewards[index13].icon)
				registerVal20 = Engine.CreateModel(registerVal17, "rewardDesc")
				Engine.SetModelValue(registerVal20, {}[index7].reward.Rewards[index13].description)
				registerVal20 = Engine.CreateModel(registerVal12, ("reward" .. index13 .. "InfoVisible"))
				Engine.SetModelValue(registerVal20, 1.000000)
				registerVal20 = Engine.CreateModel(registerVal12, "paragonRankDescVisible")
				Engine.SetModelValue(registerVal20, 0.000000)
				registerVal20 = Engine.CreateModel(registerVal12, "extraParagonIconsVisible")
				Engine.SetModelValue(registerVal20, 0.000000)
			end
		end
	end
	Engine.SetModelValue(registerVal5, {}.count)
	CoD.perController[arg0].playedTrainingSim = nil
end


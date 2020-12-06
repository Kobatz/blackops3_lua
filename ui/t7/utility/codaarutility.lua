-- Decompiled with CoDLUIDecompiler by JariK

CoD.AARUtility = {}
CoD.AARUtility.RankIdCol = 0.000000
CoD.AARUtility.RankTableColMinXP = 2.000000
CoD.AARUtility.RankTableColXPToNext = 3.000000
CoD.AARUtility.RankDisplayStringCol = 5.000000
CoD.AARUtility.RankTableColMaxXP = 7.000000
CoD.AARUtility.RankDisplayLevelCol = 14.000000
CoD.AARUtility.medalStringCol = 2.000000
CoD.AARUtility.medalrefCol = 3.000000
CoD.AARUtility.medalSortkeyCol = 10.000000
CoD.AARUtility.GunRankCol = 0.000000
CoD.AARUtility.GunRefCol = 2.000000
CoD.AARUtility.GunAttachmentRefCol = 3.000000
CoD.AARUtility.GunRankXPCol = 4.000000
CoD.AARUtility.GameOrder = {}
CoD.AARUtility.GameOrder.MENU_PRESTIGE_ICONS_GAME_BO3 = 1.000000
CoD.AARUtility.GameOrder.MENU_PRESTIGE_ICONS_GAME_BO2 = 2.000000
CoD.AARUtility.GameOrder.MENU_PRESTIGE_ICONS_GAME_BO1 = 3.000000
CoD.AARUtility.GameOrder.MENU_PRESTIGE_ICONS_GAME_WAW = 4.000000
CoD.AARUtility.MaxRank = 55.000000
function CoD.AARUtility.SetCurrLevelModels(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "aarStats.performanceTabStats")
	registerVal3 = Engine.CreateModel(registerVal2, "xpBarInfo")
	local registerVal4 = Engine.CreateModel(registerVal3, "currLevel")
	local registerVal5 = Engine.CreateModel(registerVal3, "currLevelIcon")
	local registerVal6, registerVal7 = CoD.AARUtility.GetLevelAndLevelIconForRank(arg1, CoD.AARUtility.GetCurrentPrestige(arg0))
	Engine.SetModelValue(registerVal4, registerVal6)
	Engine.SetModelValue(registerVal5, registerVal7)
end

function CoD.AARUtility.SetCurrLevelModelsForParagon(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.CreateModel(registerVal4, "aarStats.performanceTabStats")
	registerVal4 = Engine.CreateModel(registerVal3, "xpBarInfo")
	local registerVal5 = Engine.CreateModel(registerVal4, "currLevel")
	local registerVal6 = Engine.CreateModel(registerVal4, "currLevelIcon")
	local registerVal7, registerVal8 = CoD.AARUtility.GetLevelAndIconForParagonRank(arg1, arg2)
	Engine.SetModelValue(registerVal5, registerVal7)
	Engine.SetModelValue(registerVal6, registerVal8)
end

function CoD.AARUtility.SetNextLevelModels(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "aarStats.performanceTabStats")
	registerVal3 = Engine.CreateModel(registerVal2, "xpBarInfo")
	local registerVal4 = Engine.CreateModel(registerVal3, "nextLevel")
	local registerVal5 = Engine.CreateModel(registerVal3, "nextLevelIcon")
	local registerVal6, registerVal7 = CoD.AARUtility.GetLevelAndLevelIconForRank(arg1, CoD.AARUtility.GetCurrentPrestige(arg0))
	Engine.SetModelValue(registerVal4, registerVal6)
	Engine.SetModelValue(registerVal5, registerVal7)
end

function CoD.AARUtility.SetNextLevelModelsForParagon(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.CreateModel(registerVal4, "aarStats.performanceTabStats")
	registerVal4 = Engine.CreateModel(registerVal3, "xpBarInfo")
	local registerVal5 = Engine.CreateModel(registerVal4, "nextLevel")
	local registerVal6 = Engine.CreateModel(registerVal4, "nextLevelIcon")
	local registerVal7, registerVal8 = CoD.AARUtility.GetLevelAndIconForParagonRank(arg1, arg2)
	Engine.SetModelValue(registerVal5, registerVal7)
	Engine.SetModelValue(registerVal6, registerVal8)
end

function CoD.AARUtility.GetLevelAndLevelIconForRank(arg0, arg1)
	local registerVal2 = Engine.TableLookup(0.000000, CoD.rankTable, CoD.AARUtility.RankIdCol, arg0, CoD.AARUtility.RankDisplayLevelCol)
	local registerVal3 = Engine.TableLookup(0.000000, CoD.rankIconTable, 0.000000, arg0, (arg1 + 1.000000))
	return registerVal2, CoDLUIDecompiler.LuaRegister
end

function CoD.AARUtility.GetLevelAndIconForParagonRank(arg0, arg1)
	local registerVal2 = Engine.GetParagonRankDisplayLevel(arg0)
	local registerVal3 = Engine.TableLookup(0.000000, CoD.rankIconTable, 0.000000, 0.000000, (CoD.MAX_PRESTIGE + 1.000000))
	if arg1 ~= CoD.PrestigeUtility.INVALID_PARAGON_ICON_ID then
		local registerVal4 = Engine.GetParagonIconById(arg1)
	end
	return registerVal2, CoDLUIDecompiler.LuaRegister
end

function CoD.AARUtility.GetCurrentPrestige(arg0)
	local registerVal1 = CoD.GetPlayerStats(arg0)
	return registerVal1.PlayerStatsList.PLEVEL.StatValue:get()
end

function CoD.AARUtility.GetMinMaxXPForRank(arg0, arg1)
	local registerVal2 = tonumber(Engine.TableLookup(arg1, CoD.rankTable, CoD.AARUtility.RankIdCol, arg0, CoD.AARUtility.RankTableColMinXP))
	local registerVal3 = tonumber(Engine.TableLookup(arg1, CoD.rankTable, CoD.AARUtility.RankIdCol, arg0, CoD.AARUtility.RankTableColMaxXP))
	return registerVal2, CoDLUIDecompiler.LuaRegister
end

function CoD.AARUtility.GetMinMaxXPForParagonRank(arg0, arg1)
	local registerVal2 = tonumber(Engine.TableLookup(arg1, CoD.paragonRankTable, CoD.AARUtility.RankIdCol, arg0, CoD.AARUtility.RankTableColMinXP))
	local registerVal3 = tonumber(Engine.TableLookup(arg1, CoD.paragonRankTable, CoD.AARUtility.RankIdCol, arg0, CoD.AARUtility.RankTableColMaxXP))
	return registerVal2, CoDLUIDecompiler.LuaRegister
end

CoD.AARUtility.XPBarAnimTime = 1000.000000
function CoD.AARUtility.UseTestData()
	local registerVal0 = Dvar.aar_test:exists()
	if registerVal0 then
		registerVal0 = Dvar.aar_test:get()
		registerVal0 = Dvar.aar_test:get()
		if registerVal0 ~= true and registerVal0 ~= "1" then
		end
	end
	return true
end

function CoD.AARUtility.TestMultiplePromotions()
	local registerVal0 = Dvar.aar_multiple_promo:exists()
	if registerVal0 then
		registerVal0 = Dvar.aar_multiple_promo:get()
		registerVal0 = Dvar.aar_multiple_promo:get()
		if registerVal0 ~= true and registerVal0 ~= "1" then
		end
	end
	return true
end

function CoD.AARUtility.TestSinglePromotion()
	local registerVal0 = Dvar.aar_single_promo:exists()
	if registerVal0 then
		registerVal0 = Dvar.aar_single_promo:get()
		registerVal0 = Dvar.aar_single_promo:get()
		if registerVal0 ~= true and registerVal0 ~= "1" then
		end
	end
	return true
end

function CoD.AARUtility.SetupUIModels(arg0)
	local registerVal1 = CoD.AARUtility.UseTestData()
	local registerVal4 = Engine.GetModelForController(arg0)
	if registerVal1 then
		local registerVal6 = Engine.CreateModel(registerVal4, "aarType")
		Engine.SetModelValue(registerVal6, "public")
	end
	Engine.CreateModel(registerVal4, "deadSpectator.playerIndex")
	Engine.CreateModel(registerVal4, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR))
	Engine.CreateModel(registerVal4, "gameScore.gameTimeEnd")
	Engine.CreateModel(registerVal4, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	if registerVal1 then
		local registerVal5 = CoD.GetPlayerStats(arg0)
	else
		registerVal5 = CoD.GetPlayerStats(arg0, CoD.STATS_LOCATION_STABLE)
	end
	registerVal5 = CoD.GetPlayerStats(arg0)
	registerVal6 = registerVal5.PlayerStatsList.RANKXP.StatValue:get()
	local registerVal7 = registerVal5.PlayerStatsList.RANK.StatValue:get()
	local registerVal8 = registerVal5.PlayerStatsList.PLEVEL.StatValue:get()
	local registerVal9 = registerVal5.PlayerStatsList.RANKXP.StatValue:get()
	local registerVal10 = CoD.PrestigeNext(arg0)
	local registerVal11 = CoD.AARUtility.GetXPEarnedDuringMatch(arg0, registerVal9, registerVal6)
	local registerVal12 = IsInParagonCapableGameMode()
	registerVal12 = Engine.GetPrestigeCap()
	if registerVal12 and registerVal8 == registerVal12 then
		registerVal12 = registerVal5.PlayerStatsList.PARAGON_RANKXP.StatValue:get()
		registerVal12 = registerVal5.PlayerStatsList.PARAGON_RANKXP.StatValue:get()
		registerVal12 = CoD.AARUtility.GetXPEarnedDuringMatch(arg0, registerVal12, registerVal12)
	end
	if registerVal10 then
		local registerVal14 = CoD.PrestigeNextLevelText(arg0)
		{}.nextLevel = registerVal14
		registerVal14 = Engine.TableLookup(arg0, CoD.rankIconTable, 0.000000, 0.000000, (registerVal8 + 2.000000))
		{}.nextLevelIcon = registerVal14
	else
		registerVal14, registerVal15 = CoD.AARUtility.GetLevelAndLevelIconForRank((registerVal7 + 1.000000), (registerVal8 + 1.000000))
		{}.nextLevelIcon = registerVal15
		{}.nextLevel = registerVal14
	end
	if registerVal1 then
		{}.kills = 24.000000
		{}.deaths = 26.000000
		{}.score = 2500.000000
		registerVal14 = Engine.StructTableLookupString("game_types", "name", "tdm", "name_ref_caps")
		{}.gameTypeName = registerVal14
		registerVal14 = Engine.StructTableLookupString("game_types", "name", "tdm", "name_ref")
		{}.gameTypeNameNormal = registerVal14
		registerVal14 = Engine.StructTableLookupString("game_types", "name", "tdm", "image")
		{}.gameTypeIcon = registerVal14
		{}.wins = 116.000000
		{}.losses = 90.000000
		{}.winLossRatio = 1.280000
		local registerVal17 = math.max(1.000000, ({}.wins + {}.losses))
		registerVal14 = string.format("%.2f", ({}.losses / registerVal17))
		{}.lossesRingClockFrac = registerVal14
		{}.showBestScoreIcon = 1.000000
		{}.showBestKillsIcon = 1.000000
		{}.showBestSPMIcon = 1.000000
		{}.showBestKDRIcon = 1.000000
	else
		registerVal14 = Engine.GetCurrentGameType()
		registerVal14 = registerVal5.AfterActionReportStats.kills:get()
		{}.kills = registerVal14
		registerVal14 = registerVal5.AfterActionReportStats.deaths:get()
		{}.deaths = registerVal14
		registerVal14 = registerVal5.AfterActionReportStats.score:get()
		{}.score = registerVal14
		if registerVal14 and registerVal14 ~= "" then
			if registerVal5.AfterActionReportStats.hardcore then
				registerVal14 = registerVal5.AfterActionReportStats.hardcore:get()
			end
			registerVal15 = Engine.StructTableLookupString("game_types", "name", registerVal14, "image")
			{}.gameTypeIcon = registerVal15
			if registerVal14 ~= nil and registerVal14 == 1.000000 then
				registerVal15 = Engine.StructTableLookupString("game_types", "name", registerVal14, "hardcore_name_ref")
				{}.gameTypeNameNormal = registerVal15
				registerVal15 = LocalizeToUpperString({}.gameTypeNameNormal)
				{}.gameTypeName = registerVal15
				registerVal15 = CoD.SafeGetModelValue(registerVal4, "aarType")
				if registerVal15 ~= "custom" then
				else
					registerVal15 = Engine.StructTableLookupString("game_types", "name", ("hc" .. registerVal14), "name_ref_caps")
					{}.gameTypeName = registerVal15
					registerVal15 = Engine.StructTableLookupString("game_types", "name", ("hc" .. registerVal14), "name_ref")
					{}.gameTypeNameNormal = registerVal15
				end
			end
			registerVal15 = registerVal5.PlayerStatsByGameType[("hc" .. registerVal14)].WINS.StatValue:get()
			{}.wins = registerVal15
			registerVal15 = registerVal5.PlayerStatsByGameType[("hc" .. registerVal14)].LOSSES.StatValue:get()
			{}.losses = registerVal15
			local registerVal18 = math.max(1.000000, {}.losses)
			registerVal15 = string.format("%.2f", ({}.wins / registerVal18))
			{}.winLossRatio = registerVal15
			registerVal18 = math.max(1.000000, ({}.wins + {}.losses))
			registerVal15 = string.format("%.2f", ({}.losses / registerVal18))
			{}.lossesRingClockFrac = registerVal15
		end
		{}.showBestScoreIcon = 0.000000
		{}.showBestKillsIcon = 0.000000
		{}.showBestSPMIcon = 0.000000
		{}.showBestKDRIcon = 0.000000
	end
	registerVal14 = registerVal5.HighestStats.HIGHEST_SCORE:get()
	registerVal15 = registerVal5.HighestStats.HIGHEST_KILLS:get()
	if registerVal14 <= {}.score and registerVal14 ~= 0.000000 then
		{}.showBestScoreIcon = 1.000000
	end
	if registerVal15 <= {}.kills and registerVal15 ~= 0.000000 then
		{}.showBestKillsIcon = 1.000000
	end
	local registerVal16 = registerVal5.PlayerStatsList.SCORE.StatValue:get()
	registerVal17 = registerVal5.PlayerStatsList.SCORE.StatValue:get()
	registerVal17 = registerVal5.PlayerStatsList.TIME_PLAYED_TOTAL.StatValue:get()
	registerVal18 = registerVal5.PlayerStatsList.TIME_PLAYED_TOTAL.StatValue:get()
	registerVal18 = math.max(1.000000, (registerVal17 - registerVal18))
	local registerVal19 = registerVal5.HighestStats.HIGHEST_SCORE_PER_MINUTE:get()
	if registerVal19 <= ((registerVal16 - registerVal17) / registerVal18) and registerVal19 ~= 0.000000 then
		{}.showBestSPMIcon = 1.000000
	end
	local registerVal21 = math.max(1.000000, {}.deaths)
	registerVal21 = registerVal5.HighestStats.HIGHEST_KDRATIO:get()
	if registerVal21 <= ({}.kills / registerVal21) and registerVal21 ~= 0.000000 then
		{}.showBestKDRIcon = 1.000000
	end
	{}.xpEarnedDuringMatch = registerVal12
	local registerVal22 = Engine.CreateModel(registerVal4, "aarStats.performanceTabStats")
	local registerVal24 = Engine.CreateModel(registerVal4, "aarStats.xpScale")
	Engine.SetModelValue(registerVal24, Engine.GetXPScale(arg0))
	local registerVal23, registerVal24, registerVal25 = pairs({})
	for index26,value27 in registerVal23, registerVal24, registerVal25 do
		local registerVal29 = Engine.CreateModel(registerVal22, index26)
		Engine.SetModelValue(registerVal29, value27)
	end
	CoD.AARUtility.CreateUIModelsForPerformanceGraphs(arg0, registerVal22, ("hc" .. registerVal14))
	if CoD.isFrontend and arg0 ~= 0.000000 then
		registerVal24 = Engine.GetModelForController(0.000000)
		registerVal23 = Engine.CreateModel(registerVal24, "aarStats.performanceTabStats")
		local registerVal26 = Engine.GetModelForController(0.000000)
		registerVal25 = Engine.CreateModel(registerVal26, "aarStats.xpScale")
		Engine.SetModelValue(registerVal25, Engine.GetXPScale(0.000000))
		registerVal24, registerVal25, registerVal26 = pairs({})
		for index27,value28 in registerVal24, registerVal25, registerVal26 do
			local registerVal30 = Engine.CreateModel(registerVal23, index27)
			Engine.SetModelValue(registerVal30, value28)
		end
		registerVal24 = CoD.SafeGetModelValue(registerVal22, "globalSPM")
		registerVal25 = CoD.SafeGetModelValue(registerVal22, "globalKDR")
		local registerVal27 = Engine.CreateModel(registerVal23, "globalSPM")
		Engine.SetModelValue(registerVal27, registerVal24)
		registerVal27 = Engine.CreateModel(registerVal23, "globalKDR")
		Engine.SetModelValue(registerVal27, registerVal25)
	end
end

function CoD.AARUtility.GetMaxValue(arg0, arg1)
	local registerVal3, registerVal4, registerVal5 = ipairs(arg0)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = tonumber(value7[arg1])
		if value7[arg1] and 0.000000 < registerVal8 then
			registerVal8 = tonumber(value7[arg1])
		end
	end
	return registerVal8
end

function CoD.AARUtility.GetMinValue(arg0, arg1)
	if not arg0[1.000000] then
		return 
	end
	local registerVal2 = tonumber(arg0[1.000000][arg1])
	local registerVal3, registerVal4, registerVal5 = ipairs(arg0)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = tonumber(value7[arg1])
		if value7[arg1] and registerVal8 < registerVal2 then
			registerVal8 = tonumber(value7[arg1])
		end
	end
	return registerVal8
end

function CoD.AARUtility.SetGraphValues(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = CoD.AARUtility.UseTestData()
	local registerVal7 = CoD.AARUtility.UseTestData()
	if registerVal7 then
		registerVal7 = {}
		registerVal7 = {0.300000, 0.800000, 0.500000, 0.700000, 0.100000}
		local registerVal8, registerVal9, registerVal10 = ipairs(registerVal7)
		for index11,value12 in registerVal8, registerVal9, registerVal10 do
			local registerVal14 = Engine.CreateModel(arg3, ("graphValue" .. index11))
			local registerVal15 = string.format("%.2f", value12)
			Engine.SetModelValue(registerVal14, (registerVal15 .. " 0 0 0"))
		end
	else
		registerVal7, registerVal8, registerVal9 = ipairs(arg0)
		for index10,value11 in registerVal7, registerVal8, registerVal9 do
			if arg2 <= value11[arg1] then
				registerVal15 = math.max(1.000000, (arg4 - arg2))
			else
				registerVal15 = math.max(1.000000, (arg2 - arg5))
			end
			registerVal15 = Engine.CreateModel(arg3, ("graphValue" .. index10))
			local registerVal16 = string.format("%.2f", (0.500000 + (((arg2 - value11[arg1]) / registerVal15) / 2.000000)))
			Engine.SetModelValue(registerVal15, (registerVal16 .. " 0 0 0"))
		end
	end
end

function CoD.AARUtility.CreateUIModelsForPerformanceGraphs(arg0, arg1, arg2)
	local registerVal3 = CoD.AARUtility.UseTestData()
	local registerVal7 = Engine.GetPlayerStats(arg0)
	local registerVal9 = registerVal7.PlayerStatsByGameType[arg2].prevScoreIndex:get()
	if registerVal9 < 0.000000 or 10.000000 < registerVal9 then
	end
	local registerVal10 = registerVal7.PlayerStatsByGameType[arg2].SCORE.StatValue:get()
	local registerVal11 = registerVal7.PlayerStatsByGameType[arg2].TIME_PLAYED_TOTAL.StatValue:get()
	local registerVal12 = registerVal7.PlayerStatsByGameType[arg2].KILLS.StatValue:get()
	local registerVal13 = registerVal7.PlayerStatsByGameType[arg2].DEATHS.StatValue:get()
	local registerVal14 = registerVal7.PlayerStatsList.SCORE.StatValue:get()
	local registerVal15 = registerVal7.PlayerStatsList.TIME_PLAYED_TOTAL.StatValue:get()
	local registerVal17 = math.max(1.000000, (registerVal15 / 60.000000))
	local registerVal16 = math.ceil((registerVal14 / registerVal17))
	registerVal17 = registerVal7.PlayerStatsList.KILLS.StatValue:get()
	local registerVal18 = registerVal7.PlayerStatsList.DEATHS.StatValue:get()
	local registerVal21 = math.max(1.000000, registerVal18)
	local registerVal19 = string.format("%.2f", (registerVal17 / registerVal21))
	if registerVal3 then
		local registerVal22 = {}
		registerVal22 = {180.000000, 202.000000, 175.000000, 208.000000, 201.000000}
		local registerVal23 = {}
		registerVal23 = {1.500000, 0.870000, 1.200000, 1.650000, 0.650000}
		for index24=1.000000, 5.000000, 1.000000 do
			{}.spm = registerVal22[index24]
			{}.kdr = registerVal23[index24]
			{}.valid = 1.000000
			table.insert({}, {})
		end
	else
		for index22=1.000000, 5.000000, 1.000000 do
			local registerVal27 = registerVal7.PlayerStatsByGameType[arg2].prevScores[0.000000].score:get()
			local registerVal28 = registerVal7.PlayerStatsByGameType[arg2].prevScores[0.000000].timePlayed:get()
			local registerVal29 = registerVal7.PlayerStatsByGameType[arg2].prevScores[0.000000].kills:get()
			local registerVal30 = registerVal7.PlayerStatsByGameType[arg2].prevScores[0.000000].deaths:get()
			local registerVal32 = math.max(1.000000, (registerVal28 / 60.000000))
			local registerVal31 = math.floor((registerVal27 / registerVal32))
			{}.spm = registerVal31
			local registerVal33 = math.max(1.000000, registerVal30)
			registerVal31 = string.format("%.2f", (registerVal29 / registerVal33))
			{}.kdr = registerVal31
			registerVal31 = registerVal7.PlayerStatsByGameType[arg2].prevScores[0.000000].valid:get()
			{}.valid = registerVal31
			table.insert({}, {})
			if (0.000000 - 1.000000) < 0.000000 then
			end
		end
	end
	registerVal22 = Engine.CreateModel(arg1, "spmGraph")
	registerVal23 = Engine.CreateModel(arg1, "kdrGraph")
	registerVal27, registerVal28, registerVal29 = ipairs({})
	for index30,value31 in registerVal27, registerVal28, registerVal29 do
		registerVal33 = Engine.CreateModel(registerVal22, ("value" .. index30))
		Engine.SetModelValue(registerVal33, value31.spm)
		registerVal33 = Engine.CreateModel(registerVal22, ("value" .. index30 .. "Valid"))
		Engine.SetModelValue(registerVal33, value31.valid)
		registerVal33 = Engine.CreateModel(registerVal23, ("value" .. index30))
		Engine.SetModelValue(registerVal33, string.format("%.2f", value31.kdr))
		registerVal33 = Engine.CreateModel(registerVal23, ("value" .. index30 .. "Valid"))
		Engine.SetModelValue(registerVal33, value31.valid)
		if value31.valid == 1.000000 then
		end
	end
	if (0.000000 + 1.000000) == 0.000000 then
	else
		registerVal27 = string.format("%.2f", ((0.000000 + value31.kdr) / (0.000000 + 1.000000)))
	end
	if (0.000000 + 1.000000) == 0.000000 then
	else
		registerVal27 = math.ceil(((0.000000 + value31.spm) / (0.000000 + 1.000000)))
	end
	registerVal28 = Engine.CreateModel(registerVal22, "avgSPM")
	Engine.SetModelValue(registerVal28, registerVal27)
	registerVal28 = Engine.CreateModel(registerVal23, "avgKDR")
	Engine.SetModelValue(registerVal28, registerVal27)
	registerVal28 = Engine.CreateModel(arg1, "globalSPM")
	Engine.SetModelValue(registerVal28, 420.000000)
	registerVal28 = Engine.CreateModel(arg1, "globalKDR")
	Engine.SetModelValue(registerVal28, 1.250000)
	registerVal27 = CoD.AARUtility.GetMaxValue({}, "spm")
	registerVal28 = CoD.AARUtility.GetMinValue({}, "spm")
	registerVal29 = math.max(registerVal27, (registerVal27 + 200.000000))
	registerVal30 = math.min(registerVal28, math.max((registerVal27 - 100.000000), 0.000000))
	registerVal32 = math.max(registerVal29, (registerVal27 + ((registerVal29 - registerVal30) / 20.000000)))
	registerVal32 = math.min(registerVal30, (registerVal28 - ((registerVal29 - registerVal30) / 20.000000)))
	registerVal32 = CoD.AARUtility.GetMaxValue({}, "kdr")
	registerVal33 = CoD.AARUtility.GetMinValue({}, "kdr")
	local registerVal34 = math.max(registerVal32, (registerVal27 + 1.500000))
	local registerVal35 = math.min(registerVal33, math.max((registerVal27 - 0.500000), 0.000000))
	local registerVal37 = math.max(registerVal34, (registerVal32 + ((registerVal34 - registerVal35) / 20.000000)))
	registerVal37 = math.min(registerVal35, (registerVal33 - ((registerVal34 - registerVal35) / 20.000000)))
	CoD.AARUtility.SetGraphValues({}, "spm", registerVal27, registerVal22, registerVal32, registerVal32)
	CoD.AARUtility.SetGraphValues({}, "kdr", registerVal27, registerVal23, registerVal37, registerVal37)
end

function CoD.AARUtility.EstimateEarnedXP(arg0)
	local registerVal5 = Engine.GetCurrentGameType()
	local registerVal2 = Engine.TableLookupColumnNumForValue(CoD.scoreInfoTable, 0.000000, (registerVal5 .. " XP"))
	local registerVal3 = Engine.GetRecentMedals(arg0, registerVal2)
	if registerVal3 and 0.000000 < #arg0 then
		registerVal5, registerVal6, registerVal7 = ipairs(registerVal3)
		for index8,value9 in registerVal5, registerVal6, registerVal7 do
			local registerVal12 = tonumber(Engine.TableLookupGetColumnValueForRow(CoD.scoreInfoTable, value9.row, registerVal2))
		end
	end
	local registerVal4 = Engine.GetRecentChallenges(arg0)
	if registerVal4 then
		local function __FUNC_4D03_(arg0, arg1, arg2, arg3, arg4, arg5)
			local registerVal6 = CoD.getStatsMilestoneTable((arg1 + 1.000000))
			local registerVal7 = tonumber(Engine.TableLookupGetColumnValueForRow(registerVal6, arg2, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_XPEARNED))
			if registerVal7 ~= nil then
				return registerVal7
			end
			return 0.000000
		end

		registerVal7, registerVal8, registerVal9 = ipairs(registerVal4)
		for index10,value11 in registerVal7, registerVal8, registerVal9 do
			local registerVal13 = CoD.ChallengesUtility.IsSpecialistTransmissionChallenge(value11.type, value11.tableNumber, value11.row)
			registerVal13 = CoD.ChallengesUtility.IsTerribleKnifeChallenge(value11.type, value11.tableNumber, value11.row)
			if not (0.000000 + (0.000000 + registerVal12)) or registerVal13 then
			end
			if not true then
				registerVal13 = __FUNC_4D03_(arg0, value11.tableNumber, value11.row, value11.type, value11.itemIndex, value11.specialistIndex)
			end
		end
	end
	registerVal5 = CoD.GetPlayerStats(arg0)
	registerVal6 = CoD.GetPlayerStats(arg0, CoD.STATS_LOCATION_STABLE)
	registerVal7 = registerVal5.PlayerStatsList.SCORE.StatValue:get()
	registerVal8 = registerVal6.PlayerStatsList.SCORE.StatValue:get()
	if 1000.000000 < (((0.000000 + (0.000000 + registerVal12)) + (0.000000 + registerVal13)) + (registerVal7 - registerVal8)) then
		registerVal9 = registerVal5.AfterActionReportStats.kills:get()
		local registerVal10 = registerVal5.AfterActionReportStats.deaths:get()
		local registerVal11 = math.max(1.000000, registerVal10)
	end
	registerVal10 = Engine.GetModelForController(arg0)
	registerVal9 = Engine.GetModel(registerVal10, "aarStats.xpScale")
	if registerVal9 then
		registerVal10 = Engine.GetModelValue(registerVal9)
	end
	return math.floor((((((0.000000 + (0.000000 + registerVal12)) + (0.000000 + registerVal13)) + (registerVal7 - registerVal8)) + (100.000000 + (25.000000 * (registerVal9 / registerVal11)))) * registerVal10))
end

function CoD.AARUtility.GetXPEarnedDuringMatch(arg0, arg1, arg2)
	local registerVal4 = IsStarterPackMaxLevel(arg0)
	if registerVal4 then
		registerVal4 = CoD.AARUtility.EstimateEarnedXP(arg0)
	end
	if registerVal4 < 0.000000 then
	end
	return 0.000000
end

function CoD.AARUtility.AnyItemsUnlockedForRank(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = pairs(arg1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7 = Engine.GetItemUnlockLevel(value6.itemIndex)
		if registerVal7 == arg0 then
			return true
		end
	end
end

function CoD.AARUtility.GetBlueprintStringPrefixForItem(arg0)
	local registerVal1 = Engine.GetLoadoutSlotForItem(arg0)
	if registerVal1 == "primary" or registerVal1 == "secondary" then
		return Engine.GetItemGroup(arg0, Enum.eModes.MODE_MULTIPLAYER)
	end
	return registerVal1
end

function CoD.AARUtility.IsHeroAbility(arg0)
	local registerVal1 = Engine.GetItemRef(arg0)
	local registerVal2 = LUI.startswith(registerVal1, "gadget_")
	if registerVal2 then
		return true
	end
end

function CoD.AARUtility.IsHeroWeapon(arg0)
	local registerVal1 = Engine.GetItemRef(arg0)
	local registerVal2 = LUI.startswith(registerVal1, "hero_")
	if registerVal2 then
		return true
	end
end

function CoD.AARUtility.CreateRewardInfoModel(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = Engine.CreateModel(arg0, ("reward" .. arg1 .. "Info"))
	local registerVal8 = Engine.CreateModel(arg0, ("reward" .. arg1 .. "InfoVisible"))
	Engine.SetModelValue(registerVal8, 1.000000)
	registerVal8 = Engine.CreateModel(registerVal6, "rewardName")
	Engine.SetModelValue(registerVal8, arg2)
	registerVal8 = Engine.CreateModel(registerVal6, "rewardImage")
	Engine.SetModelValue(registerVal8, arg3)
	registerVal8 = Engine.CreateModel(registerVal6, "rewardDesc")
	Engine.SetModelValue(registerVal8, arg4)
	registerVal8 = Engine.CreateModel(registerVal6, "isCallingCard")
	Engine.SetModelValue(registerVal8, false)
	return registerVal6
end

function CoD.AARUtility.CreateModelsForRewards(arg0)
	local registerVal3 = CoD.GetPlayerStats(arg0)
	registerVal3 = CoD.AARUtility.UseTestData()
	if registerVal3 then
		local registerVal4 = CoD.GetPlayerStats(arg0)
	else
		registerVal4 = CoD.GetPlayerStats(arg0, CoD.STATS_LOCATION_STABLE)
	end
	local registerVal5 = Engine.GetModelForController(arg0)
	registerVal4 = Engine.CreateModel(registerVal5, "aarRewards")
	local registerVal6 = Engine.GetRecentlyUnlockedItems(arg0)
	local registerVal7 = registerVal4.PlayerStatsList.RANK.StatValue:get()
	local registerVal8 = registerVal3.PlayerStatsList.RANK.StatValue:get()
	local registerVal9 = registerVal3.PlayerStatsList.PLEVEL.StatValue:get()
	local registerVal12 = IsInParagonCapableGameMode()
	if registerVal12 then
		registerVal12 = CoD.AARUtility.GetCurrentPrestige(arg0)
		local registerVal13 = Engine.GetPrestigeCap()
		if registerVal12 ~= registerVal13 then
		end
	end
	if true then
		registerVal13 = registerVal3.PlayerStatsList.PARAGON_ICON_ID.StatValue:get()
		registerVal13 = registerVal4.PlayerStatsList.PARAGON_RANK.StatValue:get()
		registerVal13 = registerVal3.PlayerStatsList.PARAGON_RANK.StatValue:get()
	end
	local function __FUNC_9F08_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
		local registerVal8 = Engine.CreateModel(registerVal4, ("rewardsCarouselItem" .. (0.000000 + 1.000000)))
		for index9=1.000000, 4.000000, 1.000000 do
			local registerVal14 = Engine.CreateModel(registerVal8, ("reward" .. index9 .. "InfoVisible"))
			Engine.SetModelValue(registerVal14, 0.000000)
		end
		local registerVal10 = Engine.CreateModel(registerVal8, "rewardCarouselItemImage")
		Engine.SetModelValue(registerVal10, "$white")
		registerVal10 = Engine.CreateModel(registerVal8, "rewardCarouselItemTitle")
		Engine.SetModelValue(registerVal10, "")
		registerVal10 = Engine.CreateModel(registerVal8, "rewardCarouselItemSubTitle")
		Engine.SetModelValue(registerVal10, "")
		registerVal10 = Engine.CreateModel(registerVal8, "rewardCarouselItemType")
		Engine.SetModelValue(registerVal10, "")
		registerVal10 = Engine.CreateModel(registerVal8, "rewardCarouselWidgetType")
		Engine.SetModelValue(registerVal10, "")
		registerVal10 = Engine.CreateModel(registerVal8, "paragonRankDescVisible")
		Engine.SetModelValue(registerVal10, 0.000000)
		registerVal10 = Engine.CreateModel(registerVal8, "extraParagonIconsVisible")
		Engine.SetModelValue(registerVal10, 0.000000)
		registerVal10 = Engine.CreateModel(registerVal8, "showBonusCryptokeys")
		Engine.SetModelValue(registerVal10, false)
		return registerVal8
	end

	local function __FUNC_A345_()
		local registerVal0 = IsCampaign()
		if not registerVal0 then
			registerVal0 = IsMultiplayer()
			registerVal0 = IsZombies()
			if not  or registerVal0 then
				registerVal0 = IsProgressionEnabled(arg0)
			end
		end
		return registerVal0
	end

	local registerVal15 = IsMultiplayer()
	registerVal15 = Engine.SessionMode_IsPublicOnlineGame()
	if registerVal15 and registerVal15 then
		registerVal15 = Dvar.enable_weapon_contract:get()
		registerVal15 = registerVal4.weaponContractData.completeTimestamp:get()
		registerVal15 = registerVal3.weaponContractData.completeTimestamp:get()
		if registerVal15 and registerVal15 == 0.000000 and registerVal15 ~= 0.000000 then
			local registerVal17 = Engine.Localize("MPUI_BM_CONTRACT_TOTAL_VICTORY")
			local registerVal18 = Engine.Localize("MPUI_BM_CONTRACT_SPECIAL_DESC", Dvar.weapon_contract_target_value:get())
			registerVal15 = __FUNC_9F08_("uie_t7_hud_aar_bm_challenge", registerVal17, registerVal18, "weaponContract", "CoD.IncentiveRewardsCarouselItem")
			local registerVal19 = Engine.Localize("MPUI_BM_INCENTIVE_AAR_WEAPON_BRIBE")
			local registerVal21 = Engine.Localize("MPUI_BM_INCENTIVE_AAR_REWARD")
			CoD.AARUtility.CreateRewardInfoModel(registerVal15, 1.000000, registerVal19, "t7_hud_notif_blackmarket_weapon_bribe", registerVal21, false)
			registerVal19 = Engine.Localize("MPUI_BM_INCENTIVE_AAR_BUNDLE")
			registerVal21 = Engine.Localize("MPUI_BM_INCENTIVE_AAR_REWARD")
			CoD.AARUtility.CreateRewardInfoModel(registerVal15, 2.000000, registerVal19, "t7_hud_notif_blackmarket_supplydrop_bundle", registerVal21, false)
		end
		registerVal15 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.specialContractIndex, registerVal4, false)
		local registerVal16 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.specialContractIndex, registerVal3, true)
		if registerVal15 and registerVal16 and registerVal16.isActive and registerVal15.progress < registerVal15.targetValue and registerVal16.targetValue <= registerVal16.progress then
			local registerVal20 = Engine.Localize(registerVal16.titleRef)
			registerVal21 = Engine.Localize(registerVal16.descRef, registerVal16.targetValue)
			registerVal18 = __FUNC_9F08_("uie_t7_hud_aar_bm_challenge", registerVal20, registerVal21, "weaponContract", "CoD.IncentiveRewardsCarouselItem")
			if registerVal16.category == "trifecta" then
				local registerVal22 = Engine.Localize("MPUI_BM_INCENTIVE_AAR_RANGE_WEAPON_BRIBE")
				local registerVal24 = Engine.Localize("MPUI_BM_INCENTIVE_AAR_REWARD")
				CoD.AARUtility.CreateRewardInfoModel(registerVal18, 1.000000, registerVal22, "t7_blackmarket_contracts_ranged_reward", registerVal24, false)
				registerVal22 = Engine.Localize("MPUI_BM_INCENTIVE_AAR_MELEE_WEAPON_BRIBE")
				registerVal24 = Engine.Localize("MPUI_BM_INCENTIVE_AAR_REWARD")
				CoD.AARUtility.CreateRewardInfoModel(registerVal18, (1.000000 + 1.000000), registerVal22, "t7_blackmarket_contracts_melee_reward", registerVal24, false)
				registerVal22 = Engine.Localize("MPUI_BM_INCENTIVE_AAR_BUNDLE")
				registerVal24 = Engine.Localize("MPUI_BM_INCENTIVE_AAR_REWARD")
				CoD.AARUtility.CreateRewardInfoModel(registerVal18, (1.000000 + 2.000000), registerVal22, "t7_hud_notif_blackmarket_supplydrop_bundle", registerVal24, false)
			end
			if registerVal16.backgroundId and registerVal16.backgroundId ~= 0.000000 then
				registerVal22 = Engine.Localize("MENU_CALLING_CARD")
				local registerVal23 = GetBackgroundByID(registerVal16.backgroundId)
				CoD.AARUtility.CreateRewardInfoModel(registerVal18, (1.000000 + 3.000000), registerVal22, registerVal23, "", true)
			end
			if registerVal16.category == "camo" and registerVal16.camoName ~= "" and registerVal16.image ~= "" then
				registerVal22 = Engine.Localize(registerVal16.camoName)
				CoD.AARUtility.CreateRewardInfoModel(registerVal18, ((1.000000 + 3.000000) + 1.000000), registerVal22, registerVal16.image, "", false)
			end
		end
	end
	registerVal15 = IsMultiplayer()
	registerVal15 = Engine.SessionMode_IsPublicOnlineGame()
	if registerVal15 and registerVal15 then
		registerVal15 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.dailyContractIndex, registerVal4, false)
		registerVal16 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.dailyContractIndex, registerVal3, true)
		if registerVal15 and registerVal16 and registerVal16.isActive and registerVal15.progress < registerVal15.targetValue and registerVal16.targetValue <= registerVal16.progress then
			registerVal19 = Engine.Localize(registerVal16.titleRef)
			registerVal20 = Engine.Localize(registerVal16.descRef, registerVal16.targetValue)
			registerVal17 = __FUNC_9F08_("uie_t7_hud_aar_bm_challenge", registerVal19, registerVal20, "dailyContract", "CoD.DailyContractRewardsCarouselItem")
			registerVal18 = IsDoubleDailyContract(arg0)
			if registerVal4 or not "uie_t7_icon_blackmarket_doubleloot_small" then
			end
			registerVal22 = Engine.Localize("MPUI_BM_CRYPTOKEY_COUNT", Dvar.daily_contract_cryptokey_reward_count:get())
			CoD.AARUtility.CreateRewardInfoModel(registerVal17, 1.000000, registerVal22, "t7_icon_cryptokeys_rwd", "", false)
		end
		registerVal17 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.weeklyContractIndex1, registerVal4, false)
		registerVal18 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.weeklyContractIndex1, registerVal3, true)
		registerVal19 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.weeklyContractIndex2, registerVal4, false)
		registerVal20 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.weeklyContractIndex2, registerVal3, true)
		if registerVal17 and registerVal18 and registerVal19 and registerVal20 then
			if registerVal18.isActive and registerVal17.progress < registerVal17.targetValue and registerVal18.targetValue <= registerVal18.progress then
				if registerVal19.targetValue > registerVal19.progress then
				end
				if true then
				end
				local registerVal26 = Engine.Localize(registerVal18.titleRef)
				local registerVal27 = Engine.Localize(registerVal18.descRef, registerVal18.targetValue)
				registerVal24 = __FUNC_9F08_("uie_t7_hud_aar_bm_challenge", registerVal26, registerVal27, "second", "CoD.WeeklyContractRewardsCarouselItem")
				registerVal26 = Engine.CreateModel(registerVal24, "requirementCompleteText")
				Engine.SetModelValue(registerVal26, Engine.Localize("MPUI_BM_CONTRACT_REQUIREMENTS_COMPLETE", 2.000000, 2.000000))
				if true then
					local registerVal28 = Engine.Localize("MPUI_BM_CRYPTOKEY_COUNT", Dvar.weekly_contract_cryptokey_reward_count:get())
					CoD.AARUtility.CreateRewardInfoModel(registerVal24, 1.000000, registerVal28, "t7_icon_cryptokeys_rwd", "", false)
					registerVal28 = Engine.Localize("MPUI_BM_CONTRACT_BLACKJACK_CONTRACT")
					CoD.AARUtility.CreateRewardInfoModel(registerVal24, 2.000000, registerVal28, "t7_icon_contracts_rwd", "", false)
				end
			end
			if registerVal20.isActive and registerVal19.progress < registerVal19.targetValue and registerVal20.targetValue <= registerVal20.progress then
				if registerVal18.targetValue > registerVal18.progress then
				end
				if true then
				end
				registerVal26 = Engine.Localize(registerVal20.titleRef)
				registerVal27 = Engine.Localize(registerVal20.descRef, registerVal20.targetValue)
				registerVal24 = __FUNC_9F08_("uie_t7_hud_aar_bm_challenge", registerVal26, registerVal27, "second", "CoD.WeeklyContractRewardsCarouselItem")
				registerVal26 = Engine.CreateModel(registerVal24, "requirementCompleteText")
				Engine.SetModelValue(registerVal26, Engine.Localize("MPUI_BM_CONTRACT_REQUIREMENTS_COMPLETE", 2.000000, 2.000000))
				if true then
					registerVal28 = Engine.Localize("MPUI_BM_CRYPTOKEY_COUNT", Dvar.weekly_contract_cryptokey_reward_count:get())
					CoD.AARUtility.CreateRewardInfoModel(registerVal24, 1.000000, registerVal28, "t7_icon_cryptokeys_rwd", "", false)
					registerVal28 = Engine.Localize("MPUI_BM_CONTRACT_BLACKJACK_CONTRACT")
					CoD.AARUtility.CreateRewardInfoModel(registerVal24, 2.000000, registerVal28, "t7_icon_contracts_rwd", "", false)
				end
			end
		end
	end
	registerVal16 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
	registerVal19 = CoD.BlackMarketUtility.GetCryptoKeysFromMatchChallenges(arg0, CoD.BlackMarketUtility.MatchChallengeType.dailyAndWeeklyContract)
	if registerVal3 then
	else
		if registerVal3.AfterActionReportStats.cryptoKeysBeforeMatch then
			registerVal20 = registerVal3.AfterActionReportStats.cryptoKeysBeforeMatch:get()
			registerVal20 = CoD.BlackMarketUtility.GetCryptoKeyCountPostMatch(arg0, registerVal3.AfterActionReportStats)
			registerVal20 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
			if registerVal20 == registerVal20 then
			end
		end
	end
	if not true and registerVal20 < registerVal20 then
		registerVal20 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.COMMON)
		registerVal21 = CoD.BlackMarketUtility.GetCrateCryptoKeyCost(CoD.BlackMarketUtility.DropTypes.RARE)
		registerVal23 = math.floor((registerVal20 / registerVal21))
		registerVal24 = math.floor((registerVal20 / registerVal21))
		if registerVal23 < registerVal24 then
			registerVal23 = math.floor((registerVal20 / registerVal21))
			registerVal24 = math.floor((registerVal20 / registerVal20))
			if 1.000000 < registerVal23 then
				registerVal26 = Engine.Localize("MENU_BLACKMARKET_REWARD_DESC_RARE_PLU", registerVal23, registerVal24)
			else
				registerVal26 = Engine.Localize("MENU_BLACKMARKET_REWARD_DESC_RARE", registerVal24)
			end
			local registerVal29 = tostring(registerVal20)
			if registerVal19 == 0.000000 then
			end
			registerVal26 = __FUNC_9F08_("uie_t7_blackmarket_crate_rare_focus", registerVal26, registerVal29, "blackMarket", "CoD.BlackmarketRewardsCarouselItemRare", nil, nil, true)
			local registerVal30 = tostring(((registerVal20 - registerVal20) - registerVal19))
			CoD.AARUtility.CreateRewardInfoModel(registerVal26, 1.000000, registerVal30, "", "")
			registerVal30 = tostring(registerVal19)
			CoD.AARUtility.CreateRewardInfoModel(registerVal26, 2.000000, registerVal30, "", "")
		else
			registerVal23 = math.floor((registerVal20 / registerVal20))
			registerVal24 = math.floor((registerVal20 / registerVal20))
			if registerVal23 < registerVal24 then
				registerVal23 = math.floor((registerVal20 / registerVal20))
				if 1.000000 < registerVal23 then
					local registerVal25 = Engine.Localize("MENU_BLACKMARKET_REWARD_DESC_COMMON_PLU", registerVal23)
				else
					registerVal25 = Engine.Localize("MENU_BLACKMARKET_REWARD_DESC_COMMON", registerVal23)
				end
				registerVal28 = tostring(registerVal20)
				if registerVal19 == 0.000000 then
				end
				registerVal25 = __FUNC_9F08_("uie_t7_blackmarket_crate_common_focus", registerVal25, registerVal28, "blackMarket", "CoD.BlackmarketRewardsCarouselItem", nil, nil, true)
				registerVal29 = tostring(((registerVal20 - registerVal20) - registerVal19))
				CoD.AARUtility.CreateRewardInfoModel(registerVal25, 1.000000, registerVal29, "", "")
				registerVal29 = tostring(registerVal19)
				CoD.AARUtility.CreateRewardInfoModel(registerVal25, 2.000000, registerVal29, "", "")
			end
		end
	end
	for index20=(registerVal13 + 1.000000), registerVal13, 1.000000 do
		registerVal24 = __FUNC_A345_()
		registerVal24 = CoD.AARUtility.AnyItemsUnlockedForRank(index20, registerVal6)
		if not registerVal4 or registerVal24 then
			registerVal25, registerVal26 = CoD.AARUtility.GetLevelAndLevelIconForRank(index20, registerVal9)
			registerVal27 = CoD.GetRankName(index20, registerVal9)
			if true then
				local registerVal32, registerVal33 = CoD.AARUtility.GetLevelAndIconForParagonRank(index20, registerVal13)
				registerVal32 = Engine.GetUnlockedParagonIconsForParagonRank(index20)
				if #registerVal32 == 0.000000 then
				end
				if index20 == CoD.MAX_PARAGON_RANK then
				end
			end
			local registerVal35 = Engine.Localize("MPUI_LEVEL_N", registerVal32)
			registerVal32 = __FUNC_9F08_((registerVal33 .. "_lrg"), registerVal27, registerVal35, "paragonRankUp", nil, 1.000000, 1.000000)
			registerVal33, registerVal34, registerVal35 = pairs(registerVal6)
			for index36,value37 in registerVal33, registerVal34, registerVal35 do
				local registerVal38 = Engine.GetItemUnlockLevel(value37.itemIndex)
				registerVal38 = CoD.AARUtility.IsHeroAbility(value37.itemIndex)
				if registerVal38 == index20 and 0.000000 < 4.000000 and not registerVal38 then
					registerVal38 = CoD.AARUtility.IsHeroWeapon(value37.itemIndex)
					if registerVal38 then
						registerVal38 = Engine.CurrentSessionMode()
						local registerVal39 = Engine.GetHeroList(registerVal38)
						local registerVal40, registerVal41, registerVal42 = ipairs(registerVal39)
						for index43,value44 in registerVal40, registerVal41, registerVal42 do
							local registerVal45 = Engine.GetLoadoutInfoForHero(registerVal38, value44.bodyIndex, Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_WEAPON)
							if value37.itemIndex == registerVal45.itemIndex then
								local registerVal49 = Engine.Localize(value44.displayName)
								CoD.AARUtility.CreateRewardInfoModel(registerVal32, (0.000000 + 1.000000), registerVal49, value44.defaultHeroRender, "")
							else
							end
						else
							registerVal38 = Engine.GetLoadoutSlotForItem(value37.itemIndex)
							registerVal39 = Engine.GetItemImage(value37.itemIndex)
							registerVal40 = IsZombies()
							if registerVal4 or registerVal38 ~= "equippedbubblegumpack" then
							end
							local registerVal43 = Engine.GetItemName(value37.itemIndex)
							local registerVal46 = CoD.AARUtility.GetBlueprintStringPrefixForItem(value37.itemIndex)
							CoD.AARUtility.CreateRewardInfoModel(registerVal32, (0.000000 + 1.000000), registerVal43, (registerVal39 .. "_rwd"), ("MPUI_" .. registerVal46))
						end
					end
				end
			end
			registerVal34, registerVal35, registerVal36 = pairs(registerVal32)
			for index37,value38 in registerVal34, registerVal35, registerVal36 do
				if not {}[CoD.AARUtility.GameOrder[value38.gameTitle]] then
					{}[CoD.AARUtility.GameOrder[value38.gameTitle]] = value38
				else
					if {}[CoD.AARUtility.GameOrder[value38.gameTitle]].plevel < value38.plevel then
						{}[CoD.AARUtility.GameOrder[value38.gameTitle]] = value38
					end
				end
			end
			registerVal34, registerVal35, registerVal36 = pairs({})
			if (0.000000 + 1.000000) < 4.000000 then
				CoD.AARUtility.CreateRewardInfoModel(registerVal32, ((0.000000 + 1.000000) + 1.000000), "MENU_AAR_CUSTOM_PRESTIGE_ICON", (value38.imageName .. "_lrg"), value38.gameTitle)
			end
			registerVal34 = __FUNC_A345_()
			registerVal34 = IsZombies()
			if not true and registerVal34 and not registerVal34 then
				CoD.AARUtility.CreateRewardInfoModel(registerVal32, (((0.000000 + 1.000000) + 1.000000) + 1.000000), "MPUI_UNLOCK_TOKEN", "t7_hud_mp_token_reward", "")
			end
		end
	end
	registerVal21 = Engine.GetNumBulletWeapons()
	if registerVal21 ~= nil then
		for index22=0.000000, (registerVal21 - 1.000000), 1.000000 do
			registerVal26 = Engine.HasRecentItemAttachmentsUnlocked(arg0, index22)
			registerVal26 = Engine.GetNumItemAttachmentsWithAttachPoint(index22, 0.000000)
			for index28=1.000000, (registerVal26 - 1.000000), 1.000000 do
				registerVal32 = Engine.IsItemAttachmentRecentlyUnlocked(arg0, index22, index28)
				registerVal32 = Engine.GetItemAttachment(index22, index28)
				registerVal38 = Engine.GetItemRef(index22)
				registerVal40 = Engine.GetAttachmentRefByIndex(registerVal32)
				registerVal33 = tonumber(Engine.TableLookup(arg0, CoD.gunLevelsTable, CoD.AARUtility.GunRefCol, registerVal38, CoD.AARUtility.GunAttachmentRefCol, registerVal40, CoD.AARUtility.GunRankCol))
				registerVal39 = Engine.GetItemRef(index22)
				registerVal41 = Engine.GetAttachmentRefByIndex(registerVal32)
				registerVal34 = tonumber(Engine.TableLookup(arg0, CoD.gunLevelsTable, CoD.AARUtility.GunRefCol, registerVal39, CoD.AARUtility.GunAttachmentRefCol, registerVal41, CoD.AARUtility.GunRankXPCol))
				if registerVal32 and registerVal33 and registerVal34 then
					local registerVal37 = {}
					registerVal37.itemIndex = index22
					registerVal37.attachmentIndex = registerVal32
					registerVal37.unlockLevel = (registerVal33 + 2.000000)
					registerVal37.xp = registerVal34
					table.insert({}, registerVal37)
				end
			end
			local function __FUNC_A40C_(arg0, arg1)
				if arg0.unlockLevel >= arg1.unlockLevel then
				end
				return true
			end

			table.sort({}, __FUNC_A40C_)
			registerVal28, registerVal29, registerVal30 = pairs({})
			for index31,value32 in registerVal28, registerVal29, registerVal30 do
				registerVal34 = Engine.GetItemImage(value32.itemIndex)
				registerVal35 = Engine.GetItemName(value32.itemIndex)
				registerVal36 = Engine.Localize("MPUI_LEVEL_N", value32.unlockLevel)
				registerVal33 = __FUNC_9F08_((registerVal34 .. "_pu"), registerVal35, registerVal36, "weaponRankup")
				registerVal34 = Engine.GetAttachmentUniqueImageByAttachmentIndex(Enum.eModes.MODE_MULTIPLAYER, value32.itemIndex, value32.attachmentIndex)
				registerVal38 = Engine.GetAttachmentNameByIndex(value32.attachmentIndex)
				CoD.AARUtility.CreateRewardInfoModel(registerVal33, 1.000000, registerVal38, (registerVal34 .. "_rwd"), "")
				registerVal41 = Engine.GetXPScale(arg0)
				registerVal38 = Engine.Localize("RANK_XP", (value32.xp * registerVal41))
				CoD.AARUtility.CreateRewardInfoModel(registerVal33, 2.000000, registerVal38, "t7_hud_mp_notifications_xp_blue", "")
			end
		end
	end
	if registerVal3 then
		local function __FUNC_A479_(arg0, arg1, arg2, arg3)
			local registerVal4 = CoD.getStatsMilestoneTable((arg0 + 1.000000))
			local registerVal5 = Engine.TableFindRows(registerVal4, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_INDEX, arg1)
			if not registerVal5 then
				return 
			end
			local registerVal7 = Engine.TableLookupGetColumnValueForRow(registerVal4, registerVal5[1.000000], Enum.milestoneTableColumns_t.MILESTONE_COLUMN_UNLOCKITEM)
			local registerVal8 = Engine.TableLookupGetColumnValueForRow(registerVal4, registerVal5[1.000000], Enum.milestoneTableColumns_t.MILESTONE_COLUMN_UNLOCKIMAGE)
			local registerVal9 = Engine.TableLookupGetColumnValueForRow(registerVal4, registerVal5[1.000000], Enum.milestoneTableColumns_t.MILESTONE_COLUMN_UNLOCKHEROITEM)
			local registerVal10 = Engine.TableLookupGetColumnValueForRow(registerVal4, registerVal5[1.000000], Enum.milestoneTableColumns_t.MILESTONE_COLUMN_STATTYPE)
			local registerVal11 = tonumber(Engine.TableLookupGetColumnValueForRow(registerVal4, registerVal5[1.000000], Enum.milestoneTableColumns_t.MILESTONE_COLUMN_XPEARNED))
			if registerVal8 and registerVal8 ~= "" then
				local registerVal14 = Engine.TableLookup(nil, CoD.emblemIconsTable, 4.000000, registerVal8, 1.000000)
				if arg1 or registerVal14 == "" then
					registerVal14 = Engine.TableLookup(nil, CoD.backgroundsTable, 4.000000, registerVal8, 1.000000)
				end
				if registerVal14 then
					if registerVal14 == "" then
					else
						registerVal14 = tonumber(nil)
					end
				end
			end
			if registerVal10 == "global" then
			else
				if Enum.statsMilestoneTypes_t.MILESTONE_GLOBAL == "gamemode" then
				else
					if Enum.statsMilestoneTypes_t.MILESTONE_GAMEMODE == "group" then
					else
						if Enum.statsMilestoneTypes_t.MILESTONE_GROUP == "attachment" then
						else
							if Enum.statsMilestoneTypes_t.MILESTONE_ATTACHMENTS == "specialist" then
							else
							end
						end
					end
				end
			end
			local registerVal16 = {}
			registerVal16.tableNumber = arg0
			registerVal16.row = registerVal5[1.000000]
			registerVal16.itemIndex = arg2
			registerVal16.type = Enum.statsMilestoneTypes_t.MILESTONE_WEAPON
			registerVal16.rewardXp = registerVal11
			registerVal16.heroUnlock = registerVal9
			registerVal16.unlockedImageId = registerVal14
			registerVal16.specialistIndex = arg3
			table.insert({}, registerVal16)
		end

		__FUNC_A479_(0.000000, 0.000000, nil, nil)
		__FUNC_A479_(0.000000, 120.000000, nil, nil)
		__FUNC_A479_(0.000000, 2.000000, nil, nil)
		__FUNC_A479_(1.000000, 324.000000, 7.000000, nil)
		__FUNC_A479_(1.000000, 325.000000, 7.000000, nil)
		__FUNC_A479_(2.000000, 656.000000, 33.000000, nil)
		__FUNC_A479_(2.000000, 657.000000, 33.000000, nil)
		__FUNC_A479_(3.000000, 820.000000, nil, 3.000000)
		__FUNC_A479_(3.000000, 867.000000, nil, 3.000000)
		__FUNC_A479_(3.000000, 870.000000, nil, 3.000000)
		__FUNC_A479_(2.000000, 555.000000, 25.000000, nil)
		__FUNC_A479_(2.000000, 556.000000, 25.000000, nil)
		__FUNC_A479_(2.000000, 648.000000, Enum.itemGroup_t.ITEMGROUP_ASSAULT, nil)
		__FUNC_A479_(2.000000, 649.000000, Enum.itemGroup_t.ITEMGROUP_PISTOL, nil)
		__FUNC_A479_(2.000000, 650.000000, Enum.itemGroup_t.ITEMGROUP_SMG, nil)
		__FUNC_A479_(2.000000, 651.000000, Enum.itemGroup_t.ITEMGROUP_LMG, nil)
		__FUNC_A479_(2.000000, 652.000000, Enum.itemGroup_t.ITEMGROUP_SNIPER, nil)
		__FUNC_A479_(2.000000, 653.000000, Enum.itemGroup_t.ITEMGROUP_CQB, nil)
		__FUNC_A479_(2.000000, 654.000000, Enum.itemGroup_t.ITEMGROUP_LAUNCHER, nil)
		__FUNC_A479_(2.000000, 656.000000, Enum.itemGroup_t.ITEMGROUP_KNIFE, nil)
		__FUNC_A479_(0.000000, 163.000000, nil, nil)
		__FUNC_A479_(5.000000, 1400.000000, 0.000000, nil)
		__FUNC_A479_(5.000000, 1401.000000, 0.000000, nil)
		__FUNC_A479_(5.000000, 1402.000000, 0.000000, nil)
		__FUNC_A479_(5.000000, 1403.000000, 0.000000, nil)
		__FUNC_A479_(5.000000, 1404.000000, 0.000000, nil)
		__FUNC_A479_(5.000000, 1405.000000, 0.000000, nil)
		__FUNC_A479_(5.000000, 1406.000000, 0.000000, nil)
	else
		registerVal23 = Engine.GetRecentChallenges(arg0)
	end
	registerVal24, registerVal25, registerVal26 = ipairs(registerVal23)
	for index27,value28 in registerVal24, registerVal25, registerVal26 do
		if not {}[value28.tableNumber] then
			{}[value28.tableNumber] = {}
		end
		if not {}[value28.tableNumber][value28.row] then
			{}[value28.tableNumber][value28.row] = {}
		end
		if value28.itemIndex and not {}[value28.tableNumber][value28.row][value28.itemIndex] then
			{}[value28.tableNumber][value28.row][value28.itemIndex] = true
		end
		local registerVal31 = CoD.ChallengesUtility.IsSpecialistTransmissionChallenge(value28.type, value28.tableNumber, value28.row)
		registerVal31 = CoD.ChallengesUtility.IsTerribleKnifeChallenge(value28.type, value28.tableNumber, value28.row)
		registerVal31 = CoD.ChallengesUtility.IsHiddenPostShipChallenge(value28.type, value28.tableNumber, value28.row)
		registerVal31 = CoD.ChallengesUtility.IsSideBetMasteryChallenge(value28.type, value28.tableNumber, value28.row)
		registerVal31 = CoD.ChallengesUtility.IsSpecialContractChallenge(value28.type, value28.tableNumber, value28.row)
		if not false and not registerVal31 and not registerVal31 and not registerVal31 and not registerVal4 or registerVal31 then
		end
		registerVal31 = IsZombies()
		if registerVal31 and value28.type == Enum.statsMilestoneTypes_t.MILESTONE_DAILY then
			registerVal31 = CoD.getStatsMilestoneTable((value28.tableNumber + 1.000000))
			registerVal32 = Engine.TableLookupGetColumnValueForRow(registerVal31, value28.row, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_INDEX)
			registerVal34 = Engine.GetModelForController(arg0)
			registerVal33 = Engine.CreateModel(registerVal34, "AARDailyChallengeModel")
			CoD.ChallengesUtility.UpdateDailyChallengeModel(arg0, registerVal33, Enum.eModes.MODE_ZOMBIES, tonumber(registerVal32))
		end
		registerVal31 = CoD.ChallengesUtility.GetChallengeRewardInfo(arg0, value28.tableNumber, value28.row, value28.type, value28.itemIndex, value28.specialistIndex)
		registerVal33 = IsMultiplayer()
		if registerVal33 then
			if registerVal31.specialistInfo then
				if registerVal31.specialistInfo.unlockItemIndex == 9.000000 then
				else
					if registerVal31.specialistInfo.unlockItemIndex == 8.000000 then
					else
					else
						if registerVal31.camoInfo then
							if registerVal31.camoInfo.camoRef == "camo_diamond" or registerVal31.camoInfo.camoRef == "camo_darkmatter" then
							else
								if registerVal31.camoInfo.camoRef == "camo_gold" then
								else
								else
									if registerVal31["reticleInfo"] then
									else
										if registerVal31["emblemInfo"] then
											if registerVal31["emblemInfo"].category == "sidebet" then
											else
												if registerVal31["emblemInfo"]["isMastery"] then
												else
												else
												else
													registerVal33 = IsZombies()
													if registerVal33 then
														if registerVal31.camoInfo then
														else
															if registerVal31["reticleInfo"] then
															else
																if value28.type == Enum.statsMilestoneTypes_t.MILESTONE_DAILY then
																else
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
		registerVal33 = __FUNC_9F08_(registerVal31["icon"], registerVal31.titleText, registerVal31["subtitleText"], "challenge", "CoD.MPChallengeRewardsCarouselItem")
		registerVal35 = {}
		registerVal35 = {"specialistInfo", "camoInfo", "emblemInfo", "reticleInfo", "transmissionInfo", "xpInfo", "vialInfo"}
		registerVal36, registerVal37, registerVal38 = ipairs(registerVal35)
		for index39,value40 in registerVal36, registerVal37, registerVal38 do
			if registerVal31[value40] then
				if registerVal31[value40]["rewardSize"] ~= "CallingCard" then
				end
				CoD.AARUtility.CreateRewardInfoModel(registerVal33, 1.000000, registerVal31[value40]["displayString"], registerVal31[value40].image, "", true)
			end
		end
	end
	registerVal24 = IsZombies()
	registerVal24 = registerVal3.PlayerStatsList["BGB_TOKENS_GAINED_THIS_GAME"].StatValue:get()
	if registerVal24 and registerVal24 and 0.000000 < registerVal24 then
		registerVal26 = IsZMDoubleVialActive(arg0)
		if registerVal4 or not "uie_t7_hud_zm_vial_aar" then
		end
		if registerVal24 == 1.000000 then
			registerVal27 = __FUNC_9F08_("t7_hud_zm_vial_256", "ZMUI_BGB_TOKEN_AWARD_NOTIFICATION_TITLE", "ZMUI_VIAL_DISCOVERED", "rankup")
		else
			registerVal27 = __FUNC_9F08_("t7_hud_zm_vial_256", "ZMUI_BGB_TOKEN_AWARD_NOTIFICATION_TITLE", "ZMUI_VIALS_DISCOVERED", "rankup")
		end
		registerVal27 = IsZMDoubleVialActive(arg0)
		if registerVal4 or not "uie_t7_icon_zm_double_vial_backer" then
		end
		registerVal31 = Engine.Localize("ZMUI_BGB_TOKENS_GAINED_REWARD", registerVal24)
		CoD.AARUtility.CreateRewardInfoModel(registerVal27, 1.000000, registerVal31, "t7_hud_zm_vial_256", "", false)
	end
	registerVal24 = IsMultiplayer()
	registerVal24 = ArenaChallengesEnabled()
	registerVal24 = CoD["ArenaUtility"]["GetRecentArenaVetChallenges"](arg0, registerVal4, registerVal3, true)
	registerVal25, registerVal26, registerVal27 = ipairs(registerVal24)
	for index28,value29 in registerVal25, registerVal26, registerVal27 do
		registerVal30 = __FUNC_9F08_("uie_t7_icons_challenges_mp_arena_seasonvet", value29["models"]["title"], value29["models"]["description"], "arena", "CoD.MPChallengeRewardsCarouselItem")
		registerVal34 = Engine.Localize("MENU_CALLING_CARD")
		registerVal35 = GetBackgroundByID(value29["models"]["iconId"])
		CoD.AARUtility.CreateRewardInfoModel(registerVal30, 1.000000, registerVal34, registerVal35, "", true)
	end
	registerVal25 = CoD["ArenaUtility"]["GetRecentArenaBestChallenges"](arg0, registerVal4, registerVal3)
	registerVal26, registerVal27, registerVal28 = ipairs(registerVal25)
	for index29,value30 in registerVal26, registerVal27, registerVal28 do
		registerVal31 = __FUNC_9F08_("uie_t7_icons_challenges_mp_arena_bestranked", value30["models"]["title"], value30["models"]["description"], "arena", "CoD.MPChallengeRewardsCarouselItem")
		registerVal35 = Engine.Localize("MENU_CALLING_CARD")
		registerVal36 = GetBackgroundByID(value30["models"]["iconId"])
		CoD.AARUtility.CreateRewardInfoModel(registerVal31, 1.000000, registerVal35, registerVal36, "", true)
	end
	registerVal25 = Engine.CreateModel(registerVal4, "rewardsCarouselItemCount")
	Engine.SetModelValue(registerVal25, 0.000000)
end

function CoD.AARUtility.GetRewardItemCount(arg0)
	local registerVal3 = Engine.GetModelForController(arg0.controller)
	Engine.GetModel(registerVal3, "aarRewards.rewardsCarouselItemCount")
	return Engine.GetModelValue(Engine.GetModel)
end

function CoD.AARUtility.GetModelForRewardItemByIndex(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	return Engine.GetModel(registerVal3, ("aarRewards.rewardsCarouselItem" .. arg1))
end

function CoD.AARUtility.AnyRewardsEarnedDuringMatch(arg0)
	CoD.AARUtility.CreateModelsForRewards(arg0)
	local registerVal1 = IsLive()
	if registerVal1 then
		local registerVal3 = Engine.GetModelForController(arg0)
		registerVal1 = Engine.GetModelValue(Engine.GetModel(registerVal3, "aarRewards.rewardsCarouselItemCount"))
		if 0.000000 >= registerVal1 then
		end
	end
	return true
end

function CoD.AARUtility.SortMedals(arg0, arg1)
	local registerVal2 = Engine.TableLookupGetColumnValueForRow(CoD.scoreInfoTable, arg0.row, CoD.AARUtility.medalSortkeyCol)
	local registerVal3 = Engine.TableLookupGetColumnValueForRow(CoD.scoreInfoTable, arg1.row, CoD.AARUtility.medalSortkeyCol)
	if arg0.row and arg1.row and registerVal2 and registerVal3 then
		local registerVal4 = tonumber(registerVal2)
		local registerVal5 = tonumber(registerVal3)
		if registerVal4 == registerVal5 then
			if arg0.value >= arg1.value then
			end
			return true
		else
			if registerVal4 >= registerVal5 then
			end
			return true
		end
	end
	return true
end

function CoD.AARUtility.CountdownRequiredXPNumber(arg0, arg1, arg2, arg3, arg4, arg5)
	if arg1 or not 0.000000 then
	end
	local registerVal8 = Engine.GetModelForController(arg0)
	local registerVal7 = Engine.GetModel(registerVal8, "aarStats.performanceTabStats")
	registerVal8 = Engine.CreateModel(registerVal7, "xpNeededToLevelUpStringRefValue")
	local registerVal10 = LUI.UITimer.new(5.000000, "count_down", false, arg1)
	registerVal10.currentValue = arg3
	registerVal10.minValue = arg4
	arg1.xpNumberTimer = registerVal10
	local function __FUNC_B457_(arg1, arg2)
		local registerVal3 = math.floor((arg3 - (((0.000000 + arg2.timeElapsed) / CoD.AARUtility.XPBarAnimTime) * arg3)))
		registerVal10.currentValue = registerVal3
		if registerVal10.currentValue < registerVal10.minValue or CoD.AARUtility.XPBarAnimTime < (0.000000 + arg2.timeElapsed) then
			registerVal10.currentValue = registerVal10.minValue
			registerVal10:close()
			if arg5 then
				arg5()
			end
		end
		Engine.SetModelValue(registerVal8, registerVal10.currentValue)
		if CoD.isFrontend and arg0 ~= 0.000000 then
			local registerVal4 = Engine.GetModelForController(0.000000)
			registerVal3 = Engine.CreateModel(registerVal4, "aarStats.performanceTabStats.xpNeededToLevelUpStringRefValue")
			Engine.SetModelValue(registerVal3, registerVal10.currentValue)
		end
	end

	arg1:registerEventHandler("count_down", __FUNC_B457_)
	arg1:addElement(arg1.xpNumberTimer)
end

function CoD.AARUtility.DoXPBarAnimationSequence(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal10, registerVal11 = CoD.AARUtility.GetMinMaxXPForRank(arg3, arg0)
	if arg6 then
		local registerVal12, registerVal13 = CoD.AARUtility.GetMinMaxXPForParagonRank(arg3, arg0)
	end
	registerVal13 = math.max(1.000000, (registerVal13 - registerVal12))
	if arg3 == arg4 then
		local registerVal17 = math.max(1.000000, (registerVal13 - registerVal12))
	end
	arg1.XpBarContainer.XpBar.XpBarCurrXPBg:setShaderVector(0.000000, ((arg2 - registerVal12) / registerVal13), 0.000000, 0.000000, 0.000000)
	arg1.XpBarContainer.XpBar.XpBarEarnedXPBg:setShaderVector(0.000000, ((arg2 - registerVal12) / registerVal13), 0.000000, 0.000000, 0.000000)
	arg1.XpBarContainer.XpBar.XpBarEarnedXPBg:beginAnimation("animate_bar", CoD.AARUtility.XPBarAnimTime, true, true)
	arg1.XpBarContainer.XpBar.XpBarEarnedXPBg:setShaderVector(0.000000, ((arg5 - registerVal12) / registerVal17), 0.000000, 0.000000, 0.000000)
	Engine.PlaySound("uin_aar_bar_fill_main")
	local function __FUNC_BADA_()
		Engine.PlaySound("uin_aar_bar_fill_tail")
		if arg4 <= arg3 then
			local registerVal0 = Engine.IsCampaignGame()
			if registerVal0 then
				CoD.AARUtilityCP.hasSeenXPBarAnim = true
			end
			return 
		end
		arg1.XpBarContainer:playClip("Update")
		local function __FUNC_BCC0_(arg2, arg8)
			local registerVal2 = math.min(CoD.MAX_RANK, (arg3 + 1.000000))
			local registerVal3, registerVal4 = CoD.AARUtility.GetMinMaxXPForRank(registerVal2, arg0)
			if arg6 then
				local registerVal5 = math.min(CoD.MAX_PARAGON_RANK, (arg3 + 1.000000))
				registerVal5, registerVal6 = CoD.AARUtility.GetMinMaxXPForParagonRank(registerVal5, arg0)
				CoD.AARUtility.SetCurrLevelModelsForParagon(arg0, registerVal5, arg7)
				local registerVal7 = math.min(CoD.MAX_PARAGON_RANK, (registerVal5 + 1.000000))
				CoD.AARUtility.SetNextLevelModelsForParagon(arg0, registerVal7, arg7)
			else
				CoD.AARUtility.SetCurrLevelModels(arg0, registerVal5)
				CoD.AARUtility.SetNextLevelModels(arg0, math.min(CoD.MAX_RANK, (registerVal5 + 1.000000)))
			end
			arg1.XpBarContainer.XpBar.XpBarCurrXPBg:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg1.XpBarContainer.XpBar.XpBarEarnedXPBg:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			registerVal5 = IsCampaign()
			if arg8 or registerVal5 ~= CoD.MAX_RANK then
				registerVal5 = IsMultiplayer()
				if registerVal5 and registerVal5 == CoD.MAX_PARAGON_RANK then
					arg1.XpBarContainer:playClip("FlashLastLevel")
				end
			else
				arg1.XpBarContainer:playClip("FlashNextLevel")
			end
			local function __FUNC_C1F8_(arg2, arg3)
				CoD.AARUtility.DoXPBarAnimationSequence(arg0, arg1, registerVal5, registerVal5, arg4, arg5, arg6, arg7)
			end

			arg1.XpBarContainer:registerEventHandler("clip_over", __FUNC_C1F8_)
		end

		arg1.XpBarContainer:registerEventHandler("clip_over", __FUNC_BCC0_)
	end

	CoD.AARUtility.CountdownRequiredXPNumber(arg0, arg1, arg1.XpBarContainer.XpBar, (registerVal13 - arg2), (registerVal13 - arg5), __FUNC_BADA_)
end

function CoD.AARUtility.DoXPBarAnimation(arg0, arg1)
	local registerVal2 = CoD.AARUtility.UseTestData()
	local registerVal3 = Engine.IsCampaignGame()
	if registerVal3 then
		registerVal3 = CoD.AARUtilityCP.UseTestData()
	end
	registerVal3 = CoD.AARUtility.TestSinglePromotion()
	local registerVal4 = CoD.AARUtility.TestMultiplePromotions()
	if not registerVal3 then
		local registerVal11 = CoD.GetPlayerStats(arg1, CoD.STATS_LOCATION_STABLE)
		local registerVal12 = IsInParagonCapableGameMode()
		if registerVal12 then
			registerVal12 = registerVal11.PlayerStatsList.PLEVEL.StatValue:get()
		end
		local registerVal13 = IsInParagonCapableGameMode()
		registerVal13 = Engine.GetPrestigeCap()
		if registerVal12 ~= registerVal13 then
		end
		registerVal13 = Engine.IsCampaignGame()
		if registerVal13 then
			registerVal13 = CoD.GetPlayerStats(arg1)
			local registerVal14 = registerVal13.currentRankXP:get()
			registerVal14 = CoD.AARUtilityCP.GetRankForRankXP(arg1, registerVal14)
			registerVal14 = registerVal13.PlayerStatsList.RANK.StatValue:get()
			registerVal14 = registerVal13.PlayerStatsList.RANKXP.StatValue:get()
		else
			if true then
				registerVal13 = registerVal11.PlayerStatsList.PARAGON_RANK.StatValue:get()
				registerVal13 = registerVal11.PlayerStatsList.PARAGON_RANKXP.StatValue:get()
				registerVal13 = CoD.GetPlayerStats(arg1)
				registerVal14 = registerVal13.PlayerStatsList.PARAGON_RANK.StatValue:get()
				registerVal14 = registerVal13.PlayerStatsList.PARAGON_RANKXP.StatValue:get()
				registerVal14 = registerVal13.PlayerStatsList.PARAGON_ICON_ID.StatValue:get()
			else
				registerVal13 = registerVal11.PlayerStatsList.RANK.StatValue:get()
				registerVal13 = registerVal11.PlayerStatsList.RANKXP.StatValue:get()
				registerVal13 = CoD.GetPlayerStats(arg1)
				registerVal14 = registerVal13.PlayerStatsList.RANK.StatValue:get()
				registerVal14 = registerVal13.PlayerStatsList.RANKXP.StatValue:get()
			end
		end
	end
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "aarStats.performanceTabStats")
	if registerVal3 then
		if registerVal4 then
		else
			if registerVal3 then
			else
			end
		end
		registerVal14 = Engine.CreateModel(registerVal11, "xpEarnedDuringMatch")
		Engine.SetModelValue(registerVal14, (31500.000000 - 28500.000000))
	end
	local registerVal15 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModelValue(Engine.CreateModel(registerVal15, "doAARXPBarAnimation"))
	if not registerVal13 then
		if true then
			CoD.AARUtility.SetCurrLevelModelsForParagon(arg1, 5.000000, registerVal14)
		else
			CoD.AARUtility.SetCurrLevelModels(arg1, 5.000000)
		end
		if CoD.MAX_PARAGON_RANK < (5.000000 + 1.000000) then
		end
		local registerVal18 = IsCampaign()
		if registerVal18 and 5.000000 == 5.000000 then
			arg0.XpBarContainer.XpBar.XpBarCurrXPBg:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0.XpBarContainer.XpBar.XpBarEarnedXPBg:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
			arg0.XpBarContainer.RankIconAndNumberWidgetNextTop:setAlpha(0.000000)
			arg0.XpBarContainer.RankIconAndNumberWidgetNextBase:setAlpha(0.000000)
			arg0.XpBarContainer.NextLevelDisplay:setAlpha(0.000000)
			arg0.XpBarContainer.XpBar:setAlpha(0.000000)
			arg0.XpBarContainer.XpBarFrame:setAlpha(0.000000)
			arg0.XpBarContainer.MeterGlow:setAlpha(0.000000)
			arg0.XpBarContainer.XPEarnedDisplay:setAlpha(0.000000)
		else
			if true then
				CoD.AARUtility.SetNextLevelModelsForParagon(arg1, 5.000000, registerVal14)
				registerVal18, registerVal19 = CoD.AARUtility.GetMinMaxXPForParagonRank(5.000000, arg1)
				registerVal19 = math.max(1.000000, (registerVal19 - registerVal18))
				arg0.XpBarContainer.XpBar.XpBarCurrXPBg:setShaderVector(0.000000, ((31500.000000 - registerVal18) / registerVal19), 0.000000, 0.000000, 0.000000)
				arg0.XpBarContainer.XpBar.XpBarEarnedXPBg:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				if CoD.MAX_PARAGON_RANK <= 5.000000 then
					arg0.XpBarContainer:playClip("FlashLastLevel")
				else
					CoD.AARUtility.SetNextLevelModels(arg1, 5.000000)
					registerVal18, registerVal19 = CoD.AARUtility.GetMinMaxXPForRank(5.000000, arg1)
					registerVal19 = math.max(1.000000, (registerVal19 - registerVal18))
					arg0.XpBarContainer.XpBar.XpBarCurrXPBg:setShaderVector(0.000000, ((31500.000000 - registerVal18) / registerVal19), 0.000000, 0.000000, 0.000000)
					arg0.XpBarContainer.XpBar.XpBarEarnedXPBg:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
				end
			end
		end
		registerVal18 = Engine.CreateModel(registerVal11, "xpNeededToLevelUpStringRefValue")
		Engine.SetModelValue(registerVal18, (registerVal19 - 31500.000000))
		if CoD.isFrontend and arg1 ~= 0.000000 then
			local registerVal21 = Engine.GetModelForController(0.000000)
			local registerVal20 = Engine.CreateModel(registerVal21, "aarStats.performanceTabStats.xpNeededToLevelUpStringRefValue")
			Engine.SetModelValue(registerVal20, (registerVal19 - 31500.000000))
		else
			if true then
				registerVal14, registerVal15 = CoD.AARUtility.GetMinMaxXPForParagonRank(5.000000, arg1)
				local registerVal17 = math.max(1.000000, (registerVal15 - registerVal14))
				arg0.XpBarContainer.XpBar.XpBarCurrXPBg:setShaderVector(0.000000, ((28500.000000 - registerVal14) / registerVal17), 0.000000, 0.000000, 0.000000)
				arg0.XpBarContainer.XpBar.XpBarEarnedXPBg:setShaderVector(0.000000, ((28500.000000 - registerVal14) / registerVal17), 0.000000, 0.000000, 0.000000)
				CoD.AARUtility.SetCurrLevelModelsForParagon(arg1, 5.000000, registerVal14)
				registerVal19 = math.min(CoD.MAX_PARAGON_RANK, (5.000000 + 1.000000))
				CoD.AARUtility.SetNextLevelModelsForParagon(arg1, registerVal19, registerVal14)
				registerVal17 = Engine.CreateModel(registerVal11, "xpNeededToLevelUpStringRefValue")
				Engine.SetModelValue(registerVal17, (registerVal15 - 28500.000000))
				if CoD.isFrontend and arg1 ~= 0.000000 then
					registerVal20 = Engine.GetModelForController(0.000000)
					registerVal19 = Engine.CreateModel(registerVal20, "aarStats.performanceTabStats.xpNeededToLevelUpStringRefValue")
					Engine.SetModelValue(registerVal19, (registerVal15 - 28500.000000))
				end
				if CoD.MAX_PARAGON_RANK <= 5.000000 then
					arg0.XpBarContainer:playClip("FlashLastLevel")
					return 
				end
				registerVal18 = LUI.UITimer.new(1000.000000, "start_xp_bar_animation", true, arg0)
				local function __FUNC_D865_()
					CoD.AARUtility.DoXPBarAnimationSequence(arg1, arg0, 28500.000000, 5.000000, 5.000000, 31500.000000, true, registerVal14)
				end

				arg0:registerEventHandler("start_xp_bar_animation", __FUNC_D865_)
				arg0:addElement(registerVal18)
				registerVal21 = Engine.GetModelForController(arg1)
				registerVal20 = Engine.CreateModel(registerVal21, "doAARXPBarAnimation")
				Engine.SetModelValue(registerVal20, false)
			else
				registerVal14, registerVal15 = CoD.AARUtility.GetMinMaxXPForRank(5.000000, arg1)
				registerVal17 = math.max(1.000000, (registerVal15 - registerVal14))
				arg0.XpBarContainer.XpBar.XpBarCurrXPBg:setShaderVector(0.000000, ((28500.000000 - registerVal14) / registerVal17), 0.000000, 0.000000, 0.000000)
				arg0.XpBarContainer.XpBar.XpBarEarnedXPBg:setShaderVector(0.000000, ((28500.000000 - registerVal14) / registerVal17), 0.000000, 0.000000, 0.000000)
				CoD.AARUtility.SetCurrLevelModels(arg1, 5.000000)
				CoD.AARUtility.SetNextLevelModels(arg1, math.min(CoD.MAX_RANK, (5.000000 + 1.000000)))
				registerVal17 = Engine.CreateModel(registerVal11, "xpNeededToLevelUpStringRefValue")
				Engine.SetModelValue(registerVal17, (registerVal15 - 28500.000000))
				if CoD.isFrontend and arg1 ~= 0.000000 then
					registerVal20 = Engine.GetModelForController(0.000000)
					registerVal19 = Engine.CreateModel(registerVal20, "aarStats.performanceTabStats.xpNeededToLevelUpStringRefValue")
					Engine.SetModelValue(registerVal19, (registerVal15 - 28500.000000))
				end
				registerVal18 = LUI.UITimer.new(1000.000000, "start_xp_bar_animation", true, arg0)
				local function __FUNC_D913_()
					CoD.AARUtility.DoXPBarAnimationSequence(arg1, arg0, 28500.000000, 5.000000, 5.000000, 31500.000000, true, registerVal14)
				end

				arg0:registerEventHandler("start_xp_bar_animation", __FUNC_D913_)
				arg0:addElement(registerVal18)
				registerVal21 = Engine.GetModelForController(arg1)
				registerVal20 = Engine.CreateModel(registerVal21, "doAARXPBarAnimation")
				Engine.SetModelValue(registerVal20, false)
			end
		end
	end
end


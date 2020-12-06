-- Decompiled with CoDLUIDecompiler by JariK

CoD.AARUtilityZM = {}
CoD.AARUtilityZM.RankIdCol = 0.000000
CoD.AARUtilityZM.RankTableColMinXP = 2.000000
CoD.AARUtilityZM.RankTableColXPToNext = 3.000000
CoD.AARUtilityZM.RankDisplayStringCol = 5.000000
CoD.AARUtilityZM.RankTableColMaxXP = 7.000000
CoD.AARUtilityZM.RankDisplayLevelCol = 14.000000
function CoD.AARUtilityZM.UseTestData()
	return false
end

function CoD.AARUtilityZM.GetMatchStat(arg0, arg1)
	local registerVal2 = CoD.AARUtilityZM.UseTestData()
	local registerVal5 = CoD.GetPlayerStats(arg0)
	if registerVal2 then
		registerVal5 = CoD.GetPlayerStats(arg0)
	else
		registerVal5 = CoD.GetPlayerStats(arg0, CoD.STATS_LOCATION_STABLE)
	end
	registerVal5 = registerVal5.PlayerStatsList[arg1].StatValue:get()
	local registerVal6 = registerVal5.PlayerStatsList[arg1].StatValue:get()
	return (registerVal5 - registerVal6)
end

function CoD.AARUtilityZM.GetMissionHighestStat(arg0, arg1)
	local registerVal2 = CoD.AARUtilityCP.GetLastMapName(arg0)
	local registerVal3 = CoD.GetPlayerStats(arg0)
	return registerVal3.PlayerStatsByMap[registerVal2].currentStats[arg1]:get()
end

function CoD.AARUtilityZM.SetupUIModels(arg0)
	local registerVal1 = CoD.AARUtilityZM.UseTestData()
	if registerVal1 then
		local registerVal3 = CoD.GetPlayerStats(arg0)
	else
		registerVal3 = CoD.GetPlayerStats(arg0, CoD.STATS_LOCATION_STABLE)
	end
	registerVal3 = CoD.GetPlayerStats(arg0)
	local registerVal4 = registerVal3.PlayerStatsList.RANKXP.StatValue:get()
	if registerVal1 or not registerVal4 then
	end
	local registerVal5 = registerVal3.PlayerStatsList.RANK.StatValue:get()
	local registerVal6 = registerVal3.PlayerStatsList.PLEVEL.StatValue:get()
	local registerVal7 = registerVal3.PlayerStatsList.RANKXP.StatValue:get()
	local registerVal8 = CoD.AARUtilityZM.GetXPEarnedDuringMatch(registerVal7, 0.000000)
	local registerVal11, registerVal12 = CoD.AARUtility.GetLevelAndLevelIconForRank((registerVal5 + 1.000000), (registerVal6 + 1.000000))
	{}.nextLevelIcon = registerVal12
	{}.nextLevel = registerVal11
	if registerVal1 then
		{}.kills = 24.000000
		{}.points = 4550.000000
		{}.rounds = 14.000000
		{}.headshots = 12.000000
		{}.meleeKills = 13.000000
		{}.pointsPerKill = 110.900000
		{}.revives = 3.000000
		{}.bgbTokensGainedThisGame = 1.000000
		{}.showBestScoreIcon = 1.000000
		{}.showBestStyleIcon = 1.000000
		{}.showBestRoundIcon = 1.000000
	else
		registerVal11 = CoD.AARUtilityZM.GetMatchStat(arg0, "KILLS")
		{}.kills = registerVal11
		registerVal11 = registerVal3.PlayerStatsList.TOTAL_POINTS.StatValue:get()
		{}.total_points = registerVal11
		registerVal11 = CoD.AARUtilityZM.GetMatchStat(arg0, "ROUNDS")
		{}.rounds = registerVal11
		registerVal11 = CoD.AARUtilityZM.GetMatchStat(arg0, "HEADSHOTS")
		{}.headshots = registerVal11
		registerVal11 = CoD.AARUtilityZM.GetMatchStat(arg0, "REVIVES")
		{}.revives = registerVal11
		registerVal11 = CoD.AARUtilityZM.GetMatchStat(arg0, "DOWNS")
		{}.downs = registerVal11
		registerVal11 = CoD.AARUtilityZM.GetMatchStat(arg0, "MELEE_KILLS")
		{}.meleeKills = registerVal11
		registerVal11 = CoD.AARUtilityZM.GetMatchStat(arg0, "BGBS_CHEWED")
		{}.pointsPerKill = registerVal11
		registerVal11 = registerVal3.PlayerStatsList.BGB_TOKENS_GAINED_THIS_GAME.StatValue:get()
		{}.bgbTokensGainedThisGame = registerVal11
		registerVal11 = Engine.GetRecentChallenges(arg0)
		registerVal12, registerVal13, registerVal14 = ipairs(registerVal11)
		for index15,value16 in registerVal12, registerVal13, registerVal14 do
			local registerVal17 = CoD.getStatsMilestoneTable((value16.tableNumber + 1.000000))
			local registerVal18 = tonumber(Engine.TableLookupGetColumnValueForRow(registerVal17, value16.row, Enum.milestoneTableColumns_t.MILESTONE_COLUMN_VIALSEARNED))
			if value16.type == Enum.statsMilestoneTypes_t.MILESTONE_DAILY and registerVal18 then
				local registerVal20 = IsZMDoubleVialActive(arg0)
				registerVal20 = Engine.GetZMVialScale(arg0)
				if registerVal1 or not registerVal20 then
				end
				{}.bgbTokensGainedThisGame = ({}.bgbTokensGainedThisGame + (registerVal18 * 1.000000))
			end
		end
		{}.showBestScoreIcon = 0.000000
		{}.showBestStyleIcon = 0.000000
		{}.showBestRoundIcon = 0.000000
	end
	if {}.bgbTokensGainedThisGame ~= 0.000000 then
		registerVal3.showMegaChewFactoryBreadcrumb:set(1.000000)
	end
	{}.xpEarnedDuringMatch = registerVal8
	registerVal12 = Engine.GetModelForController(arg0)
	registerVal11 = Engine.CreateModel(registerVal12, "aarStats.performanceTabStats")
	registerVal12, registerVal13, registerVal14 = pairs({})
	for index15,value16 in registerVal12, registerVal13, registerVal14 do
		registerVal18 = Engine.CreateModel(registerVal11, index15)
		Engine.SetModelValue(registerVal18, value16)
	end
	registerVal13 = Engine.GetModelForController(0.000000)
	registerVal12 = Engine.CreateModel(registerVal13, "aarStats.performanceTabStats")
	registerVal13, registerVal14, registerVal15 = pairs({})
	for index16,value17 in registerVal13, registerVal14, registerVal15 do
		local registerVal19 = Engine.CreateModel(registerVal12, index16)
		Engine.SetModelValue(registerVal19, value17)
	end
	UploadStats(self, arg0)
end

function CoD.AARUtilityZM.GetXPEarnedDuringMatch(arg0, arg1)
	if (arg0 - arg1) < 0.000000 then
	end
	return 0.000000
end

function CoD.AARUtilityZM.CreateModelsForRewards(arg0)
	local registerVal1 = CoD.AARUtilityZM.UseTestData()
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.CreateModel(registerVal2, "aarRewards")
	if registerVal1 then
		local registerVal4 = CoD.AARUtilityZM.GetRewardItemCount(arg0)
		for index5=1.000000, registerVal4, 1.000000 do
			local registerVal9 = Engine.CreateModel(registerVal3, (index5 .. ""))
			local registerVal11 = Engine.CreateModel(registerVal9, "rewardCarouselItemImage")
			Engine.SetModelValue(registerVal11, "uie_headicon_dead")
			registerVal11 = Engine.CreateModel(registerVal9, "rewardCarouselItemTitle")
			Engine.SetModelValue(registerVal11, "Master Sergeant")
			registerVal11 = Engine.CreateModel(registerVal9, "rewardCarouselItemSubtitle")
			Engine.SetModelValue(registerVal11, "Level 10")
			for index11=1.000000, 4.000000, 1.000000 do
				local registerVal15 = Engine.CreateModel(registerVal9, ("reward" .. index11 .. "Info"))
				local registerVal17 = Engine.CreateModel(registerVal15, "rewardName")
				Engine.SetModelValue(registerVal17, "Semtex")
				registerVal17 = Engine.CreateModel(registerVal15, "rewardImage")
				Engine.SetModelValue(registerVal17, "uie_headicon_dead")
				registerVal17 = Engine.CreateModel(registerVal15, "rewardDesc")
				Engine.SetModelValue(registerVal17, "Lethal Blueprint")
			end
		end
	end
end

function CoD.AARUtilityZM.GetModelForRewardItemByIndex(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	return Engine.GetModel(registerVal3, ("aarRewards." .. arg1))
end

function CoD.AARUtilityZM.GetRewardItemCount(arg0)
	local registerVal1 = CoD.AARUtilityZM.UseTestData()
	if registerVal1 then
		return 3.000000
	end
	return 0.000000
end

function CoD.AARUtilityZM.CreateQuestItemModels(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal1, "aarQuests")
end


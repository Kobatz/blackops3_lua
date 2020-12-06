-- Decompiled with CoDLUIDecompiler by JariK

CoD.ScoreboardUtility = {}
CoD.ScoreboardUtility.MinRowsToShowOnEachTeam = 4.000000
CoD.ScoreboardUtility.MinRowsToShowOnEachTeamForFFA = 8.000000
function CoD.ScoreboardUtility.GetScoreboardTeamTable(arg0, arg1)
	local registerVal2 = Engine.GetTeamPositions(arg0, Engine.GetCurrentTeamCount())
	local registerVal3 = Engine.GetCurrentTeamCount()
	if registerVal3 < 2.000000 and arg1 == 2.000000 then
		return {}
	end
	if registerVal2[arg1].team ~= Enum.team_t.TEAM_FREE then
		local registerVal6 = Engine.GetScoreboardTeamClientCount(Enum.team_t.TEAM_ALLIES)
		registerVal6 = Engine.GetScoreboardTeamClientCount(Enum.team_t.TEAM_AXIS)
	else
		registerVal6 = Engine.GetScoreboardTeamClientCount(Enum.team_t.TEAM_FREE)
	end
	local registerVal7 = Engine.GetCurrentTeamCount()
	if registerVal7 < 2.000000 then
	end
	registerVal7 = math.max(CoD.ScoreboardUtility.MinRowsToShowOnEachTeamForFFA, math.max(registerVal6, registerVal6))
	for index8=1.000000, registerVal7, 1.000000 do
		local registerVal14 = Engine.GetScoreboardTeamClientCount(registerVal2[arg1].team)
		if registerVal14 < index8 then
		else
			registerVal14 = Engine.GetScoreboardPlayerData((index8 - 1.000000), registerVal2[arg1].team, Enum.scoreBoardColumns_e.SCOREBOARD_COLUMN_CLIENTNUM)
		end
		local registerVal16 = Engine.milliseconds()
		registerVal14 = {}
		registerVal14.clientInfo = (("team: " .. registerVal2[arg1].team .. " client: -1") .. " " .. registerVal16)
		local registerVal15 = tonumber(registerVal14)
		registerVal14.clientNum = registerVal15
		registerVal15 = {}
		registerVal15.models = registerVal14
		table.insert({}, registerVal15)
	end
	return {}
end

function CoD.ScoreboardUtility.UpdateScoreboardTeamScores(arg0)
	local registerVal1 = Engine.GetCurrentTeamCount()
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.CreateModel(registerVal2, "scoreboardInfo")
	local registerVal4 = Engine.GetTeamPositions(arg0, registerVal1)
	for index6=1.000000, registerVal1, 1.000000 do
		{}.FactionName = ""
		{}.FactionIcon = ""
		{}.Score = registerVal4[index6].score
		if registerVal4[index6].team ~= Enum.team_t.TEAM_FREE then
			local registerVal12 = CoD.GetTeamNameCaps(registerVal4[index6].team)
			{}.FactionName = registerVal12
			registerVal12 = CoD.GetTeamFactionIcon(registerVal4[index6].team)
			{}.FactionIcon = registerVal12
			registerVal12 = CoD.GetTeamFactionColor(registerVal4[index6].team)
			{}.FactionColor = registerVal12
		end
		table.insert({}, {})
	end
	local registerVal6, registerVal7, registerVal8 = ipairs({})
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		local registerVal11, registerVal12, registerVal13 = pairs(value10)
		for index14,value15 in registerVal11, registerVal12, registerVal13 do
			local registerVal17 = Engine.CreateModel(registerVal3, ("team" .. index9 .. index14))
			Engine.SetModelValue(registerVal17, value15)
		end
	end
end

function CoD.ScoreboardUtility.GetTeamEnumAndClientIndex(arg0)
	local registerVal1, registerVal2, registerVal3, registerVal4 = string.match(arg0, "(%a+):%s*(%d+)%s+(%a+):%s*(-*%d+)")
	local registerVal5 = tonumber(registerVal2)
	tonumber(registerVal4)
	return 
end

function CoD.ScoreboardUtility.SetNemesisInfoModels(arg0, arg1)
	local registerVal2 = CoD.GetPlayerStats(arg0)
	local registerVal4 = registerVal2.AfterActionReportStats.nemesisKills:get()
	local registerVal5 = registerVal2.AfterActionReportStats.nemesisKilledBy:get()
	local registerVal6 = registerVal2.AfterActionReportStats.nemesisXuid:get()
	local registerVal8 = Engine.CreateModel(arg1, "nemesisXuid")
	Engine.SetModelValue(registerVal8, Engine.StringToXUIDDecimal(registerVal6))
	registerVal8 = Engine.CreateModel(arg1, "nemesisKills")
	Engine.SetModelValue(registerVal8, registerVal4)
	registerVal8 = Engine.CreateModel(arg1, "nemesisKilledBy")
	Engine.SetModelValue(registerVal8, registerVal5)
end

function CoD.ScoreboardUtility.SetScoreboardUIModels(arg0)
	local registerVal1 = Engine.GetCurrentTeamCount()
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.CreateModel(registerVal2, "scoreboardInfo")
	local registerVal5 = Engine.GetModelForController(0.000000)
	local registerVal4 = Engine.CreateModel(registerVal5, "scoreboardInfo")
	registerVal5 = Engine.GetModel(registerVal2, "forceScoreboard")
	if not registerVal5 then
		local registerVal6 = Engine.CreateModel(registerVal2, "forceScoreboard")
		Engine.SetModelValue(registerVal6, 0.000000)
	end
	local registerVal7 = Engine.GetModelForController(arg0)
	registerVal6 = Engine.CreateModel(registerVal7, "updateClientDeadStatus")
	Engine.SetModelValue(registerVal6, 0.000000)
	registerVal6 = Engine.CreateModel(registerVal3, "muteButtonPromptVisible")
	Engine.SetModelValue(registerVal6, false)
	registerVal6 = Engine.CreateModel(registerVal3, "muteButtonPromptText")
	Engine.SetModelValue(registerVal6, "")
	registerVal6 = Engine.GetCurrentMapName()
	registerVal5 = CoD.GetMapValue(registerVal6, "mapNameCaps", "")
	registerVal7 = Engine.CreateModel(registerVal3, "mapName")
	Engine.SetModelValue(registerVal7, registerVal5)
	registerVal7 = Engine.CreateModel(registerVal4, "mapName")
	Engine.SetModelValue(registerVal7, registerVal5)
	registerVal6 = Engine.IsMultiplayerGame()
	if registerVal6 then
		registerVal6 = Engine.IsInGame()
		if not registerVal6 then
			CoD.ScoreboardUtility.SetNemesisInfoModels(arg0, registerVal3)
		end
		registerVal6 = Engine.GetTeamPositions(arg0, registerVal1)
		for index8=1.000000, registerVal1, 1.000000 do
			{}.FactionName = ""
			{}.FactionIcon = ""
			{}.Score = registerVal6[index8].score
			if registerVal6[index8].team ~= Enum.team_t.TEAM_FREE then
				local registerVal14 = CoD.GetTeamNameCaps(registerVal6[index8].team)
				{}.FactionName = registerVal14
				registerVal14 = CoD.GetTeamFactionIcon(registerVal6[index8].team)
				{}.FactionIcon = registerVal14
				registerVal14 = CoD.GetTeamFactionColor(registerVal6[index8].team)
				{}.FactionColor = registerVal14
			end
			table.insert({}, {})
		end
		local registerVal8, registerVal9, registerVal10 = ipairs({})
		for index11,value12 in registerVal8, registerVal9, registerVal10 do
			local registerVal13, registerVal14, registerVal15 = pairs(value12)
			for index16,value17 in registerVal13, registerVal14, registerVal15 do
				local registerVal19 = Engine.CreateModel(registerVal3, ("team" .. index11 .. index16))
				Engine.SetModelValue(registerVal19, value17)
			end
		end
		local registerVal11 = Engine.GetCurrentGameType()
		registerVal8 = Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", registerVal11, "name_ref_caps")
		registerVal10 = Engine.CreateModel(registerVal3, "gameType")
		Engine.SetModelValue(registerVal10, registerVal8)
		registerVal10 = Engine.CreateModel(registerVal4, "gameType")
		Engine.SetModelValue(registerVal10, registerVal8)
		registerVal9 = Engine.GetModel(registerVal2, "gameScore.playerScore")
		if registerVal1 < 2.000000 and registerVal9 then
			registerVal10 = Engine.GetModelValue(registerVal9)
			local registerVal12 = Engine.CreateModel(registerVal3, "team1Score")
			Engine.SetModelValue(registerVal12, registerVal10)
		end
	end
	for index7=1.000000, 5.000000, 1.000000 do
		registerVal12 = Engine.CreateModel(registerVal3, ("column" .. index7 .. "Header"))
		Engine.SetModelValue(registerVal12, Engine.GetScoreboardColumnHeader(arg0, (index7 - 1.000000)))
	end
end


-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Lobby.Process.LobbyProcess")
require("lua.Shared.LuaEnums")
Lobby.TeamSelection = {}
Lobby.TeamSelection.DONT_SWITCH = -1.000000
Lobby.TeamSelection.TEAM_SWITCH_DELAY = 1500.000000
Lobby.TeamSelection.LOCAL_CLIENT_COUNT = 4.000000
Lobby.TeamSelection.Clients = {}
Lobby.TeamSelection.lastGameMode = ""
Lobby.TeamSelection.gameSetting = {}
local registerVal1 = math.random()
Lobby.TeamSelection.random = registerVal1
function Lobby.TeamSelection.TeamIdToString(arg0)
	if arg0 == Enum.team_t.TEAM_ALLIES then
		return "ALLIES"
	else
		if arg0 == Enum.team_t.TEAM_AXIS then
			return "AXIS"
		else
			if arg0 == Enum.team_t.TEAM_SPECTATOR then
				return "CASTER"
			end
		end
	end
	return "FREE"
end

function Lobby.TeamSelection.ShouldAssignToTeam(arg0)
	local registerVal4 = LobbyData.GetCurrentMenuTarget()
	if registerVal4.mainMode ~= Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.TeamSelection.ShouldAssignToTeam [false] Reason: curScreen.mainMode ~= Enum.LobbyMainMode.LOBBY_MAINMODE_MP 
")
		return false
	end
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST and arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME then
		if arg0.lobbyMode == Enum.LobbyMode.LOBBY_MODE_CUSTOM then
			local registerVal5 = CoDShared.IsGametypeTeamBased()
			if not registerVal5 then
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.TeamSelection.ShouldAssignToTeam [false] Reason: not CoDShared.IsGametypeTeamBased() 
")
				return false
			end
			registerVal5 = Engine.IsInGame()
			if registerVal5 then
				return false
			else
				registerVal5 = Engine.LobbyHostLaunchGetServerStatus()
				if Enum.GameServerStatus.GAME_SERVER_STATUS_IDLE < registerVal5 then
					return false
				end
			end
			registerVal5 = Engine.GetLobbyPregameState()
			if registerVal5 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_IDLE then
			end
			local registerVal7 = Engine.GetGametypeSetting("teamAssignment")
			local registerVal8 = Lobby.Timer.GetTimerStatus()
			if true ~= true and registerVal7 == LuaEnums.TEAM_ASSIGNMENT.AUTO and registerVal8 ~= Lobby.Timer.LOBBY_STATUS.STARTING then
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.TeamSelection.ShouldAssignToTeam [false] Reason: teamAssignment == LuaEnums.TEAM_ASSIGNMENT.AUTO and Lobby.Timer.GetTimerStatus() ~= Lobby.Timer.LOBBY_STATUS.STARTING 
")
				return false
			end
			return true
		else
			if arg0.lobbyMode == Enum.LobbyMode.LOBBY_MODE_PUBLIC or arg0.lobbyMode == Enum.LobbyMode.LOBBY_MODE_ARENA then
				registerVal5 = Lobby.Timer.GetTimerStatus()
				if registerVal5 == Lobby.Timer.LOBBY_STATUS.STARTING then
					return true
				else
					registerVal5 = Engine.IsInGame()
					if registerVal5 then
						return true
					else
						registerVal5 = Engine.LobbyHostLaunchGetServerStatus()
						if Enum.GameServerStatus.GAME_SERVER_STATUS_IDLE < registerVal5 then
							return true
						end
					end
				end
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.TeamSelection.ShouldAssignToTeam [failed] reason: Enum.LobbyMode.LOBBY_MODE_PUBLIC or Enum.LobbyMode.LOBBY_MODE_ARENA checks failed 
")
				return 
			end
		end
	end
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.TeamSelection.ShouldAssignToTeam [failed] default 
")
	return false
end

function Lobby.TeamSelection.ClearTeam(arg0)
	Engine.ClearTeamData(arg0)
	for index1=1.000000, LuaEnums.MAX_CLIENTS, 1.000000 do
		if Lobby.TeamSelection.Clients[index1].team == arg0 or Lobby.TeamSelection.Clients[index1].switchTeam == arg0 then
			{}.team = Enum.team_t.TEAM_FREE
			{}.switchTeam = Enum.team_t.TEAM_FREE
			{}.switchTeamTime = Lobby.TeamSelection.DONT_SWITCH
			Lobby.TeamSelection.Clients[index1] = {}
		end
	end
end

function Lobby.TeamSelection.StoreGamesetting()
	local registerVal1 = CoDShared.IsGametypeTeamBased()
	Lobby.TeamSelection.gameSetting.teamBased = registerVal1
	registerVal1 = Engine.GetGametypeSetting("allowspectating")
	if registerVal1 ~= 1.000000 then
	end
	Lobby.TeamSelection.gameSetting.allowSpectating = true
	registerVal1 = Engine.GetGametypeSetting("teamAssignment")
	Lobby.TeamSelection.gameSetting.teamAssignment = registerVal1
end

function Lobby.TeamSelection.OnSessionStart(arg0)
	if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_PRIVATE then
		return 
	end
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST and arg0.lobbyMode == Enum.LobbyType.LOBBY_TYPE_GAME then
		Lobby.TeamSelection.StoreGamesetting()
	end
	local registerVal5 = math.random()
	Lobby.TeamSelection.random = registerVal5
end

function Lobby.TeamSelection.OnSessionEnd(arg0)
	if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_PRIVATE then
		return 
	end
	if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME then
		Lobby.TeamSelection.Clear()
	end
	local registerVal5 = math.random()
	Lobby.TeamSelection.random = registerVal5
end

function Lobby.TeamSelection.OnClientAdded(arg0)
	if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_PRIVATE then
		return 
	end
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST and arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME then
		Lobby.TeamSelection.ClientJoined(arg0)
	end
	local registerVal5 = Engine.IsLocalClient(arg0.xuid)
	registerVal5 = Engine.GetUsedControllerCount()
	if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME and arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_CLIENT and arg0.lobbyMode == Enum.LobbyMode.LOBBY_MODE_CUSTOM and registerVal5 and 1.000000 < registerVal5 then
		for index5=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
			local registerVal10 = Engine.GetXUID64((index5 - 1.000000))
			local registerVal11 = Engine.LobbyIsPlayerInLobby(Enum.LobbyType.LOBBY_TYPE_GAME, registerVal10)
			if registerVal11 then
				registerVal11 = Engine.GetLobbyClientNumByXUID(arg0.lobbyModule, arg0.lobbyType, registerVal10)
				local registerVal13 = Engine.GetTeamForXUID(registerVal10)
				if registerVal13 ~= Enum.team_t.TEAM_SPECTATOR then
					if Lobby.TeamSelection.Clients[(registerVal11 + 1.000000)] ~= nil and Lobby.TeamSelection.Clients[(registerVal11 + 1.000000)].switchTeam == Enum.team_t.TEAM_SPECTATOR then
						Engine.TeamSelection((index5 - 1.000000), Enum.team_t.TEAM_FREE)
						registerVal13 = {}
						registerVal13.team = Enum.team_t.TEAM_FREE
						registerVal13.switchTeam = Enum.team_t.TEAM_FREE
						registerVal13.switchTeamTime = Lobby.TeamSelection.DONT_SWITCH
						Lobby.TeamSelection.Clients[(registerVal11 + 1.000000)] = registerVal13
					end
				end
			end
		end
	end
end

function Lobby.TeamSelection.OnMatchEnd(arg0)
	if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_PRIVATE then
		return 
	end
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST then
		local registerVal4 = LobbyData.GetCurrentMenuTarget()
		if registerVal4.mainMode ~= Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
			Lobby.TeamSelection.Clear()
		else
			local registerVal5 = Engine.GetGametypeSetting("teamAssignment")
			if arg0.lobbyMode == Enum.LobbyMode.LOBBY_MODE_CUSTOM and registerVal5 == LuaEnums.TEAM_ASSIGNMENT.AUTO then
				Lobby.TeamSelection.ClearTeam(Enum.team_t.TEAM_ALLIES)
				Lobby.TeamSelection.ClearTeam(Enum.team_t.TEAM_AXIS)
			else
				if arg0.lobbyMode == Enum.LobbyMode.LOBBY_MODE_PUBLIC then
					Lobby.TeamSelection.Clear()
				end
			end
		end
	end
	registerVal5 = math.random()
	Lobby.TeamSelection.random = registerVal5
end

function Lobby.TeamSelection.OnGametypeSettingsChange(arg0)
	if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_PRIVATE then
		return 
	end
	if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME then
		if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST then
			Lobby.TeamSelection.GametypeSettingsChange()
		else
			local registerVal4 = Engine.IsLobbyHostActive(Enum.LobbyType.LOBBY_TYPE_GAME)
			if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_CLIENT and registerVal4 == false then
				Lobby.TeamSelection.GametypeSettingsChange()
			end
		end
	end
end

function Lobby.TeamSelection.GetAllowedTeams(arg0)
	local registerVal1 = Engine.GetGametypeSetting("teamAssignment")
	if registerVal1 ~= LuaEnums.TEAM_ASSIGNMENT.AUTO then
	end
	local registerVal2 = Engine.GetUsedControllerCount()
	if 1.000000 >= registerVal2 then
	end
	if Engine.IsSplitscreenClient then
		local registerVal3 = Engine.IsSplitscreenClient(Enum.LobbyType.LOBBY_TYPE_GAME, arg0)
	end
	registerVal3 = Engine.GetGametypeSetting("allowspectating")
	if registerVal3 == 1.000000 then
	else
	end
	local registerVal4 = CoDShared.IsGametypeTeamBased()
	if registerVal4 and not true then
		table.insert({}, Enum.team_t.TEAM_ALLIES)
		table.insert({}, Enum.team_t.TEAM_AXIS)
	else
		table.insert({}, Enum.team_t.TEAM_FREE)
	end
	if true then
		table.insert({}, Enum.team_t.TEAM_SPECTATOR)
	end
	return {}
end

function Lobby.TeamSelection.SwitchTeamClientAssignment(arg0)
	if arg0.controller or arg0.xuid == 0.000000 then
		local registerVal4 = Engine.GetXUID64(arg0.controller)
	end
	registerVal4 = Engine.GetLobbyClientNumByXUID(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME, registerVal4)
	if registerVal4 == LuaEnums.INVALID_CLIENT_INDEX then
		return 
	end
	local registerVal6 = Lobby.TeamSelection.GetAllowedTeams(registerVal4)
	for index9=1.000000, #, 1.000000 do
		if Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].switchTeam == registerVal6[index9] then
		else
		end
	end
	if arg0.selection == 0.000000 then
		if index9 <= 1.000000 then
		else
		else
			if #1.000000 <= index9 then
			else
			end
		end
	end
	Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].switchTeamType = LuaEnums.TEAM_ASSIGNMENT.CLIENT
	Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].controller = arg0.controller
	Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].xuid = registerVal4
	Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].switchTeam = registerVal6[(index9 + 1.000000)]
	local registerVal11 = {}
	registerVal11.controller = arg0.controller
	registerVal11.switchTeam = Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].switchTeam
	registerVal11.xuid = registerVal4
	Engine.LuiVM_Event("team_switch", registerVal11)
	if Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].team == Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].switchTeam then
		Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].switchTeamTime = Lobby.TeamSelection.DONT_SWITCH
	else
		local registerVal10 = Engine.milliseconds()
		Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].switchTeamTime = (Lobby.TeamSelection.TEAM_SWITCH_DELAY + registerVal10)
	end
end

function Lobby.TeamSelection.SwitchTeamHostAssignment(arg0)
	local registerVal4 = Engine.GetLobbyClientNumByXUID(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME, arg0.xuid)
	if registerVal4 == LuaEnums.INVALID_CLIENT_INDEX then
		return 
	end
	local registerVal6 = Lobby.TeamSelection.GetAllowedTeams(arg0.xuid)
	for index9=1.000000, #, 1.000000 do
		if Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].switchTeam == registerVal6[index9] then
		else
		end
	end
	if arg0.selection == 0.000000 then
		if index9 <= 1.000000 then
		else
		else
			if #1.000000 <= index9 then
			else
			end
		end
	end
	Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].switchTeamType = LuaEnums.TEAM_ASSIGNMENT.HOST
	Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].controller = arg0.controller
	Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].xuid = arg0.xuid
	Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].switchTeam = registerVal6[(index9 + 1.000000)]
	local registerVal11 = {}
	registerVal11.controller = arg0.controller
	registerVal11.switchTeam = Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].switchTeam
	registerVal11.xuid = arg0.xuid
	Engine.LuiVM_Event("team_switch", registerVal11)
	if Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].team == Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].switchTeam then
		Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].switchTeamTime = Lobby.TeamSelection.DONT_SWITCH
	else
		local registerVal10 = Engine.milliseconds()
		Lobby.TeamSelection.Clients[(registerVal4 + 1.000000)].switchTeamTime = (Lobby.TeamSelection.TEAM_SWITCH_DELAY + registerVal10)
	end
end

function Lobby.TeamSelection.SwitchTeam(arg0)
	local registerVal1 = Engine.GetGametypeSetting("teamAssignment")
	if registerVal1 == LuaEnums.TEAM_ASSIGNMENT.CLIENT or registerVal1 == LuaEnums.TEAM_ASSIGNMENT.AUTO then
		Lobby.TeamSelection.SwitchTeamClientAssignment(arg0)
	else
		local registerVal2 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
		if registerVal1 == LuaEnums.TEAM_ASSIGNMENT.HOST and registerVal2 then
			Lobby.TeamSelection.SwitchTeamHostAssignment(arg0)
		end
	end
end

function Lobby.TeamSelection.SendChanges()
	for index0=1.000000, #Lobby.TeamSelection.Clients, 1.000000 do
		local registerVal5 = Engine.milliseconds()
		if Lobby.TeamSelection.Clients[index0] and Lobby.TeamSelection.Clients[index0].switchTeamTime ~= Lobby.TeamSelection.DONT_SWITCH and Lobby.TeamSelection.Clients[index0].switchTeamTime < registerVal5 then
			Lobby.TeamSelection.Clients[index0].switchTeamTime = Lobby.TeamSelection.DONT_SWITCH
			if Lobby.TeamSelection.Clients[index0].switchTeamType == LuaEnums.TEAM_ASSIGNMENT.CLIENT then
				Engine.TeamSelection(Lobby.TeamSelection.Clients[index0].controller, Lobby.TeamSelection.Clients[index0].switchTeam)
			else
				if Lobby.TeamSelection.Clients[index0].switchTeamType == LuaEnums.TEAM_ASSIGNMENT.HOST then
					Engine.LobbyHostAssignTeamToClient(Lobby.TeamSelection.Clients[index0].xuid, Lobby.TeamSelection.Clients[index0].switchTeam)
				end
			end
		end
	end
end

function Lobby.TeamSelection.GameLobbyClientDataUpdate(arg0)
	if arg0.clients ~= nil then
	end
	for index2=1.000000, #Lobby.TeamSelection.Clients, 1.000000 do
		local registerVal8, registerVal9, registerVal10 = pairs(arg0.clients)
		for index11,value12 in registerVal8, registerVal9, registerVal10 do
			if value12.xuid ~= 0.000000 and Lobby.TeamSelection.Clients[index2].xuid == value12.xuid then
				Lobby.TeamSelection.Clients[index2].team = value12.team
				Lobby.TeamSelection.Clients[index2].switchTeam = Lobby.TeamSelection.Clients[index2].team
			else
			end
		end
	end
end

function Lobby.TeamSelection.AddToPrivateLobbyList(arg0, arg1, arg2)
	local registerVal3, registerVal4, registerVal5 = ipairs(arg2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if arg0.lobbyID == value7.lobbyID then
			local registerVal8 = LuaUtils.IsArenaMode()
			if registerVal8 then
				value7.lobbySkill = (value7.lobbySkill + arg0.arenaPoints)
			else
				value7.lobbySkill = (value7.lobbySkill + arg0.skillRating)
			end
			local registerVal10 = {}
			registerVal10.index = arg1
			registerVal10.xuid = arg0.xuid
			registerVal10.skill = arg0.skillRating
			registerVal10.arenaPoints = arg0.arenaPoints
			table.insert(value7.memberList, registerVal10)
			return 
		end
	end
	{}.lobbyID = arg0.lobbyID
	registerVal4 = LuaUtils.IsArenaMode()
	if registerVal4 then
		{}.lobbySkill = arg0.arenaPoints
	else
		{}.lobbySkill = arg0.skillRating
	end
	{}.memberList = {}
	local registerVal6 = {}
	registerVal6.index = arg1
	registerVal6.xuid = arg0.xuid
	registerVal6.skill = arg0.skillRating
	registerVal6.arenaPoints = arg0.arenaPoints
	table.insert({}.memberList, registerVal6)
	table.insert(arg2, {})
end

function Lobby.TeamSelection.AddAsIndividualToPrivateLobbyList(arg0, arg1, arg2)
	{}.lobbyID = arg0.lobbyID
	local registerVal4 = LuaUtils.IsArenaMode()
	if registerVal4 then
		{}.lobbySkill = arg0.arenaPoints
	else
		{}.lobbySkill = arg0.skillRating
	end
	{}.memberList = {}
	local registerVal6 = {}
	registerVal6.index = arg1
	registerVal6.xuid = arg0.xuid
	registerVal6.skill = arg0.skillRating
	registerVal6.arenaPoints = arg0.arenaPoints
	table.insert({}.memberList, registerVal6)
	table.insert(arg2, {})
end

function Lobby.TeamSelection.AddDummyToPrivateLobbyList(arg0, arg1)
	{}.lobbyID = -1.000000
	{}.lobbySkill = 0.000000
	{}.memberList = {}
	for index3=1.000000, arg0, 1.000000 do
		local registerVal9 = {}
		registerVal9.index = -1.000000
		registerVal9.xuid = 0.000000
		registerVal9.skill = 0.000000
		registerVal9.arenaPoints = 0.000000
		table.insert({}.memberList, registerVal9)
	end
	table.insert(arg1, {})
end

function Lobby.TeamSelection.CanSplitInProgress(arg0, arg1, arg2, arg3)
	local registerVal9, registerVal10, registerVal11 = ipairs(arg0)
	for index12,value13 in registerVal9, registerVal10, registerVal11 do
		if value13.team == Enum.team_t.TEAM_ALLIES then
		else
			if value13.team == Enum.team_t.TEAM_AXIS then
			else
				if value13.team == Enum.team_t.TEAM_FREE then
				else
				end
			end
		end
	end
	registerVal9 = math.floor(((arg2 - (0.000000 + 1.000000)) / 2.000000))
	if (0.000000 + 1.000000) < (0.000000 + 1.000000) then
	else
	end
	local function __FUNC_492D_(arg0, arg1)
		if arg1 >= arg0 then
		end
		return true
	end

	table.sort(arg1, __FUNC_492D_)
	registerVal11 = math.abs((((0.000000 + 1.000000) + (0.000000 + 1.000000)) - ((0.000000 + 1.000000) + (0.000000 + 1.000000))))
	local registerVal12, registerVal13, registerVal14 = ipairs(arg1)
	if ((0.000000 + 1.000000) + (0.000000 + 1.000000)) < ((0.000000 + 1.000000) + (0.000000 + 1.000000)) then
	else
	end
	if registerVal9 < (((0.000000 + 1.000000) + (0.000000 + 1.000000)) + value13.team) then
		return false
	end
	if registerVal9 < (((0.000000 + 1.000000) + (0.000000 + 1.000000)) + value13.team) then
		return false
	end
	registerVal12 = Dvar.tu9_canSplitInProgressUnbalancedTeams:get()
	registerVal12 = math.abs(((((0.000000 + 1.000000) + (0.000000 + 1.000000)) + value13.team) - (((0.000000 + 1.000000) + (0.000000 + 1.000000)) + value13.team)))
	if arg3 == true and registerVal12 == true and 1.000000 < registerVal12 and registerVal11 < registerVal12 then
		return false
	end
	return true
end

function Lobby.TeamSelection.VladSplit(arg0, arg1)
	local function __FUNC_4DD9_(arg0)
		local registerVal1 = {}
		registerVal1 = {1.000000, 2.000000, 2.000000, 1.000000}
		for index4=1.000000, 0.000000, 1.000000 do
			{}[index4] = registerVal1[1.000000]
			if #registerVal1[1.000000] < (1.000000 + 1.000000) then
			end
		end
		return {}
	end

	local function __FUNC_4E6A_(arg0, arg1)
		if arg1.lobbySkill >= arg0.lobbySkill then
		end
		return true
	end

	local function __FUNC_4ED4_(arg0, arg1)
		if #arg0.memberList == #arg1.memberList then
			return __FUNC_4E6A_(arg0, arg1)
		end
		if #arg1.memberList >= #arg0.memberList then
		end
		return true
	end

	local function __FUNC_4F84_(arg0, arg1)
		local registerVal6, registerVal7, registerVal8 = ipairs(arg0)
		for index9,value10 in registerVal6, registerVal7, registerVal8 do
			if #value10.memberList == 1.000000 then
				table.insert({}, index9)
			end
		end
		registerVal6, registerVal7, registerVal8 = ipairs(arg1)
		for index9,value10 in registerVal6, registerVal7, registerVal8 do
			if #value10.memberList == 1.000000 then
				table.insert({}, index9)
			end
		end
		local registerVal9, registerVal10, registerVal11 = ipairs({})
		for index12,value13 in registerVal9, registerVal10, registerVal11 do
			local registerVal14, registerVal15, registerVal16 = ipairs({})
			for index17,value18 in registerVal14, registerVal15, registerVal16 do
				delta1 = (((0.000000 + value10.lobbySkill) - (0.000000 + value10.lobbySkill)) - (2.000000 * (arg0[value13].lobbySkill - arg1[value18].lobbySkill)))
				local registerVal19 = math.abs(delta1)
				local registerVal20 = math.abs(((0.000000 + value10.lobbySkill) - (0.000000 + value10.lobbySkill)))
				if registerVal19 < registerVal20 then
					registerVal19 = {}
					registerVal19 = {value13, value18}
				end
			end
		end
		registerVal9 = math.abs(delta1)
		registerVal10 = math.abs(((0.000000 + value10.lobbySkill) - (0.000000 + value10.lobbySkill)))
		if registerVal9 < registerVal10 then
			registerVal9 = table.remove(arg0, registerVal19[1.000000])
			registerVal10 = table.remove(arg1, registerVal19[2.000000])
			table.insert(arg0, registerVal10)
			table.insert(arg1, registerVal9)
			return true
		end
		return false
	end

	local registerVal7, registerVal8, registerVal9 = ipairs(arg0)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
	end
	for index7=1.000000, 2.000000, 1.000000 do
		local registerVal11 = __FUNC_4DD9_((0.000000 + #value11.memberList))
		if index7 == 1.000000 then
			table.sort(arg0, __FUNC_4E6A_)
		else
			table.sort(arg0, __FUNC_4ED4_)
		end
		local registerVal17, registerVal18, registerVal19 = ipairs(arg0)
		for index20,value21 in registerVal17, registerVal18, registerVal19 do
			if registerVal11[(1.000000 + 1.000000)] == 1.000000 then
				table.insert({}, value21)
			else
				table.insert({}, value21)
			end
			for index24=0.000000, (#value21.memberList - 1.000000), 1.000000 do
				if #registerVal11[(1.000000 + 1.000000)] < ((1.000000 + 1.000000) + 1.000000) then
				else
					registerVal11[((1.000000 + 1.000000) + 1.000000)] = 0.000000
				end
			end
		end
		registerVal17 = math.abs(((0.000000 + #value21.memberList) - (0.000000 + #value21.memberList)))
		if arg1 < ((0.000000 + #value21.memberList) + (0.000000 + #value21.memberList)) then
			registerVal18 = {}
			registerVal18.isBalanced = false
			registerVal18.canBalance = false
			registerVal19 = {}
			registerVal19 = {{}, {}}
			registerVal18.teams = registerVal19
			registerVal19 = {}
			registerVal19 = {(0.000000 + #value21.memberList), (0.000000 + #value21.memberList)}
			registerVal18.counts = registerVal19
			return registerVal18
		else
			if registerVal17 <= 1.000000 then
				__FUNC_4F84_({}, {})
				if 0.500000 < Lobby.TeamSelection.random then
					registerVal18 = {}
					registerVal18.isBalanced = true
					registerVal18.canBalance = true
					registerVal19 = {}
					registerVal19 = {{}, {}}
					registerVal18.teams = registerVal19
					registerVal19 = {}
					registerVal19 = {(0.000000 + #value21.memberList), (0.000000 + #value21.memberList)}
					registerVal18.counts = registerVal19
					return registerVal18
				else
					registerVal18 = {}
					registerVal18.isBalanced = true
					registerVal18.canBalance = true
					registerVal19 = {}
					registerVal19 = {{}, {}}
					registerVal18.teams = registerVal19
					registerVal19 = {}
					registerVal19 = {(0.000000 + #value21.memberList), (0.000000 + #value21.memberList)}
					registerVal18.counts = registerVal19
					return registerVal18
				else
					if index7 == 2.000000 then
						if registerVal17 > ((arg1 - (0.000000 + #value21.memberList)) - (0.000000 + #value21.memberList)) then
						end
						registerVal19 = {}
						registerVal19.isBalanced = false
						registerVal19.canBalance = true
						local registerVal20 = {}
						registerVal20 = {{}, {}}
						registerVal19.teams = registerVal20
						registerVal20 = {}
						registerVal20 = {(0.000000 + #value21.memberList), (0.000000 + #value21.memberList)}
						registerVal19.counts = registerVal20
						return registerVal19
					end
				end
			end
		end
	end
end

function Lobby.TeamSelection.AutoSplitTeam(arg0, arg1)
	local registerVal2 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal3 = CoDShared.IsGametypeTeamBased()
	if not registerVal3 then
		registerVal3, registerVal4, registerVal5 = ipairs(registerVal2.sessionClients)
		for index6,value7 in registerVal3, registerVal4, registerVal5 do
			if value7.team ~= Enum.team_t.TEAM_SPECTATOR then
				Engine.LobbyHostAssignTeamToClient(value7.xuid, Enum.team_t.TEAM_FREE)
			end
		end
		return true
	end
	for index4=#registerVal2.sessionClients, 1.000000, -1.000000 do
		if registerVal2.sessionClients[index4].team == Enum.team_t.TEAM_SPECTATOR then
			table.remove(registerVal2.sessionClients, index4)
		end
	end
	registerVal4 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	if (0.000000 + 1.000000) == registerVal4 then
		return true
	end
	registerVal5 = LobbyData.GetCurrentMenuTarget()
	if registerVal5.lobbyMode == Enum.LobbyMode.LOBBY_MODE_CUSTOM then
		local registerVal6, registerVal7, registerVal8 = ipairs(registerVal2.sessionClients)
		for index9,value10 in registerVal6, registerVal7, registerVal8 do
			Lobby.TeamSelection.AddAsIndividualToPrivateLobbyList(value10, index9, {})
		end
	else
		registerVal6, registerVal7, registerVal8 = ipairs(registerVal2.sessionClients)
		for index9,value10 in registerVal6, registerVal7, registerVal8 do
			Lobby.TeamSelection.AddToPrivateLobbyList(value10, index9, {})
		end
	end
	registerVal6 = Engine.GetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_GAME)
	registerVal7 = Lobby.TeamSelection.VladSplit({}, registerVal6)
	if arg1 then
		LuaUtils.LogQoS("teamsplit/input", {})
		LuaUtils.LogQoS("teamsplit/output", registerVal7)
	end
	if arg1 then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.TeamSelection.AutoSplitTeam start
")
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "gamelobby data:
")
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "-----------------------------------------
")
		registerVal8, registerVal9, registerVal10 = ipairs(registerVal2.sessionClients)
		for index11,value12 in registerVal8, registerVal9, registerVal10 do
			local registerVal16 = tostring(index11)
			local registerVal20 = tostring(value12.lobbyID)
			local registerVal22 = tostring(value12.simpleLobbyID)
			local registerVal24 = tostring(value12.skillRating)
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("(" .. registerVal16 .. ") " .. value12.gamertag .. " - lobbyID(" .. registerVal20 .. ") -- simpleLobbyID: " .. registerVal22 .. " -- skill: " .. registerVal24 .. "
"))
		end
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "-----------------------------------------
")
	end
	if arg1 then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Team Assignment:
")
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "-----------------------------------------
")
	end
	registerVal8, registerVal9, registerVal10 = ipairs(registerVal7.teams[1.000000])
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		local registerVal14, registerVal15, registerVal16 = ipairs(value12.memberList)
		for index17,value18 in registerVal14, registerVal15, registerVal16 do
			if arg1 then
				local registerVal23 = tostring(index11)
				local registerVal27 = tostring(registerVal2.sessionClients[value18.index].lobbyID)
				local registerVal29 = tostring(registerVal2.sessionClients[value18.index].simpleLobbyID)
				local registerVal31 = Lobby.TeamSelection.TeamIdToString(Enum.team_t.TEAM_ALLIES)
				local registerVal33 = tostring(value12.lobbySkill)
				local registerVal35 = tostring(registerVal2.sessionClients[value18.index].skillRating)
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("(" .. registerVal23 .. ") " .. registerVal2.sessionClients[value18.index].gamertag .. " - lobbyID(" .. registerVal27 .. ") -- simpleLobbyID: " .. registerVal29 .. " -- team: " .. registerVal31 .. " -- lobbySkill: " .. registerVal33 .. " -- skill: " .. registerVal35 .. "
"))
			end
			Engine.LobbyHostAssignTeamToClient(registerVal2.sessionClients[value18.index].xuid, Enum.team_t.TEAM_ALLIES)
		end
	end
	registerVal8, registerVal9, registerVal10 = ipairs(registerVal7.teams[2.000000])
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		registerVal14, registerVal15, registerVal16 = ipairs(value12.memberList)
		for index17,value18 in registerVal14, registerVal15, registerVal16 do
			if arg1 then
				registerVal23 = tostring(index11)
				registerVal27 = tostring(registerVal2.sessionClients[value18.index].lobbyID)
				registerVal29 = tostring(registerVal2.sessionClients[value18.index].simpleLobbyID)
				registerVal31 = Lobby.TeamSelection.TeamIdToString(Enum.team_t.TEAM_AXIS)
				registerVal33 = tostring(value12.lobbySkill)
				registerVal35 = tostring(registerVal2.sessionClients[value18.index].skillRating)
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("(" .. registerVal23 .. ") " .. registerVal2.sessionClients[value18.index].gamertag .. " - lobbyID(" .. registerVal27 .. ") -- simpleLobbyID: " .. registerVal29 .. " -- team: " .. registerVal31 .. " -- lobbySkill: " .. registerVal33 .. " -- skill: " .. registerVal35 .. "
"))
			end
			Engine.LobbyHostAssignTeamToClient(registerVal2.sessionClients[value18.index].xuid, Enum.team_t.TEAM_AXIS)
		end
	end
	if arg1 then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "-----------------------------------------
")
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.TeamSelection.AutoSplitTeam end
")
	end
	if arg0 == true and registerVal7.isBalanced == false then
		if arg1 then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Could not create balanced teams.
")
		end
		return false
	end
	return true
end

function Lobby.TeamSelection.CanFitMaxPartySize(arg0, arg1, arg2)
	if arg0.probedXuid == nil or arg0.probedXuid == LuaEnums.INVALID_XUID then
		return Enum.JoinResult.JOIN_RESULT_SUCCESS
	end
	local registerVal5, registerVal6, registerVal7 = ipairs(arg1.sessionClients)
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		if value9.xuid == arg0.probedXuid then
		else
		end
	end
	if value9.lobbyID == nil then
		return Enum.JoinResult.JOIN_RESULT_SUCCESS
	end
	if not Engine.LobbyGetReservationData then
		registerVal6, registerVal7, registerVal8 = ipairs(arg1.sessionClients)
		for index9,value10 in registerVal6, registerVal7, registerVal8 do
			if value10.lobbyID == lobbyID then
			end
		end
		if arg2 < ((0.000000 + 1.000000) + #arg0.members) then
			return Enum.JoinResult.JOIN_RESULT_NO_PARTIES
		else
			registerVal8 = tostring(#arg1.sessionClients)
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("^5 #gamelobby.sessionClients: " .. registerVal8 .. ".
"))
			registerVal5 = Engine.milliseconds()
			registerVal6 = Dvar.lobbyProbedXuidOverride:get()
			registerVal7, registerVal8, registerVal9 = ipairs(arg1.sessionClients)
			for index10,value11 in registerVal7, registerVal8, registerVal9 do
				if value11.probedXuid ~= LuaEnums.INVALID_XUID and value11.probedXuidTimestamp < (registerVal5 + registerVal6) and value11.probedXuid == arg0.probedXuid then
					local registerVal15 = tostring(value11.xuid)
					Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("^6 probedXuid client.xuid: " .. registerVal15 .. "
"))
				else
					if value11.lobbyID == value9.lobbyID then
						registerVal15 = tostring(value11.xuid)
						Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("^6 in lobby client.xuid: " .. registerVal15 .. "
"))
					end
				end
			end
			registerVal7 = Engine.LobbyGetReservationData()
			registerVal9, registerVal10, registerVal11 = ipairs(registerVal7.status)
			for index12,value13 in registerVal9, registerVal10, registerVal11 do
				if value13.probedXuid == arg0.probedXuid then
					local registerVal17 = tostring(value13.xuid)
					Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("^6 in reserve client.xuid: " .. registerVal17 .. "
"))
				end
			end
			if arg2 < (((0.000000 + 1.000000) + ((0.000000 + 1.000000) + 1.000000)) + #arg0.members) then
				return Enum.JoinResult.JOIN_RESULT_NO_PARTIES
			end
		end
	end
	return Enum.JoinResult.JOIN_RESULT_SUCCESS
end

function Lobby.TeamSelection.OnCanFitLobbys(arg0)
	LuaUtils.LogQoS("can_fit/input", arg0)
	local registerVal2 = Engine.GetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal3 = Engine.GetPlaylistID()
	local registerVal4 = Engine.GetPlaylistMaxPartySize(registerVal3)
	local registerVal5 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal6 = Engine.GetLobbyHostXuid(Enum.LobbyType.LOBBY_TYPE_GAME)
	if arg0.lobbyHostXuid ~= nil and arg0.lobbyHostXuid ~= LuaEnums.INVALID_XUID and arg0.lobbyHostXuid == registerVal6 then
		return Enum.JoinResult.JOIN_RESULT_SUCCESS
	end
	local registerVal7 = Engine.IsMultiplayerGame()
	registerVal7 = Lobby.TeamSelection.CanFitMaxPartySize(arg0, registerVal5, registerVal4)
	if registerVal7 and registerVal7 ~= Enum.JoinResult.JOIN_RESULT_SUCCESS then
		return registerVal7
	end
	registerVal7 = CoDShared.IsTeamBasedGame()
	registerVal7 = Engine.IsZombiesGame()
	registerVal7 = Engine.IsCampaignGame()
	if registerVal7 ~= false and not arg0.lobbyHostXuid or registerVal7 then
		registerVal7 = Dvar.tu2_skipMaxClientCheck:get()
		if registerVal7 == 0.000000 then
			local registerVal8, registerVal9, registerVal10 = ipairs(arg0.lobbys)
			for index11,value12 in registerVal8, registerVal9, registerVal10 do
			end
			registerVal9 = LobbyData.GetCurrentMenuTarget()
			if registerVal9.maxClients < (#registerVal5.sessionClients + (0.000000 + value12)) then
				return Enum.JoinResult.JOIN_RESULT_LOBBY_FULL
			end
			if registerVal2 < (#registerVal5.sessionClients + (0.000000 + value12)) then
				return Enum.JoinResult.JOIN_RESULT_LOBBY_FULL
			end
		end
		return Enum.JoinResult.JOIN_RESULT_SUCCESS
	end
	registerVal8 = Engine.IsInGame()
	if registerVal8 then
		registerVal9, registerVal10, registerVal11 = ipairs(arg0.lobbys)
		for index12,value13 in registerVal9, registerVal10, registerVal11 do
			table.insert({}, value13)
		end
		registerVal9 = Lobby.TeamSelection.CanSplitInProgress(registerVal5.sessionClients, {}, registerVal2, true)
		LuaUtils.LogQoS("can_fit/result", registerVal9)
		if registerVal9 then
			return Enum.JoinResult.JOIN_RESULT_SUCCESS
		end
		return Enum.JoinResult.JOIN_RESULT_LOBBY_FULL
	else
		registerVal8, registerVal9, registerVal10 = ipairs(registerVal5.sessionClients)
		for index11,value12 in registerVal8, registerVal9, registerVal10 do
			Lobby.TeamSelection.AddToPrivateLobbyList(value12, index11, {})
		end
		registerVal8, registerVal9, registerVal10 = ipairs(arg0.lobbys)
		for index11,value12 in registerVal8, registerVal9, registerVal10 do
			Lobby.TeamSelection.AddDummyToPrivateLobbyList(value12, {})
		end
		registerVal9 = Dvar.lobbyAdvertiseTeamSizeMax:get()
		if arg0.members ~= nil and registerVal9 < #arg0.members then
			LuaUtils.LogQoS("can_fit/result", false)
			return Enum.JoinResult.JOIN_RESULT_LOBBY_FULL
		end
		registerVal8 = Lobby.TeamSelection.VladSplit({}, registerVal2)
		if registerVal8.isBalanced then
		else
			if registerVal8.canBalance then
			end
		end
		LuaUtils.LogQoS("can_fit/result", true)
		if true then
			return Enum.JoinResult.JOIN_RESULT_SUCCESS
		end
		return Enum.JoinResult.JOIN_RESULT_LOBBY_FULL
	end
	return Enum.JoinResult.JOIN_RESULT_LOBBY_FULL
end

function Lobby.TeamSelection.ClientJoined(arg0)
	local registerVal1 = Lobby.TeamSelection.ShouldAssignToTeam(arg0)
	if not registerVal1 then
		return 
	end
	local registerVal2 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal2 == nil then
		return 
	end
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.TeamSelection.ClientJoined start.
")
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby List
")
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "-----------------------------------------
")
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2.sessionClients)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if arg0.xuid ~= value7.xuid then
			local registerVal11 = tostring(index6)
			local registerVal15 = tostring(value7.lobbyID)
			local registerVal17 = tostring(value7.simpleLobbyID)
			local registerVal19 = Lobby.TeamSelection.TeamIdToString(value7.team)
			local registerVal21 = tostring(value7.score)
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("(" .. registerVal11 .. ") " .. value7.gamertag .. " - lobbyID(" .. registerVal15 .. ") -- simpleLobbyID: " .. registerVal17 .. " -- team: " .. registerVal19 .. " -- score: " .. registerVal21 .. ".
"))
		end
	end
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "-----------------------------------------
")
	registerVal4, registerVal5, registerVal6 = ipairs(registerVal2.sessionClients)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if arg0.xuid == value8.xuid then
		else
		end
	end
	if value8 == nil then
		return 
	end
	if arg0.lobbyMode == Enum.LobbyMode.LOBBY_MODE_CUSTOM then
		registerVal4 = Engine.GetGametypeSetting("teamAssignment")
		if registerVal4 ~= LuaEnums.TEAM_ASSIGNMENT.AUTO then
			registerVal5 = CoDShared.IsGametypeTeamBased()
			if value8.team == Enum.team_t.TEAM_FREE and registerVal5 then
				Engine.LobbyHostAssignTeamToClient(arg0.xuid, Enum.team_t.TEAM_ALLIES)
			end
			return 
		end
		registerVal5 = Engine.GetLobbyPregameState()
		if registerVal5 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_IDLE then
		end
		if true == true then
			local registerVal7 = Engine.GetTeams()
			local registerVal9, registerVal10, registerVal11 = pairs(registerVal7.clientTeams)
			for index12,value13 in registerVal9, registerVal10, registerVal11 do
				if not {}[value13.team] then
					{}[value13.team] = {}
				end
				table.insert({}[value13.team], value13)
			end
			if {}[Enum.team_t.TEAM_ALLIES] then
			end
			if {}[Enum.team_t.TEAM_AXIS] then
			end
			if #0.000000 == #0.000000 then
				registerVal11 = math.random(0.000000, 1.000000)
				if registerVal11 == 1.000000 then
					Engine.LobbyHostAssignTeamToClient(arg0.xuid, Enum.team_t.TEAM_ALLIES)
				else
					Engine.LobbyHostAssignTeamToClient(arg0.xuid, Enum.team_t.TEAM_AXIS)
				else
					if #0.000000 < #0.000000 then
						Engine.LobbyHostAssignTeamToClient(arg0.xuid, Enum.team_t.TEAM_AXIS)
					else
						Engine.LobbyHostAssignTeamToClient(arg0.xuid, Enum.team_t.TEAM_ALLIES)
					end
				end
			end
		end
	end
	registerVal4, registerVal5, registerVal6 = ipairs(registerVal2.sessionClients)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if value8.xuid ~= value8.xuid and value8.lobbyID == value8.lobbyID then
			Engine.LobbyHostAssignTeamToClient(value8.xuid, value8.team)
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Joining client is part of a party.
")
			local registerVal14 = tostring(value8.lobbyID)
			local registerVal16 = tostring(value8.simpleLobbyID)
			local registerVal18 = Lobby.TeamSelection.TeamIdToString(value8.team)
			local registerVal20 = tostring(value8.score)
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Adding joining client " .. value8.gamertag .. " - lobbyID(" .. registerVal14 .. ") -- simpleLobbyID: " .. registerVal16 .. " -- team: " .. registerVal18 .. " -- score: " .. registerVal20 .. ".
"))
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.TeamSelection.ClientJoined end.
")
			return 
		end
	end
	registerVal7 = CoDShared.IsGametypeTeamBased()
	if registerVal7 then
		registerVal7, registerVal8, registerVal9 = ipairs(registerVal2.sessionClients)
		for index10,value11 in registerVal7, registerVal8, registerVal9 do
			if value8.xuid ~= value11.xuid then
				if value11.team == Enum.team_t.TEAM_ALLIES then
				else
					if value11.team == Enum.team_t.TEAM_AXIS then
					end
				end
			end
		end
		if (0.000000 + 1.000000) < (0.000000 + 1.000000) then
		end
	end
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Clients in session: " .. #registerVal2.sessionClients .. ", teamAlliesCount: " .. (0.000000 + 1.000000) .. ", teamAxisCount:" .. (0.000000 + 1.000000) .. ".
"))
	local registerVal12 = tostring(value8.lobbyID)
	registerVal14 = tostring(value8.simpleLobbyID)
	registerVal16 = tostring(Enum.team_t.TEAM_AXIS)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Adding joining client " .. value8.gamertag .. " - lobbyID(" .. registerVal12 .. ") -- simpleLobbyID: " .. registerVal14 .. " -- team: " .. registerVal16 .. ".
"))
	Engine.LobbyHostAssignTeamToClient(value8.xuid, Enum.team_t.TEAM_AXIS)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Lobby.TeamSelection.ClientJoined end.
")
end

function Lobby.TeamSelection.GametypeSettingsChange()
	local registerVal0 = CoDShared.IsGametypeTeamBased()
	local registerVal1 = Engine.GetGametypeSetting("allowspectating")
	if registerVal1 ~= 1.000000 then
	end
	local registerVal2 = Engine.GetGametypeSetting("teamAssignment")
	if Lobby.TeamSelection.gameSetting.teamBased == registerVal0 then
	end
	if Lobby.TeamSelection.gameSetting.allowSpectating == true then
	end
	if Lobby.TeamSelection.gameSetting.teamAssignment == registerVal2 then
	end
	if true == false and true == false and true == false then
		return 
	end
	Engine.LuiVM_Event("update_team_selection_buttons", {})
	if true and registerVal0 == false then
		Lobby.TeamSelection.ClearTeam(Enum.team_t.TEAM_ALLIES)
		Lobby.TeamSelection.ClearTeam(Enum.team_t.TEAM_AXIS)
	end
	if registerVal2 == LuaEnums.TEAM_ASSIGNMENT.AUTO then
		Lobby.TeamSelection.ClearTeam(Enum.team_t.TEAM_SPECTATOR)
	else
		local registerVal6 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
		local registerVal7, registerVal8, registerVal9 = ipairs(registerVal6.sessionClients)
		for index10,value11 in registerVal7, registerVal8, registerVal9 do
			if value11.team == Enum.team_t.TEAM_SPECTATOR then
				Engine.LobbyHostAssignTeamToClient(value11.xuid, Enum.team_t.TEAM_ALLIES)
			end
		end
	end
	registerVal6 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal2 == LuaEnums.TEAM_ASSIGNMENT.AUTO then
		registerVal7, registerVal8, registerVal9 = ipairs(registerVal6.sessionClients)
		for index10,value11 in registerVal7, registerVal8, registerVal9 do
			if value11.team ~= Enum.team_t.TEAM_SPECTATOR then
				Engine.LobbyHostAssignTeamToClient(value11.xuid, Enum.team_t.TEAM_FREE)
			end
		end
	else
		registerVal7, registerVal8, registerVal9 = ipairs(registerVal6.sessionClients)
		for index10,value11 in registerVal7, registerVal8, registerVal9 do
			if value11.team == Enum.team_t.TEAM_FREE then
				Engine.LobbyHostAssignTeamToClient(value11.xuid, Enum.team_t.TEAM_ALLIES)
			end
		end
	end
	Lobby.TeamSelection.StoreGamesetting()
end

function Lobby.TeamSelection.Pump()
	Lobby.TeamSelection.SendChanges()
end

function Lobby.TeamSelection.Clear()
	local registerVal0 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal0 then
		Engine.ClearTeamData()
	end
	for index0=1.000000, LuaEnums.MAX_CLIENTS, 1.000000 do
		{}.team = Enum.team_t.TEAM_FREE
		{}.switchTeam = Enum.team_t.TEAM_FREE
		{}.switchTeamTime = Lobby.TeamSelection.DONT_SWITCH
		Lobby.TeamSelection.Clients[index0] = {}
	end
end

function Lobby.TeamSelection.Init()
	Lobby.TeamSelection.Clear()
end

function TeamSelectionTest()
	local function __FUNC_90B2_(arg0, arg1)
		for index3=1.000000, arg0, 1.000000 do
			{}[index3] = 0.000000
		end
		local registerVal5 = {}
		registerVal5.lobbySkill = arg1
		registerVal5.memberList = {}
		table.insert({}, registerVal5)
	end

	__FUNC_90B2_(1.000000, 1.000000)
	__FUNC_90B2_(1.000000, 0.500000)
	__FUNC_90B2_(1.000000, 0.500000)
	__FUNC_90B2_(1.000000, 0.200000)
	__FUNC_90B2_(1.000000, -0.200000)
	__FUNC_90B2_(1.000000, 0.100000)
	__FUNC_90B2_(1.000000, 1.100000)
	__FUNC_90B2_(2.000000, 2.000000)
	__FUNC_90B2_(3.000000, 1.000000)
	local registerVal2 = Lobby.TeamSelection.VladSplit({}, 12.000000)
end


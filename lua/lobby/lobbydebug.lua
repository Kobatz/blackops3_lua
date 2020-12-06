-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Lobby.Process.LobbyProcess")
require("lua.Shared.LobbyData")
Lobby.Debug = {}
local registerVal1 = {}
registerVal1.BLACK = "^0"
registerVal1.RED = "^1"
registerVal1.GREEN = "^2"
registerVal1.YELLOW = "^3"
registerVal1.BLUE = "^4"
registerVal1.CYAN = "^5"
registerVal1.MAGENTA = "^6"
registerVal1.WHITE = "^7"
registerVal1.MYTEAM = "^8"
registerVal1.ENEMYTEAM = "^9"
Lobby.Debug.COLOR = registerVal1
Lobby.Debug.jbEvent = LuaEnums.JB_MATCHMAKING_EVENT.START
local registerVal0 = Engine.IsShipBuild()
if registerVal0 then
	Lobby.Debug.gamertagDebugVisListOrbis = {}
	Lobby.Debug.gamertagDebugVisListDurango = {}
	Lobby.Debug.lobbyValidateListOrbis = {}
	registerVal1 = {}
	registerVal1 = {"2 Dev 60168782"}
	Lobby.Debug.lobbyValidateListDurango = registerVal1
	Lobby.Debug.lobbySQJListOrbis = {}
	Lobby.Debug.lobbySQJListDurango = {}
else
	Lobby.Debug.gamertagDebugVisListOrbis = {}
	Lobby.Debug.gamertagDebugVisListDurango = {}
	Lobby.Debug.lobbyValidateListOrbis = {}
	Lobby.Debug.lobbyValidateListDurango = {}
	Lobby.Debug.lobbySQJListOrbis = {}
	Lobby.Debug.lobbySQJListDurango = {}
end
function Lobby.Debug.EnableForPrimaryController(arg0)
	local registerVal1 = Engine.IsDedicatedServer()
	if registerVal1 then
		return false
	end
	registerVal1 = Engine.GetPrimaryController()
	if registerVal1 == LuaEnums.INVALID_CONTROLLER_PORT or #LuaEnums.INVALID_CONTROLLER_PORT == 0.000000 then
		return false
	end
	local registerVal2 = Engine.GetGamertagForController(registerVal1)
	if registerVal2 == nil or registerVal2 == "" then
		return false
	end
	local registerVal3, registerVal4, registerVal5 = pairs(arg0)
	if registerVal2 ==  then
		return true
	end
	return false
end

function Lobby.Debug.LobbyDebugVisEnable()
	local registerVal0 = Engine.GetCurrentPlatform()
	if registerVal0 == "orbis" then
		registerVal0 = Lobby.Debug.EnableForPrimaryController(Lobby.Debug.gamertagDebugVisListOrbis)
		return 
		registerVal0 = Engine.GetCurrentPlatform()
		registerVal0 = Lobby.Debug.EnableForPrimaryController(Lobby.Debug.gamertagDebugVisListDurango)
		if not registerVal0 and registerVal0 == "durango" and not registerVal0 then
			return 
		end
	end
	Dvar.ui_lobbyDebugVis:set(1.000000)
end

registerVal1 = {}
registerVal1.Enabled = false
registerVal1.LastScreen = 0.000000
registerVal1.CheckTime = 0.000000
registerVal1.CheckDelay = 3000.000000
registerVal1.CheckInterval = 1000.000000
Lobby.Debug.validateInfo = registerVal1
function Lobby.Debug.LobbyValidateEnable()
	local registerVal0 = Engine.GetCurrentPlatform()
	if registerVal0 == "orbis" then
		registerVal0 = Lobby.Debug.EnableForPrimaryController(Lobby.Debug.lobbyValidateListOrbis)
		return 
		registerVal0 = Engine.GetCurrentPlatform()
		registerVal0 = Lobby.Debug.EnableForPrimaryController(Lobby.Debug.lobbyValidateListDurango)
		if not registerVal0 and registerVal0 == "durango" and not registerVal0 then
			return 
		end
	end
	Lobby.Debug.validateInfo.Enabled = true
end

function Lobby.Debug.LobbySQJEnable()
	local registerVal0 = Engine.GetCurrentPlatform()
	if registerVal0 == "orbis" then
		registerVal0 = Lobby.Debug.EnableForPrimaryController(Lobby.Debug.lobbySQJListOrbis)
		return 
		registerVal0 = Engine.GetCurrentPlatform()
		registerVal0 = Lobby.Debug.EnableForPrimaryController(Lobby.Debug.lobbySQJListDurango)
		if not registerVal0 and registerVal0 == "durango" and not registerVal0 then
			return 
		end
	end
	Dvar.ui_lobbyDebugSessionSQJ:set(1.000000)
end

function Lobby.Debug.LobbyValidate()
	local registerVal0 = Engine.IsDedicatedServer()
	if registerVal0 then
		return 
	end
	if Lobby.Debug.validateInfo.Enabled == false then
		return 
	end
	registerVal0 = Lobby.ProcessQueue.IsQueueEmpty()
	if not registerVal0 then
		return 
	end
	registerVal0 = Engine.GetLobbyUIScreen()
	if registerVal0 == 0.000000 then
		return 
	end
	if Lobby.Debug.validateInfo.LastScreen ~= registerVal0 then
		Lobby.Debug.validateInfo.LastScreen = registerVal0
		local registerVal2 = Engine.milliseconds()
		Lobby.Debug.validateInfo.CheckTime = (registerVal2 + Lobby.Debug.validateInfo.CheckDelay)
	end
	registerVal2 = Engine.milliseconds()
	if registerVal2 < Lobby.Debug.validateInfo.CheckTime then
		return 
	end
	registerVal2 = Engine.milliseconds()
	Lobby.Debug.validateInfo.CheckTime = (registerVal2 + Lobby.Debug.validateInfo.CheckInterval)
	local registerVal1 = LobbyData:UITargetFromId(registerVal0)
	if registerVal1 == nil then
		return 
	end
	registerVal2 = Engine.GetLobbyNetworkMode()
	local registerVal3 = Engine.GetLobbyMainMode()
	local registerVal4 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal5 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal6 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal7 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal8 = Engine.GetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal9 = Engine.GetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal0 ~= LobbyData.UITargets.UI_MAIN.id and registerVal0 ~= LobbyData.UITargets.UI_MODESELECT.id and registerVal1.networkMode ~= registerVal2 then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, (Lobby.Debug.COLOR.MAGENTA .. "Lobby.Debug.LobbyValidate: Network Mode mismatch. uiInfo.networkMode(" .. registerVal1.networkMode .. ") ~= networkMode(" .. registerVal2 .. ").
"))
	end
	if registerVal1.mainMode ~= registerVal3 then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, (Lobby.Debug.COLOR.MAGENTA .. "Lobby.Debug.LobbyValidate: Main Mode mismatch. uiInfo.mainMode(" .. registerVal1.mainMode .. ") ~= mainMode(" .. registerVal3 .. ").
"))
	end
	if registerVal1.isPrivate ~= registerVal4 then
		local registerVal14 = tostring(registerVal1.isPrivate)
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, string.format((Lobby.Debug.COLOR.MAGENTA .. "Lobby.Debug.LobbyValidate: Private active mismatch. uiInfo.isPrivate(%s) ~= privateActive(%s).
"), registerVal14, tostring(registerVal4)))
	end
	if registerVal1.isGame ~= registerVal5 then
		registerVal14 = tostring(registerVal1.isGame)
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, string.format((Lobby.Debug.COLOR.MAGENTA .. "Lobby.Debug.LobbyValidate: Game active mismatch. uiInfo.isGame(%s) ~= gameActive(%s).
"), registerVal14, tostring(registerVal5)))
	end
	if registerVal1.lobbyType == Enum.LobbyType.LOBBY_TYPE_INVALID then
		if registerVal6 ~= 0.000000 or registerVal7 ~= 0.000000 then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, (Lobby.Debug.COLOR.MAGENTA .. "Lobby.Debug.LobbyValidate: LobbyType LOBBY_TYPE_INVALID player count: privateClientCount(" .. registerVal6 .. ") ~= 0 or gameClientCount(" .. registerVal7 .. ") ~= 0.
"))
		else
			if registerVal1.lobbyType == Enum.LobbyType.LOBBY_TYPE_PRIVATE then
				if registerVal6 == 0.000000 or registerVal7 ~= 0.000000 then
					Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, (Lobby.Debug.COLOR.MAGENTA .. "Lobby.Debug.LobbyValidate: LobbyType LOBBY_TYPE_PRIVATE player count: privateClientCount(" .. registerVal6 .. ") == 0 or gameClientCount(" .. registerVal7 .. ") ~= 0.
"))
				end
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, (Lobby.Debug.COLOR.MAGENTA .. "Lobby.Debug.LobbyValidate: LobbyType LOBBY_TYPE_PRIVATE maxClient mismatch. uiInfo.maxClients(" .. registerVal1.maxClients .. ") < privateMaxClients(" .. registerVal8 .. ").
"))
				if registerVal1.maxClients < registerVal8 and registerVal1.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME then
					if registerVal6 == 0.000000 or registerVal7 == 0.000000 then
						Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, (Lobby.Debug.COLOR.MAGENTA .. "Lobby.Debug.LobbyValidate: LobbyType LOBBY_TYPE_GAME player count: privateClientCount(" .. registerVal6 .. ") == 0 or gameClientCount(" .. registerVal7 .. ") == 0.
"))
					end
					if registerVal1.maxClients < registerVal9 then
						Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, (Lobby.Debug.COLOR.MAGENTA .. "Lobby.Debug.LobbyValidate: LobbyType LOBBY_TYPE_GAME maxClient mismatch. uiInfo.maxClients(" .. registerVal1.maxClients .. ") < gameMaxClients(" .. registerVal9 .. ").
"))
					end
				end
			end
		end
	end
end

registerVal1 = {}
registerVal1.searchStage = 0.000000
registerVal1.results = {}
registerVal1.joinOrder = 0.000000
Lobby.Debug.sessionSQJ = registerVal1
function Lobby.Debug.SessionSQJEnabled()
	local registerVal0 = Dvar.ui_lobbyDebugSessionSQJ:get()
	if registerVal0 == false then
		return false
	end
	return true
end

function Lobby.Debug.SessionSQJClearModels()
	local registerVal0 = Lobby.Debug.SessionSQJEnabled()
	if not registerVal0 then
		return 
	end
	local function __FUNC_2B61_(arg0, arg1, arg2)
		local registerVal3 = Engine.GetModel(arg0, arg1)
		local registerVal4 = Engine.GetModelValue(registerVal3)
		Engine.SetModelValue(registerVal3, arg2)
		return registerVal4
	end

	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModel(registerVal2, "debug")
	if not registerVal1 then
		return 
	end
	registerVal2 = Engine.GetModel(registerVal1, "sessionSQJ")
	if not registerVal2 then
		return 
	end
	local registerVal3 = Engine.GetModel(registerVal2, "searchStage")
	if not registerVal3 then
		return 
	end
	local registerVal4 = __FUNC_2B61_(registerVal2, "searchStage", 0.000000)
	local registerVal5 = Engine.GetModel(registerVal2, "results")
	for index6=1.000000, registerVal4, 1.000000 do
		local registerVal10 = Engine.GetModel(registerVal5, tostring(index6))
		local registerVal11 = __FUNC_2B61_(registerVal10, "numResults", 0.000000)
		if 0.000000 < registerVal11 then
			local registerVal12 = Engine.GetModel(registerVal10, "data")
			for index13=1.000000, registerVal11, 1.000000 do
				local registerVal17 = Engine.GetModel(registerVal12, tostring(index13))
				__FUNC_2B61_(registerVal17, "xuid", 0.000000)
				__FUNC_2B61_(registerVal17, "xuidstr", "")
				__FUNC_2B61_(registerVal17, "publicIPAddress", "")
				__FUNC_2B61_(registerVal17, "privateIPAddress", "")
				__FUNC_2B61_(registerVal17, "natType", "")
				__FUNC_2B61_(registerVal17, "ping", "")
				__FUNC_2B61_(registerVal17, "status", "")
			end
		end
	end
end

function Lobby.Debug.SessionSQJClear()
	local registerVal0 = Lobby.Debug.SessionSQJEnabled()
	if not registerVal0 then
		return 
	end
	Lobby.Debug.SessionSQJClearModels()
	Lobby.Debug.sessionSQJ.searchStage = 0.000000
	Lobby.Debug.sessionSQJ.results = {}
	Lobby.Debug.sessionSQJ.joinOrder = 0.000000
	Lobby.Debug.SessionSQJUpdateUIInfo()
end

function Lobby.Debug.CreateSetModel(arg0, arg1, arg2)
	local registerVal3 = Engine.CreateModel(arg0, arg1)
	Engine.SetModelValue(registerVal3, arg2)
	return registerVal3
end

function Lobby.Debug.SessionSQJRefreshInfo()
	local registerVal0 = Lobby.Debug.SessionSQJEnabled()
	if not registerVal0 then
		return 
	end
	local registerVal1 = Engine.GetGlobalModel()
	registerVal0 = Engine.CreateModel(registerVal1, "debug")
	registerVal1 = Engine.CreateModel(registerVal0, "sessionSQJ")
	Lobby.Debug.CreateSetModel(registerVal1, "searchStage", Lobby.Debug.sessionSQJ.searchStage)
	local registerVal2 = Engine.CreateModel(registerVal1, "results")
	for index3=1.000000, Lobby.Debug.sessionSQJ.searchStage, 1.000000 do
		local registerVal7 = Engine.CreateModel(registerVal2, tostring(index3))
		Lobby.Debug.CreateSetModel(registerVal7, "numResults", Lobby.Debug.sessionSQJ.results[index3].numResults)
		local registerVal8 = Engine.CreateModel(registerVal7, "data")
		local registerVal9, registerVal10, registerVal11 = ipairs(Lobby.Debug.sessionSQJ.results[index3].data)
		for index12,value13 in registerVal9, registerVal10, registerVal11 do
			local registerVal14 = Engine.CreateModel(registerVal8, tostring(index12))
			Lobby.Debug.CreateSetModel(registerVal14, "xuid", value13.xuid)
			Lobby.Debug.CreateSetModel(registerVal14, "xuidstr", value13.xuidstr)
			Lobby.Debug.CreateSetModel(registerVal14, "gamertag", value13.gamertag)
			Lobby.Debug.CreateSetModel(registerVal14, "publicIPAddress", value13.publicIPAddress)
			Lobby.Debug.CreateSetModel(registerVal14, "privateIPAddress", value13.privateIPAddress)
			Lobby.Debug.CreateSetModel(registerVal14, "natType", value13.natType)
			Lobby.Debug.CreateSetModel(registerVal14, "ping", value13.ping)
			Lobby.Debug.CreateSetModel(registerVal14, "status", value13.status)
		end
	end
end

function Lobby.Debug.SessionSQJUpdateUIInfo()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "debug")
	if not registerVal0 then
		return 
	end
	registerVal1 = Engine.GetModel(registerVal0, "sessionSQJ")
	local registerVal2 = Engine.GetModel(registerVal1, "update")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	Engine.SetModelValue(registerVal2, (registerVal3 + 1.000000))
end

function Lobby.Debug.SessionSQJSearchResults(arg0)
	local registerVal1 = Lobby.Debug.SessionSQJEnabled()
	if not registerVal1 then
		return 
	end
	if 5.000000 < Lobby.Debug.sessionSQJ.searchStage then
		Lobby.Debug.SessionSQJClearModels()
		Lobby.Debug.sessionSQJ.searchStage = 2.000000
		Lobby.Debug.sessionSQJ.results[1.000000] = Lobby.Debug.sessionSQJ.results[(#Lobby.Debug.sessionSQJ.results - 1.000000)]
		Lobby.Debug.sessionSQJ.results[2.000000] = Lobby.Debug.sessionSQJ.results[#Lobby.Debug.sessionSQJ.results]
	end
	Lobby.Debug.sessionSQJ.searchStage = (Lobby.Debug.sessionSQJ.searchStage + 1.000000)
	local registerVal3 = {}
	registerVal3.numResults = arg0.numResults
	registerVal3.data = {}
	Lobby.Debug.sessionSQJ.results[Lobby.Debug.sessionSQJ.searchStage] = registerVal3
	if arg0.numResults == 0.000000 then
		Lobby.Debug.SessionSQJUpdateUIInfo()
		return 
	end
	local registerVal2, registerVal3, registerVal4 = ipairs(arg0.remoteHosts)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		Lobby.Debug.sessionSQJ.results[Lobby.Debug.sessionSQJ.searchStage].data[index5] = {}
		Lobby.Debug.sessionSQJ.results[Lobby.Debug.sessionSQJ.searchStage].data[index5].xuid = value6.xuid
		Lobby.Debug.sessionSQJ.results[Lobby.Debug.sessionSQJ.searchStage].data[index5].xuidstr = value6.xuidstr
		local registerVal8 = Engine.XUIDToGamertag(value6.xuid)
		if Engine.XUIDToGamertag and not registerVal8 then
		end
		local registerVal11 = tostring(value6.teamSizeMax)
		local registerVal13 = tostring(value6.numPlayers)
		local registerVal15 = tostring(value6.maxPlayers)
		local registerVal17 = tostring(value6.showInMatchmaking)
		Lobby.Debug.sessionSQJ.results[Lobby.Debug.sessionSQJ.searchStage].data[index5].gamertag = ("" .. "  " .. registerVal11 .. "-" .. registerVal13 .. "-" .. registerVal15 .. "-" .. registerVal17)
		registerVal8 = Engine.SerializedAdrToLua(value6.hostAddress)
		local registerVal12 = tostring(registerVal8.publicIPPort)
		Lobby.Debug.sessionSQJ.results[Lobby.Debug.sessionSQJ.searchStage].data[index5].publicIPAddress = (registerVal8.publicIPAddress .. ":" .. registerVal12)
		Lobby.Debug.sessionSQJ.results[Lobby.Debug.sessionSQJ.searchStage].data[index5].privateIPAddress = registerVal8.privateIPAddress
		Lobby.Debug.sessionSQJ.results[Lobby.Debug.sessionSQJ.searchStage].data[index5].natType = registerVal8.natTypeStr
	end
	Lobby.Debug.SessionSQJUpdateUIInfo()
end

function Lobby.Debug.SessionSQJQoSResult(arg0)
	local registerVal1 = Lobby.Debug.SessionSQJEnabled()
	if not registerVal1 then
		return 
	end
	registerVal1, registerVal2, registerVal3 = ipairs(Lobby.Debug.sessionSQJ.results[Lobby.Debug.sessionSQJ.searchStage].data)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.xuid == arg0.xuid then
			if arg0.validResult then
				local registerVal6 = tostring(math.floor(arg0.latency))
				local registerVal8 = tostring(arg0.numAvailableSlots)
				value5.ping = (registerVal6 .. "ms, s:" .. registerVal8)
			else
				value5.ping = "PING-INVALID"
			end
			Lobby.Debug.SessionSQJUpdateUIInfo()
			return 
		end
	end
end

function Lobby.Debug.SessionSQJJoinInitiate(arg0)
	local registerVal1 = Lobby.Debug.SessionSQJEnabled()
	if not registerVal1 then
		return 
	end
	registerVal1, registerVal2, registerVal3 = ipairs(Lobby.Debug.sessionSQJ.results[Lobby.Debug.sessionSQJ.searchStage].data)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.xuid == arg0 then
			Lobby.Debug.sessionSQJ.joinOrder = (Lobby.Debug.sessionSQJ.joinOrder + 1.000000)
			local registerVal7 = tostring(Lobby.Debug.sessionSQJ.joinOrder)
			value5.status = ("(" .. registerVal7 .. ") JOINING")
			Lobby.Debug.SessionSQJUpdateUIInfo()
			return 
		end
	end
end

function Lobby.Debug.SessionSQJJoinResult(arg0)
	local registerVal1 = Lobby.Debug.SessionSQJEnabled()
	if not registerVal1 then
		return 
	end
	registerVal1, registerVal2, registerVal3 = ipairs(Lobby.Debug.sessionSQJ.results[Lobby.Debug.sessionSQJ.searchStage].data)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.xuid == arg0.xuid then
			local registerVal6 = LobbyVM.JoinResultToString(arg0.joinResult, false)
			local registerVal8 = tostring(Lobby.Debug.sessionSQJ.joinOrder)
			value5.status = ("(" .. registerVal8 .. ") " .. registerVal6.debug)
			Lobby.Debug.SessionSQJUpdateUIInfo()
			return 
		end
	end
end

function Lobby.Debug.KVSInit(arg0)
end

function Lobby.Debug.SendKVSComError(arg0)
	arg0.isInCleanup = nil
	local registerVal5 = Engine.CurrentRunningTaskCount()
	arg0.runningTaskCount = registerVal5
	registerVal5 = Engine.IsInGame()
	arg0.isInGame = registerVal5
	if arg0.isInGame then
		arg0.gameInfo = {}
		registerVal5 = Engine.GetLobbySessionGameData(Enum.LobbyModule.LOBBY_MODULE_CLIENT)
		arg0.gameInfo.mapName = registerVal5.mapname
		arg0.gameInfo.gameType = registerVal5.gametype
		arg0.gameInfo.serverStatus = registerVal5.serverStatus
		local registerVal7 = Engine.GetMatchID()
		arg0.gameInfo.matchId = registerVal7
		registerVal7 = Engine.GetLobbyHostXuid(Enum.LobbyType.LOBBY_TYPE_GAME)
		arg0.gameInfo.gameHost = registerVal7
	end
	registerVal5 = Engine.CurrentSessionMode()
	arg0.sessionMode = registerVal5
	arg0.lobbyInfo = {}
	local registerVal6 = Engine.GetLobbyNetworkMode()
	arg0.lobbyInfo.lobbyNetworkMode = registerVal6
	registerVal6 = Engine.GetLobbyMode(Enum.LobbyType.LOBBY_TYPE_GAME)
	arg0.lobbyInfo.lobbyMode = registerVal6
	registerVal6 = Engine.GetLobbyMainMode()
	arg0.lobbyInfo.lobbyMainMode = registerVal6
	registerVal6 = Engine.GetLobbyHostXuid(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	arg0.lobbyInfo.privateHost = registerVal6
	arg0.playerInfo = {}
	registerVal6 = Engine.GetXUID(arg0.controller)
	arg0.playerInfo.xuid = registerVal6
	registerVal6 = Engine.IsSignedIn(arg0.controller)
	arg0.playerInfo.signedIn = registerVal6
	registerVal6 = Engine.IsSignedInToLive(arg0.controller)
	arg0.playerInfo.signedInToLive = registerVal6
	registerVal6 = Engine.IsSignedInToDemonware(arg0.controller)
	arg0.playerInfo.signedInToDemonware = registerVal6
	registerVal6 = Engine.IsSubUser(arg0.controller)
	arg0.playerInfo.isSubUser = registerVal6
	registerVal6 = Engine.AreStatsFetched(arg0.controller)
	arg0.playerInfo.statsFetched = registerVal6
	LuaUtils.LogQoS("com_error", arg0)
	registerVal6 = Engine.GetPrimaryController()
	Engine.FlushKVS(registerVal6, Enum.KVSChannel.MATCHMAKING_QOS)
end

function Lobby.Debug.SendKVSJoin(arg0)
	local registerVal1 = Dvar.lobbyDebugLogJoins:get()
	if registerVal1 == true then
		if arg0.join.result.code == Enum.JoinResult.JOIN_RESULT_SUCCESS then
			registerVal1 = Dvar.lobbyDebugLogJoinSuccess:get()
			if registerVal1 == true then
				LuaUtils.LogQoS("join_success", arg0)
			else
				LuaUtils.LogQoS("join_failure", arg0)
			end
		end
	end
end

function Lobby.Debug.InitProcessQueueDebug()
	Lobby.Debug.ProcessHistory = {}
	Lobby.Debug.DebugQueueSize = 5.000000
	Lobby.Debug.MaxActions = 10.000000
end

function Lobby.Debug.UpdateProcessQueue()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyDebug")
	registerVal1 = Engine.CreateModel(registerVal0, "processQueue")
	local registerVal2 = Engine.CreateModel(registerVal1, "data")
	local registerVal3 = Engine.CreateModel(registerVal1, "count")
	Engine.SetModelValue(registerVal3, #Lobby.Debug.ProcessHistory)
	local registerVal4, registerVal5, registerVal6 = ipairs(Lobby.Debug.ProcessHistory)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = Engine.CreateModel(registerVal2, tostring(index7))
		local registerVal11 = Engine.CreateModel(registerVal9, "processName")
		Engine.SetModelValue(registerVal11, value8.processName)
		registerVal11 = Engine.CreateModel(registerVal9, "processCancellable")
		Engine.SetModelValue(registerVal11, value8.cancellable)
		registerVal11 = Engine.CreateModel(registerVal9, "type")
		Engine.SetModelValue(registerVal11, "process")
		registerVal11 = Engine.CreateModel(registerVal9, "actionCount")
		Engine.SetModelValue(registerVal11, #value8.actions)
		local registerVal10 = Engine.CreateModel(registerVal9, "actions")
		registerVal11, registerVal12, registerVal13 = ipairs(value8.actions)
		for index14,value15 in registerVal11, registerVal12, registerVal13 do
			local registerVal16 = Engine.CreateModel(registerVal10, tostring(index14))
			local registerVal18 = Engine.CreateModel(registerVal16, "processName")
			Engine.SetModelValue(registerVal18, value15.name)
			registerVal18 = Engine.CreateModel(registerVal16, "processState")
			Engine.SetModelValue(registerVal18, value15.state)
			registerVal18 = Engine.CreateModel(registerVal16, "type")
			Engine.SetModelValue(registerVal18, "action")
		end
	end
	registerVal4 = Engine.CreateModel(registerVal1, "update")
	Engine.ForceNotifyModelSubscriptions(registerVal4)
end

function Lobby.Debug.UpdateProcessAction()
	Lobby.Debug.UpdateProcessQueue()
end

function Lobby.Debug.AddDebugProcess()
	if Lobby.Debug.DebugQueueSize <= #Lobby.Debug.ProcessHistory then
		table.remove(Lobby.Debug.ProcessHistory, #Lobby.Debug.ProcessHistory)
	end
	table.insert(Lobby.Debug.ProcessHistory, 1.000000, Lobby.ProcessQueue.queue)
	Lobby.Debug.UpdateProcessQueue()
end

function Lobby.Debug.AddDebugAction(arg0)
	if not Lobby.Debug.ProcessHistory[1.000000].actions then
		Lobby.Debug.ProcessHistory[1.000000].actions = {}
	end
	if Lobby.Debug.MaxActions < #Lobby.Debug.ProcessHistory[1.000000].actions then
		table.remove(Lobby.Debug.ProcessHistory[1.000000].actions, #Lobby.Debug.ProcessHistory[1.000000].actions)
	end
	table.insert(Lobby.Debug.ProcessHistory[1.000000].actions, 1.000000, arg0)
	Lobby.Debug.UpdateProcessQueue()
end

function Lobby.Debug.JBMatchmakingEvent(arg0)
	Lobby.Debug.jbEvent = arg0
	if Engine.JBMatchmakingEvent ~= nil then
		Engine.JBMatchmakingEvent(arg0)
	end
end

function Lobby.Debug.OnInit(arg0)
	Lobby.Debug.KVSInit(arg0)
	Lobby.Debug.InitProcessQueueDebug()
end

function Lobby.Debug.OnUILoad(arg0)
	if arg0.init == true then
		local registerVal2 = Engine.GetCurrentPlatform()
		registerVal2 = Engine.GetCurrentPlatform()
		if registerVal2 == "orbis" or registerVal2 == "durango" then
			Lobby.Debug.LobbyDebugVisEnable()
			Lobby.Debug.LobbyValidateEnable()
			Lobby.Debug.LobbySQJEnable()
		end
		Lobby.Debug.SessionSQJClear()
	end
end

function Lobby.Debug.OnSessionStart(arg0)
	local registerVal4 = Engine.GetLobbyLobbyID(arg0.lobbyType)
	arg0.lobbyID = registerVal4
	LuaUtils.LogQoS("session_start", arg0)
	if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME and arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST then
		Lobby.Debug.SessionSQJClear()
	end
end

function Lobby.Debug.OnSessionEnd(arg0)
	local registerVal4 = Engine.GetLobbyLobbyID(arg0.lobbyType)
	arg0.lobbyID = registerVal4
	LuaUtils.LogQoS("session_end", arg0)
end

function Lobby.Debug.OnMatchStart(arg0)
	LuaUtils.LogQoS("match_start", arg0)
end

function Lobby.Debug.OnMatchEnd(arg0)
	LuaUtils.LogQoS("match_end", arg0)
	local registerVal2 = Engine.GetPrimaryController()
	Engine.FlushKVS(registerVal2, Enum.KVSChannel.MATCHMAKING_QOS)
end

function Lobby.Debug.OnComError(arg0)
	Lobby.Debug.SendKVSComError(arg0)
end

function Lobby.Debug.OnJoinComplete(arg0)
	Lobby.Debug.SendKVSJoin(arg0)
end

function Lobby.Debug.Pump()
	Lobby.Debug.LobbyValidate()
end

Lobby.Debug.OnInit({})

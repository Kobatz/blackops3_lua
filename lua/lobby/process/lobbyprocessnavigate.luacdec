-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Process.Nav.LobbyProcessNavCommon")
require("lua.Lobby.Process.Nav.LobbyProcessNavCP")
require("lua.Lobby.Process.Nav.LobbyProcessNavMP")
require("lua.Lobby.Process.Nav.LobbyProcessNavZM")
Lobby.ProcessNavigate = {}
function Lobby.ProcessNavigate.PrivateLobbyInterrupt(arg0, arg1, arg2)
	local registerVal5 = Lobby.Actions.OpenSpinner()
	local registerVal6 = Lobby.Actions.LobbySettings(arg1.controller, arg1.errorTarget)
	local registerVal7 = Lobby.Actions.UpdateUI(arg1.controller, arg1.errorTarget)
	local registerVal8 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal9 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal10 = Lobby.Actions.CloseSpinner()
	local registerVal11 = {}
	registerVal11.head = registerVal5
	registerVal11.interrupt = Lobby.Interrupt.NONE
	registerVal11.force = true
	registerVal11.cancellable = false
	Lobby.Process.ForceAction(registerVal5, registerVal6)
	Lobby.Process.ForceAction(registerVal6, registerVal7)
	Lobby.Process.ForceAction(registerVal7, registerVal8)
	Lobby.Process.ForceAction(registerVal8, registerVal9)
	Lobby.Process.ForceAction(registerVal9, registerVal10)
	if arg0 == Lobby.Interrupt.BACK then
	else
		if arg0 == Lobby.Interrupt.FAILED_ACTION and arg2.action ~= nil then
			local registerVal12 = Lobby.Actions.ErrorPopup(arg2.action)
			Lobby.Process.ForceAction(registerVal10, registerVal12)
		else
			if arg0 == Lobby.Interrupt.ERROR_MSG and arg2.errorMsg ~= nil then
				local registerVal13 = Engine.IsDevelopmentBuild()
				if registerVal13 and arg2.action ~= nil then
				end
				registerVal13 = Lobby.Actions.ErrorPopupMsg((arg2.errorMsg .. "

(debug info, failed action: " .. arg2.action.name .. ")"))
				Lobby.Process.ForceAction(registerVal10, registerVal13)
			end
		end
	end
	return registerVal11
end

function Lobby.ProcessNavigate.CreatePrivateLobby(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3.controller = arg0
	registerVal3.errorTarget = arg1
	local registerVal4 = Lobby.Interrupt.Back(Lobby.ProcessNavigate.PrivateLobbyInterrupt, registerVal3)
	local registerVal5 = Lobby.Interrupt.FailedAction(Lobby.ProcessNavigate.PrivateLobbyInterrupt, registerVal3)
	local registerVal6 = Lobby.Interrupt.ErrorMsg(Lobby.ProcessNavigate.PrivateLobbyInterrupt, registerVal3, Engine.Localize("MENU_FAILED_TO_HOST_LOBBY"))
	local registerVal7 = Lobby.Actions.OpenSpinner(true)
	local registerVal8 = Lobby.Actions.CloseSpinner()
	local registerVal9 = Lobby.Actions.LobbySettings(arg0, arg2)
	local registerVal10 = Lobby.Actions.LobbyHostStart(arg0, arg2.mainMode, arg2.lobbyType, arg2.lobbyMode, arg2.maxClients)
	local registerVal11 = Lobby.Actions.LobbyHostAddPrimary(registerVal10.lobbyType)
	local registerVal12 = Lobby.Actions.LobbyClientStart(registerVal10.lobbyType)
	local registerVal13 = Lobby.Actions.UpdateUI(arg0, arg2)
	local registerVal14 = {}
	registerVal14.head = registerVal7
	registerVal14.interrupt = registerVal4
	registerVal14.force = false
	registerVal14.cancellable = false
	local registerVal15 = Engine.GetLobbyNetworkMode()
	if registerVal15 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		Lobby.Process.AddActions(registerVal7, registerVal9, registerVal6, registerVal6)
	else
		local registerVal16 = Lobby.Actions.DisableConnectingToDemonware(arg0)
		Lobby.Process.AddActions(registerVal7, registerVal16, registerVal6, registerVal6)
		Lobby.Process.AddActions(registerVal16, registerVal9, registerVal6, registerVal6)
	end
	Lobby.Process.AddActions(registerVal9, registerVal10, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal10, registerVal11, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal11, registerVal12, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal12, registerVal13, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal13, registerVal8, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal8, nil, registerVal6, registerVal6)
	return registerVal14
end

function Lobby.ProcessNavigate.LeavePrivateLobby(arg0, arg1, arg2)
	Engine.LobbyLaunchClear()
	local registerVal3 = Lobby.Actions.OpenSpinner()
	local registerVal4 = Lobby.Actions.CloseSpinner()
	local registerVal5 = Lobby.Actions.LobbySettings(arg0, arg2)
	local registerVal6 = Lobby.Actions.UpdateUI(arg0, arg2)
	local registerVal7 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal8 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal9 = {}
	registerVal9.head = registerVal3
	registerVal9.interrupt = Lobby.Interrupt.NONE
	registerVal9.force = false
	registerVal9.cancellable = false
	Lobby.Process.AddActions(registerVal3, registerVal7)
	Lobby.Process.AddActions(registerVal7, registerVal8)
	Lobby.Process.AddActions(registerVal8, registerVal5)
	Lobby.Process.AddActions(registerVal5, registerVal6)
	Lobby.Process.AddActions(registerVal6, registerVal4)
	Lobby.Process.AddActions(registerVal4, nil)
	return registerVal9
end

function Lobby.ProcessNavigate.GameLobbyInterrupt(arg0, arg1, arg2)
	local function __FUNC_24F2_()
		Lobby.Debug.JBMatchmakingEvent(LuaEnums.JB_MATCHMAKING_EVENT.FAILED)
	end

	local registerVal4 = Lobby.Actions.ExecuteScript(__FUNC_24F2_)
	local function __FUNC_25D2_()
		Engine.SetSessionStatus(Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.SessionStatus.SESSION_STATUS_IDLE)
	end

	local function __FUNC_26E3_()
		Engine.QoSProbeListenerEnable(Enum.LobbyType.LOBBY_TYPE_GAME, false)
	end

	local registerVal10 = Lobby.Actions.OpenSpinner()
	local registerVal11 = Lobby.Actions.ExecuteScript(__FUNC_25D2_)
	local registerVal14 = {}
	registerVal14.controller = arg1.controller
	registerVal14.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
	registerVal14.mainMode = arg1.errorTarget.mainMode
	local registerVal12 = Lobby.Actions.LobbyVMCallRetVal(Lobby.Timer.HostingLobbyEnd, registerVal14, true, false, false)
	local registerVal13 = Lobby.Actions.ExecuteScript(__FUNC_26E3_)
	registerVal14 = Lobby.Actions.LobbySettings(arg1.controller, arg1.errorTarget)
	local registerVal15 = Lobby.Actions.UpdateUI(arg1.controller, arg1.errorTarget)
	local registerVal16 = Lobby.Actions.SwitchMode(arg1.controller, Lobby.Core.GetMainModeStr(arg1.errorTarget.mainMode))
	local registerVal17 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal18 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal19 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal20 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal21 = Lobby.Actions.LobbyHostStart(arg1.controller, arg1.errorTarget.mainMode, arg1.errorTarget.lobbyType, arg1.errorTarget.lobbyMode, arg1.errorTarget.maxClients)
	local registerVal22 = Lobby.Actions.LobbyHostAddPrimary(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal23 = Lobby.Actions.LobbyClientStart(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal24 = Lobby.Actions.CloseSpinner()
	local registerVal25 = {}
	registerVal25.head = registerVal10
	registerVal25.interrupt = Lobby.Interrupt.NONE
	registerVal25.force = true
	registerVal25.cancellable = false
	if arg1.isPublic == true then
		registerVal25.head = registerVal4
		Lobby.Process.ForceAction(registerVal4, registerVal10)
	end
	Lobby.Process.ForceAction(registerVal10, registerVal11)
	Lobby.Process.ForceAction(registerVal11, registerVal12)
	Lobby.Process.ForceAction(registerVal12, registerVal13)
	Lobby.Process.ForceAction(registerVal13, registerVal14)
	Lobby.Process.ForceAction(registerVal14, registerVal15)
	Lobby.Process.ForceAction(registerVal15, registerVal16)
	Lobby.Process.ForceAction(registerVal16, registerVal17)
	Lobby.Process.ForceAction(registerVal17, registerVal18)
	Lobby.Process.ForceAction(registerVal18, registerVal19)
	Lobby.Process.ForceAction(registerVal19, registerVal20)
	Lobby.Process.ForceAction(registerVal20, registerVal21)
	Lobby.Process.ForceAction(registerVal21, registerVal22)
	Lobby.Process.ForceAction(registerVal22, registerVal23)
	Lobby.Process.ForceAction(registerVal23, registerVal24)
	if arg0 == Lobby.Interrupt.BACK then
	else
		if arg0 == Lobby.Interrupt.FAILED_ACTION and arg2.action ~= nil then
			local registerVal26 = Lobby.Actions.ErrorPopup(arg2.action)
			Lobby.Process.ForceAction(registerVal24, registerVal26)
		else
			if arg0 == Lobby.Interrupt.ERROR_MSG and arg2.errorMsg ~= nil then
				local registerVal27 = Engine.IsDevelopmentBuild()
				if arg2.action ~= nil and registerVal27 then
					if arg2.action.errorFuncPtr then
						local registerVal29 = arg2.action:errorFuncPtr()
					else
					end
				end
				registerVal27 = Lobby.Actions.ErrorPopupMsg(((arg2.errorMsg .. "

debug: " .. registerVal29) .. "

(debug info, failed action: " .. arg2.action.name .. ")"))
				Lobby.Process.ForceAction(registerVal24, registerVal27)
			end
		end
	end
	return registerVal25
end

function Lobby.ProcessNavigate.SwitchLobbiesGetDefaultGametype(arg0, arg1)
	if arg1.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_CP then
		local registerVal3 = LuaUtils.IsCPZMTarget(arg1.id)
		if registerVal3 then
		else
			registerVal3 = LuaUtils.IsDOATarget(arg1.id)
			if registerVal3 then
			else
				if arg1.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
					if arg1.id == LobbyData.UITargets.UI_FRLOBBYONLINEGAME.id or arg1.id == LobbyData.UITargets.UI_FRLOBBYLANGAME.id then
					else
					else
						if arg1.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
						end
					end
				end
			end
		end
	end
	return "zclassic"
end

function Lobby.ProcessNavigate.SwitchLobbiesIsGametypeValid(arg0)
	if arg0 == nil then
		return false
	end
	if arg0 == "" then
		return false
	end
	local registerVal1 = Engine.IsGameTypeValid(arg0)
	if not registerVal1 then
		return false
	end
	return true
end

function Lobby.ProcessNavigate.SwitchLobbiesGetGametype(arg0, arg1)
	if arg1.id == LobbyData.UITargets.UI_FRLOBBYONLINEGAME.id or arg1.id == LobbyData.UITargets.UI_FRLOBBYLANGAME.id then
	else
		local registerVal3 = Engine.ProfileValueAsString(arg0, "gametype")
	end
	registerVal3 = Lobby.ProcessNavigate.SwitchLobbiesIsGametypeValid(registerVal3)
	if not registerVal3 then
		registerVal3 = Lobby.ProcessNavigate.SwitchLobbiesGetDefaultGametype(arg0, arg1)
	end
	return registerVal3
end

function Lobby.ProcessNavigate.SwitchLobbiesIsMapValid(arg0)
	if arg0 == "" or arg0 == nil then
		return false
	end
	local registerVal1 = Engine.IsMapValid(arg0)
	if not registerVal1 then
		return false
	end
	return true
end

function Lobby.ProcessNavigate.SwitchLobbiesGetMap(arg0, arg1)
	local registerVal3 = Engine.IsCampaignGame()
	if registerVal3 then
		registerVal3 = Engine.GetSavedMapQueuedMap()
		if registerVal3 == nil or registerVal3 == "" then
			registerVal3 = Engine.GetSavedMap()
		else
			registerVal3 = Engine.IsMultiplayerGame()
			if registerVal3 then
				if arg1.id == LobbyData.UITargets.UI_FRLOBBYONLINEGAME.id or arg1.id == LobbyData.UITargets.UI_FRLOBBYLANGAME.id then
					registerVal3 = Engine.ProfileValueAsString(arg0, "map_fr")
				else
					registerVal3 = Engine.ProfileValueAsString(arg0, "map")
				else
					registerVal3 = Engine.IsZombiesGame()
					if registerVal3 then
						registerVal3 = Engine.ProfileValueAsString(arg0, "map_zm")
					end
				end
			end
		end
	end
	registerVal3 = Lobby.ProcessNavigate.SwitchLobbiesIsMapValid(registerVal3)
	if not registerVal3 then
		registerVal3 = LuaUtils.GetDefaultMap(arg1)
	end
	return registerVal3
end

function Lobby.ProcessNavigate.SetupLobbyMapAndGameType(arg0, arg1)
	if arg1.lobbyMode == Enum.LobbyMode.LOBBY_MODE_THEATER then
		return 
	end
	Engine.SetGametype(Lobby.ProcessNavigate.SwitchLobbiesGetGametype(arg0, arg1))
	local registerVal2 = Lobby.ProcessNavigate.SwitchLobbiesGetMap(arg0, arg1)
	Engine.GameLobbySetMap(registerVal2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot.selectedMapId")
	Engine.SetModelValue(registerVal3, registerVal2)
end

function Lobby.ProcessNavigate.CreateGameLobby(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3.controller = arg0
	registerVal3.errorTarget = arg1
	local registerVal4 = Lobby.Interrupt.Back(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal3)
	local registerVal5 = Lobby.Interrupt.FailedAction(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal3)
	local registerVal6 = Lobby.Interrupt.ErrorMsg(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal3, Engine.Localize("MENU_FAILED_TO_HOST_LOBBY"))
	local function __FUNC_411A_()
		Lobby.ProcessNavigate.SetupLobbyMapAndGameType(arg0, arg2)
	end

	local function __FUNC_41B6_()
		Engine.SetSessionStatus(Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.SessionStatus.SESSION_STATUS_JOIN)
	end

	local function __FUNC_42C7_()
		Engine.SetSessionStatus(Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.SessionStatus.SESSION_STATUS_IDLE)
	end

	local registerVal10 = Lobby.Actions.OpenSpinner(true)
	local registerVal11 = Lobby.Actions.CloseSpinner()
	local registerVal12 = Lobby.Actions.WaitForJoiningClients(5000.000000)
	local registerVal13 = Lobby.Actions.ExecuteScript(__FUNC_41B6_)
	local registerVal14 = Lobby.Actions.ExecuteScript(__FUNC_42C7_)
	local registerVal15 = Lobby.Actions.LobbySettings(arg0, arg2)
	local registerVal16 = Lobby.Actions.UpdateUI(arg0, arg2)
	local registerVal17 = Lobby.Actions.SwitchMode(arg0, Lobby.Core.GetMainModeStr(arg2.mainMode))
	local registerVal18 = Lobby.Actions.SwitchCampaignMode(arg0, Enum.CampaignMode.CAMPAIGNMODE_DEFAULT)
	local registerVal19 = LuaUtils.IsCPZMTarget(arg2.id)
	if registerVal19 then
		registerVal19 = Lobby.Actions.SwitchCampaignMode(arg0, Enum.CampaignMode.CAMPAIGNMODE_ZOMBIES)
	end
	registerVal19 = Lobby.Actions.ExecuteScript(__FUNC_411A_)
	local registerVal20 = Lobby.Actions.LobbyHostStart(arg0, arg2.mainMode, Enum.LobbyType.LOBBY_TYPE_GAME, arg2.lobbyMode, arg2.maxClients)
	local registerVal23 = {}
	registerVal23.controller = arg0
	registerVal23.lobbyType = registerVal20.lobbyType
	registerVal23.mainMode = arg2.mainMode
	registerVal23.lobbyTimerType = arg2.lobbyTimerType
	local registerVal21 = Lobby.Actions.LobbyVMCall(Lobby.Timer.HostingLobby, registerVal23)
	local registerVal22 = Lobby.Actions.SetSavedOrDefaultMap(arg0, arg2)
	local registerVal25 = {}
	local registerVal26 = Engine.GetXUID64(arg0)
	registerVal25.xuid = registerVal26
	registerVal23 = Lobby.Actions.LobbyInfoProbe(arg0, registerVal25)
	registerVal26 = {}
	local registerVal27 = Engine.GetXUID64(arg0)
	registerVal26.xuid = registerVal27
	local registerVal24 = Lobby.Actions.LobbyJoinXUID(arg0, registerVal26, Enum.JoinType.JOIN_TYPE_PARTY)
	registerVal25 = {}
	registerVal25.head = registerVal10
	registerVal25.interrupt = Lobby.Interrupt.NONE
	registerVal25.force = false
	registerVal25.cancellable = false
	Lobby.Process.AddActions(registerVal10, registerVal12, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal12, registerVal13, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal13, registerVal17, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal17, registerVal19, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal19, registerVal15, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal15, registerVal19, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal19, registerVal20, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal20, registerVal16, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal16, registerVal23, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal23, registerVal24, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal24, registerVal21, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal21, registerVal22, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal22, registerVal14, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal14, registerVal11, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal11, nil, registerVal6, registerVal6)
	return registerVal25
end

function Lobby.ProcessNavigate.CreatePublicGameLobby(arg0, arg1, arg2, arg3)
	local function __FUNC_5777_()
		Lobby.Debug.JBMatchmakingEvent(LuaEnums.JB_MATCHMAKING_EVENT.END)
	end

	local registerVal5 = Lobby.Actions.ExecuteScript(__FUNC_5777_)
	local registerVal6 = Lobby.Actions.ExecuteScript(__FUNC_5777_)
	local registerVal7 = {}
	registerVal7.controller = arg0
	registerVal7.errorTarget = arg1
	registerVal7.isPublic = true
	local registerVal8 = Lobby.Interrupt.Back(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal7)
	local registerVal9 = Lobby.Interrupt.FailedAction(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal7)
	local registerVal10 = Lobby.Interrupt.ErrorMsg(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal7, Engine.Localize("MENU_FAILED_TO_HOST_LOBBY"))
	local function __FUNC_5853_()
		local registerVal0 = Dvar.party_maxplayers:get()
		Engine.SetLobbyMaxClients(arg2.lobbyType, registerVal0)
	end

	local function __FUNC_5930_()
		local registerVal1 = {}
		registerVal1.controller = arg0
		registerVal1.lobbyType = arg2.lobbyType
		registerVal1.mainMode = arg2.mainMode
		registerVal1.lobbyTimerType = arg2.lobbyTimerType
		Lobby.Timer.HostingLobby(registerVal1)
		Lobby.Matchmaking.ClearSearchInfo()
		Engine.QoSProbeListenerEnable(Enum.LobbyType.LOBBY_TYPE_GAME, true)
	end

	local function __FUNC_5B35_()
		Engine.SetSessionStatus(Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.SessionStatus.SESSION_STATUS_JOIN)
	end

	local function __FUNC_5C47_()
		Engine.SetSessionStatus(Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.SessionStatus.SESSION_STATUS_IDLE)
	end

	local function __FUNC_5D57_(arg1)
		local registerVal1 = LuaUtils.IsArenaMode()
		if registerVal1 then
			Lobby.Matchmaking.SetupMatchmakingQuery(arg0, Lobby.Matchmaking.SearchMode.ARENA, arg1)
		else
			Lobby.Matchmaking.SetupMatchmakingQuery(arg0, Lobby.Matchmaking.SearchMode.PUBLIC, arg1)
		end
	end

	__FUNC_5D57_(true)
	local registerVal16 = Lobby.Actions.OpenSpinner(true)
	local registerVal17 = Lobby.Actions.CloseSpinner()
	local registerVal18 = Lobby.Actions.WaitForJoiningClients(5000.000000)
	local registerVal19 = Lobby.Actions.ExecuteScript(__FUNC_5B35_)
	local registerVal20 = Lobby.Actions.ExecuteScript(__FUNC_5C47_)
	local registerVal21 = Lobby.Actions.SetQueueCancellable(true)
	local registerVal22 = Lobby.Actions.LobbyHostStart(arg0, arg2.mainMode, arg2.lobbyType, arg2.lobbyMode, arg2.maxClients)
	local registerVal25 = {}
	local registerVal26 = Engine.GetXUID64(arg0)
	registerVal25.xuid = registerVal26
	local registerVal23 = Lobby.Actions.LobbyInfoProbe(arg0, registerVal25)
	registerVal26 = {}
	local registerVal27 = Engine.GetXUID64(arg0)
	registerVal26.xuid = registerVal27
	local registerVal24 = Lobby.Actions.LobbyJoinXUID(arg0, registerVal26, Enum.JoinType.JOIN_TYPE_PARTY)
	registerVal25 = Lobby.Actions.LobbySettings(arg0, arg2)
	registerVal26 = Lobby.Actions.UpdateUI(arg0, arg2)
	registerVal27 = Lobby.Actions.RunPlaylistSettings(arg0)
	local registerVal28 = Lobby.Actions.IsButtonPressed(arg0, "BUTTON_X")
	local registerVal29 = Lobby.Actions.IsDvarSet("lobbySearchSkip", true)
	local registerVal30 = Lobby.Actions.IsDvarSet("lobbyAdvertiseSkip", true)
	if arg3 and 0.000000 < arg3 then
	end
	local registerVal32 = Lobby.Actions.TimeDelay(arg3)
	local registerVal33 = Lobby.Actions.SearchForLobby(arg0)
	local registerVal34 = Lobby.Actions.SearchForLobby(arg0)
	local registerVal35 = Lobby.Actions.SearchForLobby(arg0)
	local registerVal36 = Lobby.Actions.SearchForLobby(arg0)
	local registerVal37 = Lobby.Actions.SearchForLobby(arg0)
	local registerVal38 = Lobby.Actions.SearchForLobby(arg0)
	local registerVal39 = Lobby.Actions.QoSJoinSearchResults(arg0, registerVal33)
	local registerVal40 = Lobby.Actions.QoSJoinSearchResults(arg0, registerVal34)
	local registerVal41 = Lobby.Actions.QoSJoinSearchResults(arg0, registerVal35)
	local registerVal42 = Lobby.Actions.QoSJoinSearchResults(arg0, registerVal36)
	local registerVal43 = Lobby.Actions.QoSJoinSearchResults(arg0, registerVal37)
	local registerVal44 = Lobby.Actions.QoSJoinSearchResults(arg0, registerVal38)
	local registerVal45 = Lobby.Actions.TimeDelay(Dvar.lobbySearchDelay:get())
	local registerVal46 = Lobby.Actions.TimeDelay(Dvar.lobbySearchDelay:get())
	local registerVal47 = Lobby.Actions.TimeDelay(Dvar.lobbySearchDelay:get())
	local registerVal48 = Lobby.Actions.TimeDelay(Dvar.lobbySearchDelay:get())
	local registerVal49 = Lobby.Actions.TimeDelay(Dvar.lobbySearchDelay:get())
	registerVal33.name = (registerVal33.name .. "_1")
	registerVal34.name = (registerVal34.name .. "_2")
	registerVal35.name = (registerVal35.name .. "_3")
	registerVal36.name = (registerVal36.name .. "_4")
	registerVal37.name = (registerVal37.name .. "_5")
	registerVal38.name = (registerVal38.name .. "_6")
	registerVal39.name = (registerVal39.name .. "_1")
	registerVal40.name = (registerVal40.name .. "_2")
	registerVal41.name = (registerVal41.name .. "_3")
	registerVal42.name = (registerVal42.name .. "_4")
	registerVal43.name = (registerVal43.name .. "_5")
	registerVal44.name = (registerVal44.name .. "_6")
	local registerVal50 = Lobby.Actions.CanHostServer(arg0, arg2)
	local registerVal51 = Lobby.Actions.TimeDelay(1500.000000)
	local registerVal52 = Lobby.Actions.ExecuteScript(__FUNC_5D57_, false)
	local registerVal53 = Lobby.Actions.AdvertiseLobby(true)
	local registerVal54 = Lobby.Actions.ExecuteScript(__FUNC_5853_)
	local registerVal55 = Lobby.Actions.ExecuteScript(__FUNC_5930_)
	local registerVal56 = {}
	registerVal56.head = registerVal16
	registerVal56.interrupt = registerVal8
	registerVal56.force = false
	registerVal56.cancellable = false
	Lobby.Process.AddActions(registerVal16, registerVal18, registerVal10, registerVal10)
	Lobby.Process.AddActions(registerVal18, registerVal19, registerVal10, registerVal10)
	Lobby.Process.AddActions(registerVal19, registerVal22, registerVal10, registerVal10)
	Lobby.Process.AddActions(registerVal22, registerVal25, registerVal10, registerVal10)
	Lobby.Process.AddActions(registerVal25, registerVal27, registerVal10, registerVal10)
	Lobby.Process.AddActions(registerVal27, registerVal54, registerVal10, registerVal10)
	Lobby.Process.AddActions(registerVal54, registerVal23, registerVal10, registerVal10)
	Lobby.Process.AddActions(registerVal23, registerVal24, registerVal10, registerVal10)
	Lobby.Process.AddActions(registerVal24, registerVal26, registerVal10, registerVal10)
	Lobby.Process.AddActions(registerVal26, registerVal17, registerVal10, registerVal10)
	Lobby.Process.AddActions(registerVal17, registerVal20, registerVal10, registerVal10)
	Lobby.Process.AddActions(registerVal20, registerVal21, registerVal10, registerVal10)
	Lobby.Process.AddActions(registerVal21, registerVal28, registerVal10, registerVal10)
	Lobby.Process.AddActions(registerVal28, registerVal30, registerVal29, registerVal29)
	Lobby.Process.AddActions(registerVal29, registerVal30, registerVal32, registerVal32)
	Lobby.Process.ForceAction(registerVal32, registerVal33)
	Lobby.Process.AddActions(registerVal33, registerVal39, registerVal45, registerVal10)
	Lobby.Process.AddActions(registerVal39, registerVal5, registerVal45, registerVal10)
	Lobby.Process.ForceAction(registerVal45, registerVal34)
	Lobby.Process.AddActions(registerVal34, registerVal40, registerVal46, registerVal10)
	Lobby.Process.AddActions(registerVal40, registerVal5, registerVal46, registerVal10)
	Lobby.Process.ForceAction(registerVal46, registerVal35)
	Lobby.Process.AddActions(registerVal35, registerVal41, registerVal47, registerVal10)
	Lobby.Process.AddActions(registerVal41, registerVal5, registerVal47, registerVal10)
	Lobby.Process.ForceAction(registerVal47, registerVal36)
	Lobby.Process.AddActions(registerVal36, registerVal42, registerVal51, registerVal10)
	Lobby.Process.AddActions(registerVal42, registerVal5, registerVal51, registerVal10)
	Lobby.Process.AddActions(registerVal51, registerVal52, registerVal52, registerVal52)
	Lobby.Process.AddActions(registerVal52, registerVal33, registerVal33, registerVal33)
	return registerVal56
end

function Lobby.ProcessNavigate.ChangeToPublicGameLobby(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3.controller = arg0
	registerVal3.errorTarget = arg1
	local registerVal4 = Lobby.Interrupt.Back(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal3)
	local registerVal5 = Lobby.Interrupt.FailedAction(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal3)
	local registerVal6 = Lobby.Interrupt.ErrorMsg(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal3, Engine.Localize("MENU_FAILED_TO_HOST_LOBBY"))
	Engine.LobbyLaunchClear()
	Lobby.Debug.SessionSQJClear()
	local function __FUNC_6C13_()
		local registerVal1 = {}
		registerVal1.controller = arg0
		registerVal1.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
		registerVal1.mainMode = arg2.mainMode
		registerVal1.lobbyTimerType = arg2.lobbyTimerType
		Lobby.Timer.HostingLobby(registerVal1)
		Engine.QoSProbeListenerEnable(Enum.LobbyType.LOBBY_TYPE_GAME, true)
	end

	local function __FUNC_6DD3_()
		Engine.SetSessionStatus(Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.SessionStatus.SESSION_STATUS_JOIN)
		Engine.SetLobbyMode(arg2.lobbyType, arg2.lobbyMode)
		local registerVal0 = math.min(arg2.maxClients, Dvar.party_maxplayers:get())
		Engine.SetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_GAME, registerVal0)
	end

	local function __FUNC_705C_()
		local registerVal0 = math.min(arg2.maxClients, Dvar.party_maxplayers:get())
		Engine.SetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_GAME, registerVal0)
		Engine.SetSessionStatus(Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.SessionStatus.SESSION_STATUS_IDLE)
	end

	local function __FUNC_7278_(arg1)
		Lobby.Matchmaking.SetupMatchmakingQuery(arg0, Lobby.Matchmaking.SearchMode.PUBLIC, arg1)
	end

	local function __FUNC_735B_()
		local registerVal0 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_ALL)
		if arg2.maxClients <= registerVal0 then
			return true
		end
		return false
	end

	__FUNC_7278_(true)
	local registerVal12 = Lobby.Actions.OpenSpinner(true)
	local registerVal13 = Lobby.Actions.CloseSpinner()
	local registerVal14 = Lobby.Actions.WaitForJoiningClients(5000.000000)
	local registerVal15 = Lobby.Actions.ExecuteScript(__FUNC_6DD3_)
	local registerVal16 = Lobby.Actions.ExecuteScript(__FUNC_705C_)
	local registerVal17 = Lobby.Actions.SetQueueCancellable(true)
	local registerVal18 = Lobby.Actions.LobbySettings(arg0, arg2)
	local registerVal19 = Lobby.Actions.UpdateUI(arg0, arg2)
	local registerVal20 = Lobby.Actions.RunPlaylistSettings(arg0)
	local registerVal21 = Lobby.Actions.IsButtonPressed(arg0, "BUTTON_X")
	local registerVal22 = Lobby.Actions.EvaluateFunction(__FUNC_735B_)
	local registerVal23 = Lobby.Actions.SearchForLobby(arg0)
	local registerVal24 = Lobby.Actions.SearchForLobby(arg0)
	local registerVal25 = Lobby.Actions.SearchForLobby(arg0)
	local registerVal26 = Lobby.Actions.QoSJoinSearchResults(arg0, registerVal23)
	local registerVal27 = Lobby.Actions.QoSJoinSearchResults(arg0, registerVal24)
	local registerVal28 = Lobby.Actions.QoSJoinSearchResults(arg0, registerVal25)
	local registerVal29 = Lobby.Actions.TimeDelay(Dvar.lobbySearchDelay:get())
	local registerVal30 = Lobby.Actions.TimeDelay(Dvar.lobbySearchDelay:get())
	local registerVal31 = Lobby.Actions.CanHostServer(arg0, arg2)
	local registerVal32 = Lobby.Actions.TimeDelay(1500.000000)
	local registerVal33 = Lobby.Actions.ExecuteScript(__FUNC_7278_, false)
	local registerVal34 = Lobby.Actions.AdvertiseLobby(true)
	local registerVal35 = Lobby.Actions.ExecuteScript(__FUNC_6C13_)
	local registerVal36 = {}
	registerVal36.head = registerVal12
	registerVal36.interrupt = registerVal4
	registerVal36.force = false
	registerVal36.cancellable = false
	Lobby.Process.AddActions(registerVal12, registerVal14, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal14, registerVal15, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal15, registerVal18, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal18, registerVal20, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal20, registerVal19, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal19, registerVal13, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal13, registerVal17, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal17, registerVal21, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal21, registerVal34, registerVal22, registerVal22)
	Lobby.Process.AddActions(registerVal22, registerVal34, registerVal23, registerVal23)
	Lobby.Process.AddActions(registerVal23, registerVal26, registerVal29, registerVal6)
	Lobby.Process.AddActions(registerVal26, registerVal16, registerVal29, registerVal6)
	Lobby.Process.ForceAction(registerVal29, registerVal24)
	Lobby.Process.AddActions(registerVal24, registerVal27, registerVal30, registerVal6)
	Lobby.Process.AddActions(registerVal27, registerVal16, registerVal30, registerVal6)
	Lobby.Process.ForceAction(registerVal30, registerVal25)
	Lobby.Process.AddActions(registerVal25, registerVal28, registerVal31, registerVal6)
	Lobby.Process.AddActions(registerVal28, registerVal16, registerVal31, registerVal6)
	Lobby.Process.AddActions(registerVal31, registerVal34, registerVal32, registerVal6)
	Lobby.Process.AddActions(registerVal32, registerVal33, registerVal33, registerVal33)
	Lobby.Process.AddActions(registerVal33, registerVal23, registerVal23, registerVal23)
	Lobby.Process.AddActions(registerVal34, registerVal35, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal35, registerVal16, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal16, nil, registerVal6, registerVal6)
	return registerVal36
end

function Lobby.ProcessNavigate.ChangeToCustomGameLobby(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3.controller = arg0
	registerVal3.errorTarget = arg1
	local registerVal4 = Lobby.Interrupt.Back(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal3)
	local registerVal5 = Lobby.Interrupt.FailedAction(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal3)
	local registerVal6 = Lobby.Interrupt.ErrorMsg(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal3, Engine.Localize("MENU_FAILED_TO_HOST_LOBBY"))
	Engine.LobbyLaunchClear()
	local function __FUNC_7BB1_()
		local registerVal1 = {}
		registerVal1.controller = arg0
		registerVal1.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
		registerVal1.mainMode = arg2.mainMode
		registerVal1.lobbyTimerType = arg2.lobbyTimerType
		Lobby.Timer.HostingLobby(registerVal1)
	end

	local function __FUNC_7D0F_()
		Engine.SetSessionStatus(Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.SessionStatus.SESSION_STATUS_JOIN)
		Engine.SetLobbyMode(arg2.lobbyType, arg2.lobbyMode)
	end

	local function __FUNC_7E8F_()
		Engine.SetSessionStatus(Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.SessionStatus.SESSION_STATUS_IDLE)
	end

	Lobby.Matchmaking.SetupMatchmakingQuery(arg0, Lobby.Matchmaking.SearchMode.PUBLIC)
	local registerVal10 = Lobby.Actions.OpenSpinner(true)
	local registerVal11 = Lobby.Actions.CloseSpinner()
	local registerVal12 = Lobby.Actions.WaitForJoiningClients(5000.000000)
	local registerVal13 = Lobby.Actions.ExecuteScript(__FUNC_7D0F_)
	local registerVal14 = Lobby.Actions.ExecuteScript(__FUNC_7E8F_)
	local registerVal15 = Lobby.Actions.LobbySettings(arg0, arg2)
	local registerVal16 = Lobby.Actions.UpdateUI(arg0, arg2)
	local registerVal17 = Lobby.Actions.ExecuteScript(__FUNC_7BB1_)
	local registerVal18 = {}
	registerVal18.head = registerVal10
	registerVal18.interrupt = registerVal4
	registerVal18.force = false
	registerVal18.cancellable = false
	Lobby.Process.AddActions(registerVal10, registerVal12, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal12, registerVal13, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal13, registerVal15, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal15, registerVal16, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal16, registerVal11, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal11, registerVal17, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal17, registerVal14, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal14, nil, registerVal6, registerVal6)
	return registerVal18
end

function Lobby.ProcessNavigate.ChangeToCPPublicGameLobby(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3.controller = arg0
	registerVal3.errorTarget = arg1
	local registerVal4 = Lobby.Interrupt.Back(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal3)
	local registerVal5 = Lobby.Interrupt.FailedAction(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal3)
	local registerVal6 = Lobby.Interrupt.ErrorMsg(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal3, Engine.Localize("MENU_FAILED_TO_HOST_LOBBY"))
	local registerVal10 = Engine.GetGlobalModel()
	local registerVal8 = Engine.GetModelValue(Engine.CreateModel(registerVal10, "lobbyRoot.doaSkipSearch"))
	if arg2.id == LobbyData.UITargets.UI_DOALOBBYONLINEPUBLICGAME.id and registerVal8 then
	end
	Engine.LobbyLaunchClear()
	Lobby.Debug.SessionSQJClear()
	local function __FUNC_8D9F_()
		local registerVal1 = {}
		registerVal1.controller = arg0
		registerVal1.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
		registerVal1.mainMode = arg2.mainMode
		registerVal1.lobbyTimerType = arg2.lobbyTimerType
		Lobby.Timer.HostingLobby(registerVal1)
		Engine.QoSProbeListenerEnable(Enum.LobbyType.LOBBY_TYPE_GAME, true)
	end

	local function __FUNC_8F5F_()
		Engine.SetSessionStatus(Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.SessionStatus.SESSION_STATUS_JOIN)
		Engine.SetLobbyMode(arg2.lobbyType, arg2.lobbyMode)
		Engine.SetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_GAME, Dvar.party_maxplayers:get())
	end

	local function __FUNC_9191_()
		Engine.SetSessionStatus(Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.SessionStatus.SESSION_STATUS_IDLE)
	end

	local function __FUNC_92A3_(arg1)
		local registerVal2 = Engine.GetGlobalModel()
		local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.cpPublicLobbySearchAll")
		registerVal2 = Engine.GetModelValue(registerVal1)
		if registerVal2 == true then
			Lobby.Matchmaking.SetupMatchmakingQuery(arg0, Lobby.Matchmaking.SearchMode.PUBLIC_CP_ALL, arg1)
		else
			Lobby.Matchmaking.SetupMatchmakingQuery(arg0, Lobby.Matchmaking.SearchMode.PUBLIC, arg1)
		end
	end

	__FUNC_92A3_(true)
	local registerVal12 = Lobby.Actions.OpenSpinner(true)
	local registerVal13 = Lobby.Actions.CloseSpinner()
	local registerVal14 = Lobby.Actions.WaitForJoiningClients(5000.000000)
	local registerVal15 = Lobby.Actions.ExecuteScript(__FUNC_8F5F_)
	local registerVal16 = Lobby.Actions.ExecuteScript(__FUNC_9191_)
	local registerVal17 = Lobby.Actions.LobbySettings(arg0, arg2)
	local registerVal18 = Lobby.Actions.UpdateUI(arg0, arg2)
	local registerVal19 = Lobby.Actions.RunPlaylistSettings(arg0)
	local registerVal20 = Lobby.Actions.IsButtonPressed(arg0, "BUTTON_X")
	local registerVal21 = Lobby.Actions.IsConditionTrue(true)
	local registerVal22 = Lobby.Actions.SearchForLobby(arg0)
	local registerVal23 = Lobby.Actions.SearchForLobby(arg0)
	local registerVal24 = Lobby.Actions.SearchForLobby(arg0)
	local registerVal25 = Lobby.Actions.QoSJoinSearchResults(arg0, registerVal22)
	local registerVal26 = Lobby.Actions.QoSJoinSearchResults(arg0, registerVal23)
	local registerVal27 = Lobby.Actions.QoSJoinSearchResults(arg0, registerVal24)
	local registerVal28 = Lobby.Actions.TimeDelay(Dvar.lobbySearchDelay:get())
	local registerVal29 = Lobby.Actions.TimeDelay(Dvar.lobbySearchDelay:get())
	local registerVal30 = Lobby.Actions.CanHostServer(arg0, arg2)
	local registerVal31 = Lobby.Actions.TimeDelay(1500.000000)
	local registerVal32 = Lobby.Actions.ExecuteScript(__FUNC_92A3_, false)
	local registerVal33 = Lobby.Actions.AdvertiseLobby(true)
	local registerVal34 = Lobby.Actions.ExecuteScript(__FUNC_8D9F_)
	local registerVal35 = {}
	registerVal35.head = registerVal12
	registerVal35.interrupt = registerVal4
	registerVal35.force = false
	registerVal35.cancellable = true
	Lobby.Process.AddActions(registerVal12, registerVal14, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal14, registerVal15, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal15, registerVal17, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal17, registerVal19, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal19, registerVal18, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal18, registerVal13, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal13, registerVal20, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal20, registerVal33, registerVal21, registerVal21)
	Lobby.Process.AddActions(registerVal21, registerVal30, registerVal22, registerVal22)
	Lobby.Process.AddActions(registerVal22, registerVal25, registerVal28, registerVal6)
	Lobby.Process.AddActions(registerVal25, registerVal16, registerVal28, registerVal6)
	Lobby.Process.ForceAction(registerVal28, registerVal23)
	Lobby.Process.AddActions(registerVal23, registerVal26, registerVal29, registerVal6)
	Lobby.Process.AddActions(registerVal26, registerVal16, registerVal29, registerVal6)
	Lobby.Process.ForceAction(registerVal29, registerVal24)
	Lobby.Process.AddActions(registerVal24, registerVal27, registerVal30, registerVal6)
	Lobby.Process.AddActions(registerVal27, registerVal16, registerVal30, registerVal6)
	Lobby.Process.AddActions(registerVal30, registerVal33, registerVal31, registerVal6)
	Lobby.Process.AddActions(registerVal31, registerVal32, registerVal32, registerVal32)
	Lobby.Process.AddActions(registerVal32, registerVal22, registerVal22, registerVal22)
	Lobby.Process.AddActions(registerVal33, registerVal34, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal34, registerVal16, registerVal6, registerVal6)
	Lobby.Process.AddActions(registerVal16, nil, registerVal6, registerVal6)
	return registerVal35
end

function Lobby.ProcessNavigate.ChangeToPrivateGameLobby(arg0, arg1, arg2, arg3)
	local registerVal4 = {}
	registerVal4.controller = arg0
	registerVal4.errorTarget = arg2
	local registerVal5 = Lobby.Interrupt.Back(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal4)
	local registerVal6 = Lobby.Interrupt.FailedAction(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal4)
	local registerVal7 = Lobby.Interrupt.ErrorMsg(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal4, Engine.Localize("MENU_FAILED_TO_HOST_LOBBY"))
	local registerVal8 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal9 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal10 = Engine.IsAdvertisedLobby(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal11 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_REMOTE)
	local registerVal12 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_REMOTE)
	if arg1.id ~= LobbyData.UITargets.UI_CPLOBBYONLINEPUBLICGAME.id and arg1.id ~= LobbyData.UITargets.UI_CP2LOBBYONLINEPUBLICGAME.id and arg1.id ~= LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME.id and arg1.id ~= LobbyData.UITargets.UI_DOALOBBYONLINEPUBLICGAME.id then
	end
	if arg1.id ~= LobbyData.UITargets.UI_CPLOBBYONLINECUSTOMGAME.id and arg1.id ~= LobbyData.UITargets.UI_CP2LOBBYONLINECUSTOMGAME.id and arg1.id ~= LobbyData.UITargets.UI_ZMLOBBYONLINECUSTOMGAME.id then
	end
	Engine.LobbyLaunchClear()
	local function __FUNC_AA6A_()
		Engine.QoSProbeListenerEnable(Enum.LobbyType.LOBBY_TYPE_GAME, false)
	end

	local function __FUNC_AB32_()
		local registerVal1 = {}
		registerVal1.controller = arg0
		registerVal1.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
		registerVal1.mainMode = arg2.mainMode
		registerVal1.lobbyTimerType = arg2.lobbyTimerType
		Lobby.Timer.HostingLobby(registerVal1)
		Lobby.PartyPrivacy.SetLobbyMaxClients(arg0, Enum.LobbyType.LOBBY_TYPE_GAME)
	end

	local registerVal19 = {}
	registerVal19.controller = arg0
	registerVal19.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
	registerVal19.mainMode = arg2.mainMode
	local registerVal17 = Lobby.Actions.LobbyVMCallRetVal(Lobby.Timer.HostingLobbyEnd, registerVal19, true, false, false)
	local registerVal18 = Lobby.Actions.AdvertiseLobby(false)
	registerVal19 = Lobby.Actions.ExecuteScript(__FUNC_AA6A_)
	local registerVal20 = Lobby.Actions.ExecuteScript(__FUNC_AB32_)
	local registerVal21 = Lobby.Actions.OpenSpinner()
	local registerVal22 = Lobby.Actions.CloseSpinner()
	local registerVal23 = Lobby.Actions.LeaveWithParty(3000.000000)
	local registerVal24 = Lobby.Actions.LobbySettings(arg0, arg2)
	local registerVal25 = Lobby.Actions.UpdateUI(arg0, arg2)
	local registerVal26 = Lobby.Actions.SwitchMode(arg0, switchToMode)
	local registerVal27 = Lobby.Actions.SetSavedOrDefaultMap(arg0, arg2)
	local registerVal28 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal29 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal30 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal31 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal32 = Lobby.Actions.LobbyHostStart(arg0, arg2.mainMode, Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg2.lobbyMode, arg2.maxClients)
	local registerVal33 = Lobby.Actions.LobbyHostAddPrimary(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal34 = Lobby.Actions.LobbyClientStart(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal35 = Lobby.ProcessNavigate.CreateGameLobby(arg0, arg2.backTarget, arg2)
	local registerVal36 = Lobby.Actions.EmptyAction()
	local registerVal37 = {}
	registerVal37.head = registerVal36
	registerVal37.interrupt = Lobby.Interrupt.NONE
	registerVal37.force = false
	registerVal37.cancellable = false
	if registerVal8 == true then
		if true == true then
			Lobby.Process.AddActions(registerVal36, registerVal21, registerVal7, registerVal7)
			Lobby.Process.AddActions(registerVal21, registerVal17, registerVal7, registerVal7)
			Lobby.Process.AddActions(registerVal17, registerVal18, registerVal7, registerVal7)
		else
			Lobby.Process.AddActions(registerVal18, registerVal17, registerVal7, registerVal7)
			Lobby.Process.AddActions(registerVal17, registerVal21, Lobby.Process.DO_NOTHING_IF_FAILURE, registerVal7)
		end
		Lobby.Process.AddActions(registerVal21, registerVal19, registerVal7, registerVal7)
	end
	if registerVal8 == true and registerVal9 == true and registerVal11 == 0.000000 and registerVal12 == 0.000000 then
		Lobby.Process.AddActions(registerVal19, registerVal24, registerVal7, registerVal7)
		Lobby.Process.AddActions(registerVal24, registerVal27, registerVal7, registerVal7)
		Lobby.Process.AddActions(registerVal27, registerVal25, registerVal7, registerVal7)
		Lobby.Process.AddActions(registerVal25, registerVal20, registerVal7, registerVal7)
		Lobby.Process.AddActions(registerVal20, registerVal22, registerVal7, registerVal7)
		return registerVal37
	end
	if arg3 == LuaEnums.LEAVE_WITH_PARTY.WITH and registerVal9 == true and 0.000000 < registerVal12 then
		Lobby.Process.AddActions(registerVal19, registerVal23, registerVal7, registerVal7)
	end
	if registerVal8 == true then
		Lobby.Process.AddActions(registerVal23, registerVal28, registerVal7, registerVal7)
		Lobby.Process.AddActions(registerVal28, registerVal29, registerVal7, registerVal7)
		if registerVal9 == true then
			if arg3 == LuaEnums.LEAVE_WITH_PARTY.WITHOUT then
				Lobby.Process.AddActions(registerVal29, registerVal30, registerVal7, registerVal7)
				Lobby.Process.AddActions(registerVal30, registerVal31, registerVal7, registerVal7)
				Lobby.Process.AddActions(registerVal31, registerVal32, registerVal7, registerVal7)
				Lobby.Process.AddActions(registerVal32, registerVal33, registerVal7, registerVal7)
				Lobby.Process.AddActions(registerVal33, registerVal34, registerVal7, registerVal7)
			else
				Lobby.Process.AddActions(registerVal34, registerVal30, registerVal7, registerVal7)
				Lobby.Process.AddActions(registerVal30, registerVal32, registerVal7, registerVal7)
				Lobby.Process.AddActions(registerVal32, registerVal33, registerVal7, registerVal7)
				Lobby.Process.AddActions(registerVal33, registerVal34, registerVal7, registerVal7)
			else
				if registerVal9 == true then
					Lobby.Process.AddActions(registerVal34, registerVal28, registerVal7, registerVal7)
				else
					if registerVal9 == false then
						Lobby.Process.AddActions(registerVal28, registerVal28, registerVal7, registerVal7)
						Lobby.Process.AddActions(registerVal28, registerVal30, registerVal7, registerVal7)
						Lobby.Process.AddActions(registerVal30, registerVal32, registerVal7, registerVal7)
						Lobby.Process.AddActions(registerVal32, registerVal33, registerVal7, registerVal7)
						Lobby.Process.AddActions(registerVal33, registerVal34, registerVal7, registerVal7)
					end
				end
			end
		end
	end
	Lobby.Process.AddActions(registerVal34, registerVal35.head, registerVal7, registerVal7)
	return registerVal37
end

function Lobby.ProcessNavigate.LeaveGameLobby(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = {}
	registerVal5.controller = arg0
	registerVal5.errorTarget = arg2
	local registerVal6 = Lobby.Interrupt.Back(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal5)
	local registerVal7 = Lobby.Interrupt.FailedAction(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal5)
	local registerVal8 = Lobby.Interrupt.ErrorMsg(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal5, Engine.Localize("MENU_FAILED_TO_HOST_LOBBY"))
	Engine.LobbyLaunchClear()
	local function __FUNC_BB18_()
		Engine.QoSProbeListenerEnable(Enum.LobbyType.LOBBY_TYPE_GAME, false)
		Engine.SetSessionStatus(Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.SessionStatus.SESSION_STATUS_IDLE)
	end

	local registerVal12 = {}
	registerVal12.controller = arg0
	registerVal12.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
	registerVal12.mainMode = arg2.mainMode
	local registerVal10 = Lobby.Actions.LobbyVMCallRetVal(Lobby.Timer.HostingLobbyEnd, registerVal12, true, false, false)
	local registerVal11 = Lobby.Actions.ExecuteScript(__FUNC_BB18_)
	registerVal12 = Lobby.Actions.EmptyAction()
	local registerVal13 = Lobby.Actions.OpenSpinner()
	local registerVal14 = Lobby.Actions.CloseSpinner()
	local registerVal15 = Lobby.Actions.LeaveWithParty(3000.000000)
	local registerVal16 = Lobby.Actions.LobbySettings(arg0, arg2)
	local registerVal17 = Lobby.Actions.SwitchMode(arg0, arg4)
	local registerVal18 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal19 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal20 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal21 = Lobby.Actions.LobbyHostEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal22 = Lobby.Actions.LobbyHostStart(arg0, arg2.mainMode, arg2.lobbyType, arg2.lobbyMode, arg2.maxClients)
	local registerVal23 = Lobby.Actions.LobbyHostAddPrimary(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal24 = Lobby.Actions.LobbyClientStart(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal25 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal26 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal27 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal28 = Lobby.Actions.UpdateUI(arg0, arg2)
	local registerVal29 = {}
	registerVal29.head = nil
	registerVal29.interrupt = Lobby.Interrupt.NONE
	registerVal29.force = false
	registerVal29.cancellable = false
	if registerVal25 == true then
		registerVal29.head = registerVal13
		Lobby.Process.AddActions(registerVal13, registerVal10, registerVal8, registerVal8)
		Lobby.Process.AddActions(registerVal10, registerVal12, registerVal14, registerVal8)
		if registerVal26 == true and 1.000000 < registerVal27 and arg3 == LuaEnums.LEAVE_WITH_PARTY.WITH then
			Lobby.Process.AddActions(registerVal12, registerVal15, registerVal8, registerVal8)
		end
		Lobby.Process.AddActions(registerVal15, registerVal11, registerVal8, registerVal8)
		Lobby.Process.AddActions(registerVal11, registerVal20, registerVal8, registerVal8)
		Lobby.Process.AddActions(registerVal20, registerVal21, registerVal8, registerVal8)
	else
		registerVal29.head = registerVal13
		if registerVal26 == true and 1.000000 < registerVal27 and arg3 == LuaEnums.LEAVE_WITH_PARTY.WITH then
			Lobby.Process.AddActions(registerVal13, registerVal15, registerVal8, registerVal8)
		end
		Lobby.Process.AddActions(registerVal15, registerVal20, registerVal8, registerVal8)
	end
	if registerVal26 == true then
		if 1.000000 < registerVal27 and arg3 == LuaEnums.LEAVE_WITH_PARTY.WITHOUT then
			Lobby.Process.AddActions(registerVal20, registerVal18, registerVal8, registerVal8)
			Lobby.Process.AddActions(registerVal18, registerVal19, registerVal8, registerVal8)
			Lobby.Process.AddActions(registerVal19, registerVal22, registerVal8, registerVal8)
			Lobby.Process.AddActions(registerVal22, registerVal23, registerVal8, registerVal8)
			Lobby.Process.AddActions(registerVal23, registerVal24, registerVal8, registerVal8)
		else
			Lobby.Process.AddActions(registerVal24, registerVal18, registerVal8, registerVal8)
			Lobby.Process.AddActions(registerVal18, registerVal22, registerVal8, registerVal8)
			Lobby.Process.AddActions(registerVal22, registerVal23, registerVal8, registerVal8)
			Lobby.Process.AddActions(registerVal23, registerVal24, registerVal8, registerVal8)
		end
	end
	Lobby.Process.AddActions(registerVal24, registerVal16, registerVal8, registerVal8)
	Lobby.Process.AddActions(registerVal16, registerVal28, registerVal8, registerVal8)
	Lobby.Process.AddActions(registerVal28, registerVal14, registerVal8, registerVal8)
	return registerVal29
end

function Lobby.ProcessNavigate.ReloadGameLobby(arg0, arg1, arg2)
	local registerVal3 = LobbyData.GetCurrentMenuTarget()
	local registerVal5 = Lobby.ProcessNavigate.LeaveGameLobby(arg0, registerVal3, registerVal3, LuaEnums.LEAVE_WITH_PARTY.WITH)
	if 0.000000 < arg1 and 0.000000 < arg2 and arg1 <= arg2 then
		local registerVal7 = math.random(arg1, arg2)
	end
	registerVal7 = Lobby.ProcessNavigate.CreatePublicGameLobby(arg0, registerVal3.backTarget, registerVal3, registerVal7)
	Lobby.Process.AppendProcess(registerVal5, registerVal7)
	return registerVal5
end

function Lobby.ProcessNavigate.ChangeToCPLANCustomGameLobby(arg0, arg1, arg2, arg3)
	local registerVal4 = {}
	registerVal4.controller = arg0
	registerVal4.errorTarget = arg2
	local registerVal5 = Lobby.Interrupt.Back(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal4)
	local registerVal6 = Lobby.Interrupt.FailedAction(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal4)
	local registerVal7 = Lobby.Interrupt.ErrorMsg(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal4, Engine.Localize("MENU_FAILED_TO_HOST_LOBBY"))
	Engine.LobbyLaunchClear()
	local function __FUNC_C6AF_()
		local registerVal1 = {}
		registerVal1.controller = arg0
		registerVal1.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
		registerVal1.mainMode = arg2.mainMode
		registerVal1.lobbyTimerType = arg2.lobbyTimerType
		Lobby.Timer.HostingLobby(registerVal1)
	end

	local registerVal11 = {}
	registerVal11.controller = arg0
	registerVal11.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
	registerVal11.mainMode = arg2.mainMode
	local registerVal9 = Lobby.Actions.LobbyVMCallRetVal(Lobby.Timer.HostingLobbyEnd, registerVal11, true, false, false)
	local registerVal10 = Lobby.Actions.ExecuteScript(__FUNC_C6AF_)
	registerVal11 = Lobby.Actions.OpenSpinner()
	local registerVal12 = Lobby.Actions.CloseSpinner()
	local registerVal13 = Lobby.Actions.LobbySettings(arg0, arg2)
	local registerVal14 = Lobby.Actions.UpdateUI(arg0, arg2)
	local registerVal15 = Lobby.Actions.SwitchMode(arg0, switchToMode)
	local registerVal16 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal17 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal18 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal19 = {}
	registerVal19.head = nil
	registerVal19.interrupt = Lobby.Interrupt.NONE
	registerVal19.force = false
	registerVal19.cancellable = false
	if registerVal16 == true then
		registerVal19.head = registerVal9
		Lobby.Process.AddActions(registerVal9, registerVal11, Lobby.Process.DO_NOTHING_IF_FAILURE, registerVal7)
		Lobby.Process.AddActions(registerVal11, registerVal10, registerVal7, registerVal7)
	else
		registerVal19.head = registerVal11
	end
	Lobby.Process.AddActions(registerVal11, registerVal13, registerVal7, registerVal7)
	Lobby.Process.AddActions(registerVal13, registerVal14, registerVal7, registerVal7)
	Lobby.Process.AddActions(registerVal14, registerVal12, registerVal7, registerVal7)
	return registerVal19
end

function Lobby.ProcessNavigate.LeaveCPLANGameLobby(arg0, arg1, arg2, arg3)
	local registerVal4 = {}
	registerVal4.controller = arg0
	registerVal4.errorTarget = arg2
	local registerVal5 = Lobby.Interrupt.Back(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal4)
	local registerVal6 = Lobby.Interrupt.FailedAction(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal4)
	local registerVal7 = Lobby.Interrupt.ErrorMsg(Lobby.ProcessNavigate.GameLobbyInterrupt, registerVal4, Engine.Localize("MENU_FAILED_TO_HOST_LOBBY"))
	Engine.LobbyLaunchClear()
	local function __FUNC_D1F1_()
		Engine.SetLobbyMode(arg2.lobbyType, arg2.lobbyMode)
		Engine.QoSProbeListenerEnable(Enum.LobbyType.LOBBY_TYPE_GAME, false)
		Engine.SetGametype(Lobby.ProcessNavigate.SwitchLobbiesGetGametype(arg0, arg2))
	end

	local function __FUNC_D3C5_()
		local registerVal1 = {}
		registerVal1.controller = arg0
		registerVal1.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
		registerVal1.mainMode = arg2.mainMode
		registerVal1.lobbyTimerType = arg2.lobbyTimerType
		Lobby.Timer.HostingLobby(registerVal1)
	end

	local registerVal12 = {}
	registerVal12.controller = arg0
	registerVal12.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
	registerVal12.mainMode = arg2.mainMode
	local registerVal10 = Lobby.Actions.LobbyVMCallRetVal(Lobby.Timer.HostingLobbyEnd, registerVal12, true, false, false)
	local registerVal11 = Lobby.Actions.ExecuteScript(__FUNC_D1F1_)
	registerVal12 = Lobby.Actions.ExecuteScript(__FUNC_D3C5_)
	local registerVal13 = Lobby.Actions.OpenSpinner()
	local registerVal14 = Lobby.Actions.CloseSpinner()
	local registerVal15 = Lobby.Actions.LeaveWithParty(3000.000000)
	local registerVal16 = Lobby.Actions.LobbySettings(arg0, arg2)
	local registerVal17 = Lobby.Actions.UpdateUI(arg0, arg2)
	local registerVal18 = Lobby.Actions.SwitchMode(arg0, switchToMode)
	local registerVal19 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal20 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal21 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal22 = Lobby.Actions.SetSavedOrDefaultMap(arg0, arg2)
	local registerVal23 = {}
	registerVal23.head = nil
	registerVal23.interrupt = Lobby.Interrupt.NONE
	registerVal23.force = false
	registerVal23.cancellable = false
	if registerVal19 == true then
		registerVal23.head = registerVal10
		Lobby.Process.AddActions(registerVal10, registerVal13, Lobby.Process.DO_NOTHING_IF_FAILURE, registerVal7)
		if registerVal20 == true and 1.000000 < registerVal21 and arg3 == LuaEnums.LEAVE_WITH_PARTY.WITH then
			Lobby.Process.AddActions(registerVal13, registerVal15, registerVal7, registerVal7)
		end
		Lobby.Process.AddActions(registerVal15, registerVal11, registerVal7, registerVal7)
		Lobby.Process.AddActions(registerVal11, registerVal12, registerVal7, registerVal7)
	else
		registerVal23.head = registerVal13
		if registerVal20 == true and 1.000000 < registerVal21 and arg3 == LuaEnums.LEAVE_WITH_PARTY.WITH then
			Lobby.Process.AddActions(registerVal13, registerVal15, registerVal7, registerVal7)
		end
	end
	Lobby.Process.AddActions(registerVal15, registerVal16, registerVal7, registerVal7)
	Lobby.Process.AddActions(registerVal16, registerVal22, registerVal7, registerVal7)
	Lobby.Process.AddActions(registerVal22, registerVal17, registerVal7, registerVal7)
	Lobby.Process.AddActions(registerVal17, registerVal14, registerVal7, registerVal7)
	return registerVal23
end


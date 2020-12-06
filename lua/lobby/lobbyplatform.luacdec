-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Process.LobbyProcessNavigate")
require("lua.Lobby.Process.LobbyProcess")
require("lua.Lobby.Process.LobbyProcessQueue")
require("lua.Lobby.Process.LobbyProcessPlatform")
require("lua.Shared.CoDShared")
require("lua.Shared.LobbyData")
Lobby.Platform = {}
Lobby.Platform.LobbyJoinableStrings = {}
Lobby.Platform.LobbyJoinableStrings[Enum.LobbyJoinable.LOBBY_JOINABLE_NO_NOT_IN_LOBBY] = "PRESENCE_NOT_JOINABLE"
Lobby.Platform.LobbyJoinableStrings[Enum.LobbyJoinable.LOBBY_JOINABLE_YES] = "PRESENCE_JOINABLE"
Lobby.Platform.LobbyJoinableStrings[Enum.LobbyJoinable.LOBBY_JOINABLE_YES_FRIENDS_ONLY] = "PRESENCE_NOT_JOINABLE_PARTY_PRIVACY_IS_FRIENDS_ONLY"
Lobby.Platform.LobbyJoinableStrings[Enum.LobbyJoinable.LOBBY_JOINABLE_NO_PARTY_PRIVACY_INVITE_ONLY] = "PRESENCE_NOT_JOINABLE_PARTY_PRIVACY_IS_INVITE_ONLY"
Lobby.Platform.LobbyJoinableStrings[Enum.LobbyJoinable.LOBBY_JOINABLE_NO_PARTY_PRIVACY_CLOSED] = "PRESENCE_NOT_JOINABLE_PARTY_PRIVACY_IS_CLOSED"
Lobby.Platform.LobbyJoinableStrings[Enum.LobbyJoinable.LOBBY_JOINABLE_NO_PARTY_FULL] = "PRESENCE_NOT_JOINABLE_PARTY_IS_FULL"
Lobby.Platform.LobbyJoinableStrings[Enum.LobbyJoinable.LOBBY_JOINABLE_NO_GAME_FULL] = "PRESENCE_NOT_JOINABLE_GAME_IS_FULL"
Lobby.Platform.LobbyJoinableStrings[Enum.LobbyJoinable.LOBBY_JOINABLE_NO_PLAYING_LOCAL] = "PRESENCE_NOT_JOINABLE_GAME_IS_OFFLINE"
Lobby.Platform.LobbyJoinableStrings[Enum.LobbyJoinable.LOBBY_JOINABLE_NO_GAME_PAUSED] = "PRESENCE_NOT_JOINABLE_GAME_IS_PAUSED"
Lobby.Platform.LobbyJoinableStrings[Enum.LobbyJoinable.LOBBY_JOINABLE_NO] = "PRESENCE_NOT_JOINABLE"
Lobby.Platform.DISABLE_PLATFORM_SESSIONS = -1.000000
local registerVal1 = {}
registerVal1.LOCKED = 0.000000
registerVal1.UNLOCKED = 1.000000
Lobby.Platform.PLATFORM_SESSION_PS4_LOCK_FLAG = registerVal1
registerVal1 = {}
registerVal1.PUBLIC = 4.000000
registerVal1.PRIVATE = 8.000000
Lobby.Platform.PLATFORM_SESSION_PS4_SESSION_FLAG = registerVal1
registerVal1 = {}
registerVal1.PRIVATE_LOBBY = "PrivateLobbySession"
registerVal1.GAME_LOBBY = "GameLobbySession"
Lobby.Platform.PLATFORM_SESSION_XBOX_TEMPLATE = registerVal1
registerVal1 = {}
registerVal1.updateTime = 0.000000
registerVal1.taskInProgress = false
registerVal1.sessionFailure = {}
registerVal1.sessionFailureTime = {}
registerVal1.sessionId = {}
registerVal1.lobbyId = {}
registerVal1.changed = {}
registerVal1.lastSignedInState = {}
registerVal1.lockFlag = {}
registerVal1.sessionTypeFlag = {}
Lobby.Platform.PS4 = registerVal1
registerVal1 = {}
registerVal1.updateTime = 0.000000
registerVal1.taskInProgress = false
registerVal1.disabled = {}
registerVal1.sessionFailure = {}
registerVal1.sessionFailureTime = {}
registerVal1.rtaSubscribe = {}
registerVal1.sessionChangeToken = {}
registerVal1.subscriptionLostToken = {}
registerVal1.templateName = {}
registerVal1.sessionId = {}
registerVal1.changed = {}
registerVal1.lastSignedInState = {}
registerVal1.roundStart = {}
registerVal1.roundStartSessionId = {}
registerVal1.roundEnd = {}
registerVal1.playerSessionId = {}
registerVal1.roundStartTime = {}
registerVal1.roundStartCounter = {}
registerVal1.roundEndCounter = {}
registerVal1.sessionClosed = {}
registerVal1.joinRestriction = {}
registerVal1.visibility = {}
Lobby.Platform.XBOX = registerVal1
registerVal1 = {}
registerVal1.updateTime = 0.000000
Lobby.Platform.Mods = registerVal1
function Lobby.Platform.PlatformSessionGetPartyPrivacyStatus(arg0)
	if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_OPEN then
	else
		if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_FRIENDS_ONLY then
		else
			if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_INVITE_ONLY then
			else
				if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED then
				end
			end
		end
	end
	return "CLOSED"
end

function Lobby.Platform.PlatformSessionOrbisEnabled()
	local registerVal0 = Engine.IsDedicatedServer()
	if LuaUtils.isPS4 == false or registerVal0 then
		return false
	end
	registerVal0 = Dvar.platformSessionsOrbis:get()
	if Enum.PlatformSessions.PLATFORM_SESSIONS_OFF >= registerVal0 then
	end
	return true
end

function Lobby.Platform.PlatformSessionDurangoEnabled()
	local registerVal0 = Engine.IsDedicatedServer()
	if LuaUtils.isXbox == false or registerVal0 then
		return false
	end
	registerVal0 = Dvar.platformSessionsDurango:get()
	if Enum.PlatformSessions.PLATFORM_SESSIONS_OFF >= registerVal0 then
	end
	return true
end

function Lobby.Platform.PlatformSessionPCEnabled()
	local registerVal0 = Engine.IsDedicatedServer()
	if registerVal0 then
		return false
	end
	return LuaUtils.isPC
end

function Lobby.Platform.IsOnlineGame()
	local registerVal0 = Engine.SessionMode_IsOnlineGame()
	if registerVal0 then
		return true
	end
	return false
end

function Lobby.Platform.IsRankedGame()
	local registerVal0 = Lobby.Platform.IsOnlineGame()
	registerVal0 = Engine.GameModeIsMode(Enum.eGameModes.MODE_GAME_MATCHMAKING_MANUAL)
	if registerVal0 == true and not registerVal0 then
		registerVal0 = Engine.GameModeIsMode(Enum.eGameModes.MODE_GAME_MANUAL_PLAYLIST)
	else
	end
	return true
end

function Lobby.Platform.IsHost()
	local registerVal0 = Engine.DvarBool(nil, "sv_running")
	return registerVal0
end

function Lobby.Platform.OnInit(arg0)
	local registerVal1 = Engine.IsShipBuild()
	if registerVal1 == false then
		Engine.SetDvar("platformSessionCreateFailure", 0.000000)
		Engine.SetDvar("platformSessionJoinFailure", 0.000000)
		Engine.SetDvar("platformSessionLeaveFailure", 0.000000)
		Engine.SetDvar("platformSessionSetActivityFailure", 0.000000)
		Engine.SetDvar("platformSessionSetPartyPrivacyFailure", 0.000000)
		Engine.SetDvar("platformSessionSetSessionClosedFailure", 0.000000)
		Engine.SetDvar("platformSessionSetJoinRestrictionFailure", 0.000000)
		Engine.SetDvar("platformSessionSetVisibilityFailure", 0.000000)
	end
end

function Lobby.Platform.OnSessionStart(arg0)
	Lobby.Platform.PlatformSessionDirty(arg0.lobbyType)
end

function Lobby.Platform.OnSessionEnd(arg0)
	Lobby.Platform.PlatformSessionDirty(arg0.lobbyType)
end

function Lobby.Platform.OnMatchStart(arg0)
	local registerVal4 = Lobby.Platform.PlatformSessionDurangoEnabled()
	if registerVal4 then
		for index4=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
			Lobby.Platform.XBOX.roundStart[index4] = true
		end
	end
	if LuaUtils.isXbox then
		Engine.SetDvar("xblive_rta_enabled", 0.000000)
	end
end

function Lobby.Platform.OnMatchEnd(arg0)
	local registerVal4 = Engine.GetLobbyNetworkMode()
	if LuaUtils.isPS4 == true and arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME and registerVal4 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		for index4=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
			if Engine.NotifyPsPlusAsyncMultiplay ~= nil then
				Engine.NotifyPsPlusAsyncMultiplay((index4 - 1.000000))
			end
		end
	end
	registerVal4 = Lobby.Platform.PlatformSessionDurangoEnabled()
	if registerVal4 then
		for index4=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
			Lobby.Platform.XBOX.roundEnd[index4] = true
		end
	end
	if LuaUtils.isXbox then
		Engine.SetDvar("xblive_rta_enabled", 1.000000)
	end
end

function Lobby.Platform.OnPlatformPlayTogether(arg0)
	local registerVal1 = Dvar.platformSessionsOrbisPlayTogetherEnabled:exists()
	registerVal1 = Dvar.platformSessionsOrbisPlayTogetherEnabled:get()
	if registerVal1 == false or registerVal1 == false then
		return 
	end
	local registerVal2 = Lobby.Timer.LobbyIsLocked()
	if registerVal2 then
		LuaUtils.UI_ShowErrorMessageDialog(arg0.controller, "MENU_CANNOT_JOIN_LOBBY_LOCKED", "MENU_MATCH_LOCKED")
		return 
	end
	if arg0.error == true then
		return 
	end
	local registerVal4 = Engine.GetGlobalModel()
	Engine.ForceNotifyModelSubscriptions(Engine.CreateModel(registerVal4, "lobbyRoot.closePopups"))
	registerVal2 = Lobby.Platform.PlatformSessionOrbisEnabled()
	if registerVal2 then
		registerVal2 = Engine.IsRunningUILevel()
		if not registerVal2 then
			registerVal2 = {}
			registerVal2.controller = arg0.controller
			registerVal2.xuid = 0.000000
			registerVal2.platform = true
			registerVal2.platformData = arg0
			registerVal2.playTogether = true
			local registerVal3 = CoDShared.QuitGame(arg0.controller)
			registerVal2.migrating = (not registerVal3)
			LobbyVM.InGameJoin(registerVal2, true)
			return 
		end
		registerVal2 = Lobby.Platform.PS4ProcessPlayTogetherEvent(arg0)
		if registerVal2 ~= nil then
			registerVal3 = Lobby.Process.Recover(arg0.controller, LobbyData.UITargets.UI_MODESELECT.id)
			Lobby.Process.AppendProcess(registerVal3, registerVal2)
			Lobby.ProcessQueue.AddToQueue("OnPlatformPlayTogether", registerVal3)
		end
	end
end

function Lobby.Platform.OnPlatformSessionDataUpdate(arg0)
	local registerVal6 = Lobby.Platform.PlatformSessionOrbisEnabled()
	if registerVal6 then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_PS4, ("OnPlatformSessionDataUpdate event occurred, sessionId: '" .. arg0.sessionId .. "', gamertag: " .. arg0.gamertag .. ".
"))
	else
		registerVal6 = Lobby.Platform.PlatformSessionDurangoEnabled()
		if registerVal6 then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_XBOX, ("OnPlatformSessionDataUpdate event occurred, sessionId: '" .. arg0.sessionId .. "', gamertag: " .. arg0.gamertag .. ".
"))
		end
	end
	Lobby.Platform.PlatformSessionDirty(arg0.lobbyType)
end

function Lobby.Platform.OnPlatformJoinOrbis(arg0)
	local registerVal8 = Engine.IsRunningUILevel()
	if not registerVal8 then
		registerVal8 = {}
		registerVal8.controller = arg0.forController
		registerVal8.xuid = 0.000000
		if arg0.forController or not Enum.JoinType.JOIN_TYPE_INVITE then
		end
		registerVal8.joinType = Enum.JoinType.JOIN_TYPE_FRIEND
		registerVal8.platform = true
		registerVal8.platformData = arg0
		local registerVal9 = CoDShared.QuitGame(arg0.forController)
		registerVal8.migrating = (not registerVal9)
		LobbyVM.InGameJoin(registerVal8, true)
		return 
	end
	if arg0.invite == true then
		registerVal8 = Lobby.ProcessPlatform.PS4AcceptInvite(arg0.forController, arg0.forXuid, arg0.invitationId, Enum.JoinType.JOIN_TYPE_INVITE, LuaEnums.LEAVE_WITH_PARTY.WITHOUT)
		Lobby.ProcessQueue.AddToQueue("PS4AcceptInvite", registerVal8)
	else
		registerVal8 = Lobby.ProcessPlatform.PS4SessionJoin(arg0.forController, arg0.sessionId, Enum.JoinType.JOIN_TYPE_FRIEND, LuaEnums.LEAVE_WITH_PARTY.WITHOUT)
		Lobby.ProcessQueue.AddToQueue("PS4SessionJoin", registerVal8)
	end
end

function Lobby.Platform.InGamePlatformJoinOrbis(arg0)
	if arg0.invite == true then
		return Lobby.ProcessPlatform.PS4AcceptInvite(arg0.forController, arg0.forXuid, arg0.invitationId, Enum.JoinType.JOIN_TYPE_INVITE, LuaEnums.LEAVE_WITH_PARTY.WITHOUT)
	else
		return Lobby.ProcessPlatform.PS4SessionJoin(arg0.forController, arg0.sessionId, Enum.JoinType.JOIN_TYPE_FRIEND, LuaEnums.LEAVE_WITH_PARTY.WITHOUT)
	end
end

function Lobby.Platform.OnPlatformJoinDurango(arg0)
	if arg0.invite == true then
		local registerVal4 = Engine.GetControllerForXuid(arg0.invitedXuid)
	else
		registerVal4 = Engine.GetControllerForXuid(arg0.joinerXuid)
	end
	if registerVal4 == LuaEnums.INVALID_CONTROLLER_PORT then
		Engine.Durango_TryToSetXUIDToGPad(arg0.invitedXuid)
		return nil
	end
	registerVal4 = Engine.LobbyIsPlayerInLobbyByXuid(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg0.joineeXuid)
	registerVal4 = Engine.LobbyIsPlayerInLobbyByXuid(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME, arg0.joineeXuid)
	if not arg0.invite or registerVal4 then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "LobbyVM: Trying to Join lobby we are already part of.
")
		Engine.PlatformSessionClearInviteJoinInfo()
		return nil
	end
	registerVal4 = Engine.IsRunningUILevel()
	if not registerVal4 then
		registerVal4 = {}
		registerVal4.controller = registerVal4
		registerVal4.xuid = arg0.joineeXuid
		if arg0 or not Enum.JoinType.JOIN_TYPE_INVITE then
		end
		registerVal4.joinType = Enum.JoinType.JOIN_TYPE_FRIEND
		registerVal4.platform = true
		registerVal4.platformData = arg0
		local registerVal5 = CoDShared.QuitGame(registerVal4)
		registerVal4.migrating = (not registerVal5)
		LobbyVM.InGameJoin(registerVal4, true)
		return nil
	end
	if arg0.invite == true then
		local registerVal7 = Engine.GetControllerForXuid(arg0.invitedXuid)
		local registerVal8 = Lobby.ProcessPlatform.XboxJoin(registerVal7, arg0.senderXuid, Enum.JoinType.JOIN_TYPE_INVITE, LuaEnums.LEAVE_WITH_PARTY.WITHOUT)
	else
		registerVal7 = Engine.GetControllerForXuid(arg0.joinerXuid)
		registerVal8 = Lobby.ProcessPlatform.XboxJoin(registerVal7, arg0.joineeXuid, Enum.JoinType.JOIN_TYPE_FRIEND, LuaEnums.LEAVE_WITH_PARTY.WITHOUT)
	end
	return process
end

function Lobby.Platform.OnPlatformJoinPC(arg0)
	local registerVal4 = Engine.GetControllerForXuid(arg0.joinerXuid)
	local registerVal5 = Lobby.ProcessPlatform.PCJoin(registerVal4, arg0.joineeXuid, arg0.friendXuid, Enum.JoinType.JOIN_TYPE_FRIEND, LuaEnums.LEAVE_WITH_PARTY.WITHOUT)
	return registerVal5
end

function Lobby.Platform.PlatformJoin(arg0)
	local registerVal1 = Lobby.Platform.PlatformSessionOrbisEnabled()
	if registerVal1 then
		registerVal1 = Lobby.Platform.OnPlatformJoinOrbis(arg0)
		if invite == true then
			Lobby.ProcessQueue.AddToQueue("PS4AcceptInvite", registerVal1)
		else
			Lobby.ProcessQueue.AddToQueue("PS4SessionJoin", registerVal1)
		else
			registerVal1 = Lobby.Platform.PlatformSessionDurangoEnabled()
			if registerVal1 then
				registerVal1 = Lobby.Platform.OnPlatformJoinDurango(arg0)
				if invite == true then
					Lobby.ProcessQueue.AddToQueue("XboxAcceptInvite", registerVal1)
				else
					Lobby.ProcessQueue.AddToQueue("XboxSessionJoin", registerVal1)
				else
					registerVal1 = Lobby.Platform.PlatformSessionPCEnabled()
					if registerVal1 then
						registerVal1 = Lobby.Platform.OnPlatformJoinPC(arg0)
						Lobby.ProcessQueue.AddToQueue("PCSessionJoin", registerVal1)
					end
				end
			end
		end
	end
end

function Lobby.Platform.GetAutoJoinProcess(arg0)
	local registerVal1 = Lobby.Platform.PlatformSessionOrbisEnabled()
	if registerVal1 then
		return Lobby.Platform.OnPlatformJoinOrbis(arg0)
	else
		registerVal1 = Lobby.Platform.PlatformSessionDurangoEnabled()
		if registerVal1 then
			return Lobby.Platform.OnPlatformJoinDurango(arg0)
		else
			registerVal1 = Lobby.Platform.PlatformSessionPCEnabled()
			if registerVal1 then
				return Lobby.Platform.OnPlatformJoinPC(arg0)
			end
		end
	end
end

function Lobby.Platform.InGamePlatformJoinDurango(arg0)
	if arg0.invite == true then
		local registerVal4 = Engine.GetControllerForXuid(arg0.invitedXuid)
		return Lobby.ProcessPlatform.XboxJoin(registerVal4, arg0.senderXuid, Enum.JoinType.JOIN_TYPE_INVITE, LuaEnums.LEAVE_WITH_PARTY.WITHOUT)
	else
		registerVal4 = Engine.GetControllerForXuid(arg0.joinerXuid)
		return Lobby.ProcessPlatform.XboxJoin(registerVal4, arg0.joineeXuid, Enum.JoinType.JOIN_TYPE_FRIEND, LuaEnums.LEAVE_WITH_PARTY.WITHOUT)
	end
end

function Lobby.Platform.OnPlatformJoin(arg0)
	if not arg0 or LuaUtils.isXbox then
		local registerVal1 = Engine.IsMpStillDownloading()
		registerVal1 = Engine.IsZmStillDownloading()
		registerVal1 = Engine.IsCpStillDownloading()
		registerVal1 = Engine.IsZmInitialStillDownloading()
		registerVal1 = Engine.IsMpInitialStillDownloading()
		if not registerVal1 and not registerVal1 and not registerVal1 and not arg0 or registerVal1 then
			LuaUtils.UI_ShowErrorMessageDialog(controller, "MENU_CANNOT_JOIN_DURING_INSTALL")
			return 
		end
		registerVal1 = Engine.IsInGame()
		if registerVal1 then
			LuaUtils.UI_ShowErrorMessageDialog(controller, "MENU_CANNOT_JOIN_MUST_QUIT_GAME_FIRST")
			return 
		end
	end
	registerVal1 = Lobby.Timer.LobbyIsLocked()
	if registerVal1 then
		LuaUtils.UI_ShowErrorMessageDialog(controller, "MENU_CANNOT_JOIN_LOBBY_LOCKED", "MENU_MATCH_LOCKED")
		return 
	end
	if LuaUtils.isPC and arg0.joinable ~= true then
		if arg0.joinError then
		end
		if not Lobby.Platform.LobbyJoinableStrings[arg0.joinError] then
		end
		LuaUtils.UI_ShowErrorMessageDialog(controller, "PRESENCE_NOT_JOINABLE")
		return 
	end
	if arg0.error == true then
		return 
	end
	local registerVal3 = Engine.GetGlobalModel()
	Engine.ForceNotifyModelSubscriptions(Engine.CreateModel(registerVal3, "lobbyRoot.closePopups"))
	if not arg0.controller then
		registerVal1 = Engine.GetControllerForXuid(arg0.joinerXuid)
		arg0.controller = registerVal1
	end
	local registerVal2 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal2 then
	end
	registerVal2 = Engine.LobbyIsPlayerInLobby(Enum.LobbyType.LOBBY_TYPE_GAME, arg0.joineeXuid)
	if registerVal2 == true then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "LobbyVM: Trying to AutoJoin lobby we are already part of
")
		return 
	end
	Lobby.Platform.AutoJoinData = arg0
end

function Lobby.Platform.PlatformSessionDirty(arg0)
	local registerVal1 = Lobby.Platform.PlatformSessionOrbisEnabled()
	if registerVal1 then
		if arg0 ~= Enum.LobbyType.LOBBY_TYPE_PRIVATE then
			return 
		end
		for index1=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
			Lobby.Platform.PS4.changed[index1] = true
		end
	else
		registerVal1 = Lobby.Platform.PlatformSessionDurangoEnabled()
		if registerVal1 then
			for index1=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
				Lobby.Platform.XBOX.changed[index1][(arg0 + 1.000000)] = true
			end
		end
	end
end

function Lobby.Platform.TRCPump()
	if LuaUtils.isPS4 == false then
		return 
	end
	local registerVal0 = Engine.GetLuaCodeVersion()
	if registerVal0 < 4.000000 then
		return 
	end
	registerVal0 = Engine.GetLobbyNetworkMode()
	if registerVal0 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		for index0=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
			local registerVal5 = Engine.IsControllerBeingUsed((index0 - 1.000000))
			if registerVal5 then
				Engine.NotifyPsPlus((index0 - 1.000000))
				Engine.DisplayChatRestrictionForUser((index0 - 1.000000))
				Engine.DisplayContentRestrictionForUser((index0 - 1.000000))
			end
		end
	end
end

local function __FUNC_6393_(arg0, arg1)
	Lobby.Platform.PS4.sessionId[(arg0 + 1.000000)] = arg1
	local registerVal4 = Engine.GetLobbyLobbyID(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	Lobby.Platform.PS4.lobbyId[(arg0 + 1.000000)] = registerVal4
	Engine.PlatformSessionSetDebugInfo(arg0, Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg1)
end

function Lobby.Platform.PS4GetSessionId(arg0)
	return Lobby.Platform.PS4.sessionId[(arg0 + 1.000000)]
end

local function __FUNC_6612_(arg0, arg1, arg2, arg3)
	Lobby.Platform.PS4.sessionFailure[(arg0 + 1.000000)] = arg2
	Lobby.Platform.PS4.sessionFailureTime[(arg0 + 1.000000)] = arg3
end

local function __FUNC_6703_(arg0)
	Lobby.Platform.PS4.sessionId[(arg0 + 1.000000)] = ""
	Lobby.Platform.PS4.lobbyId[(arg0 + 1.000000)] = 0.000000
	Lobby.Platform.PS4.changed[(arg0 + 1.000000)] = 0.000000
	Lobby.Platform.PS4.sessionFailure[(arg0 + 1.000000)] = false
	Lobby.Platform.PS4.sessionFailureTime[(arg0 + 1.000000)] = 0.000000
	Lobby.Platform.PS4.lastSignedInState[(arg0 + 1.000000)] = false
	Engine.PlatformSessionSetDebugInfo(arg0, Enum.LobbyType.LOBBY_TYPE_PRIVATE, "")
end

local function __FUNC_69AA_(arg0, arg1)
	local registerVal2 = Dvar.platformSessionsOrbis:get()
	Lobby.Platform.PS4.taskInProgress = false
	Engine.PlatformSessionCancelTasks()
	if registerVal2 == Enum.PlatformSessions.PLATFORM_SESSIONS_ON_NONFATAL then
		local registerVal6 = Engine.seconds()
		local registerVal7 = Engine.DvarInt(nil, Lobby.Platform.DISABLE_PLATFORM_SESSIONS)
		__FUNC_6612_(arg0, true, (registerVal6 + registerVal7))
	else
		if registerVal2 == Enum.PlatformSessions.PLATFORM_SESSIONS_ON_FATAL then
			local registerVal3 = Engine.IsInGame()
			if registerVal3 == true then
				return 
			end
			registerVal3 = LobbyData.GetCurrentMenuTarget()
			if registerVal3.id == LobbyData.UITargets.UI_MAIN.id then
				return 
			end
			local registerVal4 = {}
			registerVal4.controller = arg0
			registerVal4.signoutUsers = false
			LobbyVM.ExecuteLobbyVMRequest(LuaEnums.LOBBYVM_REQUEST.FORCE_LOCAL_MODE)
			Engine.LobbyLaunchClear()
			Lobby.ProcessQueue.ClearQueue()
			LobbyVM.ErrorShutdown(registerVal4)
			LobbyVM.ShutdownCleanup(registerVal4)
			local registerVal5 = Dvar.platformSessionShowErrorCodes:get()
			if registerVal5 == true then
				LuaUtils.UI_ShowErrorMessageDialog(arg0, ("Platform Session Error: " .. arg1))
			else
				LuaUtils.UI_ShowErrorMessageDialog(arg0, "PLATFORM_PLATFORM_SESSION_ERROR")
			end
			return 
		end
	end
end

Lobby.Platform.PlatformSessionPS4Error = __FUNC_69AA_
function Lobby.Platform.PlatformSessionPS4GetLockFlag(arg0)
	if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_OPEN then
	else
		if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_FRIENDS_ONLY then
		else
			if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_INVITE_ONLY then
			else
				if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED then
				end
			end
		end
	end
	return Lobby.Platform.PLATFORM_SESSION_PS4_LOCK_FLAG.LOCKED
end

function Lobby.Platform.PlatformSessionPS4GetSessionTypeFlag(arg0)
	if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_OPEN then
	else
		if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_FRIENDS_ONLY then
		else
			if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_INVITE_ONLY then
			else
				if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED then
				end
			end
		end
	end
	return Lobby.Platform.PLATFORM_SESSION_PS4_SESSION_FLAG.PUBLIC
end

local function __FUNC_752A_(arg0, arg1, arg2)
	if arg0 == Lobby.ProcessQueue.ACTIONSTATE.RUNNING then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4CreateComplete ACTIONSTATE.RUNNING should not happen.
")
		return false
	else
		if arg0 == Lobby.ProcessQueue.ACTIONSTATE.SUCCESS then
			if arg2.isError == false then
				__FUNC_6393_(arg1.controller, arg2.sessionId)
				local registerVal10 = Lobby.Platform.PS4GetSessionId(arg1.controller)
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_PS4, ("PlatformSessionPS4CreateComplete, we have successfully created session id: '" .. registerVal10 .. "'.
"))
				local registerVal7 = Engine.GetPrimaryController()
				registerVal7 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
				if arg1.controller == registerVal7 and registerVal7 then
					Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4CreateComplete, we are host of private session, setting session data.
")
					Engine.PlatformSessionPS4SetData(Enum.LobbyType.LOBBY_TYPE_PRIVATE, Lobby.Platform.PS4GetSessionId(arg1.controller))
				else
					Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, ("PlatformSessionPS4Create failed: " .. arg2.returnCodeHex .. "
"))
				else
					if arg0 == Lobby.ProcessQueue.ACTIONSTATE.FAILURE or arg0 == Lobby.ProcessQueue.ACTIONSTATE.ERROR then
						Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, ("PlatformSessionPS4Create failed: " .. arg2.returnCodeHex .. "
"))
					end
				end
			end
		end
	end
	Lobby.Platform.PS4.taskInProgress = false
	if true == true then
		Lobby.Platform.PlatformSessionPS4Error(arg1.controller, arg2.returnCodeHex)
	end
	return true
end

Lobby.Platform.PlatformSessionPS4CreateComplete = __FUNC_752A_
function Lobby.Platform.PlatformSessionPS4Create(arg0, arg1, arg2)
	Lobby.Platform.PS4.taskInProgress = true
	Dvar.platformSessionOrbisName:set(Engine.LocalizeWithoutLocsMarkers("MENU_PLATFORM_SESSION_NAME"))
	Dvar.platformSessionOrbisStatus:set("")
	Dvar.platformSessionOrbisImgPath:set("")
	Dvar.platformSessionOrbisImg:set("platform_session.png")
	local registerVal3 = Engine.GetPartyPrivacy()
	local registerVal4 = Lobby.Platform.PlatformSessionPS4GetLockFlag(registerVal3)
	Lobby.Platform.PS4.lockFlag[(arg0 + 1.000000)] = registerVal3
	Dvar.platformSessionOrbisLockFlag:set(registerVal4)
	local registerVal5 = Lobby.Platform.PlatformSessionPS4GetSessionTypeFlag(registerVal3)
	Lobby.Platform.PS4.sessionTypeFlag[(arg0 + 1.000000)] = registerVal3
	Dvar.platformSessionOrbisSessionTypeFlag:set(registerVal5)
	local registerVal8 = {}
	registerVal8.controller = arg0
	registerVal8.lobbyType = arg1
	registerVal8.maxSlot = arg2
	local registerVal6 = Lobby.ProcessQueue.RegisterEventHandler(Lobby.Platform.PlatformSessionPS4CreateComplete, registerVal8)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4Create started.
")
	local registerVal7 = Engine.IsShipBuild()
	registerVal7 = Engine.DvarInt(0.000000, "platformSessionCreateFailure")
	if registerVal7 == false and registerVal7 == 1.000000 then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4Create FAILURE TEST.
")
		registerVal8 = {}
		registerVal8.actionId = registerVal6
		registerVal8.isError = true
		registerVal8.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal8.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal8)
		return 
	end
	registerVal7 = Engine.PlatformSessionPS4Create(registerVal6, arg0, arg1, arg2)
	if registerVal7 == false then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4Create failed to start.
")
		registerVal8 = {}
		registerVal8.actionId = registerVal6
		registerVal8.isError = true
		registerVal8.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal8.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal8)
		return 
	end
end

local function __FUNC_852E_(arg0, arg1, arg2)
	if arg0 == Lobby.ProcessQueue.ACTIONSTATE.RUNNING then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionJoinCompletePS4 ACTIONSTATE.RUNNING should not happen.
")
		return false
	else
		if arg0 == Lobby.ProcessQueue.ACTIONSTATE.SUCCESS then
			if arg2.isError == false then
				if arg2.sessionId ~= nil then
					__FUNC_6393_(arg1.controller, arg2.sessionId)
					local registerVal10 = Lobby.Platform.PS4GetSessionId(arg1.controller)
					Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_PS4, ("PlatformSessionJoinCompletePS4, we have successfully joined session id: '" .. registerVal10 .. "'.
"))
				else
					Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, ("PlatformSessionPS4Join failed: " .. arg2.returnCodeHex .. "
"))
				else
					if arg0 == Lobby.ProcessQueue.ACTIONSTATE.FAILURE or arg0 == Lobby.ProcessQueue.ACTIONSTATE.ERROR then
						Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, ("PlatformSessionPS4Join failed: " .. arg2.returnCodeHex .. "
"))
					end
				end
			end
		end
	end
	Lobby.Platform.PS4.taskInProgress = false
	if true == true then
		Lobby.Platform.PlatformSessionPS4Error(arg1.controller, arg2.returnCodeHex)
	end
	return true
end

Lobby.Platform.PlatformSessionJoinCompletePS4 = __FUNC_852E_
function Lobby.Platform.PlatformSessionPS4Join(arg0, arg1, arg2)
	Lobby.Platform.PS4.taskInProgress = true
	local registerVal5 = {}
	registerVal5.controller = arg0
	registerVal5.lobbyType = arg1
	registerVal5.sessionId = arg2
	local registerVal3 = Lobby.ProcessQueue.RegisterEventHandler(Lobby.Platform.PlatformSessionJoinCompletePS4, registerVal5)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_PS4, ("PlatformSessionPS4Join started, joining sessionId: '" .. arg2 .. "'.
"))
	local registerVal4 = Engine.IsShipBuild()
	registerVal4 = Engine.DvarInt(0.000000, "platformSessionJoinFailure")
	if registerVal4 == false and registerVal4 == 1.000000 then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4Join FAILURE TEST.
")
		registerVal5 = {}
		registerVal5.actionId = registerVal3
		registerVal5.isError = true
		registerVal5.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal5.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal5)
		return 
	end
	registerVal4 = Engine.PlatformSessionPS4Join(registerVal3, arg0, arg1, arg2)
	if registerVal4 == false then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4Join failed to start.
")
		registerVal5 = {}
		registerVal5.actionId = registerVal3
		registerVal5.isError = true
		registerVal5.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal5.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal5)
		return 
	end
end

local function __FUNC_9026_(arg0, arg1, arg2)
	if arg0 == Lobby.ProcessQueue.ACTIONSTATE.RUNNING then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4LeaveComplete ACTIONSTATE.RUNNING should not happen.
")
		return false
	else
		if arg0 == Lobby.ProcessQueue.ACTIONSTATE.SUCCESS then
			if arg2.isError == false then
				local registerVal7 = Engine.PlatformSessionPS4GetData(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
				local registerVal11 = Lobby.Platform.PS4GetSessionId(arg1.controller)
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_PS4, ("PlatformSessionPS4LeaveComplete, we have successfully left session id: '" .. registerVal11 .. "'.
"))
				local registerVal8 = Engine.GetPrimaryController()
				local registerVal9 = Lobby.Platform.PS4GetSessionId(arg1.controller)
				if arg1.controller == registerVal8 and registerVal7.sessionId == registerVal9 then
					Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4LeaveComplete, we are host of private session, clearing session data.
")
					Engine.PlatformSessionPS4ClearData(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
				else
					Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, ("PlatformSessionPS4Leave failed: " .. arg2.returnCodeHex .. "
"))
				else
					if arg0 == Lobby.ProcessQueue.ACTIONSTATE.FAILURE or arg0 == Lobby.ProcessQueue.ACTIONSTATE.ERROR then
						Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, ("PlatformSessionPS4Leave failed: " .. arg2.returnCodeHex .. "
"))
					end
				end
			end
		end
	end
	__FUNC_6393_(arg1.controller, "")
	Lobby.Platform.PS4.taskInProgress = false
	if true == true then
		Lobby.Platform.PlatformSessionPS4Error(arg1.controller, arg2.returnCodeHex)
	end
	return true
end

Lobby.Platform.PlatformSessionPS4LeaveComplete = __FUNC_9026_
function Lobby.Platform.PlatformSessionPS4Leave(arg0, arg1, arg2)
	Lobby.Platform.PS4.taskInProgress = true
	local registerVal5 = {}
	registerVal5.controller = arg0
	registerVal5.lobbyType = arg1
	registerVal5.sessionId = arg2
	local registerVal3 = Lobby.ProcessQueue.RegisterEventHandler(Lobby.Platform.PlatformSessionPS4LeaveComplete, registerVal5)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_PS4, ("PlatformSessionPS4Leave started, leaving sessionId: '" .. arg2 .. "'.
"))
	local registerVal4 = Engine.IsShipBuild()
	registerVal4 = Engine.DvarInt(0.000000, "platformSessionLeaveFailure")
	if registerVal4 == false and registerVal4 == 1.000000 then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4Leave FAILURE TEST.
")
		registerVal5 = {}
		registerVal5.actionId = registerVal3
		registerVal5.isError = true
		registerVal5.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal5.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal5)
		return 
	end
	registerVal4 = Engine.PlatformSessionPS4Leave(registerVal3, arg0, arg1, arg2)
	if registerVal4 == false then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4Leave failed to start.
")
		registerVal5 = {}
		registerVal5.actionId = registerVal3
		registerVal5.isError = true
		registerVal5.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal5.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal5)
		return 
	end
end

function Lobby.Platform.PlatformSessionPS4SetPartyPrivacyComplete(arg0, arg1, arg2)
	if arg0 == Lobby.ProcessQueue.ACTIONSTATE.RUNNING then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4SetPartyPrivacyComplete ACTIONSTATE.RUNNING should not happen.
")
		return false
	else
		if arg0 == Lobby.ProcessQueue.ACTIONSTATE.SUCCESS then
			if arg2.isError == false then
				Lobby.Platform.PS4.lockFlag[(arg1.controller + 1.000000)] = arg1.partyPrivacy
				Lobby.Platform.PS4.sessionTypeFlag[(arg1.controller + 1.000000)] = arg1.partyPrivacy
				local registerVal9 = Lobby.Platform.PlatformSessionGetPartyPrivacyStatus(arg1.partyPrivacy)
				Engine.PlatformSessionSetDebugInfo(arg1.controller, Enum.LobbyType.LOBBY_TYPE_GAME, ("partyPrivacyStatus: " .. registerVal9))
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4SetPartyPrivacyComplete, we have successfully left session.
")
			else
				Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, ("PlatformSessionPS4SetPartyPrivacy failed: " .. arg2.returnCodeHex .. "
"))
			else
				if arg0 == Lobby.ProcessQueue.ACTIONSTATE.FAILURE or arg0 == Lobby.ProcessQueue.ACTIONSTATE.ERROR then
					Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, ("PlatformSessionPS4SetPartyPrivacy failed: " .. arg2.returnCodeHex .. "
"))
				end
			end
		end
	end
	Lobby.Platform.PS4.taskInProgress = false
	if true == true then
		Engine.PlatformSessionSetDebugInfo(arg1.controller, Enum.LobbyType.LOBBY_TYPE_GAME, "partyPrivacyStatus: ERROR")
		Lobby.Platform.PlatformSessionPS4Error(arg1.controller, arg1.lobbyType, arg2.returnCodeHex)
	end
	return true
end

function Lobby.Platform.PlatformSessionPS4SetPartyPrivacy(arg0, arg1, arg2, arg3)
	local registerVal4 = Lobby.Platform.PlatformSessionPS4GetLockFlag(Lobby.Platform.PS4.lockFlag[(arg0 + 1.000000)])
	local registerVal5 = Lobby.Platform.PlatformSessionPS4GetLockFlag(arg3)
	local registerVal6 = Lobby.Platform.PlatformSessionPS4GetSessionTypeFlag(Lobby.Platform.PS4.sessionTypeFlag[(arg0 + 1.000000)])
	local registerVal7 = Lobby.Platform.PlatformSessionPS4GetSessionTypeFlag(arg3)
	if registerVal4 == registerVal5 and registerVal6 == registerVal7 then
		Lobby.Platform.PS4.lockFlag[(arg0 + 1.000000)] = arg3
		Lobby.Platform.PS4.sessionTypeFlag[(arg0 + 1.000000)] = arg3
		return 
	end
	Lobby.Platform.PS4.taskInProgress = true
	local registerVal10 = {}
	registerVal10.controller = arg0
	registerVal10.lobbyType = arg1
	registerVal10.sessionId = arg2
	registerVal10.partyPrivacy = arg3
	local registerVal8 = Lobby.ProcessQueue.RegisterEventHandler(Lobby.Platform.PlatformSessionPS4SetPartyPrivacyComplete, registerVal10)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4SetPartyPrivacy started.
")
	local registerVal9 = Engine.IsShipBuild()
	registerVal9 = Engine.DvarInt(0.000000, "platformSessionSetPartyPrivacyFailure")
	if registerVal9 == false and registerVal9 == 1.000000 then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4SetPartyPrivacy FAILURE TEST.
")
		registerVal10 = {}
		registerVal10.actionId = registerVal8
		registerVal10.isError = true
		registerVal10.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal10.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal10)
		return 
	end
	Dvar.platformSessionOrbisLockFlag:set(registerVal5)
	Dvar.platformSessionOrbisSessionTypeFlag:set(registerVal7)
	registerVal9 = Engine.PlatformSessionPS4Update(registerVal8, arg0, arg1, arg2)
	if registerVal9 == false then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_PS4, "PlatformSessionPS4SetPartyPrivacy failed to start.
")
		registerVal10 = {}
		registerVal10.actionId = registerVal8
		registerVal10.isError = true
		registerVal10.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal10.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal10)
		return 
	end
end

local function __FUNC_AC5A_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal9 = Lobby.Platform.PS4GetSessionId(arg0)
	local registerVal11 = string.len(registerVal9)
	if 0.000000 >= registerVal11 then
	end
	if arg4 == false then
		if true == false and Lobby.Platform.PS4.sessionFailure[(arg0 + 1.000000)] == false then
			return 
		end
		if true == true and Lobby.Platform.PS4.sessionFailure[(arg0 + 1.000000)] == false then
			Lobby.Platform.PlatformSessionPS4Leave(arg0, arg2, registerVal9)
		else
			__FUNC_6393_(arg0, "")
			Lobby.Platform.PS4.sessionFailure[(arg0 + 1.000000)] = false
		end
		return 
	end
	if arg5 == false or arg1 == false then
		if true == false and Lobby.Platform.PS4.sessionFailure[(arg0 + 1.000000)] == false then
			return 
		end
		if true == true and Lobby.Platform.PS4.sessionFailure[(arg0 + 1.000000)] == false then
			Lobby.Platform.PlatformSessionPS4Leave(arg0, arg2, registerVal9)
		else
			__FUNC_6393_(arg0, "")
			Lobby.Platform.PS4.sessionFailure[(arg0 + 1.000000)] = false
		end
		return 
	end
	if Lobby.Platform.PS4.changed[(arg0 + 1.000000)] == true then
		local registerVal13 = Engine.PlatformSessionPS4GetData(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		local registerVal14 = Engine.GetLobbyLobbyID(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		if true == true then
			if registerVal13.sessionId ~= registerVal9 or registerVal14 ~= Lobby.Platform.PS4.lobbyId[(arg0 + 1.000000)] then
				Lobby.Platform.PlatformSessionPS4Leave(arg0, arg2, registerVal9)
			end
		end
		Lobby.Platform.PS4.changed[(arg0 + 1.000000)] = false
		return 
	end
	if Lobby.Platform.PS4.sessionFailure[(arg0 + 1.000000)] == false then
		if true == true then
			registerVal13 = Dvar.platformSessionPartyPrivacy:get()
			registerVal13 = Engine.GetPartyPrivacy()
			if registerVal13 == true and arg0 == arg7 and arg2 == Enum.LobbyType.LOBBY_TYPE_PRIVATE and Lobby.Platform.PS4.lockFlag[(arg0 + 1.000000)] ~= registerVal13 then
				Lobby.Platform.PlatformSessionPS4SetPartyPrivacy(arg0, arg2, registerVal9, registerVal13)
				return 
			end
			return 
		end
		if arg6 == true and arg0 == arg7 then
			Lobby.Platform.PlatformSessionPS4Create(arg0, arg2, arg3)
			return 
		else
			registerVal13 = Engine.PlatformSessionPS4GetData(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
			if registerVal13.sessionId ~= "" then
				Lobby.Platform.PlatformSessionPS4Join(arg0, arg2, registerVal13.sessionId)
			end
			return 
		else
		end
	end
end

Lobby.Platform.PlatformSessionPS4PumpController = __FUNC_AC5A_
local function __FUNC_B38B_()
	local registerVal0 = Engine.IsRequestingJoin()
	if Lobby.Platform.PS4.taskInProgress ~= true and registerVal0 ~= true then
		registerVal0 = Lobby.ProcessQueue.IsQueueEmpty()
		registerVal0 = Lobby.ProcessQueue.GetQueueHead()
		if registerVal0 == false and registerVal0.nonPSNSessionBlocking ~= true then
			local registerVal1 = Engine.milliseconds()
			local registerVal2 = Dvar.platformSessionUpdateIntervalOrbis:get()
			Lobby.Platform.PS4.updateTime = (registerVal1 + registerVal2)
			return 
		end
	end
	registerVal1 = Engine.milliseconds()
	if registerVal1 < Lobby.Platform.PS4.updateTime then
		return 
	end
	registerVal1 = Engine.milliseconds()
	registerVal2 = Dvar.platformSessionUpdateIntervalOrbis:get()
	Lobby.Platform.PS4.updateTime = (registerVal1 + registerVal2)
	registerVal2 = Engine.GetLobbyNetworkMode()
	if registerVal2 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
	end
	local registerVal3 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal4 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal5 = Engine.GetLobbyHostControllerIndex(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if 18.000000 or not registerVal5 then
	end
	for index6=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
		local registerVal11 = Engine.IsSignedInToLive((index6 - 1.000000))
		local registerVal12 = Engine.IsControllerBeingUsed((index6 - 1.000000))
		if registerVal11 == true then
			Lobby.Platform.PlatformSessionPS4PumpController((index6 - 1.000000), registerVal12, Enum.LobbyType.LOBBY_TYPE_PRIVATE, 18.000000, true, registerVal3, registerVal4, LuaEnums.INVALID_CONTROLLER_PORT)
		else
			if Lobby.Platform.PS4.lastSignedInState[index6] == true then
				__FUNC_6703_((index6 - 1.000000))
			end
		end
		Lobby.Platform.PS4.lastSignedInState[index6] = registerVal11
		if Lobby.Platform.PS4.taskInProgress == true then
			return 
		end
	end
end

Lobby.Platform.PlatformSessionPS4Pump = __FUNC_B38B_
local function __FUNC_BA5C_(arg0, arg1, arg2)
	Lobby.Platform.XBOX.templateName[(arg0 + 1.000000)][(arg1 + 1.000000)] = arg2
end

local function __FUNC_BB12_(arg0, arg1)
	return Lobby.Platform.XBOX.templateName[(arg0 + 1.000000)][(arg1 + 1.000000)]
end

local function __FUNC_BBD2_(arg0, arg1, arg2)
	Lobby.Platform.XBOX.sessionId[(arg0 + 1.000000)][(arg1 + 1.000000)] = arg2
	Engine.PlatformSessionSetDebugInfo(arg0, arg1, arg2)
end

local function __FUNC_BCD8_(arg0, arg1)
	return Lobby.Platform.XBOX.sessionId[(arg0 + 1.000000)][(arg1 + 1.000000)]
end

local function __FUNC_BD97_(arg0, arg1, arg2)
	Lobby.Platform.XBOX.changed[(arg0 + 1.000000)][(arg1 + 1.000000)] = arg2
end

local function __FUNC_BE45_(arg0, arg1)
	return Lobby.Platform.XBOX.changed[(arg0 + 1.000000)][(arg1 + 1.000000)]
end

local function __FUNC_BF01_(arg0, arg1, arg2)
	Lobby.Platform.XBOX.sessionFailure[(arg0 + 1.000000)] = arg1
	Lobby.Platform.XBOX.sessionFailureTime[(arg0 + 1.000000)] = arg2
end

local function __FUNC_BFF4_(arg0)
	return Lobby.Platform.XBOX.sessionFailure[(arg0 + 1.000000)]
end

local function __FUNC_C0A8_(arg0, arg1)
	local registerVal2 = __FUNC_BB12_(arg0, arg1)
	__FUNC_BCD8_(arg0, arg1)
	return 
end

local function __FUNC_C0F8_(arg0, arg1)
	local registerVal3 = tostring(Lobby.Platform.XBOX.roundStartCounter[(arg0 + 1.000000)])
	local registerVal5 = tostring(Lobby.Platform.XBOX.roundEndCounter[(arg0 + 1.000000)])
	local registerVal6 = __FUNC_BCD8_(arg0, arg1)
	Engine.PlatformSessionSetDebugInfo(arg0, arg1, registerVal6, ("  start[ " .. registerVal3 .. " ], end[ " .. registerVal5 .. " ]"))
end

local function __FUNC_C2C5_(arg0, arg1)
	Lobby.Platform.XBOX.disabled[(arg0 + 1.000000)] = false
	__FUNC_BF01_(arg0, false, 0.000000)
	Lobby.Platform.XBOX.lastSignedInState[(arg0 + 1.000000)] = false
	for index3=Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyType.LOBBY_TYPE_GAME, 1.000000 do
		__FUNC_BBD2_(arg0, index3, "")
		__FUNC_BD97_(arg0, index3, false)
		Engine.PlatformSessionXboxXBLiveSessionClear(arg0, index3)
	end
	Lobby.Platform.XBOX.roundStart[(arg0 + 1.000000)] = false
	Lobby.Platform.XBOX.roundStartSessionId[(arg0 + 1.000000)] = ""
	Lobby.Platform.XBOX.roundEnd[(arg0 + 1.000000)] = false
	Lobby.Platform.XBOX.playerSessionId[(arg0 + 1.000000)] = nil
	Lobby.Platform.XBOX.roundStartTime[(arg0 + 1.000000)] = 0.000000
	Lobby.Platform.XBOX.roundStartCounter[(arg0 + 1.000000)] = 0.000000
	Lobby.Platform.XBOX.roundEndCounter[(arg0 + 1.000000)] = 0.000000
	Lobby.Platform.XBOX.sessionClosed[(arg0 + 1.000000)] = Enum.PartyPrivacy.PARTY_PRIVACY_OPEN
	Lobby.Platform.XBOX.joinRestriction[(arg0 + 1.000000)] = Enum.PartyPrivacy.PARTY_PRIVACY_OPEN
	Lobby.Platform.XBOX.visibility[(arg0 + 1.000000)] = Enum.PartyPrivacy.PARTY_PRIVACY_OPEN
	if arg1 == true then
		Lobby.Platform.XBOX.rtaSubscribe[(arg0 + 1.000000)] = false
	end
end

function Lobby.Platform.PlatformSessionUpdateErrorCount(arg0)
	local registerVal2 = Engine.StorageIsFileReady(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if not registerVal2 then
		return 
	end
	registerVal2 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if registerVal2 == nil then
		return 
	end
	local registerVal3 = registerVal2.demonwareflags[15.000000]:get()
	if 255.000000 < (registerVal3 + 1.000000) then
	end
	registerVal2.demonwareflags[15.000000]:set(255.000000)
	Lobby.Platform.XBOX.disabled[(arg0 + 1.000000)] = nil
end

local function __FUNC_CAA5_(arg0, arg1, arg2)
	local registerVal3 = Dvar.platformSessionsDurango:get()
	Lobby.Platform.XBOX.taskInProgress = false
	Lobby.Platform.PlatformSessionUpdateErrorCount(arg0)
	Engine.PlatformSessionCancelTasks()
	if registerVal3 == Enum.PlatformSessions.PLATFORM_SESSIONS_ON_NONFATAL then
		__FUNC_C2C5_(arg0, false)
		__FUNC_BF01_(arg0, true, Lobby.Platform.DISABLE_PLATFORM_SESSIONS)
	else
		if registerVal3 == Enum.PlatformSessions.PLATFORM_SESSIONS_ON_FATAL then
			LobbyVM.ExecuteLobbyVMRequest(LuaEnums.LOBBYVM_REQUEST.FORCE_LOCAL_MODE)
			local registerVal4 = Dvar.platformSessionShowErrorCodes:get()
			if registerVal4 == true then
				Engine.ComError(Enum.errorCode.ERROR_SOFTRESTART, ("Platform Session Error: " .. arg2))
			else
				Engine.ComError(Enum.errorCode.ERROR_SOFTRESTART, "PLATFORM_PLATFORM_SESSION_ERROR")
			end
		end
	end
end

Lobby.Platform.PlatformSessionXboxError = __FUNC_CAA5_
function Lobby.Platform.PlatformSessionXboxGenerateSessionId(arg0)
	local registerVal1 = Engine.GetLobbyHostInfo(Enum.LobbyModule.LOBBY_MODULE_CLIENT, arg0)
	if registerVal1 == nil then
		return false, CoDLUIDecompiler.LuaRegister
	end
	local registerVal2 = Engine.PlatformSessionXboxSecIdToSessionId(registerVal1.secId)
	return true, CoDLUIDecompiler.LuaRegister
end

local function __FUNC_D07D_(arg0, arg1, arg2)
	if arg0 == Lobby.ProcessQueue.ACTIONSTATE.RUNNING then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxCreateComplete ACTIONSTATE.RUNNING should not happen.
")
		return false
	else
		if arg0 == Lobby.ProcessQueue.ACTIONSTATE.SUCCESS then
			if arg2.isError == false then
				__FUNC_BBD2_(arg1.controller, arg1.lobbyType, arg2.sessionId)
				local registerVal10 = __FUNC_BCD8_(arg1.controller, arg1.lobbyType)
				Engine.PlatformSessionXboxSetData(Enum.LobbyType.LOBBY_TYPE_PRIVATE, registerVal10, __FUNC_BB12_(arg1.controller, arg1.lobbyType))
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_XBOX, ("PlatformSessionXboxCreateComplete, we have successfully created session id: '" .. arg2.sessionId .. "'.
"))
			else
				Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, ("PlatformSessionXboxCreate failed: " .. arg2.returnCodeHex .. "
"))
			else
				if arg0 == Lobby.ProcessQueue.ACTIONSTATE.FAILURE or arg0 == Lobby.ProcessQueue.ACTIONSTATE.ERROR then
					Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, ("PlatformSessionXboxCreate failed: " .. arg2.returnCodeHex .. "
"))
				end
			end
		end
	end
	Lobby.Platform.XBOX.taskInProgress = false
	if true == true then
		Lobby.Platform.PlatformSessionXboxError(arg1.controller, arg1.lobbyType, arg2.returnCodeHex)
		return true
	end
	if arg0 == Lobby.ProcessQueue.ACTIONSTATE.SUCCESS and true == false and arg1.lobbyType == Enum.LobbyType.LOBBY_TYPE_PRIVATE then
		Lobby.Platform.PlatformSessionXboxSetActivity(arg1.controller, arg1.lobbyType)
	end
	return true
end

Lobby.Platform.PlatformSessionXboxCreateComplete = __FUNC_D07D_
local function __FUNC_D741_(arg0, arg1)
	Lobby.Platform.XBOX.taskInProgress = true
	local registerVal4 = {}
	registerVal4.controller = arg0
	registerVal4.lobbyType = arg1
	local registerVal2 = Lobby.ProcessQueue.RegisterEventHandler(Lobby.Platform.PlatformSessionXboxCreateComplete, registerVal4)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxCreate started.
")
	local registerVal3 = __FUNC_BB12_(arg0, arg1)
	registerVal4, registerVal5 = Lobby.Platform.PlatformSessionXboxGenerateSessionId(arg1)
	local registerVal6 = Engine.IsShipBuild()
	registerVal6 = Engine.DvarInt(0.000000, "platformSessionCreateFailure")
	if registerVal6 == false and registerVal6 == 1.000000 then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxCreate FAILURE TEST.
")
		local registerVal7 = {}
		registerVal7.actionId = registerVal2
		registerVal7.isError = true
		registerVal7.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal7.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal7)
		return 
	end
	registerVal6 = Engine.PlatformSessionXboxCreateJoin(registerVal2, arg0, arg1, registerVal3, registerVal5)
	if registerVal4 == false or registerVal6 == false then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxCreate failed to start.
")
		registerVal7 = {}
		registerVal7.actionId = registerVal2
		registerVal7.isError = true
		registerVal7.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal7.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal7)
		return 
	end
end

Lobby.Platform.PlatformSessionXboxCreate = __FUNC_D741_
function Lobby.Platform.PlatformSessionXboxSetActivityComplete(arg0, arg1, arg2)
	if arg0 == Lobby.ProcessQueue.ACTIONSTATE.RUNNING then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetActivityComplete ACTIONSTATE.RUNNING should not happen.
")
		return false
	else
		if arg0 == Lobby.ProcessQueue.ACTIONSTATE.SUCCESS then
			if arg2.isError == false then
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_XBOX, ("PlatformSessionXboxSetActivityComplete, we have successfully set sessionId: '" .. arg1.sessionId .. "' to be the activity session.
"))
			else
				Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, ("PlatformSessionXboxSetActivity failed: " .. arg2.returnCodeHex .. "
"))
			else
				if arg0 == Lobby.ProcessQueue.ACTIONSTATE.FAILURE or arg0 == Lobby.ProcessQueue.ACTIONSTATE.ERROR then
					Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, ("PlatformSessionXboxSetActivity failed: " .. arg2.returnCodeHex .. "
"))
				end
			end
		end
	end
	Lobby.Platform.XBOX.taskInProgress = false
	if true == true then
		Lobby.Platform.PlatformSessionXboxError(arg1.controller, arg1.lobbyType, arg2.returnCodeHex)
	end
	return true
end

local function __FUNC_E273_(arg0, arg1)
	Lobby.Platform.XBOX.taskInProgress = true
	local registerVal2, registerVal3 = __FUNC_C0A8_(arg0, arg1)
	local registerVal6 = {}
	registerVal6.controller = arg0
	registerVal6.lobbyType = arg1
	registerVal6.sessionId = registerVal3
	local registerVal4 = Lobby.ProcessQueue.RegisterEventHandler(Lobby.Platform.PlatformSessionXboxSetActivityComplete, registerVal6)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_XBOX, ("PlatformSessionXboxSetActivity started for sessionId: '" .. registerVal3 .. "'.
"))
	local registerVal5 = Engine.IsShipBuild()
	registerVal5 = Engine.DvarInt(0.000000, "platformSessionSetActivityFailure")
	if registerVal5 == false and registerVal5 == 1.000000 then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetActivity FAILURE TEST.
")
		registerVal6 = {}
		registerVal6.actionId = registerVal4
		registerVal6.isError = true
		registerVal6.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal6.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal6)
		return 
	end
	registerVal5 = Engine.PlatformSessionXboxSetActivity(registerVal4, arg0, arg1, registerVal2, registerVal3)
	if registerVal5 == false then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetActivity failed to start.
")
		registerVal6 = {}
		registerVal6.actionId = registerVal4
		registerVal6.isError = true
		registerVal6.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal6.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal6)
		return 
	end
end

Lobby.Platform.PlatformSessionXboxSetActivity = __FUNC_E273_
local function __FUNC_E82A_(arg0, arg1, arg2)
	if arg0 == Lobby.ProcessQueue.ACTIONSTATE.RUNNING then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxLeaveComplete ACTIONSTATE.RUNNING should not happen.
")
		return false
	else
		if arg0 == Lobby.ProcessQueue.ACTIONSTATE.SUCCESS then
			if arg2.isError == false then
				local registerVal8 = Engine.PlatformSessionXboxGetData(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxLeaveComplete, we have successfully left session.
")
			else
				Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, ("PlatformSessionXboxLeave failed: " .. arg2.returnCodeHex .. "
"))
			else
				if arg0 == Lobby.ProcessQueue.ACTIONSTATE.FAILURE or arg0 == Lobby.ProcessQueue.ACTIONSTATE.ERROR then
					Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, ("PlatformSessionXboxLeave failed: " .. arg2.returnCodeHex .. "
"))
				end
			end
		end
	end
	__FUNC_BBD2_(arg1.controller, arg1.lobbyType, "")
	Lobby.Platform.XBOX.taskInProgress = false
	if true == true then
		Lobby.Platform.PlatformSessionXboxError(arg1.controller, arg1.lobbyType, arg2.returnCodeHex)
	end
	return true
end

Lobby.Platform.PlatformSessionXboxLeaveComplete = __FUNC_E82A_
local function __FUNC_EDDD_(arg0, arg1, arg2)
	Lobby.Platform.XBOX.taskInProgress = true
	Lobby.Platform.PlatformSessionXboxRoundEnd(arg0, arg1)
	local registerVal5 = {}
	registerVal5.controller = arg0
	registerVal5.lobbyType = arg1
	local registerVal3 = Lobby.ProcessQueue.RegisterEventHandler(Lobby.Platform.PlatformSessionXboxLeaveComplete, registerVal5)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxLeave started.
")
	local registerVal4, registerVal5 = __FUNC_C0A8_(arg0, arg1)
	local registerVal6 = Engine.IsShipBuild()
	registerVal6 = Engine.DvarInt(0.000000, "platformSessionLeaveFailure")
	if registerVal6 == false and registerVal6 == 1.000000 then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxLeave FAILURE TEST.
")
		local registerVal7 = {}
		registerVal7.actionId = registerVal3
		registerVal7.isError = true
		registerVal7.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal7.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal7)
		return 
	end
	registerVal6 = Engine.PlatformSessionXboxLeave(registerVal3, arg0, arg1, registerVal4, registerVal5)
	if registerVal6 == false then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxLeave failed to start.
")
		registerVal7 = {}
		registerVal7.actionId = registerVal3
		registerVal7.isError = true
		registerVal7.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal7.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal7)
		return 
	end
end

Lobby.Platform.PlatformSessionXboxLeave = __FUNC_EDDD_
function Lobby.Platform.PlatformSessionXboxSetSessionClosedSetDebugStatus(arg0, arg1, arg2, arg3)
	if arg3 == Enum.PartyPrivacy.PARTY_PRIVACY_OPEN then
	else
		if arg3 == Enum.PartyPrivacy.PARTY_PRIVACY_FRIENDS_ONLY then
		else
			if arg3 == Enum.PartyPrivacy.PARTY_PRIVACY_INVITE_ONLY then
			else
				if arg3 == Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED then
				end
			end
		end
	end
	Engine.PlatformSessionSetDebugInfo(arg0, arg1, arg2, "CLOSED")
end

function Lobby.Platform.PlatformSessionXboxSetSessionClosedComplete(arg0, arg1, arg2)
	if arg0 == Lobby.ProcessQueue.ACTIONSTATE.RUNNING then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetSessionClosedComplete ACTIONSTATE.RUNNING should not happen.
")
		return false
	else
		if arg0 == Lobby.ProcessQueue.ACTIONSTATE.SUCCESS then
			if arg2.isError == false then
				Lobby.Platform.XBOX.sessionClosed[(arg1.controller + 1.000000)] = arg1.partyPrivacy
				Lobby.Platform.PlatformSessionXboxSetSessionClosedSetDebugStatus(arg1.controller, arg1.lobbyType, arg1.sessionId, arg1.partyPrivacy)
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetSessionClosedComplete, we have successfully left session.
")
			else
				Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, ("PlatformSessionXboxSetSessionClosed failed: " .. arg2.returnCodeHex .. "
"))
			else
				if arg0 == Lobby.ProcessQueue.ACTIONSTATE.FAILURE or arg0 == Lobby.ProcessQueue.ACTIONSTATE.ERROR then
					Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, ("PlatformSessionXboxSetSessionClosed failed: " .. arg2.returnCodeHex .. "
"))
				end
			end
		end
	end
	Lobby.Platform.XBOX.taskInProgress = false
	if true == true then
		Engine.PlatformSessionSetDebugInfo(arg1.controller, Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg1.sessionId, "ERROR")
		Lobby.Platform.PlatformSessionXboxError(arg1.controller, arg1.lobbyType, arg2.returnCodeHex)
	end
	return true
end

function Lobby.Platform.PlatformSessionXboxIsSessionClosed(arg0)
	if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_OPEN then
	else
		if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_FRIENDS_ONLY then
		else
			if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_INVITE_ONLY then
			else
				if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED then
				end
			end
		end
	end
	return true
end

function Lobby.Platform.PlatformSessionXboxSetSessionClosed(arg0, arg1, arg2, arg3)
	local registerVal4 = Lobby.Platform.PlatformSessionXboxIsSessionClosed(Lobby.Platform.XBOX.sessionClosed[(arg0 + 1.000000)])
	local registerVal5 = Lobby.Platform.PlatformSessionXboxIsSessionClosed(arg3)
	if registerVal4 == registerVal5 then
		Lobby.Platform.XBOX.sessionClosed[(arg0 + 1.000000)] = arg3
		Lobby.Platform.PlatformSessionXboxSetSessionClosedSetDebugStatus(arg0, arg1, arg2, arg3)
		return 
	end
	Lobby.Platform.XBOX.taskInProgress = true
	local registerVal8 = {}
	registerVal8.controller = arg0
	registerVal8.lobbyType = arg1
	registerVal8.sessionId = arg2
	registerVal8.partyPrivacy = arg3
	local registerVal6 = Lobby.ProcessQueue.RegisterEventHandler(Lobby.Platform.PlatformSessionXboxSetSessionClosedComplete, registerVal8)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetSessionClosed started.
")
	local registerVal7 = Engine.IsShipBuild()
	registerVal7 = Engine.DvarInt(0.000000, "platformSessionSetSessionClosedFailure")
	if registerVal7 == false and registerVal7 == 1.000000 then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetSessionClosed FAILURE TEST.
")
		registerVal8 = {}
		registerVal8.actionId = registerVal6
		registerVal8.isError = true
		registerVal8.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal8.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal8)
		return 
	end
	registerVal7 = Engine.PlatformSessionXboxSetSessionClosed(registerVal6, arg0, arg1, registerVal5)
	if registerVal7 == false then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetSessionClosed failed to start.
")
		registerVal8 = {}
		registerVal8.actionId = registerVal6
		registerVal8.isError = true
		registerVal8.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal8.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal8)
		return 
	end
end

function Lobby.Platform.PlatformSessionXboxSetJoinRestrictionComplete(arg0, arg1, arg2)
	if arg0 == Lobby.ProcessQueue.ACTIONSTATE.RUNNING then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetJoinRestrictionComplete ACTIONSTATE.RUNNING should not happen.
")
		return false
	else
		if arg0 == Lobby.ProcessQueue.ACTIONSTATE.SUCCESS then
			if arg2.isError == false then
				Lobby.Platform.XBOX.joinRestriction[(arg1.controller + 1.000000)] = arg1.partyPrivacy
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetJoinRestrictionComplete, we have successfully left session.
")
			else
				Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, ("PlatformSessionXboxSetJoinRestriction failed: " .. arg2.returnCodeHex .. "
"))
			else
				if arg0 == Lobby.ProcessQueue.ACTIONSTATE.FAILURE or arg0 == Lobby.ProcessQueue.ACTIONSTATE.ERROR then
					Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, ("PlatformSessionXboxSetJoinRestriction failed: " .. arg2.returnCodeHex .. "
"))
				end
			end
		end
	end
	Lobby.Platform.XBOX.taskInProgress = false
	if true == true then
		Lobby.Platform.PlatformSessionXboxError(arg1.controller, arg1.lobbyType, arg2.returnCodeHex)
	end
	return true
end

function Lobby.Platform.PlatformSessionXboxGetJoinRestriction(arg0)
	if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_OPEN then
	else
		if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_FRIENDS_ONLY then
		else
			if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_INVITE_ONLY then
			else
				if arg0 == Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED then
				end
			end
		end
	end
	return Enum.DurangoSessionJoinRestriction.DURANGO_SESSION_JOIN_RESTRICTION_LOCAL
end

function Lobby.Platform.PlatformSessionXboxSetJoinRestriction(arg0, arg1, arg2, arg3)
	local registerVal4 = Lobby.Platform.PlatformSessionXboxGetJoinRestriction(Lobby.Platform.XBOX.joinRestriction[(arg0 + 1.000000)])
	local registerVal5 = Lobby.Platform.PlatformSessionXboxGetJoinRestriction(arg3)
	if registerVal4 == registerVal5 then
		Lobby.Platform.XBOX.joinRestriction[(arg0 + 1.000000)] = arg3
		return 
	end
	Lobby.Platform.XBOX.taskInProgress = true
	local registerVal8 = {}
	registerVal8.controller = arg0
	registerVal8.lobbyType = arg1
	registerVal8.sessionId = arg2
	registerVal8.partyPrivacy = arg3
	registerVal8.joinRestriction = registerVal5
	local registerVal6 = Lobby.ProcessQueue.RegisterEventHandler(Lobby.Platform.PlatformSessionXboxSetJoinRestrictionComplete, registerVal8)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetJoinRestriction started.
")
	local registerVal7 = Engine.IsShipBuild()
	registerVal7 = Engine.DvarInt(0.000000, "platformSessionSetJoinRestrictionFailure")
	if registerVal7 == false and registerVal7 == 1.000000 then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetJoinRestriction FAILURE TEST.
")
		registerVal8 = {}
		registerVal8.actionId = registerVal6
		registerVal8.isError = true
		registerVal8.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal8.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal8)
		return 
	end
	registerVal7 = Engine.PlatformSessionXboxSetJoinRestriction(registerVal6, arg0, arg1, registerVal5)
	if registerVal7 == false then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetJoinRestriction failed to start.
")
		registerVal8 = {}
		registerVal8.actionId = registerVal6
		registerVal8.isError = true
		registerVal8.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal8.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal8)
		return 
	end
end

function Lobby.Platform.PlatformSessionXboxSetVisibilityComplete(arg0, arg1, arg2)
	if arg0 == Lobby.ProcessQueue.ACTIONSTATE.RUNNING then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetVisibilityComplete ACTIONSTATE.RUNNING should not happen.
")
		return false
	else
		if arg0 == Lobby.ProcessQueue.ACTIONSTATE.SUCCESS then
			if arg2.isError == false then
				Lobby.Platform.XBOX.visibility[(arg1.controller + 1.000000)] = arg1.partyPrivacy
				Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetVisibilityComplete, we have successfully left session.
")
			else
				Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, ("PlatformSessionXboxSetVisibility failed: " .. arg2.returnCodeHex .. "
"))
			else
				if arg0 == Lobby.ProcessQueue.ACTIONSTATE.FAILURE or arg0 == Lobby.ProcessQueue.ACTIONSTATE.ERROR then
					Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, ("PlatformSessionXboxSetVisibility failed: " .. arg2.returnCodeHex .. "
"))
				end
			end
		end
	end
	Lobby.Platform.XBOX.taskInProgress = false
	if true == true then
		Lobby.Platform.PlatformSessionXboxError(arg1.controller, arg1.lobbyType, arg2.returnCodeHex)
	end
	return true
end

function Lobby.Platform.PlatformSessionXboxSetVisibility(arg0, arg1, arg2, arg3)
	Lobby.Platform.XBOX.taskInProgress = true
	if arg3 == Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED then
	end
	local registerVal7 = {}
	registerVal7.controller = arg0
	registerVal7.lobbyType = arg1
	registerVal7.sessionId = arg2
	registerVal7.partyPrivacy = arg3
	registerVal7.visibility = Enum.DurangoSessionVisibility.DURANGO_SESSION_VISIBILITY_PRIVATE
	local registerVal5 = Lobby.ProcessQueue.RegisterEventHandler(Lobby.Platform.PlatformSessionXboxSetVisibilityComplete, registerVal7)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetVisibility started.
")
	local registerVal6 = Engine.IsShipBuild()
	registerVal6 = Engine.DvarInt(0.000000, "platformSessionSetVisibilityFailure")
	if registerVal6 == false and registerVal6 == 1.000000 then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetVisibility FAILURE TEST.
")
		registerVal7 = {}
		registerVal7.actionId = registerVal5
		registerVal7.isError = true
		registerVal7.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal7.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal7)
		return 
	end
	registerVal6 = Engine.PlatformSessionXboxSetSessionVisibility(registerVal5, arg0, arg1, Enum.DurangoSessionVisibility.DURANGO_SESSION_VISIBILITY_PRIVATE)
	if registerVal6 == false then
		Engine.PrintError(Enum.consoleLabel.LABEL_LIVE_XBOX, "PlatformSessionXboxSetVisibility failed to start.
")
		registerVal7 = {}
		registerVal7.actionId = registerVal5
		registerVal7.isError = true
		registerVal7.returnCode = Lobby.ProcessQueue.EVENT_START_ERROR
		registerVal7.returnCodeHex = "EVENT START ERROR"
		LobbyVM.ProcessCompleteFailure(registerVal7)
		return 
	end
end

local function __FUNC_12086_(arg0, arg1)
	Lobby.Platform.XBOX.roundStart[(arg0 + 1.000000)] = false
	local registerVal3, registerVal4 = __FUNC_C0A8_(arg0, arg1)
	local registerVal5, registerVal6 = Engine.PlatformSessionXboxMultiplayerRoundStart(arg0, arg1, registerVal3, registerVal4)
	if registerVal5 == true then
		Lobby.Platform.XBOX.roundStartSessionId[(arg0 + 1.000000)] = registerVal4
		local registerVal8 = Engine.milliseconds()
		Lobby.Platform.XBOX.roundStartTime[(arg0 + 1.000000)] = registerVal8
		Lobby.Platform.XBOX.roundStartCounter[(arg0 + 1.000000)] = (Lobby.Platform.XBOX.roundStartCounter[(arg0 + 1.000000)] + 1.000000)
		__FUNC_C0F8_(arg0, arg1)
		Lobby.Platform.XBOX.playerSessionId[(arg0 + 1.000000)] = registerVal6.guid
	end
end

Lobby.Platform.PlatformSessionXboxRoundStart = __FUNC_12086_
local function __FUNC_1234F_(arg0, arg1)
	Lobby.Platform.XBOX.roundEnd[(arg0 + 1.000000)] = false
	local registerVal5, registerVal6 = __FUNC_C0A8_(arg0, arg1)
	local registerVal8 = __FUNC_BCD8_(arg0, arg1)
	if Lobby.Platform.XBOX.playerSessionId[(arg0 + 1.000000)] ~= nil and Lobby.Platform.XBOX.roundStartSessionId[(arg0 + 1.000000)] == registerVal8 then
		Engine.PlatformSessionXboxMultiplayerRoundEnd(arg0, arg1, registerVal5, Lobby.Platform.XBOX.roundStartSessionId[(arg0 + 1.000000)], Lobby.Platform.XBOX.playerSessionId[(arg0 + 1.000000)], Lobby.Platform.XBOX.roundStartTime[(arg0 + 1.000000)])
		Lobby.Platform.XBOX.roundEndCounter[(arg0 + 1.000000)] = (Lobby.Platform.XBOX.roundEndCounter[(arg0 + 1.000000)] + 1.000000)
		__FUNC_C0F8_(arg0, arg1)
	end
	Lobby.Platform.XBOX.roundStartSessionId[(arg0 + 1.000000)] = nil
	Lobby.Platform.XBOX.playerSessionId[(arg0 + 1.000000)] = nil
	Lobby.Platform.XBOX.roundStartTime[(arg0 + 1.000000)] = 0.000000
end

Lobby.Platform.PlatformSessionXboxRoundEnd = __FUNC_1234F_
function Lobby.Platform.OnPlatformSessionMultiplayerSessionChanged(arg0)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_XBOX, "Lobby.Platform.OnPlatformSessionMultiplayerSessionChanged().
")
end

local function __FUNC_12793_(arg0)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LIVE_XBOX, "Lobby.Platform.OnPlatformSessionMultiplayerSubscriptionLost().
")
	local registerVal1 = Dvar.platformSessionsDurangoAutoRTASubscription:get()
	if registerVal1 == false then
		for index1=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
			__FUNC_C2C5_((index1 - 1.000000), false)
		end
	end
end

Lobby.Platform.OnPlatformSessionMultiplayerSubscriptionLost = __FUNC_12793_
function Lobby.Platform.OnPlatformSuspend(arg0)
	local registerVal1 = Lobby.Platform.PlatformSessionOrbisEnabled()
	if registerVal1 then
	else
		registerVal1 = Lobby.Platform.PlatformSessionDurangoEnabled()
		if registerVal1 then
			for index1=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
				Lobby.Platform.PlatformSessionXboxRoundEnd((index1 - 1.000000), Enum.LobbyType.LOBBY_TYPE_GAME)
			end
		end
	end
end

local function __FUNC_12B55_(arg0)
	local registerVal1 = Lobby.Platform.PlatformSessionOrbisEnabled()
	if registerVal1 then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYVM, "OnPlatformResume(), clear all session data.
")
		Engine.PlatformSessionPS4ClearData(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		for index1=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
			__FUNC_6393_((index1 - 1.000000), "")
		end
	else
		registerVal1 = Lobby.Platform.PlatformSessionDurangoEnabled()
		if registerVal1 then
		end

Lobby.Platform.OnPlatformResume = __FUNC_12B55_
function Lobby.Platform.PlatformSessionXboxRTASubscription(arg0, arg1, arg2, arg3)
	local registerVal4 = Dvar.platformSessionsDurangoAutoRTASubscription:get()
	if registerVal4 == false then
		if arg1 == true and Lobby.Platform.XBOX.rtaSubscribe[(arg0 + 1.000000)] == false and arg3 == true then
			local registerVal5, registerVal6, registerVal7 = Engine.PlatformSessionXboxSubscribeToRTA(arg0)
			if registerVal5 == true then
				Lobby.Platform.XBOX.rtaSubscribe[(arg0 + 1.000000)] = true
				Lobby.Platform.XBOX.sessionChangeToken[(arg0 + 1.000000)] = registerVal6
				Lobby.Platform.XBOX.subscriptionLostToken[(arg0 + 1.000000)] = registerVal7
			else
				Lobby.Platform.PlatformSessionXboxError(arg0, arg2, "PlatformSessionXboxEnableRTASubscription")
				return 
			end
		end
		if Lobby.Platform.XBOX.rtaSubscribe[(arg0 + 1.000000)] == false then
			return 
		end
	end
end

function Lobby.Platform.PlatformSessionXboxDisabled(arg0, arg1, arg2, arg3, arg4)
	if Lobby.Platform.XBOX.disabled[(arg0 + 1.000000)] == true then
		return true
	end
	local registerVal6 = Engine.StorageIsFileReady(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	registerVal6 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	Lobby.Platform.XBOX.disabled[(arg0 + 1.000000)] = false
	local registerVal7 = Engine.DvarInt(nil, "platformSessionDisableCount")
	local registerVal8 = registerVal6.demonwareflags[15.000000]:get()
	if arg3 == true and Lobby.Platform.XBOX.disabled[(arg0 + 1.000000)] == nil and registerVal6 and registerVal6 and -1.000000 < registerVal7 and registerVal7 <= registerVal8 then
		Lobby.Platform.XBOX.disabled[(arg0 + 1.000000)] = true
		return true
	end
	if Lobby.Platform.XBOX.sessionFailure[(arg0 + 1.000000)] == true then
		if Lobby.Platform.XBOX.sessionFailureTime[(arg0 + 1.000000)] == Lobby.Platform.DISABLE_PLATFORM_SESSIONS then
			return true
		end
		registerVal7 = Engine.seconds()
		if Lobby.Platform.XBOX.sessionFailureTime[(arg0 + 1.000000)] < registerVal7 then
			Lobby.Platform.XBOX.sessionFailure[(arg0 + 1.000000)] = false
			return false
		end
		return true
	end
end

local function __FUNC_135BE_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	Lobby.Platform.PlatformSessionXboxRTASubscription(arg0, arg1, arg2, arg4)
	local registerVal8 = string.len(__FUNC_BCD8_(arg0, arg2))
	if 0.000000 >= registerVal8 then
	end
	local registerVal9 = __FUNC_BE45_(arg0, arg2)
	local registerVal12 = Lobby.Platform.PlatformSessionXboxDisabled(arg0, arg1, arg2, arg3, arg4)
	if registerVal12 then
		return 
	end
	if arg3 == false then
		if true == true then
			Lobby.Platform.PlatformSessionXboxLeave(arg0, arg2)
		end
		return 
	end
	if true == true then
		if arg4 == false or arg1 == false then
			Lobby.Platform.PlatformSessionXboxLeave(arg0, arg2)
			return 
		end
	end
	if arg4 == false or arg1 == false then
		return 
	end
	if true == false and registerVal9 == true then
		__FUNC_BD97_(arg0, arg2, false)
	end
	if true == true then
		if arg2 == Enum.LobbyType.LOBBY_TYPE_GAME then
			if registerVal9 == true then
				registerVal12, registerVal13 = Lobby.Platform.PlatformSessionXboxGenerateSessionId(arg2)
				local registerVal14 = __FUNC_BCD8_(arg0, arg2)
				if registerVal12 == true and registerVal13 ~= registerVal14 then
					Lobby.Platform.PlatformSessionXboxLeave(arg0, arg2)
				end
				__FUNC_BD97_(arg0, arg2, false)
				return 
			end
			if Lobby.Platform.XBOX.roundEnd[(arg0 + 1.000000)] == true then
				Lobby.Platform.PlatformSessionXboxRoundEnd(arg0, arg2)
				return 
			else
				if Lobby.Platform.XBOX.roundStart[(arg0 + 1.000000)] == true then
					Lobby.Platform.PlatformSessionXboxRoundStart(arg0, arg2)
					return 
				end
			end
		end
		registerVal12 = Dvar.platformSessionPartyPrivacy:get()
		if registerVal12 == true and arg0 == arg6 and arg2 == Enum.LobbyType.LOBBY_TYPE_PRIVATE then
			registerVal12 = Engine.GetPartyPrivacy()
			registerVal13 = __FUNC_BCD8_(arg0, arg2)
			if Lobby.Platform.XBOX.sessionClosed[(arg0 + 1.000000)] ~= registerVal12 then
				Lobby.Platform.PlatformSessionXboxSetSessionClosed(arg0, arg2, registerVal13, registerVal12)
				return 
			end
			if Lobby.Platform.XBOX.joinRestriction[(arg0 + 1.000000)] ~= registerVal12 then
				Lobby.Platform.PlatformSessionXboxSetJoinRestriction(arg0, arg2, registerVal13, registerVal12)
				return 
			end
			return 
		end
		return 
	end
	Lobby.Platform.PlatformSessionXboxCreate(arg0, arg2)
end

Lobby.Platform.PlatformSessionXboxPumpController = __FUNC_135BE_
local function __FUNC_13D3F_()
	local registerVal0 = Engine.IsRequestingJoin()
	registerVal0 = Lobby.ProcessQueue.IsQueueEmpty()
	registerVal0 = Engine.FriendsIsTaskInProgress()
	if Lobby.Platform.XBOX.taskInProgress ~= true and registerVal0 ~= true and registerVal0 == false or registerVal0 == true then
		local registerVal1 = Engine.milliseconds()
		local registerVal2 = Dvar.platformSessionUpdateIntervalDurango:get()
		Lobby.Platform.XBOX.updateTime = (registerVal1 + registerVal2)
		return 
	end
	registerVal1 = Engine.milliseconds()
	if registerVal1 < Lobby.Platform.XBOX.updateTime then
		return 
	end
	registerVal1 = Engine.milliseconds()
	registerVal2 = Dvar.platformSessionUpdateIntervalDurango:get()
	Lobby.Platform.XBOX.updateTime = (registerVal1 + registerVal2)
	registerVal0 = Engine.GetLobbyNetworkMode()
	if registerVal0 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
	end
	for index1=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
		local registerVal6 = Engine.PlatformSessionXboxIsLiveContextForControllerReadyRaw((index1 - 1.000000))
		local registerVal7 = Engine.IsControllerBeingUsed((index1 - 1.000000))
		if registerVal6 == true then
			for index8=Enum.LobbyType.LOBBY_TYPE_GAME, Enum.LobbyType.LOBBY_TYPE_PRIVATE, -1.000000 do
				local registerVal12 = Engine.IsLobbyActive(index8)
				local registerVal13 = Engine.IsLobbyHost(index8)
				local registerVal14 = Engine.GetLobbyHostControllerIndex(index8)
				if 1.000000 or not registerVal14 then
				end
				Lobby.Platform.PlatformSessionXboxPumpController((index1 - 1.000000), registerVal7, index8, true, registerVal12, registerVal13, LuaEnums.INVALID_CONTROLLER_PORT)
				if Lobby.Platform.XBOX.taskInProgress == true then
					return 
				end
			end
		else
			if Lobby.Platform.XBOX.lastSignedInState[index1] == true then
				__FUNC_C2C5_((index1 - 1.000000), true)
			end
		end
		Lobby.Platform.XBOX.lastSignedInState[index1] = registerVal6
	end
end

Lobby.Platform.PlatformSessionXboxPump = __FUNC_13D3F_
function Lobby.Platform.InviteFailed(arg0)
	local registerVal6 = {}
	registerVal6.isError = true
	registerVal6.controller = arg0.controller
	registerVal6.xuid = arg0.xuid
	registerVal6.gamertag = arg0.gamertag
	registerVal6.immediate = true
	Engine.LuiVM_Event("open_toaster_popup", registerVal6)
end

function Lobby.Platform.InviteComplete(arg0, arg1, arg2)
	if arg0 == Lobby.ProcessQueue.ACTIONSTATE.RUNNING then
		return false
	else
		if arg0 == Lobby.ProcessQueue.ACTIONSTATE.SUCCESS then
			local registerVal8 = {}
			registerVal8.isError = false
			registerVal8.controller = arg1.controller
			registerVal8.xuid = arg1.xuid
			registerVal8.gamertag = arg1.gamertag
			registerVal8.immediate = true
			Engine.LuiVM_Event("open_toaster_popup", registerVal8)
		else
			if arg0 == Lobby.ProcessQueue.ACTIONSTATE.FAILURE or arg0 == Lobby.ProcessQueue.ACTIONSTATE.ERROR then
				local registerVal6 = Dvar.platformSessionShowErrorCodes:get()
				if registerVal6 == true then
					arg1.gamertag = (arg1.gamertag .. " - " .. returnCodeHex)
				end
				Lobby.Platform.InviteFailed(arg1)
			end
		end
	end
	return true
end

function Lobby.Platform.Invite(arg0)
	local registerVal1 = Lobby.Platform.PlatformSessionOrbisEnabled()
	registerVal1 = Lobby.Platform.PlatformSessionDurangoEnabled()
	if registerVal1 == false and registerVal1 == false then
		return 
	end
	local registerVal4 = Engine.GetGamertagForController(arg0.controller)
	local registerVal5 = Engine.LocalizeWithoutLocsMarkers("MENU_GAME_INVITE_MESSAGE", registerVal4)
	Dvar.platformSessionOrbisInviteMessage:set(registerVal5)
	local registerVal6 = Lobby.Platform.PlatformSessionOrbisEnabled()
	if registerVal6 then
		registerVal6 = Lobby.Platform.PS4GetSessionId(arg0.controller)
		if registerVal6 == "" then
			Lobby.Platform.InviteFailed(arg0)
			return 
		end
		registerVal6 = Lobby.ProcessQueue.RegisterEventHandler(Lobby.Platform.InviteComplete, arg0)
		local registerVal7 = Engine.PlatformSessionPS4Invite(registerVal6, arg0.controller, Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg0.xuid, arg0.gamertag, Lobby.Platform.PS4GetSessionId(arg0.controller))
		Lobby.Platform.InviteFailed(arg0)
		Lobby.ProcessQueue.UnRegisterEventHandler(registerVal6)
		registerVal6 = Lobby.Platform.PlatformSessionDurangoEnabled()
		registerVal6 = Lobby.ProcessQueue.RegisterEventHandler(Lobby.Platform.InviteComplete, arg0)
		registerVal7 = Engine.PlatformSessionXboxInvite(registerVal6, arg0.controller, Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg0.xuid, arg0.gamertag)
		if registerVal7 == false and registerVal6 and registerVal7 == false then
			Lobby.Platform.InviteFailed(arg0)
			Lobby.ProcessQueue.UnRegisterEventHandler(registerVal6)
		end
	end
end

function Lobby.Platform.AutoJoinPump()
	local registerVal0 = Engine.IsClientLoaded(Lobby.Platform.AutoJoinData.controller)
	if Lobby.Platform.AutoJoinData ~= nil and registerVal0 then
		registerVal0 = Engine.IsInGame()
		if registerVal0 then
			CoDShared.QuitGame(Lobby.Platform.AutoJoinData.controller)
			return 
		end
		registerVal0 = Lobby.Platform.GetAutoJoinProcess(Lobby.Platform.AutoJoinData)
		if registerVal0 ~= nil then
			Lobby.ProcessQueue.AddToQueue("AutoJoin", registerVal0)
		end
		Lobby.Platform.AutoJoinData = nil
	end
end

function Lobby.Platform.SetModelValue(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, arg0, true)
	if registerVal2 == nil then
		return 
	end
	Engine.SetModelValue(registerVal2, arg1)
end

function Lobby.Platform.GetModelValue(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, arg0)
	registerVal3 = Engine.GetModelValue(registerVal2, value)
	if registerVal2 ~= nil and registerVal3 ~= nil then
		Engine.UnsubscribeAndFreeModel(registerVal2)
		return registerVal3
	end
	return arg1
end

function Lobby.Platform.SaveState()
	local registerVal0 = Engine.IsDedicatedServer()
	if registerVal0 == true or LuaUtils.isPC == true then
		return 
	end
	if LuaUtils.isPS4 == true then
		Lobby.Platform.SetModelValue("platformSession.taskInProgress", Lobby.Platform.PS4.taskInProgress)
		for index0=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
			local registerVal6 = tostring(index0)
			Lobby.Platform.SetModelValue(("platformSession.sessionId." .. registerVal6), Lobby.Platform.PS4.sessionId[index0])
			registerVal6 = tostring(index0)
			Lobby.Platform.SetModelValue(("platformSession.lobbyId." .. registerVal6), Lobby.Platform.PS4.lobbyId[index0])
			registerVal6 = tostring(index0)
			Lobby.Platform.SetModelValue(("platformSession.changed." .. registerVal6), Lobby.Platform.PS4.changed[index0])
			registerVal6 = tostring(index0)
			Lobby.Platform.SetModelValue(("platformSession.sessionFailure." .. registerVal6), Lobby.Platform.PS4.sessionFailure[index0])
			registerVal6 = tostring(index0)
			Lobby.Platform.SetModelValue(("platformSession.sessionFailureTime." .. registerVal6), Lobby.Platform.PS4.sessionFailureTime[index0])
			registerVal6 = tostring(index0)
			Lobby.Platform.SetModelValue(("platformSession.lastSignedInState." .. registerVal6), Lobby.Platform.PS4.lastSignedInState[index0])
			registerVal6 = tostring(index0)
			Lobby.Platform.SetModelValue(("platformSession.lockFlag." .. registerVal6), Lobby.Platform.PS4.lockFlag[index0])
			registerVal6 = tostring(index0)
			Lobby.Platform.SetModelValue(("platformSession.sessionTypeFlag." .. registerVal6), Lobby.Platform.PS4.sessionTypeFlag[index0])
		end
	else
		if LuaUtils.isXbox == true then
			Lobby.Platform.SetModelValue("platformSession.taskInProgress", Lobby.Platform.XBOX.taskInProgress)
			for index0=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.rtaSubscribe." .. registerVal6), Lobby.Platform.XBOX.rtaSubscribe[index0])
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.sessionChangeToken." .. registerVal6), Lobby.Platform.XBOX.sessionChangeToken[index0])
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.subscriptionLostToken." .. registerVal6), Lobby.Platform.XBOX.subscriptionLostToken[index0])
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.sessionFailure." .. registerVal6), Lobby.Platform.XBOX.sessionFailure[index0])
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.sessionFailureTime." .. registerVal6), Lobby.Platform.XBOX.sessionFailureTime[index0])
				for index4=Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyType.LOBBY_TYPE_GAME, 1.000000 do
					local registerVal11 = tostring(index0)
					local registerVal13 = tostring((index4 + 1.000000))
					Lobby.Platform.SetModelValue(("platformSession.templateName." .. registerVal11 .. "." .. registerVal13), Lobby.Platform.XBOX.templateName[index0][(index4 + 1.000000)])
					registerVal11 = tostring(index0)
					registerVal13 = tostring((index4 + 1.000000))
					Lobby.Platform.SetModelValue(("platformSession.sessionId." .. registerVal11 .. "." .. registerVal13), Lobby.Platform.XBOX.sessionId[index0][(index4 + 1.000000)])
					registerVal11 = tostring(index0)
					registerVal13 = tostring((index4 + 1.000000))
					Lobby.Platform.SetModelValue(("platformSession.changed." .. registerVal11 .. "." .. registerVal13), Lobby.Platform.XBOX.changed[index0][(index4 + 1.000000)])
				end
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.lastSignedInState." .. registerVal6), Lobby.Platform.XBOX.lastSignedInState[index0])
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.roundStart." .. registerVal6), Lobby.Platform.XBOX.roundStart[index0])
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.roundStartSessionId." .. registerVal6), Lobby.Platform.XBOX.roundStartSessionId[index0])
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.roundEnd." .. registerVal6), Lobby.Platform.XBOX.roundEnd[index0])
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.playerSessionId." .. registerVal6), Lobby.Platform.XBOX.playerSessionId[index0])
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.roundStartTime." .. registerVal6), Lobby.Platform.XBOX.roundStartTime[index0])
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.roundStartCounter." .. registerVal6), Lobby.Platform.XBOX.roundStartCounter[index0])
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.roundEndCounter." .. registerVal6), Lobby.Platform.XBOX.roundEndCounter[index0])
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.sessionClosed." .. registerVal6), Lobby.Platform.XBOX.sessionClosed[index0])
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.joinRestriction." .. registerVal6), Lobby.Platform.XBOX.joinRestriction[index0])
				registerVal6 = tostring(index0)
				Lobby.Platform.SetModelValue(("platformSession.visibility." .. registerVal6), Lobby.Platform.XBOX.visibility[index0])
			end
		end
	end
end

function Lobby.Platform.OnComError(arg0)
	if arg0.isInCleanup then
		return 
	end
	if arg0.errorCode == Enum.errorCode.ERROR_SOFTRESTART_KEEPDW then
		Lobby.Platform.SaveState()
	end
end

function Lobby.Platform.OnPreExecFFOTD()
	Lobby.Platform.SaveState()
end

function Lobby.Platform.OnPostExecFFOTD()
end

function Lobby.Platform.Pump()
	local registerVal0 = Engine.IsDedicatedServer()
	if registerVal0 then
		return 
	end
	Lobby.Platform.PlatformModsPump()
	Lobby.Platform.TRCPump()
	registerVal0 = Lobby.Platform.PlatformSessionOrbisEnabled()
	if registerVal0 then
		Lobby.Platform.PlatformSessionPS4Pump()
	else
		registerVal0 = Lobby.Platform.PlatformSessionDurangoEnabled()
		if registerVal0 then
			Lobby.Platform.PlatformSessionXboxPump()
		end
	end
	Lobby.Platform.PS4PlayTogetherPump()
	Lobby.Platform.AutoJoinPump()
end

local function __FUNC_16B97_()
	local registerVal0 = Engine.IsDedicatedServer()
	if registerVal0 == true or LuaUtils.isPC == true then
		return 
	end
	if LuaUtils.isPS4 == true then
		local registerVal1 = Lobby.Platform.GetModelValue("platformSession.taskInProgress", false)
		Lobby.Platform.PS4.taskInProgress = registerVal1
		for index0=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
			local registerVal7 = tostring(index0)
			local registerVal5 = Lobby.Platform.GetModelValue(("platformSession.sessionFailure." .. registerVal7), false)
			Lobby.Platform.PS4.sessionFailure[index0] = registerVal5
			registerVal7 = tostring(index0)
			registerVal5 = Lobby.Platform.GetModelValue(("platformSession.sessionFailureTime." .. registerVal7), 0.000000)
			Lobby.Platform.PS4.sessionFailureTime[index0] = registerVal5
			registerVal7 = tostring(index0)
			registerVal5 = Lobby.Platform.GetModelValue(("platformSession.sessionId." .. registerVal7), "")
			Lobby.Platform.PS4.sessionId[index0] = registerVal5
			registerVal7 = tostring(index0)
			registerVal5 = Lobby.Platform.GetModelValue(("platformSession.lobbyId." .. registerVal7), 0.000000)
			Lobby.Platform.PS4.lobbyId[index0] = registerVal5
			registerVal7 = tostring(index0)
			registerVal5 = Lobby.Platform.GetModelValue(("platformSession.changed." .. registerVal7), false)
			Lobby.Platform.PS4.changed[index0] = registerVal5
			registerVal7 = tostring(index0)
			registerVal5 = Lobby.Platform.GetModelValue(("platformSession.lastSignedInState." .. registerVal7), false)
			Lobby.Platform.PS4.lastSignedInState[index0] = registerVal5
			registerVal7 = tostring(index0)
			registerVal5 = Lobby.Platform.GetModelValue(("platformSession.lockFlag." .. registerVal7), Enum.PartyPrivacy.PARTY_PRIVACY_OPEN)
			Lobby.Platform.PS4.lockFlag[index0] = registerVal5
			registerVal7 = tostring(index0)
			registerVal5 = Lobby.Platform.GetModelValue(("platformSession.sessionTypeFlag." .. registerVal7), Enum.PartyPrivacy.PARTY_PRIVACY_OPEN)
			Lobby.Platform.PS4.sessionTypeFlag[index0] = registerVal5
		end
	else
		if LuaUtils.isXbox == true then
			registerVal1 = Lobby.Platform.GetModelValue("platformSession.taskInProgress", false)
			Lobby.Platform.XBOX.taskInProgress = registerVal1
			for index0=1.000000, LuaEnums.MAX_CONTROLLER_COUNT, 1.000000 do
				local registerVal8 = tostring(index0)
				local registerVal6 = Lobby.Platform.GetModelValue(("platformSession.sessionFailure." .. registerVal8), false)
				Lobby.Platform.XBOX.sessionFailure[index0] = registerVal6
				registerVal8 = tostring(index0)
				registerVal6 = Lobby.Platform.GetModelValue(("platformSession.sessionFailureTime." .. registerVal8), 0.000000)
				Lobby.Platform.XBOX.sessionFailureTime[index0] = registerVal6
				registerVal8 = tostring(index0)
				registerVal6 = Lobby.Platform.GetModelValue(("platformSession.rtaSubscribe." .. registerVal8), false)
				Lobby.Platform.XBOX.rtaSubscribe[index0] = registerVal6
				registerVal8 = tostring(index0)
				registerVal6 = Lobby.Platform.GetModelValue(("platformSession.sessionChangeToken." .. registerVal8), nil)
				Lobby.Platform.XBOX.sessionChangeToken[index0] = registerVal6
				registerVal8 = tostring(index0)
				registerVal6 = Lobby.Platform.GetModelValue(("platformSession.subscriptionLostToken." .. registerVal8), nil)
				Lobby.Platform.XBOX.subscriptionLostToken[index0] = registerVal6
				Lobby.Platform.XBOX.templateName[index0] = {}
				Lobby.Platform.XBOX.sessionId[index0] = {}
				Lobby.Platform.XBOX.changed[index0] = {}
				registerVal8 = tostring(index0)
				registerVal6 = Lobby.Platform.GetModelValue(("platformSession.lastSignedInState." .. registerVal8), false)
				Lobby.Platform.XBOX.lastSignedInState[index0] = registerVal6
				registerVal8 = tostring(index0)
				registerVal6 = Lobby.Platform.GetModelValue(("platformSession.roundStart." .. registerVal8), false)
				Lobby.Platform.XBOX.roundStart[index0] = registerVal6
				registerVal8 = tostring(index0)
				registerVal6 = Lobby.Platform.GetModelValue(("platformSession.roundStartSessionId." .. registerVal8), "")
				Lobby.Platform.XBOX.roundStartSessionId[index0] = registerVal6
				registerVal8 = tostring(index0)
				registerVal6 = Lobby.Platform.GetModelValue(("platformSession.roundEnd." .. registerVal8), false)
				Lobby.Platform.XBOX.roundEnd[index0] = registerVal6
				registerVal8 = tostring(index0)
				registerVal6 = Lobby.Platform.GetModelValue(("platformSession.playerSessionId." .. registerVal8), nil)
				Lobby.Platform.XBOX.playerSessionId[index0] = registerVal6
				registerVal8 = tostring(index0)
				registerVal6 = Lobby.Platform.GetModelValue(("platformSession.roundStartTime." .. registerVal8), 0.000000)
				Lobby.Platform.XBOX.roundStartTime[index0] = registerVal6
				registerVal8 = tostring(index0)
				registerVal6 = Lobby.Platform.GetModelValue(("platformSession.roundStartCounter." .. registerVal8), 0.000000)
				Lobby.Platform.XBOX.roundStartCounter[index0] = registerVal6
				registerVal8 = tostring(index0)
				registerVal6 = Lobby.Platform.GetModelValue(("platformSession.roundEndCounter." .. registerVal8), 0.000000)
				Lobby.Platform.XBOX.roundEndCounter[index0] = registerVal6
				registerVal8 = tostring(index0)
				registerVal6 = Lobby.Platform.GetModelValue(("platformSession.sessionClosed." .. registerVal8), Enum.PartyPrivacy.PARTY_PRIVACY_OPEN)
				Lobby.Platform.XBOX.sessionClosed[index0] = registerVal6
				registerVal8 = tostring(index0)
				registerVal6 = Lobby.Platform.GetModelValue(("platformSession.joinRestriction." .. registerVal8), Enum.PartyPrivacy.PARTY_PRIVACY_OPEN)
				Lobby.Platform.XBOX.joinRestriction[index0] = registerVal6
				registerVal8 = tostring(index0)
				registerVal6 = Lobby.Platform.GetModelValue(("platformSession.visibility." .. registerVal8), Enum.PartyPrivacy.PARTY_PRIVACY_OPEN)
				Lobby.Platform.XBOX.visibility[index0] = registerVal6
				local registerVal10 = tostring(index0)
				local registerVal12 = tostring((Enum.LobbyType.LOBBY_TYPE_PRIVATE + 1.000000))
				__FUNC_BA5C_((index0 - 1.000000), Enum.LobbyType.LOBBY_TYPE_PRIVATE, Lobby.Platform.GetModelValue(("platformSession.templateName." .. registerVal10 .. "." .. registerVal12), Lobby.Platform.PLATFORM_SESSION_XBOX_TEMPLATE.PRIVATE_LOBBY))
				registerVal10 = tostring(index0)
				registerVal12 = tostring((Enum.LobbyType.LOBBY_TYPE_GAME + 1.000000))
				__FUNC_BA5C_((index0 - 1.000000), Enum.LobbyType.LOBBY_TYPE_GAME, Lobby.Platform.GetModelValue(("platformSession.templateName." .. registerVal10 .. "." .. registerVal12), Lobby.Platform.PLATFORM_SESSION_XBOX_TEMPLATE.GAME_LOBBY))
				for index5=Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyType.LOBBY_TYPE_GAME, 1.000000 do
					local registerVal15 = tostring(index0)
					local registerVal17 = tostring((index5 + 1.000000))
					__FUNC_BBD2_((index0 - 1.000000), index5, Lobby.Platform.GetModelValue(("platformSession.sessionId." .. registerVal15 .. "." .. registerVal17), ""))
					registerVal15 = tostring(index0)
					registerVal17 = tostring((index5 + 1.000000))
					__FUNC_BD97_((index0 - 1.000000), index5, Lobby.Platform.GetModelValue(("platformSession.changed." .. registerVal15 .. "." .. registerVal17), false))
				end
			end
		end
	end
end

Lobby.Platform.Init = __FUNC_16B97_
Lobby.Platform.playTogether = {}
function Lobby.Platform.PS4ProcessPlayTogetherEvent(arg0)
	local registerVal4 = Engine.GetLobbyUIScreen()
	Lobby.Platform.playTogether.monitor = false
	Lobby.Platform.playTogether.available = true
	Lobby.Platform.playTogether.data = arg0
	local registerVal7 = Engine.GetLobbyNetworkMode()
	if registerVal7 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
		registerVal7 = Lobby.Process.ReloadPrivateLobby(arg0.controller, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE)
		local registerVal8 = Lobby.ProcessPlatform.PlayTogetherBeginPlay(arg0.controller, arg0.playTogetherList)
		Lobby.Process.AddActions(registerVal7.tail, registerVal8.head)
		return registerVal7
	else
		if registerVal4 == LobbyData.UITargets.UI_MAIN.id then
			Lobby.Platform.playTogether.monitor = true
			local registerVal9 = Engine.GetGlobalModel()
			registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.beginPlay")
			Engine.SetModelValue(registerVal8, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE)
			return nil
		else
			registerVal7 = Engine.IsInGame()
			if registerVal7 then
				return Lobby.ProcessPlatform.PlayTogetherBeginPlay(arg0.controller, arg0.playTogetherList)
			else
				return Lobby.ProcessPlatform.PlayTogetherBeginPlay(arg0.controller, arg0.playTogetherList)
			end
		end
	end
	return nil
end

function Lobby.Platform.PS4PlayTogetherPump()
	local registerVal0 = Engine.IsDedicatedServer()
	if registerVal0 == true or LuaUtils.isPS4 ~= true then
		return 
	end
	if Lobby.Platform.playTogether.monitor ~= true then
		return 
	end
	local registerVal1 = Engine.GetLobbyUIScreen()
	if registerVal1 ~= LobbyData.UITargets.UI_MAIN.id then
		if Lobby.Platform.PS4.taskInProgress == true then
			return 
		end
		local registerVal2 = Lobby.Platform.PS4GetSessionId(Lobby.Platform.playTogether.data.controller)
		local registerVal3 = string.len(registerVal2)
		if 0.000000 >= registerVal3 then
		end
		if true then
			Lobby.Platform.playTogether.monitor = false
			local registerVal5 = Lobby.ProcessPlatform.SendPlayTogetherInvites(Lobby.Platform.playTogether.data.controller, Lobby.Platform.playTogether.data.playTogetherList)
			Lobby.ProcessQueue.AddToQueue("PlayTogetherBeginPlay", registerVal5)
			Engine.PlatformSessionClearPlayTogetherInfo()
		end
	end
	registerVal3 = Engine.GetModelForController(Lobby.Platform.playTogether.data.controller)
	registerVal2 = Engine.GetModel(registerVal3, "SystemOverlay_MessageDialog.buttonPrompts")
	if registerVal2 ~= nil then
		Lobby.Platform.playTogether.monitor = false
	end
end

function Lobby.Platform.PlatformModsPump()
	local registerVal0 = LuaUtils.Mods_Enabled()
	if LuaUtils.isPC ~= true or registerVal0 ~= true then
		return 
	end
	registerVal0 = Engine.IsInGame()
	if registerVal0 then
		return 
	end
	registerVal0 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 ~= true and registerVal0 ~= true then
		return 
	end
	local registerVal2 = Engine.milliseconds()
	if registerVal2 < Lobby.Platform.Mods.updateTime then
		return 
	end
	Lobby.Platform.Mods.updateTime = (registerVal2 + 1000.000000)
	local registerVal3 = Engine.GetLobbyUgcInfo()
	if registerVal3 ~= nil then
		local registerVal5 = LobbyVM.OnModUpdate(registerVal3.modInfo)
		if registerVal3.modInfo and registerVal3.modInfo.ugcInfo and registerVal5 then
			return 
		end
		local registerVal6 = LobbyVM.OnUsermapUpdate(registerVal3.usermapInfo)
		if registerVal3.usermapInfo and registerVal3.usermapInfo.ugcInfo and registerVal6 then
			return 
		end
	end
end

Lobby.Platform.Init()

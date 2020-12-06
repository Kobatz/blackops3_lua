-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Lobby.Common.LobbyCore")
require("lua.Lobby.Process.LobbyProcessNavigate")
require("lua.Lobby.Process.LobbyProcess")
require("lua.Lobby.Process.LobbyProcessQueue")
require("lua.Shared.LuaUtils")
require("lua.Lobby.Leaderboard")
require("lua.Lobby.LobbyAnalytics")
require("lua.Lobby.LobbyAnticheat")
require("lua.Lobby.LobbyDebug")
require("lua.Lobby.LobbyHopper")
require("lua.Lobby.LobbyMapVote")
require("lua.Lobby.LobbyMerge")
require("lua.Lobby.LobbyPartyPrivacy")
require("lua.Lobby.LobbyPlatform")
require("lua.Lobby.LobbyStats")
require("lua.Lobby.LobbySteam")
require("lua.Lobby.LobbyTeamSelection")
require("lua.Lobby.LobbyTheater")
require("lua.Lobby.LobbyTimer")
require("lua.Lobby.LobbyEvents")
require("lua.Lobby.UserGeneratedContent")
Util = {}
function Util.IsNil(arg0)
	if arg0 == nil then
		return "true"
	end
	return "false"
end

LobbyVM = {}
LobbyVM.AutoJoin = {}
LobbyVM.DevGui = {}
local registerVal1 = {}
registerVal1.cleared = true
registerVal1.clearedTime = 0.000000
LobbyVM.lobbyStatus = registerVal1
LobbyVM.playSoundHistory = {}
LobbyVM.hostLaunch = {}
LobbyVM.clientLaunch = {}
LobbyVM.lobbyMonitor = {}
LobbyVM.lobbyMonitor.eventRecorded = false
function LobbyVM.DevGui.LaunchGame(arg0, arg1)
	if arg0 ~= nil then
		Dvar.ui_mapname:set(arg0)
	end
	if arg1 ~= nil then
		Dvar.ui_gametype:set(arg1)
	end
	local registerVal2 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if not registerVal2 then
		return 
	end
	registerVal2 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if not registerVal2 then
		return 
	end
	Lobby.Timer.Clear(true)
	registerVal2 = Engine.GetPrimaryController()
	LobbyVM.LaunchGameExec(registerVal2, Enum.LobbyType.LOBBY_TYPE_GAME)
end

function LobbyVM.DevGui.CustomGameAdvertise()
	local registerVal0 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if not registerVal0 then
		return 
	end
	registerVal0 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if not registerVal0 then
		return 
	end
	registerVal0 = Engine.GetLobbyUIScreen()
	if registerVal0 ~= LobbyData.UITargets.UI_MPLOBBYONLINECUSTOMGAME.id then
		return 
	end
	local registerVal3 = Engine.IsAdvertisedLobby(Enum.LobbyType.LOBBY_TYPE_GAME)
	if not registerVal3 then
		Lobby.Matchmaking.SetupAdvertisingCustomMatch()
	end
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Turning session advertisement " .. "on" .. ".
"))
	registerVal3 = Engine.GetPrimaryController()
	Lobby.Matchmaking.SetupMatchmakingQuery(registerVal3, Lobby.Matchmaking.SearchMode.PUBLIC)
	Engine.AdvertiseLobby(Lobby.ProcessQueue.INVALID_ACTION_ID, Enum.LobbyType.LOBBY_TYPE_GAME, true)
end

function LobbyVM.DevGui.LobbyReset()
	local registerVal0 = {}
	local registerVal1 = Engine.GetPrimaryController()
	registerVal0.controller = registerVal1
	registerVal0.signoutUsers = false
	LobbyVM.ErrorShutdown(registerVal0)
end

function LobbyVM.PlaySound(arg0, arg1)
	if LobbyVM.playSoundHistory[arg0] == nil then
	else
		local registerVal4 = Engine.milliseconds()
		if LobbyVM.playSoundHistory[arg0] < registerVal4 then
		end
	end
	if true == true then
		Engine.PlaySound(arg0)
		registerVal4 = Engine.milliseconds()
		LobbyVM.playSoundHistory[arg0] = (registerVal4 + arg1)
	end
end

function LobbyVM.ExecuteLobbyVMRequest(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.lobbyVMRequest")
	registerVal2 = Engine.GetModelValue(registerVal1)
	if registerVal2 == arg0 then
		Engine.ForceNotifyModelSubscriptions(registerVal1)
	else
		Engine.SetModelValue(registerVal1, arg0)
	end
end

function LobbyVM.ErrorShutdown(arg0)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Performing emergency shutdown.
")
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Close all popups in the lobby.
")
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.closePopups")
	Engine.ForceNotifyModelSubscriptions(registerVal1)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Shutting down joins.
")
	Engine.LobbyJoinErrorShutdown()
	if Engine.LobbyClientTaskErrorShutdown then
		Engine.LobbyClientTaskErrorShutdown()
	end
	if Engine.LobbyHostTaskErrorShutdown then
		Engine.LobbyHostTaskErrorShutdown()
	end
	registerVal2 = Engine.GetLobbyNetworkMode()
	if registerVal2 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Shutting down qos probes.
")
		Engine.QoSErrorShutdown(Enum.LobbyType.LOBBY_TYPE_GAME)
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Shutting down advertisement.
")
		Engine.AdvertiseErrorShutdown(Enum.LobbyType.LOBBY_TYPE_GAME)
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Shutting down search.
")
		Engine.LobbySearchErrorShutdown()
	end
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Shutting down private lobby.
")
	Engine.LobbyClientErrorShutdown(Enum.LobbyType.LOBBY_TYPE_GAME)
	Engine.LobbyHostErrorShutdown(Enum.LobbyType.LOBBY_TYPE_GAME)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Shutting down game lobby.
")
	Engine.LobbyClientErrorShutdown(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	Engine.LobbyHostErrorShutdown(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Clearing process queue.
")
	Lobby.ProcessQueue.ErrorShutdown()
	if arg0.signoutUsers ~= nil and arg0.signoutUsers == true then
		Engine.SignOutAllUsers()
	end
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Forcing UI screen.
")
	Engine.ForceLobbyUIScreen(LobbyData.UITargets.UI_MAIN.id)
	Engine.LuiVM_Event("open_main", {})
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "Lobby emergency shutdown complete.
")
end

function LobbyVM.ErrorShutdownMessage(arg0, arg1)
	local registerVal2 = {}
	registerVal2.controller = arg0
	registerVal2.signoutUsers = false
	LobbyVM.ErrorShutdown(registerVal2)
	LuaUtils.UI_ShowErrorMessageDialog(arg0, arg1)
end

function LobbyVM.LogGlobalData()
	local registerVal1 = Engine.GetPlaylistVersionNumber()
	{}.playlistVersion = registerVal1
	registerVal1 = Engine.GetProtocolVersion()
	{}.protocolVersion = registerVal1
	if Engine.GetDDLVersion ~= nil then
		registerVal1 = Engine.GetFFOTDVersion()
		{}.ffotdVersion = registerVal1
		registerVal1 = Engine.GetDDLVersion("gamedata/ddl/mp/mp_stats.ddl")
		{}.mpStatsDDLVersion = registerVal1
		registerVal1 = Engine.GetDDLVersion("gamedata/ddl/loadouts/mp_loadouts.ddl")
		{}.mpLoadoutsDDLVersion = registerVal1
		registerVal1 = Engine.GetBuildIntField(Enum.BuildIntField.BUILD_INTFIELD_CHANGELIST)
		{}.buildCL = registerVal1
		registerVal1 = Engine.GetBuildStringField(Enum.BuildStringField.BUILD_STRINGFIELD_BUILD_MACHINE)
		{}.buildMachine = registerVal1
		registerVal1 = Engine.GetBuildStringField(Enum.BuildStringField.BUILD_STRINGFIELD_BUILD_TIME)
		{}.buildTime = registerVal1
		registerVal1 = Engine.GetBuildStringField(Enum.BuildStringField.BUILD_STRINGFIELD_BUILD_TYPE)
		{}.buildType = registerVal1
		registerVal1 = Engine.GetBuildStringField(Enum.BuildStringField.BUILD_STRINGFIELD_BUILD_NAME)
		{}.buildName = registerVal1
	end
	LuaUtils.LogQoS("global_data", {})
end

function LobbyVM.OnInit(arg0)
	Lobby.ProcessQueue.Init()
	Lobby.TeamSelection.Init()
	LobbyData.InitLobbyNav()
	Lobby.Platform.OnInit(arg0)
	Lobby.Debug.OnInit(arg0)
	Lobby.Anticheat.OnInit()
end

function LobbyVM.OnUILoad(arg0)
	Lobby.Debug.OnUILoad(arg0)
	if arg0.init then
		Lobby.MapVote.Init()
	end
end

function LobbyVM.OnSessionStart(arg0)
	Lobby.MapVote.OnSessionStart(arg0)
	Lobby.PartyPrivacy.OnSessionStart(arg0)
	Lobby.Theater.OnSessionStart(arg0)
	Lobby.Timer.OnSessionStart(arg0)
	Lobby.TeamSelection.OnSessionStart(arg0)
	Lobby.Platform.OnSessionStart(arg0)
	Lobby.Debug.OnSessionStart(arg0)
	Lobby.Steam.OnSessionStart(arg0)
end

function LobbyVM.OnSessionEnd(arg0)
	Lobby.Hopper.OnSessionEnd(arg0)
	Lobby.TeamSelection.OnSessionEnd(arg0)
	Lobby.Theater.OnSessionEnd(arg0)
	Lobby.Timer.OnSessionEnd(arg0)
	Lobby.MapVote.OnSessionEnd(arg0)
	Lobby.Platform.OnSessionEnd(arg0)
	Lobby.Debug.OnSessionEnd(arg0)
	Lobby.Steam.OnSessionEnd(arg0)
end

function LobbyVM.OnClientAdded(arg0)
	local registerVal7 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModelValue(Engine.CreateModel(registerVal7, "lobbyRoot.gameClient.isHost"))
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST and registerVal5 and registerVal5 ~= 0.000000 then
		LuaUtils.ForceLobbyButtonUpdate()
	end
	Lobby.Matchmaking.OnClientAdded(arg0)
	Lobby.TeamSelection.OnClientAdded(arg0)
	Lobby.Pregame.OnClientAdded(arg0)
	Lobby.Leaderboard.OnClientAdded(arg0)
	Lobby.Steam.OnClientAdded(arg0)
	Engine.QoSProbeListenerUpdate(arg0.lobbyType)
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_CLIENT then
		Engine.AddLobbyClientExtracam(arg0.xuid)
	end
	registerVal5 = Engine.IsLocalClient(arg0.xuid)
	registerVal5 = Engine.IsInGame()
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_CLIENT and not registerVal5 and not registerVal5 then
		LobbyVM.PlaySound(LobbyData.Sounds.ClientsAddedToLobby, 500.000000)
	end
	registerVal5 = Engine.GetLobbyNetworkMode()
	registerVal5 = Engine.IsLocalClient(arg0.xuid)
	registerVal5 = Engine.IsInGame()
	registerVal5 = Engine.GetControllerForXuid(arg0.xuid)
	if LuaUtils.isPS4 == true and registerVal5 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE and arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_CLIENT and arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_PRIVATE and registerVal5 and not registerVal5 and Engine.NotifyPsPlusAsyncMultiplay ~= nil then
		Engine.NotifyPsPlusAsyncMultiplay(registerVal5)
	end
	registerVal5 = Engine.GetLobbyLobbyID(arg0.lobbyType)
	arg0.lobbyID = registerVal5
	LuaUtils.LogQoS("client_added", arg0)
end

function LobbyVM.OnClientRemoved(arg0)
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_HOST then
		LuaUtils.ForceLobbyButtonUpdate()
	end
	Lobby.Timer.OnClientRemoved(arg0)
	Lobby.Pregame.OnClientRemoved(arg0)
	Lobby.Steam.OnClientRemoved(arg0)
	Lobby.Matchmaking.OnClientRemoved(arg0)
	Engine.QoSProbeListenerUpdate(arg0.lobbyType)
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_CLIENT then
		Engine.RemoveLobbyClientExtracam(arg0.xuid)
	end
	local registerVal5 = Engine.IsLocalClient(arg0.xuid)
	registerVal5 = Engine.IsInGame()
	if arg0.lobbyModule == Enum.LobbyModule.LOBBY_MODULE_CLIENT and not registerVal5 and not registerVal5 then
		LobbyVM.PlaySound(LobbyData.Sounds.ClientsRemovedFromLobby, 500.000000)
	end
	registerVal5 = Engine.GetLobbyLobbyID(arg0.lobbyType)
	arg0.lobbyID = registerVal5
	LuaUtils.LogQoS("client_removed", arg0)
end

function LobbyVM.OnMatchStart(arg0)
	Lobby.Timer.OnMatchStart(arg0)
	Lobby.Stats.OnMatchStart(arg0)
	Lobby.Matchmaking.OnMatchStart(arg0)
	Lobby.Platform.OnMatchStart(arg0)
	Lobby.Debug.OnMatchStart(arg0)
	Lobby.Steam.OnMatchStart(arg0)
	Engine.AllowVoiceChatForAll(Enum.LobbyType.LOBBY_TYPE_GAME)
	LuaUtils.CycleContracts()
	LuaUtils.ValidateBlackjackPurchase()
	LuaUtils.UI_ClearErrorMessageDialog()
end

function LobbyVM.OnMatchLaunchClient(arg0)
	Lobby.Stats.OnMatchLaunchClient(arg0)
	LuaUtils.LogQoS("match_launch_client", arg0)
end

function LobbyVM.OnMatchChangeGameType(arg0)
	Lobby.Steam.OnMatchChangeGameType(arg0)
end

function LobbyVM.OnMatchChangeMap(arg0)
	Lobby.Stats.OnMatchChangeMap(arg0)
	Lobby.Matchmaking.OnMatchChangeMap(arg0)
	Lobby.Steam.OnMatchChangeMap(arg0)
	LuaUtils.LogQoS("match_change_map", arg0)
end

function LobbyVM.OnMatchEnd(arg0)
	local registerVal4 = Engine.GetLobbyUIScreen()
	if registerVal4 == LobbyData.UITargets.UI_CPLOBBYLANCUSTOMGAME.id then
		local registerVal5 = {}
		registerVal5.toTarget = LobbyData.UITargets.UI_CPLOBBYLANGAME
		LobbyVM.UpdateUI(registerVal5)
	else
		if registerVal4 == LobbyData.UITargets.UI_CPLOBBYONLINECUSTOMGAME.id then
			registerVal5 = {}
			registerVal5.toTarget = LobbyData.UITargets.UI_CPLOBBYONLINE
			LobbyVM.UpdateUI(registerVal5)
		else
			if registerVal4 == LobbyData.UITargets.UI_CPLOBBYONLINEPUBLICGAME.id then
				registerVal5 = {}
				registerVal5.toTarget = LobbyData.UITargets.UI_CPLOBBYONLINE
				LobbyVM.UpdateUI(registerVal5)
			else
				if registerVal4 == LobbyData.UITargets.UI_CP2LOBBYLANCUSTOMGAME.id then
					registerVal5 = {}
					registerVal5.toTarget = LobbyData.UITargets.UI_CP2LOBBYLANGAME
					LobbyVM.UpdateUI(registerVal5)
				else
					if registerVal4 == LobbyData.UITargets.UI_CP2LOBBYONLINECUSTOMGAME.id then
						registerVal5 = {}
						registerVal5.toTarget = LobbyData.UITargets.UI_CP2LOBBYONLINE
						LobbyVM.UpdateUI(registerVal5)
					else
						if registerVal4 == LobbyData.UITargets.UI_CP2LOBBYONLINEPUBLICGAME.id then
							registerVal5 = {}
							registerVal5.toTarget = LobbyData.UITargets.UI_CP2LOBBYONLINE
							LobbyVM.UpdateUI(registerVal5)
						else
							if registerVal4 == LobbyData.UITargets.UI_DOALOBBYLANCUSTOMGAME.id then
								registerVal5 = {}
								registerVal5.toTarget = LobbyData.UITargets.UI_DOALOBBYLANGAME
								LobbyVM.UpdateUI(registerVal5)
							else
								if registerVal4 == LobbyData.UITargets.UI_DOALOBBYONLINEPUBLICGAME.id then
									registerVal5 = {}
									registerVal5.toTarget = LobbyData.UITargets.UI_DOALOBBYONLINE
									LobbyVM.UpdateUI(registerVal5)
								end
							end
						end
					end
				end
			end
		end
	end
	Lobby.TeamSelection.OnMatchEnd(arg0)
	Lobby.Timer.OnMatchEnd(arg0)
	Lobby.Analytics.OnMatchEnd(arg0)
	Lobby.Matchmaking.OnMatchEnd(arg0)
	Lobby.Platform.OnMatchEnd(arg0)
	Lobby.Debug.OnMatchEnd(arg0)
	Lobby.Steam.OnMatchEnd(arg0)
	LuaUtils.BuyWeaponContractIfNeededAfterMatch()
	LuaUtils.BuySpecialContractRewardsIfNeededAfterMatch()
	LuaUtils.SaveAfterMatchContractStats()
	LuaUtils.CycleContracts()
	LuaUtils.ResetToLastSelectedSpecialistIfNeededAfterMatch()
end

function LobbyVM.OnMatchRecordStart(arg0)
	LuaUtils.LogQoS("match_record", arg0)
end

function LobbyVM.OnLobbyServerListRetrieved(arg0)
	Lobby.Steam.OnLobbyServerListRetrieved(arg0)
end

function LobbyVM.OnLobbyServerCountUpdated(arg0)
	Lobby.Steam.OnLobbyServerCountUpdated(arg0)
end

function LobbyVM.OnLobbyServerListSorted(arg0)
	Lobby.Steam.OnLobbyServerListSorted(arg0)
end

function LobbyVM.ShouldShowContentChangedMessage(arg0, arg1)
	local registerVal2 = Dvar.ui_mapname:get()
	local registerVal3 = Engine.GetDLCBitForMapName(registerVal2)
	local registerVal4 = Engine.GetDLCBits()
	local registerVal5 = LobbyVM.CheckDLCBit(registerVal4, registerVal3)
	if registerVal5 then
		return true
	else
		return false
	end
end

function LobbyVM.OnDisconnect(arg0)
	local registerVal6 = Engine.GetPrimaryController()
	if not arg0.errorMsg then
		local registerVal10 = Engine.Localize("EXE_DISCONNECTED_FROM_SERVER")
	end
	registerVal10 = Lobby.Process.Recover(registerVal6)
	if arg0.disconnectClient == Enum.LobbyDisconnectClient.LOBBY_DISCONNECT_CLIENT_INVALID then
	else
		if arg0.disconnectClient == Enum.LobbyDisconnectClient.LOBBY_DISCONNECT_CLIENT_DROP then
		else
			if arg0.disconnectClient == Enum.LobbyDisconnectClient.LOBBY_DISCONNECT_CLIENT_NOPARTYCHAT then
				local registerVal11 = Engine.Localize("MENU_NOTICE")
				registerVal11 = Engine.Localize("PLATFORM_PARTYCHATNOTALLOWED")
				Dvar.partyChatDisallowed:set(false)
			else
				if arg0.disconnectClient == Enum.LobbyDisconnectClient.LOBBY_DISCONNECT_CLIENT_KICK then
					registerVal11 = Engine.Localize("EXE_KICKED_FROM_PARTY_WARNING_TITLE")
					registerVal11 = Engine.Localize("EXE_KICKED_FROM_PARTY_WARNING")
				else
					if arg0.disconnectClient == Enum.LobbyDisconnectClient.LOBBY_DISCONNECT_CLIENT_MISSING_CONTENT then
						Engine.ComError(Enum.errorCode.ERROR_DROP, registerVal11)
					else
						if arg0.disconnectClient == Enum.LobbyDisconnectClient.LOBBY_DISCONNECT_CLIENT_BADDLC then
							registerVal11 = LobbyVM.ShouldShowContentChangedMessage(registerVal6, arg0.lobbyType)
							if registerVal11 then
								Engine.ComError(Enum.errorCode.ERROR_DROP, "MENU_NEW_DLC_AVAILABLE")
							else
								Engine.ComError(Enum.errorCode.ERROR_DROP, "PLATFORM_MISSINGMAP")
							else
								if arg0.disconnectClient == Enum.LobbyDisconnectClient.LOBBY_DISCONNECT_CLIENT_HOSTRELOAD then
									registerVal11 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
									registerVal11 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
									if registerVal11 and not registerVal11 then
										registerVal11 = Engine.DvarInt(0.000000, "arena_lobbyReloadSearchDelayMin")
										local registerVal12 = Engine.DvarInt(0.000000, "arena_lobbyReloadSearchDelayMax")
										local registerVal13 = Lobby.ProcessNavigate.ReloadGameLobby(registerVal6, math.random(registerVal11, registerVal12))
										Lobby.ProcessQueue.AddToQueue("ReloadGameLobby", registerVal13)
									end
									return 
								else
									if arg0.disconnectClient == Enum.LobbyDisconnectClient.LOBBY_DISCONNECT_CLIENT_ERROR then
										registerVal11 = Engine.Localize("EXE_DISCONNECTED_FROM_SERVER_ERROR")
									end
								end
							end
						end
					end
				end
			end
		end
	end
	if false == true then
		registerVal12 = Lobby.Actions.ErrorPopupMsg(registerVal11, registerVal11)
		registerVal10.tail.success = registerVal12
	else
		registerVal12 = Lobby.Actions.WarningPopupMsg(registerVal11, registerVal11)
		registerVal10.tail.success = registerVal12
	end
	Lobby.ProcessQueue.AddToQueue("DisconnectFromHost", registerVal10)
end

function LobbyVM.OnLobbyOnlineUpdate(arg0)
	Lobby.Matchmaking.OnLobbyOnlineUpdate(arg0)
end

function LobbyVM.OnLeaveWithParty(arg0)
	LobbyVM.LobbyLeaveWithParty(arg0)
end

function LobbyVM.OnGametypeSettingsChange(arg0)
	Lobby.TeamSelection.OnGametypeSettingsChange(arg0)
	LuaUtils.ForceLobbyButtonUpdate()
end

function LobbyVM.OnPartyPrivacyChange(arg0)
	Lobby.Steam.OnPartyPrivacyChange(arg0)
end

function LobbyVM.OnSessionModeChanged(arg0)
	Lobby.Steam.OnSessionModeChanged(arg0)
end

function LobbyVM.OnMaxClientsChanged(arg0)
	Lobby.Steam.OnMaxClientsChanged(arg0)
end

function LobbyVM.OnPlatformSessionDataUpdate(arg0)
	Lobby.Platform.OnPlatformSessionDataUpdate(arg0)
end

function LobbyVM.ComErrorCodeToString(arg0)
	if arg0 == Enum.errorCode.ERROR_NONE then
		return "ERR_NONE"
	else
		if arg0 == Enum.errorCode.ERROR_FATAL then
			return "ERR_FATAL"
		else
			if arg0 == Enum.errorCode.ERROR_DROP then
				return "ERR_DROP"
			else
				if arg0 == Enum.errorCode.ERROR_FROM_STARTUP then
					return "ERR_FROM_STARTUP"
				else
					if arg0 == Enum.errorCode.ERROR_SERVERDISCONNECT then
						return "ERR_SERVERDISCONNECT"
					else
						if arg0 == Enum.errorCode.ERROR_DISCONNECT then
							return "ERR_DISCONNECT"
						else
							if arg0 == Enum.errorCode.ERROR_SCRIPT then
								return "ERR_SCRIPT"
							else
								if arg0 == Enum.errorCode.ERROR_SCRIPT_DROP then
									return "ERR_SCRIPT_DROP"
								else
									if arg0 == Enum.errorCode.ERROR_LOCALIZATION then
										return "ERR_LOCALIZATION"
									else
										if arg0 == Enum.errorCode.ERROR_UI then
											return "ERR_UI"
										else
											if arg0 == Enum.errorCode.ERROR_LUA then
												return "ERR_LUA"
											else
												if arg0 == Enum.errorCode.ERROR_SOFTRESTART then
													return "ERR_SOFTRESTART"
												else
													if arg0 == Enum.errorCode.ERROR_SOFTRESTART_KEEPDW then
														return "ERR_SOFTRESTART_KEEPDW"
													else
														if arg0 == Enum.errorCode.ERROR_SOFTRESTART_SILENT then
															return "ERR_SOFTRESTART_SILENT"
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
	return tostring(arg0)
end

function LobbyVM.OnComError(arg0)
	Lobby.Platform.OnComError(arg0)
	if arg0.isInCleanup then
		LobbyVM.OnComErrorCleanup(arg0)
		return 
	end
	Lobby.Debug.OnComError(arg0)
	local registerVal9 = LobbyVM.ComErrorCodeToString(arg0.errorCode)
	Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYVM, ("COM ERROR - errorCode: " .. registerVal9 .. ", errorMsg: " .. arg0.errorMsg .. ".
"))
	local registerVal7 = Engine.GetGlobalModel()
	local registerVal6 = Engine.CreateModel(registerVal7, "lobbyRoot.hideMenusForGameStart")
	Engine.SetModelValue(registerVal6, 0.000000)
	LuaUtils.LogQoS("lobby_error", arg0)
	if arg0.errorCode ~= Enum.errorCode.ERROR_SOFTRESTART and arg0.errorCode == Enum.errorCode.ERROR_SOFTRESTART_KEEPDW or arg0.errorCode == Enum.errorCode.ERROR_SOFTRESTART_SILENT then
		return 
	end
	registerVal7 = Engine.GetLobbyNetworkMode()
	registerVal7 = Engine.IsSignedInToDemonware(arg0.controller)
	if registerVal7 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE and not registerVal7 then
		LobbyVM.ErrorShutdown(arg0)
	end
	if arg0.errorCode == Enum.errorCode.ERROR_DROP then
		Lobby.Stats.OnServerTimeout(arg0.controller)
	end
	if arg0.errorCode ~= Enum.errorCode.ERROR_UI and arg0.errorCode ~= Enum.errorCode.ERROR_DISCONNECT and arg0.errorCode ~= Enum.errorCode.ERROR_FATAL and arg0.errorCode ~= Enum.errorCode.ERROR_DROP and arg0.errorCode == Enum.errorCode.ERROR_SOFTRESTART_KEEPDW or arg0.errorCode == Enum.errorCode.ERROR_SOFTRESTART_SILENT then
		return 
	end
	if arg0.errorCode ~= Enum.errorCode.ERROR_NONE and arg0.errorCode ~= Enum.errorCode.ERROR_LUA and arg0.errorCode ~= Enum.errorCode.ERROR_FROM_STARTUP and arg0.errorCode == Enum.errorCode.ERROR_LOCALIZATION or arg0.errorCode == Enum.errorCode.ERROR_SERVERDISCONNECT then
		LuaUtils.UI_ShowErrorMessageDialog(arg0.controller, arg0.errorMsg)
		return 
	end
	if arg0.errorCode == Enum.errorCode.ERROR_SCRIPT or arg0.errorCode == Enum.errorCode.ERROR_SCRIPT_DROP then
		LuaUtils.UI_ShowErrorMessageDialog(arg0.controller, arg0.errorMsg)
		registerVal7 = Lobby.Process.NonFatalError(arg0.errorMsg)
		Lobby.ProcessQueue.AddToQueue("ErrorNonFatal", registerVal7)
		return 
	end
	registerVal9 = LobbyVM.ComErrorCodeToString(arg0.errorCode)
	error(("LobbyVM.OnError - Unhandled COM_ERROR: " .. registerVal9 .. ", Message: " .. arg0.errorMsg .. ".
"))
end

function LobbyVM.ShutdownCleanupMP(arg0)
end

function LobbyVM.ShutdownCleanupZM(arg0)
end

function LobbyVM.ShutdownCleanupCP(arg0)
end

function LobbyVM.ShutdownCleanup(arg0)
	Dvar.ui_gametype:set("")
	Dvar.ui_mapname:set("")
	LobbyVM.ShutdownCleanupCP(arg0)
	LobbyVM.ShutdownCleanupMP(arg0)
	LobbyVM.ShutdownCleanupZM(arg0)
end

function LobbyVM.OnComErrorCleanup(arg0)
	Engine.LobbyLaunchClear()
	if arg0.errorShutdown ~= nil and arg0.errorShutdown == true then
		LobbyVM.ErrorShutdown(arg0)
		LobbyVM.ShutdownCleanup(arg0)
	end
	if arg0.errorCode == Enum.errorCode.ERROR_FATAL then
		LuaUtils.UI_ShowErrorMessageDialog(arg0.controller, arg0.errorMsg)
		local registerVal5 = Lobby.Process.Recover(arg0.controller)
		if registerVal5 ~= nil then
			Lobby.ProcessQueue.AddToQueue("ErrorFatal", registerVal5)
		else
			if arg0.errorCode == Enum.errorCode.ERROR_DROP then
				registerVal5 = Lobby.Process.Recover(arg0.controller)
				if registerVal5 then
					local registerVal6 = Lobby.Actions.ErrorPopupMsg(arg0.errorMsg)
					Lobby.Process.AddActions(registerVal5.tail, registerVal6, registerVal6, registerVal6)
					Lobby.ProcessQueue.AddToQueue("ERROR_DROP", registerVal5)
				else
					LuaUtils.UI_ShowErrorMessageDialog(arg0.controller, arg0.errorMsg)
				else
					if arg0.errorCode == 1026.000000 then
						Lobby.ProcessQueue.ClearQueue()
						LuaUtils.UI_ShowErrorMessageDialog(arg0.controller, arg0.errorMsg)
					else
						if arg0.errorCode == 2050.000000 then
							registerVal5 = string.len(arg0.errorMsg)
							LuaUtils.UI_ShowErrorMessageDialog(arg0.controller, arg0.errorMsg)
							registerVal5 = string.len(arg0.errorMsg)
							if 0.000000 < registerVal5 and arg0.errorCode == 4098.000000 and 0.000000 < registerVal5 then
								LuaUtils.UI_ShowInfoMessageDialog(arg0.controller, arg0.errorMsg)
							end
						end
					end
				end
			end
		end
	end
end

function LobbyVM.OnErrorShutdown(arg0)
	LobbyVM.ErrorShutdown(arg0)
end

function LobbyVM.OnStorageRead(arg0)
	if arg0.result ~= Enum.StorageResult.STORAGE_SUCCESS then
		LuaUtils.LogQoS("storage", arg0)
	else
		if arg0.fileType == Enum.StorageFileType.STORAGE_MP_STATS_ONLINE then
			Lobby.Stats.OnMPOnlineStatsDownloaded(arg0.controller)
		else
			if arg0.fileType == Enum.StorageFileType.STORAGE_MP_LOADOUTS then
				Lobby.Stats.ValidateLoadouts(arg0.controller)
			else
				if arg0.fileType == Enum.StorageFileType.STORAGE_MP_CLASS_SETS then
					Lobby.Stats.ValidateLoadouts(arg0.controller)
				else
					if arg0.fileType == Enum.StorageFileType.STORAGE_COMMON_SETTINGS then
						Lobby.Stats.OnProfileCommonStatsDownloaded(arg0.controller)
					else
						if arg0.fileType == Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE then
							Lobby.Stats.OnZMOnlineStatsDownloaded(arg0.controller)
						end
					end
				end
			end
		end
	end
end

function LobbyVM.OnStorageWrite(arg0)
	if arg0.result ~= Enum.StorageResult.STORAGE_SUCCESS then
		LuaUtils.LogQoS("storage", arg0)
	else
		if arg0.fileType == Enum.StorageFileType.STORAGE_MP_LOADOUTS then
			Lobby.Stats.ValidateLoadouts(arg0.controller)
		else
			if arg0.fileType == Enum.StorageFileType.STORAGE_MP_STATS_ONLINE then
				Lobby.Stats.ValidateLoadouts(arg0.controller)
				Lobby.Stats.OnMPStatsUploaded(arg0.controller)
			end
		end
	end
end

function LobbyVM.OnStorageWriteDispatch(arg0)
end

function LobbyVM.OnRecordComScoreEvent(arg0)
	local registerVal4, registerVal5, registerVal6 = pairs(arg0.EventParams)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		table.insert({}, index7)
		table.insert({}, value8)
	end
	if 0.000000 < #registerVal4 and (##registerVal4 % 2.000000) == 0.000000 then
		Engine.RecordComScoreEvent(arg0.controller, arg0.eventCategoryName, unpack({}))
	end
end

function LobbyVM.OnKVSFlush()
	LobbyVM.LogGlobalData()
end

function LobbyVM.OnPreExecFFOTD()
	Lobby.Platform.OnPreExecFFOTD()
	local registerVal0 = {}
	local registerVal1 = Engine.GetPrimaryController()
	registerVal0.controller = registerVal1
	registerVal0.signoutUsers = false
	local registerVal2 = Engine.GetGlobalModel()
	registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.FFOTDShutdown")
	Engine.SetModelValue(registerVal1, true)
	LobbyVM.ErrorShutdown(registerVal0)
	Engine.SetModelValue(registerVal1, false)
end

function LobbyVM.OnPostExecFFOTD()
	LobbyVM.LogGlobalData()
	Lobby.Platform.OnPostExecFFOTD()
end

function LobbyVM.OnDWDisconnect(arg0)
	local registerVal2 = Engine.IsDedicatedServer()
	registerVal2 = Engine.GetPrimaryController()
	if not registerVal2 and arg0.controller == registerVal2 then
		Engine.LobbyOnlineCancel(true)
	end
end

function LobbyVM.DemoEndFinished(arg0)
	if LobbyVM.AutoJoin.data ~= nil then
		if LobbyVM.AutoJoin.data.platform == true then
			local registerVal2 = Lobby.Platform.PlatformSessionOrbisEnabled()
			if registerVal2 then
				if LobbyVM.AutoJoin.data.playTogether == true then
					registerVal2 = Lobby.Process.Recover(controller, LobbyData.UITargets.UI_MODESELECT.id)
					recoverProcess = registerVal2
					registerVal2 = Lobby.Platform.PS4ProcessPlayTogetherEvent(LobbyVM.AutoJoin.data.platformData)
				else
					registerVal2 = Lobby.Platform.InGamePlatformJoinOrbis(LobbyVM.AutoJoin.data.platformData)
				else
					registerVal2 = Lobby.Platform.PlatformSessionDurangoEnabled()
					if registerVal2 then
						registerVal2 = Lobby.Platform.InGamePlatformJoinDurango(LobbyVM.AutoJoin.data.platformData)
					else
						registerVal2 = LobbyVM.GetJoinProcess(LobbyVM.AutoJoin.data)
					end
				end
			end
		end
		if registerVal2 ~= nil then
			Lobby.ProcessQueue.AddToQueue("DemoEnd", registerVal2)
		end
		LobbyVM.AutoJoin.data = nil
	end
end

function LobbyVM.OnLimitedItemPromoUpdate(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "LimitedItemPromo")
	registerVal2 = Engine.CreateModel(registerVal1, "itemCount")
	local registerVal4 = Engine.DvarInt(nil, "loot_limitedItemPromo_override_count")
	if -1.000000 < registerVal4 then
	end
	Engine.SetModelValue(registerVal2, arg0.count)
end

LobbyVM.Gunsmith = {}
function LobbyVM.Gunsmith.InitializeBuffer(arg0)
	for index2=0.000000, (#arg0.variant - 1.000000), 1.000000 do
		arg0.variant[index2].variantIndex:set(index2)
		arg0.variant[index2].paintjobSlot:set(Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT)
		arg0.variant[index2].paintjobIndex:set(Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX)
	end
end

function LobbyVM.Gunsmith.ClearBuffer(arg0)
	for index2=0.000000, (#arg0.variant - 1.000000), 1.000000 do
		arg0.variant[index2].variantName:set("")
		for index8=0.000000, (#arg0.variant[index2].attachment - 1.000000), 1.000000 do
			arg0.variant[index2].attachment[index8]:set(0.000000)
		end
		for index9=0.000000, (#arg0.variant[index2].attachmentVariant - 1.000000), 1.000000 do
			arg0.variant[index2].attachmentVariant[index9]:set(0.000000)
		end
		arg0.variant[index2].reticleIndex:set(0.000000)
		arg0.variant[index2].camoIndex:set(0.000000)
		arg0.variant[index2].paintjobSlot:set(0.000000)
		arg0.variant[index2].paintjobIndex:set(0.000000)
		arg0.variant[index2].weaponIndex:set(0.000000)
		arg0.variant[index2].variantIndex:set(0.000000)
		arg0.variant[index2].sortIndex:set(0.000000)
		arg0.variant[index2].readOnly:set(0.000000)
		arg0.variant[index2].createTime:set(0.000000)
	end
end

function LobbyVM.InitilizeGunsmithBuffer(arg0)
	Engine.StorageReset(arg0.controller, Enum.StorageFileType.STORAGE_GUNSMITH)
	local registerVal2 = Engine.StorageGetBuffer(arg0.controller, Enum.StorageFileType.STORAGE_GUNSMITH)
	LobbyVM.Gunsmith.InitializeBuffer(registerVal2)
	Engine.StorageWrite(arg0.controller, Enum.StorageFileType.STORAGE_GUNSMITH)
end

function LobbyVM.InitilizeZMLoadoutBuffer(arg0)
	local registerVal3 = Engine.StorageGetBuffer(arg0.controller, arg0.storageFileType)
	if registerVal3 and registerVal3.cacLoadouts then
		LobbyVM.Gunsmith.ClearBuffer(registerVal3.cacLoadouts)
		LobbyVM.Gunsmith.InitializeBuffer(registerVal3.cacLoadouts)
	end
end

function LobbyVM.OnInitializeStats(arg0)
	if arg0.storageFileType == Enum.StorageFileType.STORAGE_MP_STATS_ONLINE then
		local registerVal3 = Engine.StorageGetBuffer(arg0.controller, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
		if registerVal3.itemStats then
			for index4=1.000000, 255.000000, 1.000000 do
				local registerVal8 = Engine.ItemIndexValid(index4, Enum.eModes.MODE_MULTIPLAYER)
				registerVal8 = Engine.GetItemUnlockLevel(index4, Enum.eModes.MODE_MULTIPLAYER)
				registerVal8 = Engine.ItemIndexIsBlackMarket(index4, Enum.eModes.MODE_MULTIPLAYER)
				if registerVal8 and registerVal8 == 0.000000 and not registerVal8 then
					registerVal3.itemStats[index4].markedOld:set(1.000000)
				end
				registerVal3.itemStats[index4].attachmentMarkedOld.gmod6:set(1.000000)
				registerVal3.itemStats[index4].attachmentMarkedOld.gmod7:set(1.000000)
			end
		else
			registerVal3 = Engine.StorageGetBuffer(arg0.controller, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
			if arg0.storageFileType == Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE and registerVal3.itemStats then
				for index4=1.000000, 255.000000, 1.000000 do
					registerVal8 = Engine.ItemIndexValid(index4, Enum.eModes.MODE_ZOMBIES)
					registerVal8 = Engine.GetItemUnlockLevel(index4, Enum.eModes.MODE_ZOMBIES)
					registerVal8 = Engine.GetDLCNameForItem(index4, Enum.eModes.MODE_ZOMBIES)
					if registerVal8 and registerVal8 == 0.000000 and registerVal8 == nil then
						registerVal3.itemStats[index4].markedOld:set(1.000000)
					end
				end
			end
		end
	end
end

function LobbyVM.SetDefaultShowcaseWeapon(arg0, arg1)
	local registerVal2 = Engine.GetItemIndexFromReference("ar_standard", arg1)
	for index3=0.000000, (#arg0.characters - 1.000000), 1.000000 do
		arg0.characters[index3].showcaseWeapon.weaponIndex:set(registerVal2)
		arg0.characters[index3].showcaseWeapon.paintjobSlot:set(Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT)
		arg0.characters[index3].showcaseWeapon.paintjobIndex:set(Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX)
	end
end

function LobbyVM.OnInitializeLoadouts(arg0)
	if arg0.storageFileType == Enum.StorageFileType.STORAGE_ZM_LOADOUTS then
		local registerVal4 = Engine.StorageGetBuffer(arg0.controller, Enum.StorageFileType.STORAGE_ZM_LOADOUTS)
		LobbyVM.Gunsmith.InitializeBuffer(registerVal4.cacLoadouts)
		registerVal4.cacLoadouts.characterContext.characterIndex:set(6.000000)
		LobbyVM.SetDefaultShowcaseWeapon(registerVal4.cacLoadouts, Enum.eModes.MODE_ZOMBIES)
	else
		if arg0.storageFileType == Enum.StorageFileType.STORAGE_ZM_LOADOUTS_OFFLINE then
			registerVal4 = Engine.StorageGetBuffer(arg0.controller, Enum.StorageFileType.STORAGE_ZM_LOADOUTS_OFFLINE)
			LobbyVM.Gunsmith.InitializeBuffer(registerVal4.cacLoadouts)
			registerVal4.cacLoadouts.characterContext.characterIndex:set(6.000000)
			LobbyVM.SetDefaultShowcaseWeapon(registerVal4.cacLoadouts, Enum.eModes.MODE_ZOMBIES)
		else
			if arg0.storageFileType == Enum.StorageFileType.STORAGE_MP_LOADOUTS_OFFLINE then
				registerVal4 = Engine.StorageGetBuffer(arg0.controller, Enum.StorageFileType.STORAGE_MP_LOADOUTS_OFFLINE)
				LobbyVM.SetDefaultShowcaseWeapon(registerVal4.cacLoadouts, Enum.eModes.MODE_MULTIPLAYER)
				local registerVal5 = Engine.GetEquippedHeroForCACType(arg0.controller, Enum.eModes.MODE_MULTIPLAYER, Enum.CACType.CAC_TYPE_MP_OFFLINE)
				local registerVal6 = Engine.GetLoadoutItemIndexForHero(Enum.eModes.MODE_MULTIPLAYER, registerVal5, Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_WEAPON)
				if registerVal5 and registerVal4.cacLoadouts and registerVal4.cacLoadouts.heroweapon then
					registerVal4.cacLoadouts.heroweapon:set(registerVal6)
				else
					if arg0.storageFileType == Enum.StorageFileType.STORAGE_MP_LOADOUTS then
						registerVal4 = Engine.StorageGetBuffer(arg0.controller, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
						registerVal5 = Engine.StorageGetBuffer(arg0.controller, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
						registerVal6 = Engine.StorageGetBuffer(arg0.controller, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
						LobbyVM.SetDefaultShowcaseWeapon(registerVal4.cacLoadouts, Enum.eModes.MODE_MULTIPLAYER)
						LobbyVM.SetDefaultShowcaseWeapon(registerVal5.customMatchCacLoadouts, Enum.eModes.MODE_MULTIPLAYER)
						LobbyVM.SetDefaultShowcaseWeapon(registerVal6.leagueCacLoadouts, Enum.eModes.MODE_MULTIPLAYER)
						local registerVal7 = Engine.GetEquippedHeroForCACType(arg0.controller, Enum.eModes.MODE_MULTIPLAYER, Enum.CACType.CAC_TYPE_MP_PUBLIC)
						if registerVal7 then
							local registerVal8 = Engine.GetLoadoutItemIndexForHero(Enum.eModes.MODE_MULTIPLAYER, registerVal7, Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_WEAPON)
							if registerVal4.cacLoadouts and registerVal4.cacLoadouts.heroweapon then
								registerVal4.cacLoadouts.heroweapon:set(registerVal8)
							end
							if registerVal5.customMatchCacLoadouts and registerVal5.customMatchCacLoadouts.heroweapon then
								registerVal5.customMatchCacLoadouts.heroweapon:set(registerVal8)
							end
						end
						if registerVal4.cacLoadouts then
							local registerVal9 = Engine.GetHeroList(Enum.eModes.MODE_MULTIPLAYER)
							for index10=0.000000, (#registerVal8 - 1.000000), 1.000000 do
								if registerVal4.cacLoadouts.characters[index10].itemList then
									registerVal4.cacLoadouts.characters[index10].itemList.body.items[0.000000].markedOld:set(1.000000)
									registerVal4.cacLoadouts.characters[index10].itemList.helmet.items[0.000000].markedOld:set(1.000000)
								end
								if registerVal4.cacLoadouts.characters[index10].tauntMarkedOld and registerVal4.cacLoadouts.characters[index10].tauntMarkedOld.first_place and registerVal4.cacLoadouts.characters[index10].tauntMarkedOld.first_place.markedOld then
									registerVal4.cacLoadouts.characters[index10].tauntMarkedOld.first_place.markedOld[0.000000]:set(1.000000)
								end
							end
						else
							if arg0.storageFileType == Enum.StorageFileType.STORAGE_CP_LOADOUTS then
								registerVal4 = Engine.StorageGetBuffer(arg0.controller, Enum.StorageFileType.STORAGE_CP_LOADOUTS)
								LobbyVM.SetDefaultShowcaseWeapon(registerVal4.cacLoadouts, Enum.eModes.MODE_CAMPAIGN)
								if registerVal4.cacLoadouts then
									registerVal6 = Engine.GetHeroList(Enum.eModes.MODE_CAMPAIGN)
									for index7=0.000000, (#Enum.eModes.MODE_MULTIPLAYER - 1.000000), 1.000000 do
										if registerVal4.cacLoadouts.characters[index7].itemList then
											registerVal4.cacLoadouts.characters[index7].itemList.body.items[0.000000].markedOld:set(1.000000)
											registerVal4.cacLoadouts.characters[index7].itemList.helmet.items[0.000000].markedOld:set(1.000000)
											registerVal4.cacLoadouts.characters[index7].itemList.helmet.items[1.000000].markedOld:set(1.000000)
										end
									end
								else
									if arg0.storageFileType == Enum.StorageFileType.STORAGE_CP_LOADOUTS_OFFLINE then
										registerVal4 = Engine.StorageGetBuffer(arg0.controller, Enum.StorageFileType.STORAGE_CP_LOADOUTS_OFFLINE)
										LobbyVM.SetDefaultShowcaseWeapon(registerVal4.cacLoadouts, Enum.eModes.MODE_CAMPAIGN)
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

function LobbyVM.LobbyHostLeftNoMigration(arg0)
	local registerVal8 = LobbyVM.CanClientLaunch(arg0)
	if not registerVal8 then
		return 
	end
	registerVal8 = Engine.IsLobbyInRecovery(arg0.lobbyType)
	if registerVal8 then
		return 
	end
	if arg0.isGameLobbyActive == true and arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME then
		registerVal8 = Lobby.ProcessQueue.GetCurrentRunningProcessName()
		if registerVal8 ~= "HostLeftNoMigrationGame" then
			registerVal8 = Lobby.Process.Recover(arg0.controller)
			Lobby.ProcessQueue.AddToQueue("HostLeftNoMigrationGame", registerVal8)
		else
			registerVal8 = Lobby.Process.HostLeftNoMigrationCreatePrivateLobby(arg0.controller, arg0.lobbyMainMode, arg0.maxClients)
			Lobby.ProcessQueue.AddToQueue("HostLeftNoMigration", registerVal8)
		end
	end
	Engine.PlaySound(LobbyData.Sounds.LobbyClosed)
	LuaUtils.LogQoS("host_left_no_migration", arg0)
end

function LobbyVM.LobbyHostLeft_InGameMigrateFinished(arg0)
	local registerVal2 = Lobby.Process.Recover(arg0.controller)
	if LobbyVM.AutoJoin.data ~= nil then
		if LobbyVM.AutoJoin.data.platform == true then
			local registerVal4 = Lobby.Platform.PlatformSessionOrbisEnabled()
			if registerVal4 then
				if LobbyVM.AutoJoin.data.playTogether == true then
					registerVal4 = Lobby.Process.Recover(arg0.controller, LobbyData.UITargets.UI_MODESELECT.id)
					registerVal4 = Lobby.Platform.PS4ProcessPlayTogetherEvent(LobbyVM.AutoJoin.data.platformData)
				else
					registerVal4 = Lobby.Platform.InGamePlatformJoinOrbis(LobbyVM.AutoJoin.data.platformData)
				else
					registerVal4 = Lobby.Platform.PlatformSessionDurangoEnabled()
					if registerVal4 then
						registerVal4 = Lobby.Platform.InGamePlatformJoinDurango(LobbyVM.AutoJoin.data.platformData)
					else
						registerVal4 = LobbyVM.GetJoinProcess(LobbyVM.AutoJoin.data)
					end
				end
			end
		end
		if registerVal4 ~= nil then
			Lobby.Process.AppendProcess(registerVal4, registerVal4)
		end
		LobbyVM.AutoJoin.data = nil
	end
	Lobby.ProcessQueue.AddToQueue("LobbyHostLeft_InGameMigrateFinished", registerVal4)
	Engine.PlaySound(LobbyData.Sounds.LobbyClosed)
	LuaUtils.LogQoS("ingame_migrate_finished", arg0)
end

function LobbyVM.LobbyClientLeftEvent(arg0)
	local registerVal6 = Lobby.Process.Recover(arg0.controller)
	if LobbyVM.AutoJoin.data ~= nil then
		if LobbyVM.AutoJoin.data.platform == true then
			local registerVal8 = Lobby.Platform.PlatformSessionOrbisEnabled()
			if registerVal8 then
				if LobbyVM.AutoJoin.data.playTogether == true then
					registerVal8 = Lobby.Process.Recover(arg0.controller, LobbyData.UITargets.UI_MODESELECT.id)
					registerVal8 = Lobby.Platform.PS4ProcessPlayTogetherEvent(LobbyVM.AutoJoin.data.platformData)
				else
					registerVal8 = Lobby.Platform.InGamePlatformJoinOrbis(LobbyVM.AutoJoin.data.platformData)
				else
					registerVal8 = Lobby.Platform.PlatformSessionDurangoEnabled()
					if registerVal8 then
						registerVal8 = Lobby.Platform.InGamePlatformJoinDurango(LobbyVM.AutoJoin.data.platformData)
					else
						registerVal8 = LobbyVM.GetJoinProcess(LobbyVM.AutoJoin.data)
					end
				end
			end
		end
		if registerVal8 ~= nil then
			Lobby.Process.AppendProcess(registerVal8, registerVal8)
		end
		LobbyVM.AutoJoin.data = nil
	end
	Lobby.ProcessQueue.AddToQueue("LobbyClientLeft", registerVal8)
end

function LobbyVM.Devmap(arg0)
	local registerVal3 = Lobby.Process.Devmap(arg0.controller, arg0.mainMode)
	Lobby.ProcessQueue.AddToQueue("Devmap", registerVal3)
end

function LobbyVM.DevmapClient(arg0)
	local registerVal2 = Lobby.Process.DevmapClient(arg0.controller)
	Lobby.ProcessQueue.AddToQueue("DevmapClient", registerVal2)
end

function LobbyVM.MatchmakingPriorityQuit(arg0)
	local registerVal1 = LobbyData.GetLobbyNav()
	local registerVal2 = LobbyData:UITargetFromId(registerVal1)
	if registerVal2.id == LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id or registerVal2.id == LobbyData.UITargets.UI_DOALOBBYONLINEPUBLICGAME.id then
		Lobby.MatchmakingPriority.AddHost(arg0.hostSecId, Enum.JoinType.JOIN_TYPE_PLAYLIST)
	end
end

function LobbyVM.NetworkModeChanged(arg0)
	local registerVal3 = Lobby.Process.ReloadPrivateLobby(arg0.controller, arg0.networkMode)
	Lobby.ProcessQueue.AddToQueue("NetworkModeChanged", registerVal3)
end

function LobbyVM.GoForward(arg0)
	local registerVal1 = LobbyVM.IsHostLaunching()
	if registerVal1 then
		return 
	end
	registerVal1 = Engine.GetPrimaryController()
	local registerVal5 = LobbyData.GetLobbyNav()
	local registerVal6 = LobbyData:UITargetFromId(registerVal5)
	local registerVal7 = LobbyData:UITargetFromName(arg0.navToMenu)
	if registerVal6 == nil then
		error(("LobbyVM: No menu called '" .. currentMenu .. "' found."))
	end
	if registerVal7 == nil then
		error(("LobbyVM: No menu called '" .. arg0.navToMenu .. "' found."))
	end
	local registerVal8 = Lobby.Process.GetForwardFunc(registerVal6, registerVal7)
	if registerVal8 == nil then
		error(("LobbyVM: No forward process function found to move from '" .. registerVal6.name .. "' to '" .. arg0.navToMenu .. "'."))
	end
	local registerVal9 = registerVal8(registerVal1, registerVal6, registerVal7)
	if registerVal9 ~= nil and arg0.disbandParty == true then
		local registerVal10 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		if registerVal10 == true then
			registerVal10 = Lobby.Process.ManagePartyLeave(registerVal1)
			Lobby.Process.AppendProcess(registerVal10, registerVal9)
			Lobby.ProcessQueue.AddToQueue(("GoForward from '" .. registerVal6.name .. "' menu to '" .. registerVal7.name .. "' menu AND ManagePartyLeave"), registerVal10)
		else
			registerVal10 = Lobby.Process.ReloadPrivateLobby(registerVal1, Engine.GetLobbyNetworkMode())
			Lobby.Process.AppendProcess(registerVal10, registerVal9)
			Lobby.ProcessQueue.AddToQueue(("GoForward from '" .. registerVal6.name .. "' menu to '" .. registerVal7.name .. "' menu AND PartyMemberLeave"), registerVal10)
		end
		return 
	end
	Lobby.ProcessQueue.AddToQueue(("GoForward from '" .. registerVal6.name .. "' menu to '" .. registerVal7.name .. "' menu."), registerVal9)
end

function LobbyVM.GoBack(arg0)
	local registerVal1 = LobbyVM.IsHostLaunching()
	if registerVal1 then
		return 
	end
	registerVal1 = Engine.GetPrimaryController()
	local registerVal3 = LobbyData:UITargetFromId(LobbyData.GetLobbyNav())
	if registerVal3 == nil then
		error(("LobbyVM: No menu called '" .. currentMenu .. "' found."))
	end
	local registerVal4, registerVal5 = Lobby.Process.GetBackFunc(registerVal3)
	if registerVal4 == nil or registerVal5 == nil then
		local registerVal8 = currentMenu("'.")
		error(("LobbyVM: No back process function found for '" .. registerVal8))
	end
	local registerVal6 = registerVal5(registerVal1, registerVal3, registerVal4, arg0.withParty)
	Lobby.ProcessQueue.AddToQueue(("GoBackFrom" .. registerVal3.name), registerVal6)
end

function LobbyVM.ManagePartyLeave(arg0)
	local registerVal1 = LobbyVM.IsHostLaunching()
	if registerVal1 then
		return 
	end
	local registerVal2 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if registerVal2 == true then
		registerVal2 = Lobby.Process.ManagePartyLeave(arg0.controller)
		Lobby.ProcessQueue.AddToQueue("ManagePartyLeave", registerVal2)
	else
		registerVal2 = Lobby.Process.ReloadPrivateLobby(arg0.controller, Engine.GetLobbyNetworkMode())
		Lobby.ProcessQueue.AddToQueue("PartyMemberLeave", registerVal2)
	end
end

function LobbyVM.InGameJoin(arg0, arg1)
	LobbyVM.AutoJoin.data = arg0
	local registerVal2 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	if arg0.migrating ~= nil and arg0.migrating == false and registerVal2 == true then
		if arg1 == true then
			LobbyVM.AutoJoin.leaveServerImmediately = true
			return 
		end
		registerVal2 = LobbyVM.IsInTheaterLobby()
		if not registerVal2 then
			Engine.LeaveServerImmediately()
		end
	end
end

function LobbyVM.GetJoinProcess(arg0)
	local registerVal2 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal2 then
	end
	registerVal2 = Engine.LobbyIsPlayerInLobby(Enum.LobbyType.LOBBY_TYPE_GAME, arg0.xuid)
	if registerVal2 then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "LobbyVM: Trying to Join lobby we are already part of
")
		return nil
	end
	if not LuaUtils.isPC then
		registerVal2 = Engine.IsCpStillDownloading()
		registerVal2 = Engine.IsMpStillDownloading()
		registerVal2 = Engine.IsZmStillDownloading()
		if not registerVal2 and not Enum.LobbyType.LOBBY_TYPE_GAME or registerVal2 then
			Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "LobbyVM: Cannot process a join when the game is still being installed.
")
			return nil
		end
	end
	return Lobby.Process.Join(arg0.controller, arg0.xuid, arg0.joinType, LuaEnums.LEAVE_WITH_PARTY.WITH)
end

function LobbyVM.Join(arg0)
	local registerVal1 = LobbyVM.GetJoinProcess(arg0)
	if registerVal1 ~= nil then
		Lobby.ProcessQueue.AddToQueue("Join", registerVal1)
	end
end

function LobbyVM.OnJoinComplete(arg0)
	Lobby.Matchmaking.OnJoinComplete(arg0)
	Lobby.Debug.OnJoinComplete(arg0)
end

function LobbyVM.JoinSystemlink(arg0)
	local registerVal1 = Lobby.Process.JoinSystemlink(arg0.controller, arg0.lobbyMainMode, arg0.lobbyNetworkMode, arg0.hostXuid, arg0.hostInfo, arg0.ugcInfo)
	Lobby.ProcessQueue.AddToQueue("JoinSystemLink", registerVal1)
end

function LobbyVM.CreateDedicatedLANLobby()
	local registerVal0 = Lobby.Process.CreateDedicatedLANLobby(0.000000, LobbyData.UITargets.UI_MPLOBBYLANGAME)
	Lobby.ProcessQueue.AddToQueue("CreateDedicatedLANLobby", registerVal0)
end

function LobbyVM.CreateDedicatedLobby(arg0)
	local registerVal3 = Engine.IsDedicatedServerMods()
	if registerVal3 then
	end
	registerVal3 = Lobby.Process.CreateDedicatedLobby(0.000000, LobbyData.UITargets.UI_MPLOBBYONLINEMODGAME)
	Lobby.ProcessQueue.AddToQueue("CreateDedicatedLobby", registerVal3)
end

function LobbyVM.CreateDedicatedModsLobby(arg0)
	local registerVal1 = Lobby.Process.CreateDedicatedModsLobby(0.000000, LobbyData.UITargets.UI_MPLOBBYONLINEMODGAME)
	Lobby.ProcessQueue.AddToQueue("CreateDedicatedModsLobby", registerVal1)
end

function LobbyVM.ForceToMenu(arg0)
	local registerVal1 = LobbyData:UITargetFromName(arg0.menuName)
	local registerVal2 = Lobby.Process.ForceToMenu(arg0.controller, registerVal1, arg0.msg)
	Lobby.ProcessQueue.AddToQueue("ForceToMenu", registerVal2)
end

function LobbyVM.LobbyClientPromoteToHost(arg0)
	local registerVal1 = Lobby.Process.PromoteClientToHost(arg0.controller, arg0.lobbyMainMode, arg0.lobbyType, arg0.lobbyMode, arg0.maxClients, arg0.hostInfo, arg0.isAdvertised, arg0.isInGame, arg0.newMigrateIndex)
	Lobby.ProcessQueue.AddToQueue("PromoteClientToHost", registerVal1)
end

function LobbyVM.LobbyLeaveWithParty(arg0)
	local registerVal4 = Lobby.Process.LeaveWithParty(arg0.lobbyModule, arg0.lobbyType, arg0.lobbyMode)
	if registerVal4 == nil then
		return 
	end
	Lobby.ProcessQueue.AddToQueue("LeaveWithParty", registerVal4)
end

function LobbyVM.CanLobbyCanMigrate(arg0)
	if arg0.lobbyMode == Enum.LobbyMode.LOBBY_MODE_CUSTOM then
		return false
	end
	if arg0.lobbyMode == Enum.LobbyMode.LOBBY_MODE_THEATER then
		return false
	end
	local registerVal3 = Engine.IsLobbyInRecovery(arg0.lobbyType)
	if Engine.IsLobbyInRecovery ~= nil and registerVal3 then
		return false
	end
	return true
end

function LobbyVM.LobbyLocalClientLeave(arg0)
	local registerVal1 = Lobby.ProcessQueue.IsQueueEmpty()
	if not registerVal1 then
		return false
	end
	local registerVal3 = Lobby.Process.LocalClientLeave(arg0.controller, arg0.xuid)
	if registerVal3 == nil then
		return false
	end
	Lobby.ProcessQueue.AddToQueue("LobbyLocalClientLeave", registerVal3)
	return true
end

function LobbyVM.SetMaxLocalPlayers(arg0)
	local registerVal1 = math.min(arg0.maxLocalClients, Engine.GetMaxLocalControllers())
	Dvar.lobby_maxLocalPlayers:set(registerVal1)
end

function LobbyVM.LobbySettings(arg0)
	local registerVal5 = type(arg0.toTarget)
	if registerVal5 == "number" then
		registerVal5 = LobbyData:UITargetFromId(arg0.toTarget)
	end
	if registerVal5 == nil then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "Tried to apply settings for an invalid target.
")
		return 
	end
	Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, ("Applying settings for menu: " .. registerVal5.name .. ".
"))
	if not arg0.skipSwitchMode then
		registerVal5 = Engine.GetLobbyMainMode()
		if LuaUtils.isPC then
			local registerVal7 = Engine.IsCpStillDownloading()
			if registerVal5.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_CP and registerVal7 then
				Engine.ComError(Enum.errorCode.ERROR_SOFTRESTART, "MENU_JOIN_RESULT_CP_REQUIRED")
			end
			registerVal7 = Engine.IsMpStillDownloading()
			if registerVal5.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_MP and registerVal7 then
				Engine.ComError(Enum.errorCode.ERROR_SOFTRESTART, "MENU_JOIN_RESULT_MP_REQUIRED")
			end
			registerVal7 = Engine.IsZmStillDownloading()
			if registerVal5.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM and registerVal7 then
				Engine.ComError(Enum.errorCode.ERROR_SOFTRESTART, "MENU_JOIN_RESULT_ZM_REQUIRED")
			end
		end
		if Engine.SwitchCampaignMode then
			if registerVal5.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_CP then
				registerVal7 = LuaUtils.IsCPZMTarget(registerVal5.id)
				if registerVal7 then
					Engine.SwitchCampaignMode(Enum.CampaignMode.CAMPAIGNMODE_ZOMBIES)
				else
					Engine.SwitchCampaignMode(Enum.CampaignMode.CAMPAIGNMODE_DEFAULT)
				else
					Engine.SwitchCampaignMode(Enum.CampaignMode.CAMPAIGNMODE_DEFAULT)
				end
			end
		end
		if registerVal5 ~= registerVal5.mainMode then
			if registerVal5.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
				Engine.SwitchMode(arg0.controller, "mp")
			else
				if registerVal5.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_CP then
					Engine.SwitchMode(arg0.controller, "cp")
				else
					if registerVal5.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
						Engine.SwitchMode(arg0.controller, "zm")
					else
						Engine.SwitchMode(arg0.controller, "")
					end
				end
			end
		end
	end
	if arg0.isDevMap ~= true and registerVal5.eGameModes == Enum.eGameModes.MODE_GAME_INVALID then
		Engine.ResetGametypeSettings()
	end
	LobbyVM.SetMaxLocalPlayers(registerVal5)
	Engine.SetLobbyMode(registerVal5.lobbyType, registerVal5.lobbyMode)
	Engine.TEMPGameModeSetMode(registerVal5.eGameModes)
end

function LobbyVM.UpdateUI(arg0)
	local registerVal3 = type(arg0.toTarget)
	if registerVal3 == "number" then
		registerVal3 = LobbyData:UITargetFromId(arg0.toTarget)
	end
	local function __FUNC_10C68_(arg0)
		if arg0 == "auto" then
			return "room2"
		end
		return arg0
	end

	LobbyData.SetLobbyNav(registerVal3)
	Engine.SetLobbyUIScreen(registerVal3.id)
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.CreateModel(registerVal5, "lobbyRoot.lobbyMode", true)
	Engine.SetModelValue(registerVal4, registerVal3.lobbyMode)
	local registerVal6 = Engine.GetGlobalModel()
	registerVal5 = Engine.CreateModel(registerVal6, "lobbyRoot.lobbyMainMode", true)
	Engine.SetModelValue(registerVal5, registerVal3.mainMode)
	local registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "lobbyRoot.lobbyGameMode", true)
	Engine.SetModelValue(registerVal6, registerVal3.eGameModes)
	registerVal7 = __FUNC_10C68_(registerVal3.room)
	local registerVal9 = Engine.GetGlobalModel()
	local registerVal8 = Engine.CreateModel(registerVal9, "lobbyRoot.room", true)
	Engine.SetModelValue(registerVal8, registerVal7)
end

function LobbyVM.Leaderboard_PopulateCustomList(arg0)
	return Lobby.Leaderboard.PopulateCustomList(arg0)
end

function LobbyVM.Leaderboard_CalculateLBColValue(arg0)
	return Lobby.Leaderboard.CalculateLBColValue(arg0)
end

function LobbyVM.OnShouldWriteLeaderboard(arg0)
	return Lobby.Leaderboard.OnShouldWriteLeaderboard(arg0)
end

function LobbyVM.CheckDLCBit(arg0, arg1)
	local registerVal2 = Engine.DvarInt(nil, "ui_freeDLC1")
	if registerVal2 == 1.000000 then
	end
	registerVal2 = Engine.DvarInt(nil, "ui_freeDLCPC")
	if registerVal2 == 1.000000 and ((arg0 | Enum.ContentFlagBits.CONTENT_DLC1) & Enum.ContentFlagBits.CONTENT_DLCPC) == Enum.ContentFlagBits.CONTENT_DLCPC then
		return true
	end
	if ((arg0 | Enum.ContentFlagBits.CONTENT_DLC1) & arg1) ~= arg1 then
	end
	return true
end

function LobbyVM.LaunchGameExec(arg0, arg1)
	if arg1 ~= Enum.LobbyType.LOBBY_TYPE_GAME then
		Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, ("Launch game not supported for this lobby type(" .. arg1 .. ")
"))
		return false
	end
	local registerVal2 = Lobby.ProcessQueue.IsQueueEmpty()
	if registerVal2 then
		registerVal2 = Dvar.ui_mapname:get()
		local registerVal3 = Dvar.ui_gametype:get()
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "** Launching game... **
")
		Engine.Exec(arg0, ("lobbyLaunchGame " .. arg1 .. " " .. registerVal2 .. " " .. registerVal3))
		return true
	end
	registerVal2 = Lobby.ProcessQueue.GetQueueHead()
	Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, ("Warning: Could not launch game. Lobby process '" .. registerVal2.name .. "' in progress.
"))
	return false
end

function LobbyVM.LaunchDemoExec(arg0, arg1)
	if arg1 ~= Enum.LobbyType.LOBBY_TYPE_GAME then
		Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, ("Launch demo not supported for this lobby type(" .. arg1 .. ")
"))
		return 
	end
	local registerVal2 = Lobby.ProcessQueue.IsQueueEmpty()
	if registerVal2 then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBYHOST, "** Launching demo... **
")
		Engine.Exec(arg0, "lobbyLaunchDemo")
		LuaUtils.UI_ClearErrorMessageDialog()
	else
		registerVal2 = Lobby.ProcessQueue.GetQueueHead()
		Engine.PrintError(Enum.consoleLabel.LABEL_LOBBYHOST, ("Warning: Could not launch damo. Lobby process '" .. registerVal2.name .. "' in progress.
"))
	end
end

function LobbyVM.HostLaunchInit()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.closePopups")
	Engine.ForceNotifyModelSubscriptions(registerVal0)
	LobbyVM.hostLaunch = {}
	LobbyVM.hostLaunch.fadeToBlack = false
	registerVal1 = Engine.milliseconds()
	LobbyVM.hostLaunch.startTime = registerVal1
	local registerVal3 = Dvar.lobbyLaunch_fadeToBlackDelay:get()
	LobbyVM.hostLaunch.fadeToBlackTime = (registerVal1 + registerVal3)
	registerVal3 = Dvar.lobbyLaunch_gameLaunchDelay:get()
	LobbyVM.hostLaunch.launchTime = (registerVal1 + registerVal3)
	registerVal3 = Dvar.lobbyLaunch_waitForClientAckDelay:get()
	LobbyVM.hostLaunch.waitForClientAckTime = (registerVal1 + registerVal3)
	Lobby.Timer.ResetUIModel()
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot.spinnerActive")
	Engine.SetModelValue(registerVal3, true)
	return true
end

function LobbyVM.CheckNeedInstallUGC(arg0, arg1)
	if arg0 then
		if arg0.ugcType == LuaEnums.MODS_BASE_PATH then
			local registerVal3 = {}
			registerVal3.ugcInfo = arg0
			local registerVal2 = LobbyVM.OnModUpdate(registerVal3)
			Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBY, ("Caller: " .. arg1 .. ", ugcType: " .. arg0.ugcType .. ": " .. arg0.ugcName .. " not installed yet.
"))
			return true
			registerVal3 = {}
			registerVal3.ugcInfo = arg0
			registerVal2 = LobbyVM.OnUsermapUpdate(registerVal3, true)
			if registerVal2 and arg0.ugcType == LuaEnums.USERMAP_BASE_PATH and registerVal2 then
				Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBY, ("Caller: " .. arg1 .. ", ugcType: " .. arg0.ugcType .. ": " .. arg0.ugcName .. " not installed yet.
"))
				return true
			end
		end
	end
	return false
end

function LobbyVM.HostLaunchPump(arg0)
	local registerVal1 = Engine.GetLobbyUIScreen()
	if registerVal1 == LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id then
		local registerVal3 = Dvar.tu9_hostLaunchCheckMinPlayer:get()
		registerVal3 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_ALL)
		local registerVal4 = Dvar.party_minplayers:get()
		if registerVal3 == true and registerVal3 < registerVal4 then
			local registerVal7 = tostring(registerVal3)
			local registerVal9 = tostring(Dvar.party_minplayers:get())
			Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyVM.LaunchGameExec: Not enough players (" .. registerVal7 .. "/" .. registerVal9 .. "), restart timer.
"))
		end
		registerVal3 = Dvar.tu9_hostLaunchCheckUnbalancedTeams:get()
		registerVal3 = CoDShared.IsGametypeTeamBased()
		registerVal3 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
		if registerVal3 == true and registerVal3 == true and registerVal3 ~= nil then
			local registerVal6, registerVal7, registerVal8 = ipairs(registerVal3.sessionClients)
			for index9,value10 in registerVal6, registerVal7, registerVal8 do
				if value10.team == Enum.team_t.TEAM_ALLIES then
				else
					if value10.team == Enum.team_t.TEAM_AXIS then
					end
				end
			end
			registerVal6 = math.abs(((0.000000 + 1.000000) - (0.000000 + 1.000000)))
			if 1.000000 < registerVal6 then
				registerVal9 = tostring((0.000000 + 1.000000))
				local registerVal11 = tostring((0.000000 + 1.000000))
				Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYHOST, ("LobbyVM.LaunchGameExec: Teams are not balanced (teamAlliesCount: " .. registerVal9 .. "/teamAxisCount: " .. registerVal11 .. "), restart timer.
"))
			end
		end
		if true == true then
			Engine.LobbyLaunchClear()
			LobbyVM.HostLaunchClear()
			registerVal3 = LobbyData:UITargetFromId(registerVal1)
			registerVal4 = {}
			local registerVal5 = Engine.GetPrimaryController()
			registerVal4.controller = registerVal5
			registerVal4.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
			registerVal4.mainMode = registerVal3.mainMode
			registerVal4.lobbyTimerType = registerVal3.lobbyTimerType
			registerVal4.matchEnded = true
			registerVal4.status = Lobby.Timer.LOBBY_STATUS.RESET_TO_NEED
			Lobby.Timer.HostingLobby(registerVal4)
			return false
		end
	end
	registerVal4 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal4, "lobbyRoot.spinnerActive"))
	if registerVal2 == false then
		registerVal4 = Engine.GetGlobalModel()
		registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot.spinnerActive")
		Engine.SetModelValue(registerVal3, true)
	end
	registerVal2 = Engine.DvarBool(nil, "ffotdtempfixHostLaunchPump")
	if registerVal2 then
		registerVal2 = Engine.IsDedicatedServer()
		if not registerVal2 then
			registerVal3 = Engine.milliseconds()
			if LobbyVM.hostLaunch.fadeToBlack == false and LobbyVM.hostLaunch.fadeToBlackTime ~= nil and LobbyVM.hostLaunch.fadeToBlackTime < registerVal3 then
				LobbyVM.hostLaunch.fadeToBlack = true
				registerVal3 = Engine.GetGlobalModel()
				registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.hideMenusForGameStart")
				Engine.SetModelValue(registerVal2, 1.000000)
			end
			registerVal3 = Engine.milliseconds()
			return false
			registerVal2 = Engine.IsDedicatedServer()
			if LobbyVM.hostLaunch.launchTime ~= nil and registerVal3 < LobbyVM.hostLaunch.launchTime and not registerVal2 then
				registerVal3 = Engine.milliseconds()
				if LobbyVM.hostLaunch.fadeToBlack == false and LobbyVM.hostLaunch.fadeToBlackTime < registerVal3 then
					LobbyVM.hostLaunch.fadeToBlack = true
					registerVal3 = Engine.GetGlobalModel()
					registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.hideMenusForGameStart")
					Engine.SetModelValue(registerVal2, 1.000000)
				end
				registerVal3 = Engine.milliseconds()
				if LobbyVM.hostLaunch.launchTime ~= nil and registerVal3 < LobbyVM.hostLaunch.launchTime then
					return false
				end
			end
		end
	end
	registerVal2 = Engine.IsWaitingForDatabase()
	if Engine.IsWaitingForDatabase and registerVal2 then
		return false
	end
	registerVal2 = LobbyVM.CheckNeedInstallUGC(arg0.ugcInfo, "LobbyVM.HostLaunchPump")
	if arg0.ugcInfo and registerVal2 then
		return false
	end
	registerVal3 = Engine.milliseconds()
	if registerVal1 or registerVal3 < LobbyVM.hostLaunch.waitForClientAckTime then
		return false
	end
	registerVal2 = Engine.IsDedicatedServer()
	if not registerVal2 then
		registerVal2 = Engine.IsWaitingForDatabase()
		if registerVal2 then
			return false
		end
		registerVal2 = Engine.IsCommonFastFileLoaded()
		if Engine.IsCommonFastFileLoaded and not registerVal2 then
			return false
		end
	end
	return true
end

function LobbyVM.HostLaunchClear()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.hideMenusForGameStart")
	Engine.SetModelValue(registerVal0, 0.000000)
	LobbyVM.hostLaunch.startTime = nil
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.spinnerActive")
	Engine.SetModelValue(registerVal2, false)
end

function LobbyVM.IsHostLaunching()
	if LobbyVM.hostLaunch.startTime ~= nil then
		return true
	end
	local registerVal0 = Engine.LobbyHostLaunchTaskInProgress()
	if Engine.LobbyHostLaunchTaskInProgress and registerVal0 then
		return true
	end
	return false
end

function LobbyVM.HostLaunch(arg0)
	if arg0.stage == Enum.LaunchGameState.LAUNCH_GAME_STATE_START then
		return LobbyVM.HostLaunchInit()
	else
		if arg0.stage == Enum.LaunchGameState.LAUNCH_GAME_STATE_PUMP then
			return LobbyVM.HostLaunchPump(arg0)
		else
			LobbyVM.HostLaunchClear()
		end
	end
end

function LobbyVM.CheckAdvertizeSteamServer()
	local registerVal0 = Engine.IsDedicatedServer()
	registerVal0 = LuaUtils.Mods_IsUsingMods()
	if registerVal0 == true and registerVal0 then
		return true
	end
	registerVal0 = Engine.SessionMode_IsPublicOnlineGame()
	if registerVal0 then
		return false
	end
	registerVal0 = Engine.GetLobbyNetworkMode()
	if registerVal0 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		return false
	end
	registerVal0 = LobbyData.GetCurrentMenuTarget()
	if registerVal0.mainMode ~= Enum.LobbyMainMode.LOBBY_MAINMODE_MP and registerVal0.mainMode ~= Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
		return false
	end
	if registerVal0.lobbyType ~= Enum.LobbyType.LOBBY_TYPE_GAME then
		return false
	end
	if registerVal0.lobbyMode ~= Enum.LobbyMode.LOBBY_MODE_CUSTOM then
		return false
	end
	local registerVal1 = Engine.GetLobbyUIScreen()
	if registerVal1 ~= LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME.id and registerVal1 ~= LobbyData.UITargets.UI_ZMLOBBYONLINE.id and registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYMAIN.id and registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id and registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.id and registerVal1 == LobbyData.UITargets.UI_MODESELECT.id or registerVal1 == LobbyData.UITargets.UI_FRLOBBYONLINEGAME.id then
		return false
	end
	local registerVal3 = Engine.GetPrimaryController()
	local registerVal2 = Engine.GetProfileVarInt(registerVal3, "party_privacyStatus")
	if Enum.PartyPrivacy.PARTY_PRIVACY_CLOSED == registerVal2 then
		return false
	end
	return true
end

function LobbyVM.CheckInitSteamServer()
	local registerVal0 = Engine.IsInGame()
	if registerVal0 then
		return true
	end
	registerVal0 = Engine.IsDedicatedServer()
	if registerVal0 == true then
		return true
	end
	registerVal0 = LobbyData.GetCurrentMenuTarget()
	if registerVal0.mainMode ~= Enum.LobbyMainMode.LOBBY_MAINMODE_MP and registerVal0.mainMode ~= Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
		return false
	end
	if registerVal0.lobbyType ~= Enum.LobbyType.LOBBY_TYPE_GAME then
		return false
	end
	if registerVal0.lobbyMode ~= Enum.LobbyMode.LOBBY_MODE_CUSTOM then
		return false
	end
	local registerVal1 = Engine.GetLobbyUIScreen()
	if registerVal1 ~= LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME.id and registerVal1 ~= LobbyData.UITargets.UI_ZMLOBBYONLINE.id and registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYMAIN.id and registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id and registerVal1 ~= LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.id and registerVal1 == LobbyData.UITargets.UI_MODESELECT.id or registerVal1 == LobbyData.UITargets.UI_FRLOBBYONLINEGAME.id then
		return false
	end
	return true
end

function LobbyVM.GetNeededDLCBits()
	local registerVal0 = Engine.GetLobbyUIScreen()
	if registerVal0 ~= LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME.id and registerVal0 == LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id or registerVal0 == LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.id then
		local registerVal1 = Engine.GetDLCBitsForLobby(Enum.LobbyType.LOBBY_TYPE_GAME)
		local registerVal2 = Engine.GetPlaylistID()
		return Lobby.Matchmaking.GetMapPackBits(registerVal1, registerVal2)
	else
		if registerVal0 ~= LobbyData.UITargets.UI_MODESELECT.id and registerVal0 ~= LobbyData.UITargets.UI_MPLOBBYMAIN.id and registerVal0 ~= LobbyData.UITargets.UI_MPLOBBYONLINE.id and registerVal0 == LobbyData.UITargets.UI_MPLOBBYONLINEARENA.id or registerVal0 == LobbyData.UITargets.UI_ZMLOBBYONLINE.id then
			return 0.000000
		else
			registerVal1 = Dvar.ui_mapname:get()
			if registerVal1 ~= nil and registerVal1 == "" or registerVal1 == "mp_array" then
				registerVal2 = Engine.GetCurrentMap()
			end
			return Engine.GetDLCBitForMapName(registerVal2)
		end
	end
end

function LobbyVM.DLCMapCheck(arg0)
	local registerVal1 = Dvar.ui_mapname:get()
	local registerVal2 = Engine.GetDLCBits()
	local registerVal3 = LobbyVM.GetNeededDLCBits()
	if registerVal3 == Enum.dlcIndex_t.CONTENT_DEV_MAP_INDEX or registerVal3 == Enum.dlcIndex_t.CONTENT_USERMAP_INDEX then
		return true
	end
	local registerVal4 = LobbyVM.CheckDLCBit(registerVal2, registerVal3)
	if not registerVal4 then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBYCLIENT, ("Leaving game because map '" .. registerVal1 .. "' is in contentpack '" .. registerVal3 .. "' but our dlcbits is '" .. registerVal2 .. "'.
"))
		registerVal4 = Engine.GetPrimaryController()
		local registerVal5 = Lobby.Actions.LobbyClientEnd(Enum.LobbyType.LOBBY_TYPE_GAME)
		local registerVal6 = Lobby.Process.ReloadPrivateLobby(registerVal4, Engine.GetLobbyNetworkMode())
		local registerVal7 = Lobby.Actions.LobbySettings(registerVal4, LobbyData.UITargets.UI_MODESELECT)
		local registerVal8 = Lobby.Actions.UpdateUI(registerVal4, LobbyData.UITargets.UI_MODESELECT)
		local registerVal10 = LobbyVM.CheckDLCBit(registerVal3, Enum.ContentFlagBits.CONTENT_DLC6)
		if registerVal10 then
		end
		registerVal10 = Lobby.Actions.ErrorPopupMsg("PLATFORM_MISSINGBO4PREORDER")
		Lobby.Process.ForceAction(registerVal5, registerVal6.tail)
		Lobby.Process.ForceAction(registerVal6.tail, registerVal7)
		Lobby.Process.ForceAction(registerVal7, registerVal8)
		Lobby.Process.ForceAction(registerVal8, registerVal10)
		Lobby.ProcessQueue.AddToQueue("MissingMap", registerVal6)
		return false
	end
	return true
end

function LobbyVM.CanClientLaunch(arg0)
	local registerVal1 = LobbyVM.CheckNeedInstallUGC(arg0.modInfo.ugcInfo, "LobbyVM.CanClientLaunch")
	if arg0.modInfo and registerVal1 then
		return false
	end
	if arg0.usermapInfo then
		registerVal1 = LobbyVM.CheckNeedInstallUGC(arg0.usermapInfo.ugcInfo, "LobbyVM.CanClientLaunch")
		if registerVal1 then
			return false
		end
		return true
	end
	registerVal1 = LobbyVM.DLCMapCheck(arg0)
	if registerVal1 == false then
		Engine.LobbyLaunchClear()
		return false
	end
	return true
end

function LobbyVM.ClientLaunchInit(arg0)
	local registerVal2 = LobbyVM.CanClientLaunch(arg0)
	if not registerVal2 then
		return false
	end
	local registerVal3 = Engine.GetGlobalModel()
	registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.closePopups")
	Engine.ForceNotifyModelSubscriptions(registerVal2)
	LobbyVM.clientLaunch = {}
	LobbyVM.clientLaunch.fadeToBlack = false
	registerVal3 = Dvar.lobbyLaunch_fadeToBlackDelay:get()
	local registerVal4 = Dvar.lobbyLaunch_gameLaunchDelay:get()
	if arg0.justConnected then
		local registerVal5 = Dvar.lobbyLaunch_fadeToBlackDelayOnConnect:get()
		registerVal5 = Dvar.lobbyLaunch_gameLaunchDelayOnConnect:get()
	end
	registerVal5 = Engine.milliseconds()
	LobbyVM.clientLaunch.startTime = registerVal5
	LobbyVM.clientLaunch.fadeToBlackTime = (registerVal5 + registerVal5)
	LobbyVM.clientLaunch.launchTime = (registerVal5 + registerVal5)
	Lobby.Timer.ResetUIModel()
	local registerVal8 = Engine.GetGlobalModel()
	local registerVal7 = Engine.CreateModel(registerVal8, "lobbyRoot.spinnerActive")
	Engine.SetModelValue(registerVal7, true)
	return true
end

function LobbyVM.ClientLaunchPump(arg0)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal1 = Engine.GetModelValue(Engine.CreateModel(registerVal3, "lobbyRoot.spinnerActive"))
	if registerVal1 == false then
		registerVal3 = Engine.GetGlobalModel()
		local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.spinnerActive")
		Engine.SetModelValue(registerVal2, true)
	end
	registerVal2 = Engine.milliseconds()
	if LobbyVM.clientLaunch.fadeToBlack == false and LobbyVM.clientLaunch.fadeToBlackTime < registerVal2 then
		LobbyVM.clientLaunch.fadeToBlack = true
		registerVal2 = Engine.GetGlobalModel()
		registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.hideMenusForGameStart")
		Engine.SetModelValue(registerVal1, 1.000000)
	end
	registerVal1 = Engine.IsWaitingForDatabase()
	if Engine.IsWaitingForDatabase and registerVal1 then
		return false
	end
	registerVal2 = Engine.milliseconds()
	if registerVal2 < LobbyVM.clientLaunch.launchTime then
		return false
	end
	registerVal1 = LobbyVM.CheckNeedInstallUGC(arg0.modInfo.ugcInfo, "LobbyVM.ClientLaunchPump")
	if arg0.modInfo and registerVal1 then
		return false
	end
	registerVal1 = LobbyVM.CheckNeedInstallUGC(arg0.usermapInfo.ugcInfo, "LobbyVM.ClientLaunchPump")
	if arg0.usermapInfo and registerVal1 then
		return false
	end
	registerVal1 = Engine.IsWaitingForDatabase()
	if registerVal1 then
		return false
	end
	registerVal1 = Engine.IsCommonFastFileLoaded()
	if Engine.IsCommonFastFileLoaded and not registerVal1 then
		return false
	end
	return true
end

function LobbyVM.ClientLaunchClear()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.hideMenusForGameStart")
	Engine.SetModelValue(registerVal0, 0.000000)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.spinnerActive")
	Engine.SetModelValue(registerVal2, false)
end

function LobbyVM.ClientLaunch(arg0)
	if arg0.stage == Enum.LaunchGameState.LAUNCH_GAME_STATE_START then
		return LobbyVM.ClientLaunchInit(arg0)
	else
		if arg0.stage == Enum.LaunchGameState.LAUNCH_GAME_STATE_PUMP then
			return LobbyVM.ClientLaunchPump(arg0)
		else
			LobbyVM.ClientLaunchClear()
		end
	end
end

function LobbyVM.LaunchGame(arg0)
	Lobby.Timer.LaunchGame(arg0)
end

function LobbyVM.LaunchDemo(arg0)
	Lobby.Timer.LaunchGame(arg0)
end

function LobbyVM.UpdateLobbyStatusInfo(arg0)
	Lobby.Timer.UpdateLobbyStatusInfo(arg0)
	Lobby.Pregame.UpdateLobbyStatusInfo(arg0)
end

function LobbyVM.OnClientSelectionReceived(arg0)
	Lobby.Pregame.OnClientSelectionReceived(arg0)
end

function LobbyVM.LobbyHost_ClientSelectionReceived(arg0)
	Lobby.Pregame.OnClientSelectionReceived(arg0)
end

function LobbyVM.SwitchTeam(arg0)
	Lobby.TeamSelection.SwitchTeam(arg0)
end

function LobbyVM.GameModeChanged(arg0)
	Lobby.TeamSelection.GameModeChanged(arg0)
end

function LobbyVM.OnJoinPartyPrivacyCheck(arg0)
	return Lobby.PartyPrivacy.OnJoinPartyPrivacyCheck(arg0)
end

function LobbyVM.OnCanFitLobbys(arg0)
	return Lobby.TeamSelection.OnCanFitLobbys(arg0)
end

function LobbyVM.OnCanBroadcastHostInfo(arg0)
	local registerVal1 = LobbyData.GetLobbyNav()
	local registerVal2 = LobbyData:UITargetFromId(registerVal1)
	if registerVal2.id == LobbyData.UITargets.UI_FRLOBBYONLINEGAME.id or registerVal2.id == LobbyData.UITargets.UI_FRLOBBYLANGAME.id then
		return false
	end
	return true
end

function LobbyVM.OnUpdateAdvertising(arg0)
	if arg0.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME then
		Lobby.Matchmaking.UpdateAdvertising("force update from code")
	end
end

function LobbyVM.UGCOffensiveEmblemAdd(arg0)
	Lobby.UGC.OffensiveEmblemAdd(arg0)
end

function LobbyVM.OnPlatformJoin(arg0)
	Lobby.Platform.OnPlatformJoin(arg0)
end

function LobbyVM.Invite(arg0)
	Lobby.Platform.Invite(arg0)
end

function LobbyVM.OnPlatformSessionMultiplayerSubscriptionLost(arg0)
	Lobby.Platform.OnPlatformSessionMultiplayerSubscriptionLost(arg0)
end

function LobbyVM.OnPlatformSessionMultiplayerSessionChanged(arg0)
	Lobby.Platform.OnPlatformSessionMultiplayerSessionChanged(arg0)
end

function LobbyVM.OnPlatformSuspend(arg0)
	Lobby.Platform.OnPlatformSuspend(arg0)
end

function LobbyVM.OnPlatformResume(arg0)
	Lobby.Platform.OnPlatformResume(arg0)
end

function LobbyVM.OnPlatformPlayTogether(arg0)
	Lobby.Platform.OnPlatformPlayTogether(arg0)
end

function LobbyVM.SessionSQJRefreshInfo(arg0)
	Lobby.Debug.SessionSQJRefreshInfo()
end

function LobbyVM.StopLobbyTimer(arg0)
	Lobby.Timer.HostingLobbyEnd(arg0)
end

function LobbyVM.ChangeSigninState(arg0)
	if arg0.onlineState == Enum.LiveUserState.LIVE_USER_SIGNED_OUT then
		Lobby.Anticheat.OnControllerSignedOut(arg0.controller)
		if arg0.isPrimary then
			local registerVal2 = Lobby.Process.PrimaryControllerSignedOut(arg0.controller)
		else
			if arg0.onlineState == Enum.LiveUserState.LIVE_USER_SIGNED_IN then
				if arg0.isPrimary then
					registerVal2 = Lobby.Process.PrimaryControllerSignedIn(arg0.controller)
				else
					DebugPrint(("Warning unknown signin State [" .. arg0.onlineState .. "]"))
				end
			end
		end
	end
	if registerVal2 ~= nil then
		Lobby.ProcessQueue.AddToQueue("ChangeSignInState", registerVal2)
	end
end

function LobbyVM.JoinResultToString(arg0, arg1)
	local registerVal2 = {}
	registerVal2.debug = ""
	registerVal2.errorMsg = ""
	if arg1 == true then
		registerVal2.debug = "Enum.JoinResult.JOIN_RESULT_"
	end
	if arg0 == Enum.JoinResult.JOIN_RESULT_INVALID then
		registerVal2.debug = (registerVal2.debug .. "INVALID")
		registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
	else
		if arg0 == Enum.JoinResult.JOIN_RESULT_SUCCESS then
			registerVal2.debug = (registerVal2.debug .. "SUCCESS")
			registerVal2.errorMsg = ""
		else
			if arg0 == Enum.JoinResult.JOIN_RESULT_CONNECT_TO_HOST_FAILURE then
				registerVal2.debug = (registerVal2.debug .. "CONNECT_TO_HOST_FAILURE")
				registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
			else
				if arg0 == Enum.JoinResult.JOIN_RESULT_PROBE_SEND_FAILURE then
					registerVal2.debug = (registerVal2.debug .. "PROBE_SEND_FAILURE")
					registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
				else
					if arg0 == Enum.JoinResult.JOIN_RESULT_PROBE_TIMEOUT then
						registerVal2.debug = (registerVal2.debug .. "PROBE_TIMEOUT")
						registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
					else
						if arg0 == Enum.JoinResult.JOIN_RESULT_PROBE_INVALID_LOBBY then
							registerVal2.debug = (registerVal2.debug .. "PROBE_INVALID_LOBBY")
							registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
						else
							if arg0 == Enum.JoinResult.JOIN_RESULT_PROBE_INVALID_INFO then
								registerVal2.debug = (registerVal2.debug .. "PROBE_INVALID_INFO")
								registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
							else
								if arg0 == Enum.JoinResult.JOIN_RESULT_PROBE_RESULT_INVALID then
									registerVal2.debug = (registerVal2.debug .. "PROBE_RESULT_INVALID")
									registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
								else
									if arg0 == Enum.JoinResult.JOIN_RESULT_INVALID_LOBBY then
										registerVal2.debug = (registerVal2.debug .. "INVALID_LOBBY")
										registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
									else
										if arg0 == Enum.JoinResult.JOIN_RESULT_SEND_AGREEMENT_REQUEST_FAILED then
											registerVal2.debug = (registerVal2.debug .. "SEND_AGREEMENT_REQUEST_FAILED")
											registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
										else
											if arg0 == Enum.JoinResult.JOIN_RESULT_JOIN_DISABLED then
												registerVal2.debug = (registerVal2.debug .. "JOIN_DISABLED")
												registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
											else
												if arg0 == Enum.JoinResult.JOIN_RESULT_NOT_JOINABLE_OFFLINE_MODE then
													registerVal2.debug = (registerVal2.debug .. "HOST_OFFLINE_MODE")
													registerVal2.errorMsg = "MENU_JOIN_RESULT_HOST_OFFLINE_MODE"
												else
													if arg0 == Enum.JoinResult.JOIN_RESULT_JOIN_ALREADY_IN_PROGRESS then
														registerVal2.debug = (registerVal2.debug .. "JOIN_ALREADY_IN_PROGRESS")
														registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
													else
														if arg0 == Enum.JoinResult.JOIN_RESULT_NOT_JOINABLE_CLOSED then
															registerVal2.debug = (registerVal2.debug .. "NOT_JOINABLE_CLOSED")
															registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE_CLOSED"
														else
															if arg0 == Enum.JoinResult.JOIN_RESULT_NOT_JOINABLE_INVITE_ONLY then
																registerVal2.debug = (registerVal2.debug .. "NOT_JOINABLE_INVITE_ONLY")
																registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE_INVITE_ONLY"
															else
																if arg0 == Enum.JoinResult.JOIN_RESULT_NOT_JOINABLE_FRIENDS_ONLY then
																	registerVal2.debug = (registerVal2.debug .. "NOT_JOINABLE_FRIENDS_ONLY")
																	registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE_FRIENDS_ONLY"
																else
																	if arg0 == Enum.JoinResult.JOIN_RESULT_NOT_JOINABLE_SOLO_MODE then
																		registerVal2.debug = (registerVal2.debug .. "NOT_JOINABLE_SOLO_MODE")
																		registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE_SOLO_MODE"
																	else
																		if arg0 == Enum.JoinResult.JOIN_RESULT_OVER_MAX_PARTY_LIMIT then
																			registerVal2.debug = (registerVal2.debug .. "OVER_MAX_PARTY_LIMIT")
																			registerVal2.errorMsg = "EXE_TO_MANY_LOCAL_PLAYERS"
																		else
																			if arg0 == Enum.JoinResult.JOIN_RESULT_UNDER_MIN_PARTY_LIMIT then
																				registerVal2.debug = (registerVal2.debug .. "UNDER_MIN_PARTY_LIMIT")
																				registerVal2.errorMsg = "PLATFORM_JOIN_RESULT_UNDER_MIN_PARTY_LIMIT"
																			else
																				if arg0 == Enum.JoinResult.JOIN_RESULT_NO_PARTIES then
																					registerVal2.debug = (registerVal2.debug .. "NO_PARTIES")
																					registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE_ALREADY_IN_PROGRESS"
																				else
																					if arg0 == Enum.JoinResult.JOIN_RESULT_LOBBY_FULL then
																						registerVal2.debug = (registerVal2.debug .. "LOBBY_FULL")
																						registerVal2.errorMsg = "MENU_JOIN_RESULT_LOBBY_FULL"
																					else
																						if arg0 == Enum.JoinResult.JOIN_RESULT_NETWORK_MODE_MISMATCH then
																							registerVal2.debug = (registerVal2.debug .. "NETWORK_MODE_MISMATCH")
																							registerVal2.errorMsg = "MENU_JOIN_RESULT_NETWORK_MODE_MISMATCH"
																						else
																							if arg0 == Enum.JoinResult.JOIN_RESULT_MISMATCH_PLAYLISTID then
																								registerVal2.debug = (registerVal2.debug .. "MISMATCH_PLAYLISTID")
																								registerVal2.errorMsg = "MENU_JOIN_RESULT_MISMATCH_PLAYLISTID"
																							else
																								if arg0 == Enum.JoinResult.JOIN_RESULT_MISMATCH_PLAYLIST_VERSION_TO_NEW then
																									registerVal2.debug = (registerVal2.debug .. "MISMATCH_PLAYLIST_VERSION_TO_NEW")
																									registerVal2.errorMsg = "MENU_JOIN_RESULT_MISMATCH_PLAYLIST_VERSION_TO_NEW"
																								else
																									if arg0 == Enum.JoinResult.JOIN_RESULT_MISMATCH_PLAYLIST_VERSION_TO_OLD then
																										registerVal2.debug = (registerVal2.debug .. "MISMATCH_PLAYLIST_VERSION_TO_OLD")
																										registerVal2.errorMsg = "MENU_JOIN_RESULT_MISMATCH_PLAYLIST_VERSION_TO_OLD"
																									else
																										if arg0 == Enum.JoinResult.JOIN_RESULT_MISMATCH_PROTOCOL_VERSION then
																											registerVal2.debug = (registerVal2.debug .. "MISMATCH_PROTOCOL_VERSION")
																											registerVal2.errorMsg = "MENU_JOIN_RESULT_MISMATCH_PROTOCOL_VERSION"
																										else
																											if arg0 == Enum.JoinResult.JOIN_RESULT_MISMATCH_NETFIELD_CHECKSUM then
																												registerVal2.debug = (registerVal2.debug .. "MISMATCH_NETFIELD_CHECKSUM")
																												registerVal2.errorMsg = "MENU_JOIN_RESULT_MISMATCH_NETFIELD_CHECKSUM"
																											else
																												if arg0 == Enum.JoinResult.JOIN_RESULT_MISMATCH_FFOTD_VERSION_TO_NEW then
																													registerVal2.debug = (registerVal2.debug .. "MISMATCH_FFOTD_VERSION_TO_NEW")
																													registerVal2.errorMsg = "MENU_JOIN_RESULT_MISMATCH_PLAYLIST_VERSION_TO_NEW"
																												else
																													if arg0 == Enum.JoinResult.JOIN_RESULT_MISMATCH_FFOTD_VERSION_TO_OLD then
																														registerVal2.debug = (registerVal2.debug .. "MISMATCH_FFOTD_VERSION_TO_OLD")
																														registerVal2.errorMsg = "MENU_JOIN_RESULT_MISMATCH_PLAYLIST_VERSION_TO_OLD"
																													else
																														if arg0 == Enum.JoinResult.JOIN_RESULT_MIGRATE_IN_PROGRESS then
																															registerVal2.debug = (registerVal2.debug .. "MIGRATE_IN_PROGRESS")
																															registerVal2.errorMsg = "MENU_JOIN_RESULT_MIGRATE_IN_PROGRESS"
																														else
																															if arg0 == Enum.JoinResult.JOIN_RESULT_COULD_NOT_RESERVE then
																																registerVal2.debug = (registerVal2.debug .. "COULD_NOT_RESERVE")
																																registerVal2.errorMsg = "MENU_JOIN_RESULT_COULD_NOT_RESERVE"
																															else
																																if arg0 == Enum.JoinResult.JOIN_RESULT_HANDSHAKE_WINDOW_EXPIRED then
																																	registerVal2.debug = (registerVal2.debug .. "HANDSHAKE_WINDOW_EXPIRED")
																																	registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
																																else
																																	if arg0 == Enum.JoinResult.JOIN_RESULT_AGREEMENT_WINDOW_EXPIRED then
																																		registerVal2.debug = (registerVal2.debug .. "AGREEMENT_WINDOW_EXPIRED")
																																		registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
																																	else
																																		if arg0 == Enum.JoinResult.JOIN_RESULT_NOT_JOINABLE_NOT_IDLE then
																																			registerVal2.debug = (registerVal2.debug .. "NOT_JOINABLE_NOT_IDLE")
																																			registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
																																		else
																																			if arg0 == Enum.JoinResult.JOIN_RESULT_NO_JOIN_IN_PROGRESS then
																																				registerVal2.debug = (registerVal2.debug .. "NO_JOIN_IN_PROGRESS")
																																				registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
																																			else
																																				if arg0 == Enum.JoinResult.JOIN_RESULT_GAME_PAUSED then
																																					registerVal2.debug = (registerVal2.debug .. "GAME_PAUSED")
																																					registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE_PAUSED"
																																				else
																																					if arg0 == Enum.JoinResult.JOIN_RESULT_CHUNK_MP_REQUIRED then
																																						registerVal2.debug = (registerVal2.debug .. "CHUNK_MP_REQUIRED")
																																						registerVal2.errorMsg = "MENU_JOIN_RESULT_MP_REQUIRED"
																																					else
																																						if arg0 == Enum.JoinResult.JOIN_RESULT_CHUNK_ZM_REQUIRED then
																																							registerVal2.debug = (registerVal2.debug .. "CHUNK_ZM_REQUIRED")
																																							registerVal2.errorMsg = "MENU_JOIN_RESULT_ZM_REQUIRED"
																																						else
																																							if arg0 == Enum.JoinResult.JOIN_RESULT_CHUNK_CP_REQUIRED then
																																								registerVal2.debug = (registerVal2.debug .. "CHUNK_CP_REQUIRED")
																																								registerVal2.errorMsg = "MENU_JOIN_RESULT_CP_REQUIRED"
																																							else
																																								if arg0 == Enum.JoinResult.JOIN_RESULT_CHUNK_MP_REQUIRED_HOST then
																																									registerVal2.debug = (registerVal2.debug .. "CHUNK_MP_REQUIRED_HOST")
																																									registerVal2.errorMsg = "MENU_JOIN_RESULT_MP_REQUIRED_HOST"
																																								else
																																									if arg0 == Enum.JoinResult.JOIN_RESULT_CHUNK_ZM_REQUIRED_HOST then
																																										registerVal2.debug = (registerVal2.debug .. "CHUNK_ZM_REQUIRED_HOST")
																																										registerVal2.errorMsg = "MENU_JOIN_RESULT_ZM_REQUIRED_HOST"
																																									else
																																										if arg0 == Enum.JoinResult.JOIN_RESULT_CHUNK_CP_REQUIRED_HOST then
																																											registerVal2.debug = (registerVal2.debug .. "CHUNK_CP_REQUIRED_HOST")
																																											registerVal2.errorMsg = "MENU_JOIN_RESULT_CP_REQUIRED_HOST"
																																										else
																																											if arg0 == Enum.JoinResult.JOIN_RESULT_SPLITSCREEN_NOT_ALLOWED then
																																												registerVal2.debug = (registerVal2.debug .. "JOIN_RESULT_SPLITSCREEN_NOT_ALLOWED")
																																												registerVal2.errorMsg = "MENU_SPLITSCREEN_NOT_ALLOWED"
																																											else
																																												local registerVal3 = Engine.DvarBool(0.000000, "probation_public_enabled")
																																												if registerVal3 and arg0 == Enum.JoinResult.JOIN_RESULT_IN_PUBLIC_PROBATION then
																																													registerVal2.debug = (registerVal2.debug .. "JOIN_RESULT_IN_PUBLIC_PROBATION")
																																													registerVal2.errorMsg = "MENU_JOIN_DENIED_PUBLIC_PROBATION"
																																												else
																																													registerVal3 = Engine.DvarBool(0.000000, "probation_league_enabled")
																																													if registerVal3 and arg0 == Enum.JoinResult.JOIN_RESULT_IN_ARENA_PROBATION then
																																														registerVal2.debug = (registerVal2.debug .. "JOIN_RESULT_IN_ARENA_PROBATION")
																																														registerVal2.errorMsg = "MENU_JOIN_DENIED_ARENA_PROBATION"
																																													else
																																														if arg0 == Enum.JoinResult.JOIN_RESULT_BAD_DLC_BITS then
																																															registerVal2.debug = (registerVal2.debug .. "JOIN_RESULT_BAD_DLC_BITS")
																																															registerVal3 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
																																															if 1.000000 < registerVal3 then
																																																registerVal2.errorMsg = "PLATFORM_MEMBER_MISSING_MAP"
																																															else
																																																registerVal2.errorMsg = "PLATFORM_MISSINGMAP"
																																															else
																																																if arg0 == Enum.JoinResult.JOIN_RESULT_BAD_MPHD_BITS then
																																																	registerVal2.debug = (registerVal2.debug .. "JOIN_RESULT_BAD_DLC_BITS")
																																																	registerVal2.errorMsg = "PLATFORM_MISSINGBO4PREORDER"
																																																else
																																																	if arg0 == Enum.JoinResult.JOIN_RESULT_VM_FAILURE_1 then
																																																		registerVal2.debug = (registerVal2.debug .. "JOIN_RESULT_VM_FAILURE_1")
																																																		registerVal2.errorMsg = "EXE_HOSTUNREACH_TOO_MANY_JOINS"
																																																	else
																																																		if arg0 == Enum.JoinResult.JOIN_RESULT_STARTER_PACK_RESTRICT then
																																																			registerVal2.debug = (registerVal2.debug .. "JOIN_RESULT_STARTER_PACK_RESTRICT")
																																																			registerVal3 = LuaUtils.IsStarterPack()
																																																			if registerVal3 then
																																																				registerVal2.errorMsg = "PLATFORM_STARTER_PACK_JOIN_ERROR"
																																																			else
																																																				registerVal2.errorMsg = "PLATFORM_STARTER_PACK_MEMBER_MISSING_CONTENT"
																																																			else
																																																				if arg0 == Enum.JoinResult.JOIN_RESULT_INVALID_PASSWORD then
																																																					registerVal2.debug = (registerVal2.debug .. "JOIN_RESULT_INVALID_PASSWORD")
																																																					registerVal2.errorMsg = "GAME_INVALIDPASSWORD"
																																																				else
																																																					if arg0 == Enum.JoinResult.JOIN_RESULT_BANNED then
																																																						registerVal2.debug = (registerVal2.debug .. "BANNED")
																																																						registerVal2.errorMsg = "PLATFORM_BANNED_FROM_SERVER"
																																																					else
																																																						if arg0 == Enum.JoinResult.JOIN_RESULT_BANNED_MEMBER then
																																																							registerVal2.debug = (registerVal2.debug .. "BANNED_MEMBER")
																																																							registerVal2.errorMsg = "PLATFORM_BANNED_MEMBER_FROM_SERVER"
																																																						else
																																																							local registerVal5 = tostring(arg0)
																																																							registerVal2.debug = (registerVal2.debug .. "UNHANDLED JOINRESULT ENUM(" .. registerVal5 .. ")")
																																																							registerVal2.errorMsg = "MENU_JOIN_RESULT_NOT_JOINABLE"
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
	return registerVal2
end

function LobbyVM.ClearLobbyStatus()
	if LobbyVM.lobbyStatus.cleared == true then
		return 
	end
	local registerVal1 = Engine.milliseconds()
	if registerVal1 < LobbyVM.lobbyStatus.clearedTime then
		return 
	end
	LobbyVM.lobbyStatus.cleared = true
	registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "lobbyRoot")
	registerVal1 = Engine.CreateModel(registerVal0, "lobbyStatusString1")
	local registerVal2 = Engine.CreateModel(registerVal0, "lobbyStatusString2")
	local registerVal3 = Engine.CreateModel(registerVal0, "lobbyStatusString3")
	Engine.SetModelValue(registerVal1, "")
	Engine.SetModelValue(registerVal2, "")
	Engine.SetModelValue(registerVal3, "")
end

function LobbyVM.LobbyStatusUpdate(arg0)
	local registerVal1 = Engine.IsMainThreadOrProxy()
	if not registerVal1 then
		return 
	end
	local registerVal2 = Engine.GetGlobalModel()
	registerVal1 = Engine.GetModel(registerVal2, "lobbyRoot")
	registerVal2 = Engine.CreateModel(registerVal1, "lobbyStatusString1")
	local registerVal3 = Engine.CreateModel(registerVal1, "lobbyStatusString2")
	local registerVal4 = Engine.CreateModel(registerVal1, "lobbyStatusString3")
	LobbyVM.lobbyStatus.cleared = false
	local registerVal6 = Engine.milliseconds()
	LobbyVM.lobbyStatus.clearedTime = (registerVal6 + 10000.000000)
	if arg0.searchStage == 1.000000 then
		if arg0.numResults == 1.000000 then
			local registerVal8 = Engine.Localize("MENU_SESSIONS_SEARCH_STAGE_SINGLE")
		else
			registerVal8 = Engine.Localize("MENU_SESSIONS_SEARCH_STAGE", arg0.numResults)
		end
		Engine.SetModelValue(registerVal2, registerVal8)
		Engine.SetModelValue(registerVal3, "")
		Engine.SetModelValue(registerVal4, "")
	else
		if arg0.searchStage == 2.000000 then
			local registerVal9 = Engine.Localize("MENU_SESSIONS_QOS_PROGRESS", arg0.contactedResults, arg0.numResults)
			Engine.SetModelValue(registerVal3, registerVal9)
		else
			if arg0.searchStage == 3.000000 then
				registerVal9 = Engine.Localize("MENU_SESSIONS_JOINING", arg0.joiningCurHost, arg0.joiningNumHosts)
				Engine.SetModelValue(registerVal4, registerVal9)
			end
		end
	end
end

function LobbyVM.CheckStarterPack(arg0)
	if arg0.isStarterPack == 1.000000 then
		local registerVal1 = LuaUtils.Mods_IsUsingMods()
		if registerVal1 then
			return true
		end
		registerVal1 = LobbyData.GetCurrentMenuTarget()
		local registerVal2 = Engine.GetLobbyNetworkMode()
		if registerVal2 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE and registerVal1.id ~= LobbyData.UITargets.UI_FRLOBBYLANGAME.id then
			return true
		end
		if registerVal1.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_CP or registerVal1.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
			return true
		end
		if registerVal1.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME and registerVal1.lobbyMode == Enum.LobbyMode.LOBBY_MODE_CUSTOM then
			return true
		end
	end
	return false
end

function LobbyVM.LoadMod(arg0)
	local registerVal2 = Engine.GetPrimaryController()
	local registerVal1 = Lobby.Process.LoadMod(registerVal2, arg0)
	if registerVal1 ~= nil then
		Lobby.ProcessQueue.AddToQueue("LoadMod", registerVal1)
	end
end

function LobbyVM.OnModUpdate(arg0)
	local registerVal1 = LuaUtils.Mods_IsModLoaded(arg0.ugcInfo)
	if registerVal1 then
		return false
	end
	registerVal1 = Lobby.ProcessQueue.IsQueueEmpty()
	arg0.ugcInfo.waitForInstall = true
	local registerVal2 = Engine.GetPrimaryController()
	registerVal1 = Lobby.Process.NeedInstallUGC(registerVal2, arg0.ugcInfo)
	if registerVal1 and registerVal1 ~= nil then
		Lobby.ProcessQueue.AddToQueue("NeedInstallMod", registerVal1)
	end
	return true
end

function LobbyVM.OnUsermapUpdate(arg0, arg1)
	local registerVal2 = LuaUtils.Mods_IsUGC(arg0.ugcInfo)
	if not registerVal2 then
		return false
	end
	registerVal2 = LuaUtils.Mods_Lists_IsInstalled(arg0.ugcInfo)
	if registerVal2 then
		return false
	end
	registerVal2 = Engine.Mods_IsSubscribedItem(arg0.ugcInfo.ugcName)
	if arg1 ~= true and registerVal2 then
		registerVal2 = Engine.Mods_InstalledUGC(arg0.ugcInfo.ugcName)
		if registerVal2 then
			Engine.Mods_Lists_UpdateUsermaps()
		end
		return true
	end
	registerVal2 = Lobby.ProcessQueue.IsQueueEmpty()
	arg0.ugcInfo.waitForInstall = arg1
	local registerVal3 = Engine.GetPrimaryController()
	registerVal2 = Lobby.Process.NeedInstallUGC(registerVal3, arg0.ugcInfo)
	if registerVal2 and registerVal2 ~= nil then
		Lobby.ProcessQueue.AddToQueue("NeedInstallUsermap", registerVal2)
	end
	return true
end

function LobbyVM.DoChunksAllowJoin(arg0, arg1)
	if arg1 == Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
		if arg0.chunkMP ~= 3.000000 then
			return Enum.JoinResult.JOIN_RESULT_CHUNK_MP_REQUIRED
		else
			local registerVal2 = Engine.IsMpStillDownloading()
			if registerVal2 then
				return Enum.JoinResult.JOIN_RESULT_CHUNK_MP_REQUIRED_HOST
			else
				if arg1 == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
					if arg0.chunkZM ~= 3.000000 then
						return Enum.JoinResult.JOIN_RESULT_CHUNK_ZM_REQUIRED
					else
						registerVal2 = Engine.IsZmStillDownloading()
						return Enum.JoinResult.JOIN_RESULT_CHUNK_ZM_REQUIRED_HOST
						if registerVal2 and arg1 == Enum.LobbyMainMode.LOBBY_MAINMODE_CP then
							if arg0.chunkCP ~= 3.000000 then
								return Enum.JoinResult.JOIN_RESULT_CHUNK_CP_REQUIRED
							else
								registerVal2 = Engine.IsCpStillDownloading()
								if registerVal2 then
									return Enum.JoinResult.JOIN_RESULT_CHUNK_CP_REQUIRED_HOST
								end
							end
						end
					end
				end
			end
		end
	end
	return Enum.JoinResult.JOIN_RESULT_SUCCESS
end

function LobbyVM.IsInTheaterLobby()
	local registerVal0 = Engine.GetLobbyUIScreen()
	local registerVal1 = LobbyData:UITargetFromId(registerVal0)
	if registerVal1.lobbyMode == Enum.LobbyMode.LOBBY_MODE_THEATER then
		return true
	end
	return false
end

function LobbyVM.JoinableCheck(arg0)
	local registerVal3 = LobbyData.GetCurrentMenuTarget()
	local registerVal4 = Engine.IsDedicatedServer()
	registerVal4 = Engine.IsProcessingJoin()
	if registerVal4 == false and registerVal4 == true and registerVal3.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME then
		if registerVal3.lobbyMode == Enum.LobbyMode.LOBBY_MODE_PUBLIC or registerVal3.lobbyMode == Enum.LobbyMode.LOBBY_MODE_ARENA then
			registerVal4 = Engine.DvarBool(nil, "cpProcessingJoinCheck")
			if registerVal3.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_CP and registerVal4 then
				return Enum.JoinResult.JOIN_RESULT_VM_FAILURE_1
			else
				registerVal4 = Engine.DvarBool(nil, "mpProcessingJoinCheck")
				if registerVal3.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_MP and registerVal4 then
					return Enum.JoinResult.JOIN_RESULT_VM_FAILURE_1
				else
					registerVal4 = Engine.DvarBool(nil, "zmProcessingJoinCheck")
					if registerVal3.mainMode == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM and registerVal4 then
						return Enum.JoinResult.JOIN_RESULT_VM_FAILURE_1
					end
				end
			end
		end
	end
	registerVal4 = Engine.IsInGame()
	registerVal4 = LobbyVM.IsHostLaunching()
	registerVal4 = Engine.GetCurrentMap()
	registerVal4 = Engine.SessionMode_IsPublicOnlineGame()
	if not registerVal4 and not registerVal4 and registerVal4 ~= "core_frontend" or registerVal4 then
		registerVal4 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
		local registerVal5 = LobbyVM.GetNeededDLCBits()
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("Incoming client dlc bits are " .. arg0.joinRequest.dlcBits .. " while our needed bits are " .. registerVal5 .. "
"))
		local registerVal6 = Engine.IsZombiesGame()
		if registerVal6 then
			registerVal6 = LuaUtils.UpdateZMDLCBits(arg0.joinRequest.dlcBits)
			arg0.joinRequest.dlcBits = registerVal6
		end
		registerVal6 = LobbyVM.CheckDLCBit(arg0.joinRequest.dlcBits, registerVal5)
		if not registerVal6 then
			Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBY, "Rejecting client due to incompatible dlc bits.
")
			registerVal6 = LobbyVM.CheckDLCBit(registerVal5, Enum.ContentFlagBits.CONTENT_DLC6)
			if registerVal6 then
				return Enum.JoinResult.JOIN_RESULT_BAD_MPHD_BITS
			end
			return Enum.JoinResult.JOIN_RESULT_BAD_DLC_BITS
		end
	end
	if arg0.joinResponse.response == Enum.JoinResult.JOIN_RESULT_SUCCESS then
		registerVal4 = Engine.IsMultiplayerGame()
		registerVal4 = LuaUtils.IsArenaMode()
		if registerVal4 then
			registerVal4 = Engine.GetGametypeSetting("pregameItemVoteEnabled")
			if registerVal4 ~= 1.000000 then
			end
			registerVal5 = Engine.GetGametypeSetting("pregameDraftEnabled")
			if registerVal5 ~= 1.000000 then
			end
			if not arg0.joinRequest or true then
				registerVal6 = Engine.IsInGame()
				registerVal6 = Engine.SessionMode_IsPublicOnlineGame()
				if registerVal6 and registerVal6 then
					return Enum.JoinResult.JOIN_RESULT_NO_JOIN_IN_PROGRESS
				end
			end
			if arg0.joinRequest.splitscreenClients ~= nil and 0.000000 < arg0.joinRequest.splitscreenClients then
				return Enum.JoinResult.JOIN_RESULT_SPLITSCREEN_NOT_ALLOWED
			end
			registerVal6 = Lobby.Timer.LobbyIsLocked()
			if registerVal6 then
				return Enum.JoinResult.JOIN_RESULT_NO_JOIN_IN_PROGRESS
			end
			registerVal6 = Engine.GetLobbyPregameState()
			if registerVal6 ~= Enum.LobbyPregameState.LOBBY_PREGAME_STATE_IDLE then
				return Enum.JoinResult.JOIN_RESULT_NO_JOIN_IN_PROGRESS
			end
			local registerVal7 = Lobby.Timer.GetTimerStatus()
			if registerVal7 == Lobby.Timer.LOBBY_STATUS.POST_GAME or registerVal7 == Lobby.Timer.LOBBY_STATUS.FIND_NEW_LOBBY then
				return Enum.JoinResult.JOIN_RESULT_NO_JOIN_IN_PROGRESS
			end
			local registerVal8 = Engine.DvarBool(0.000000, "probation_league_enabled")
			registerVal8, registerVal9, registerVal10 = pairs(arg0.joinRequest.members)
			for index11,value12 in registerVal8, registerVal9, registerVal10 do
				if 0.000000 < value12.arenaProbation then
					return Enum.JoinResult.JOIN_RESULT_IN_ARENA_PROBATION
				end
			end
		else
			registerVal4 = Engine.DvarBool(0.000000, "probation_public_enabled")
			registerVal4, registerVal5, registerVal6 = pairs(arg0.joinRequest.members)
			for index7,value8 in registerVal4, registerVal5, registerVal6 do
				if 0.000000 < value8.publicProbation then
					return Enum.JoinResult.JOIN_RESULT_IN_PUBLIC_PROBATION
				end
			end
		end
		registerVal4 = Engine.IsZombiesGame()
		if registerVal4 then
			registerVal5 = Dvar.zm_private_rankedmatch:get()
			if registerVal5 then
			end
			registerVal5 = LobbyVM.IsInTheaterLobby()
			if registerVal5 then
				return Enum.JoinResult.JOIN_RESULT_JOIN_DISABLED
			end
			registerVal5 = Engine.GetLobbyUIScreen()
			if registerVal5 == LobbyData.UITargets.UI_ZMLOBBYONLINE.id then
				registerVal6 = Engine.IsInGame()
				registerVal6 = LobbyVM.IsHostLaunching()
				registerVal6 = Engine.GetCurrentMap()
				if not registerVal6 and not arg0.joinRequest or registerVal6 ~= "core_frontend" then
					return Enum.JoinResult.JOIN_RESULT_NOT_JOINABLE_SOLO_MODE
				end
			end
			registerVal6 = Engine.IsInGame()
			registerVal6 = LobbyVM.IsHostLaunching()
			if not arg0.joinRequest or registerVal6 then
				registerVal6 = Engine.SessionMode_IsOnlineGame()
				if registerVal6 and true then
					return Enum.JoinResult.JOIN_RESULT_NO_JOIN_IN_PROGRESS
				end
			end
			registerVal6 = Engine.IsInGame()
			registerVal6 = LobbyVM.IsHostLaunching()
			if not arg0.joinRequest or registerVal6 then
				registerVal6 = Engine.SessionMode_IsPublicOnlineGame()
				if registerVal6 then
					return Enum.JoinResult.JOIN_RESULT_NO_JOIN_IN_PROGRESS
				end
			end
		end
		registerVal4 = LobbyVM.CheckStarterPack(arg0.joinRequest)
		if LuaUtils.isPC and registerVal4 then
			return Enum.JoinResult.JOIN_RESULT_STARTER_PACK_RESTRICT
		end
		registerVal4 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
		registerVal5 = Engine.LiveSteamServer_GetServerPassword()
		registerVal6 = string.len(registerVal5)
		if LuaUtils.isPC and not arg0.isLocalRequest and registerVal4 and registerVal5 and 0.000000 < registerVal6 and arg0.joinRequest.password ~= registerVal5 then
			return Enum.JoinResult.JOIN_RESULT_INVALID_PASSWORD
		end
		registerVal4 = Engine.GetLobbyMainMode()
		registerVal5 = Engine.GetLobbyNetworkMode()
		if registerVal5 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
			if not arg0.isLocalRequest then
				if arg0.joinResponse.lobbyType == Enum.LobbyType.LOBBY_TYPE_GAME then
					registerVal5 = LobbyVM.DoChunksAllowJoin(arg0.joinRequest, registerVal4)
					return registerVal5
					if registerVal5 ~= Enum.JoinResult.JOIN_RESULT_SUCCESS and arg0.joinResponse.lobbyType == Enum.LobbyType.LOBBY_TYPE_PRIVATE then
						if LuaUtils.isPC then
							registerVal5 = LobbyVM.DoChunksAllowJoin(arg0.joinRequest, registerVal4)
							if registerVal5 ~= Enum.JoinResult.JOIN_RESULT_SUCCESS then
								return registerVal5
							else
								for index5=0.000000, (Enum.LobbyMainMode.LOBBY_MAINMODE_COUNT - 1.000000), 1.000000 do
									registerVal9 = LobbyVM.DoChunksAllowJoin(arg0.joinRequest, index5)
									if registerVal9 ~= Enum.JoinResult.JOIN_RESULT_SUCCESS then
										return registerVal9
									end
								end
							else
								registerVal5 = LobbyVM.DoChunksAllowJoin(arg0.joinRequest, registerVal4)
								if not arg0.isLocalRequest and registerVal5 ~= Enum.JoinResult.JOIN_RESULT_SUCCESS then
									return registerVal5
								end
							end
						end
					end
				end
			end
		end
	end
	return arg0.joinResponse.response
end

function LobbyVM.ProcessCompleteSuccess(arg0)
	Lobby.ProcessQueue.Success(arg0)
end

function LobbyVM.ProcessCompleteFailure(arg0)
	Lobby.ProcessQueue.Failure(arg0)
end

function LobbyVM.ProcessCompleteError(arg0)
	Lobby.ProcessQueue.Error(arg0)
end

function LobbyVM.ProcessUpdate(arg0)
	Lobby.ProcessQueue.Update(arg0)
end

function LobbyVM.GameLobbyGameServerDataUpdate(arg0)
	local registerVal1 = Lobby.ProcessQueue.IsQueueEmpty()
	if registerVal1 == true then
		registerVal1 = Engine.GetLobbyUIScreen()
		if registerVal1 ~= LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME.id and registerVal1 == LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id or registerVal1 == LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.id then
			local registerVal2 = LobbyVM.DLCMapCheck(arg0)
			if registerVal2 == false then
				return 
			end
		end
	end
	registerVal1 = Engine.GetPlaylistID()
	registerVal2 = Engine.GetPlaylistName(0.000000, registerVal1)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "lobbyPlaylist")
	registerVal4 = Engine.CreateModel(registerVal3, "name")
	Engine.SetModelValue(registerVal4, Engine.ToUpper(registerVal2))
	local registerVal6 = Engine.GetPlaylistInfoByID(registerVal1)
	local registerVal8 = Engine.GetPlaylistCategoryIdByName("hardcore")
	if registerVal6 and registerVal6.playlist and registerVal6.playlist.category and registerVal6.playlist.category == registerVal8 then
	end
	registerVal8 = Engine.CreateModel(registerVal3, "kickerText")
	Engine.SetModelValue(registerVal8, "MENU_RULES_HARDCORE")
	Lobby.MapVote.GameLobbyGameServerDataUpdate(arg0)
end

function LobbyVM.PrivateLobbyServerDataUpdate(arg0)
	local registerVal1 = Engine.GetPlaylistID()
	local registerVal2 = Engine.GetPlaylistName(0.000000, registerVal1)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "lobbyPlaylist")
	registerVal4 = Engine.CreateModel(registerVal3, "name")
	Engine.SetModelValue(registerVal4, Engine.ToUpper(registerVal2))
	local registerVal6 = Engine.GetPlaylistInfoByID(registerVal1)
	local registerVal8 = Engine.GetPlaylistCategoryIdByName("hardcore")
	if registerVal6 and registerVal6.playlist and registerVal6.playlist.category and registerVal6.playlist.category == registerVal8 then
	end
	registerVal8 = Engine.CreateModel(registerVal3, "kickerText")
	Engine.SetModelValue(registerVal8, "MENU_RULES_HARDCORE")
end

function LobbyVM.GameLobbyClientDataUpdate(arg0)
	Lobby.MapVote.GameLobbyClientDataUpdate(arg0)
	Lobby.TeamSelection.GameLobbyClientDataUpdate(arg0)
	Lobby.Pregame.GameLobbyClientDataUpdate(arg0)
	LuaUtils.ForceLobbyButtonUpdate()
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.gameClientDataUpdate")
	Engine.ForceNotifyModelSubscriptions(registerVal1)
end

function LobbyVM.HopperClientJoin(arg0)
	return Lobby.Hopper.ClientJoin(arg0)
end

function LobbyVM.HopperIsParked()
	return Lobby.Hopper.IsParked()
end

function LobbyVM.GetMatchmakingExperimentActive(arg0)
	return Lobby.Matchmaking.IsExperimentActive(arg0)
end

function LobbyVM.OnExperimentReset(arg0)
	Lobby.Matchmaking.ResetExperiment(arg0.controller)
end

function LobbyVM.OnDediQosReady()
	local registerVal1 = Engine.GetDediQosResultsByType(Lobby.Matchmaking.DatacenterType.ANY)
	if 0.000000 == registerVal1.numResults then
		Engine.PrintWarning(Enum.consoleLabel.LABEL_LOBBY, "Engine told us results were ready, but no results available
")
	else
		servers = registerVal1.pingResults
		local registerVal2, registerVal3, registerVal4 = ipairs(servers)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			LuaUtils.LogQoS("dediqos", value6)
		end
	end
end

function LobbyVM.PopulateMutableClientDDLBuff(arg0)
end

function LobbyVM.ReceiveMutableClientDDLBuff(arg0)
end

LobbyVM.LobbyPumpList = {}
LobbyVM.LobbyPumpList.sequence = 0.000000
registerVal1 = {}
registerVal1 = {LobbyVM.ClearLobbyStatus, Lobby.Anticheat.Pump, Lobby.Debug.Pump, Lobby.Hopper.Pump, Lobby.MapVote.Pump, Lobby.Matchmaking.Pump, Lobby.Merge.Pump, Lobby.Platform.Pump, Lobby.PartyPrivacy.Pump, Lobby.Pregame.Pump, Lobby.ProcessQueue.Pump, Lobby.TeamSelection.Pump, Lobby.Theater.Pump, Lobby.Timer.Pump, Lobby.Events.Pump}
LobbyVM.LobbyPumpList.funcs = registerVal1
function LobbyVM.Pump()
	local registerVal1 = math.fmod(LobbyVM.LobbyPumpList.sequence, #LobbyVM.LobbyPumpList.funcs)
	LobbyVM.LobbyPumpList.sequence = registerVal1
	LobbyVM.LobbyPumpList.sequence = (LobbyVM.LobbyPumpList.sequence + 1.000000)
	LobbyVM.LobbyPumpList.funcs[LobbyVM.LobbyPumpList.sequence]()
	LobbyVM.AutoJoin.leaveServerImmediately = false
	local registerVal0 = LobbyVM.IsInTheaterLobby()
	if LobbyVM.AutoJoin.leaveServerImmediately == true and not registerVal0 then
		Engine.LeaveServerImmediately()
	end
end

function LobbyVM.OnEnableJoins(arg0)
	if arg0.enable then
		Engine.SetSessionStatus(Enum.LobbyType.LOBBY_TYPE_GAME, Enum.SessionStatus.SESSION_STATUS_IDLE)
	else
		Engine.SetSessionStatus(Enum.LobbyType.LOBBY_TYPE_GAME, Enum.SessionStatus.SESSION_STATUS_PAUSED)
	end
end

function LobbyVM.OnStorageOperationReadResult(arg0)
	Lobby.Anticheat.OnStorageOperationReadResult(arg0)
end

function LobbyVM.OnIsFeatureBanned(arg0)
	local registerVal1, registerVal2 = Lobby.Anticheat.CheckIsFeatureBannedForIndex(arg0.controller, arg0.feature)
	return registerVal1
end

function LobbyVM.OnPlayerBanned(arg0)
	Lobby.Anticheat.OnPlayerBanned(arg0)
end

function LobbyVM.OnFeatureBan(arg0)
	Lobby.Anticheat.OnFeatureBan(arg0)
end

function LobbyVM.OnCheckPrestigeFeatureBan(arg0)
	Lobby.Anticheat.OnCheckPrestigeFeatureBan(arg0)
end

function LobbyVM.OnIsPermaBanned(arg0)
	return Lobby.Anticheat.OnIsPermaBanned(arg0)
end

function LobbyVM.OnGetBanTimeRemaining(arg0)
	return Lobby.Anticheat.OnGetBanTimeRemaining(arg0)
end

function LobbyVM.OnPushAnticheatMessageToUI(arg0)
	return Lobby.Anticheat.OnPushAnticheatMessageToUI(arg0)
end

function LobbyVM.OnPopAnticheatMessage(arg0)
	Lobby.Anticheat.OnPopAnticheatMessage(arg0)
end

function LobbyVM.OnGetAnticheatReputation(arg0)
	return Lobby.Anticheat.OnGetAnticheatReputation(arg0)
end

function LobbyVM.GetLootItemCategory(arg0)
	local registerVal4 = Engine.TableFindRows("gamedata/loot/mplootitems.csv", 1.000000, arg0)
	if registerVal4 == nil or #"gamedata/loot/mplootitems.csv" == 0.000000 then
		return -1.000000
	end
	local registerVal5 = Engine.TableLookupGetColumnValueForRow("gamedata/loot/mplootitems.csv", registerVal4[1.000000], 2.000000)
	if registerVal5 == nil then
		return -1.000000
	end
	return registerVal5
end

function LobbyVM.GetRecentItemTags(arg0, arg1)
	local registerVal2 = Engine.GetLootItemCount(arg0, Enum.eModes.MODE_MULTIPLAYER)
	local registerVal3 = Engine.GetLootItems(arg0, Enum.eModes.MODE_MULTIPLAYER, 0.000000, registerVal2)
	local registerVal4 = LuaUtils.GetCurrentLootVersion()
	local registerVal7 = Engine.TableFindRows("gamedata/loot/mplootitems.csv", 2.000000, arg1)
	local registerVal10, registerVal11, registerVal12 = ipairs(registerVal7)
	for index13,value14 in registerVal10, registerVal11, registerVal12 do
		local registerVal15 = Engine.TableLookupGetColumnValueForRow("gamedata/loot/mplootitems.csv", value14, 6.000000)
		if registerVal15 == nil or registerVal15 == "" then
		else
			local registerVal16 = tonumber(-1.000000)
		end
		if registerVal16 ~= -1.000000 and registerVal16 <= registerVal4 then
		end
	end
	if registerVal3 == nil then
		return ""
	end
	registerVal11, registerVal12, registerVal13 = ipairs(registerVal3)
	for index14,value15 in registerVal11, registerVal12, registerVal13 do
		registerVal16 = CoDShared.GetLootItemCategory(value15.id)
		local registerVal17 = CoDShared.GetLootItemVersion(value15.id)
		if registerVal16 == arg1 and registerVal17 <= registerVal4 then
			table.insert({}, value15.id)
		end
		if (0.000000 + 1.000000) <= #table.insert then
			return ""
		end
	end
	if #registerVal11 == 0.000000 then
		return ""
	end
	registerVal12, registerVal13, registerVal14 = ipairs({})
	for index15,value16 in registerVal12, registerVal13, registerVal14 do
		if index15 < #"" then
		end
	end
	return (("" .. "[ 203, " .. value16 .. "]") .. " , ")
end

function LobbyVM.GetLootPossibleCount(arg0)
	local registerVal1 = LuaUtils.GetCurrentLootVersion()
	local registerVal4 = Engine.TableFindRows("gamedata/loot/mplootitems.csv", 2.000000, arg0)
	local registerVal7, registerVal8, registerVal9 = ipairs(registerVal4)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		local registerVal12 = Engine.TableLookupGetColumnValueForRow("gamedata/loot/mplootitems.csv", value11, 6.000000)
		local registerVal13 = tonumber(registerVal12)
		if -1.000000 ~= -1.000000 and -1.000000 <= registerVal1 then
		end
	end
	return (0.000000 + 1.000000)
end

function LobbyVM.GetLootItemList(arg0, arg1)
	local registerVal2 = LuaUtils.GetCurrentLootVersion()
	local registerVal3 = Engine.GetLootItemCount(arg0, Enum.eModes.MODE_MULTIPLAYER)
	local registerVal4 = Engine.GetLootItems(arg0, Enum.eModes.MODE_MULTIPLAYER, 0.000000, registerVal3)
	if registerVal4 == nil then
		return {}
	end
	local registerVal6, registerVal7, registerVal8 = ipairs(registerVal4)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		local registerVal11 = CoDShared.GetLootItemCategory(value10.id)
		local registerVal12 = CoDShared.GetLootItemVersion(value10.id)
		if registerVal11 == arg1 and registerVal12 <= registerVal2 then
			table.insert({}, value10.id)
		end
	end
	return {}
end

function LobbyVM.OnBuyCrate(arg0)
	local registerVal1 = LobbyVM.GetLootPossibleCount("melee_weapon")
	local registerVal2 = LobbyVM.GetLootItemList(arg0.controller, "melee_weapon")
	if arg0.crateDWID == 48.000000 and registerVal1 ~= nil and registerVal2 ~= nil and (registerVal1 - 1.000000) <= #arg0.controller then
		arg0.crateDWID = 50.000000
	end
	local registerVal6 = Dvar.loot_mpItemVersions:get()
	local registerVal7 = Dvar.loot_limitedTimeItemVersions:get()
	registerVal6 = Engine.DvarString(nil, "loot_useClientDupes")
	if registerVal6 == "1" then
		if arg0.crateDWID == 32.000000 then
		else
			if arg0.crateDWID == 31.000000 then
			end
		end
		if true == true then
			local registerVal8 = LobbyVM.GetRecentItemTags(arg0.controller, "melee_weapon")
			if registerVal8 ~= "" then
			end
			Engine.PrintInfo(Enum.consoleLabel.LABEL_DEFAULT, ("Excluding: " .. ((" "ExcludeTag": [ " .. registerVal8) .. " ], ") .. ".
"))
		end
	end
	return ((" "SupplyDropID": " .. arg0.crateDWID .. ", ") .. (" "PurchaseWith": "" .. arg0.currency .. "", ") .. " "Rank": [], " .. ((" "ExcludeTag": [ " .. registerVal8) .. " ], ") .. (((" "InventoryVersion": [ " .. registerVal6) .. registerVal7) .. " ] "))
end

registerVal1 = {}
local registerVal2 = {}
registerVal2.dlcIndex = Enum.dlcIndex_t.CONTENT_DLC1_INDEX
registerVal2.dlcPackName = "dlc1"
registerVal2.inventoryVersion = 101.000000
local registerVal3 = {}
registerVal3.dlcIndex = Enum.dlcIndex_t.CONTENT_DLC2_INDEX
registerVal3.dlcPackName = "dlc2"
registerVal3.inventoryVersion = 102.000000
local registerVal4 = {}
registerVal4.dlcIndex = Enum.dlcIndex_t.CONTENT_DLC3_INDEX
registerVal4.dlcPackName = "dlc3"
registerVal4.inventoryVersion = 103.000000
local registerVal5 = {}
registerVal5.dlcIndex = Enum.dlcIndex_t.CONTENT_DLC4_INDEX
registerVal5.dlcPackName = "dlc4"
registerVal5.inventoryVersion = 104.000000
local registerVal6 = {}
registerVal6.dlcIndex = Enum.dlcIndex_t.CONTENT_DLC5_INDEX
registerVal6.dlcPackName = "dlc5"
registerVal6.inventoryVersion = 105.000000
registerVal1 = {registerVal2, registerVal3, registerVal4, registerVal5, registerVal6}
LobbyVM.DLCInfo = registerVal1
function LobbyVM.OnSpendVials(arg0)
	local registerVal3 = Dvar.loot_zmItemVersions:get()
	registerVal3 = Engine.DvarInt(nil, "tu9_highestAvailableDLC")
	local registerVal4, registerVal5, registerVal6 = ipairs(LobbyVM.DLCInfo)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		if value8.dlcIndex > registerVal3 then
			if value8.dlcPackName == "dlc5" then
				local registerVal9 = Dvar.loot_forceEnableZCGumsInFactory:get()
				registerVal9 = Dvar.loot_forceEnableZCGumsInFactory:get()
				if registerVal9 == 1.000000 or registerVal9 == "1" then
				end
			end
		end
	end
	return ((" "NumVials": " .. arg0.vialCount .. ", ") .. (((" "InventoryVersion": [" .. registerVal3 .. " ") .. ", " .. value8.inventoryVersion .. " ") .. "]"))
end

function LobbyVM.OnCookGobbleGumRecipe(arg0)
	return (" "Recipe": " .. (arg0.recipeIndex + arg0.itemOffset))
end

function LobbyVM.OnInventoryFetched(arg0)
	local registerVal1 = {}
	registerVal1 = {"na_team_mtx", "eu_team_mtx", "anz_team_mtx", "cwl_mtx", "cwl_mtx_v2"}
	local registerVal6, registerVal7, registerVal8 = ipairs(registerVal1)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		local registerVal11 = tonumber(Engine.TableLookup(nil, "gamedata/tables/common/inventory_items.csv", 1.000000, value10, 2.000000))
		local registerVal12 = Engine.GetInventoryItemQuantity(arg0.controller, registerVal11)
		if 0.000000 < registerVal12 then
			Engine.SetProfileVar(arg0.controller, value10, "1")
		end
	end
	if true then
		Engine.CommitProfileChanges(arg0.controller)
	end
end

function LobbyVM.CheckSpecialPlaylistRules(arg0)
	local registerVal1 = Dvar.partyChatDisallowed:get()
	local registerVal2 = Engine.IsLocalClientInPlatformPartyChat()
	registerVal2 = Engine.IsInComError()
	if registerVal2 and not registerVal2 then
		Dvar.partyChatDisallowed:set(false)
		Engine.ComError(Enum.errorCode.ERROR_DROP, "PLATFORM_PARTYCHATNOTALLOWED")
	end
	registerVal2 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal2.sessionClients)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		if value7.isInPlatformPartyChat == true then
			Engine.KickClient(arg0, Enum.LobbyType.LOBBY_TYPE_GAME, value7.xuid, Enum.LobbyDisconnectClient.LOBBY_DISCONNECT_CLIENT_NOPARTYCHAT, "PLATFORM_PARTYCHATNOTALLOWED")
		end
	end
end

function LobbyVM.LobbyMonitor()
	local registerVal0 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	registerVal0 = Engine.IsDedicatedServer()
	registerVal0 = Engine.IsInGame()
	if registerVal0 and not Enum.LobbyType.LOBBY_TYPE_GAME or registerVal0 then
		return 
	end
	registerVal0 = Engine.GetLobbyUIScreen()
	if registerVal0 ~= LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id then
		return 
	end
	local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 == false then
		return 
	end
	local registerVal2 = Dvar.tu16_lobbyMonitor:exists()
	registerVal2 = Dvar.tu16_lobbyMonitor:get()
	if registerVal2 == false or registerVal2 == 0.000000 then
		return 
	end
	registerVal2 = Dvar.tu16_lobbyMonitor:get()
	if registerVal2 == 0.000000 then
		return 
	end
	local registerVal3 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal4 = Engine.GetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal5 = Dvar.party_maxplayers:get()
	if registerVal4 == registerVal5 or registerVal3 <= registerVal5 then
		return 
	end
	local registerVal6 = Engine.GetPrimaryController()
	if LobbyVM.lobbyMonitor.eventRecorded == false then
		LobbyVM.lobbyMonitor.eventRecorded = true
		Engine.RecordComScoreEvent(registerVal6, "lobby_monitor", "game_client_count", registerVal3, "game_max_clients", registerVal4, "party_max_players", registerVal5)
	end
	if registerVal2 == 1.000000 then
	else
		if registerVal2 == 2.000000 then
			Engine.SetSessionStatus(Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.SessionStatus.SESSION_STATUS_ERROR)
			local registerVal7 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
			local registerVal8, registerVal9, registerVal10 = ipairs(registerVal7.sessionClients)
			for index11,value12 in registerVal8, registerVal9, registerVal10 do
				if value12.isHost == false and value12.isLocal == false then
					Engine.KickClient(registerVal6, Enum.LobbyType.LOBBY_TYPE_GAME, value12.xuid, Enum.LobbyDisconnectClient.LOBBY_DISCONNECT_CLIENT_ERROR, "LobbyVM.LobbyMonitor() found an issue with the lobby")
				end
			end
			Engine.ComError(Enum.errorCode.ERROR_DROP, "EXE_DISCONNECTED_FROM_SERVER_ERROR")
		end
	end
end

function LobbyVM.IngameMonitor()
	local registerVal0 = Engine.IsInGame()
	if not registerVal0 then
		return 
	end
	registerVal0 = Engine.IsDedicatedServer()
	if not registerVal0 then
		registerVal0 = CoDShared.IsLobbyMode(Enum.LobbyMode.LOBBY_MODE_PUBLIC)
	else
		registerVal0 = Dvar.partyChatDisallowed:get()
		registerVal0 = Engine.IsLobbyHostActive(Enum.LobbyType.LOBBY_TYPE_GAME)
		registerVal0 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME)
		local registerVal1 = Engine.GetLobbyHostControllerIndex(Enum.LobbyType.LOBBY_TYPE_GAME)
		local registerVal2, registerVal3, registerVal4 = ipairs(registerVal0.sessionClients)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			if value6.isInPlatformPartyChat == true then
				Engine.KickClient(registerVal1, Enum.LobbyType.LOBBY_TYPE_GAME, value6.xuid, Enum.LobbyDisconnectClient.LOBBY_DISCONNECT_CLIENT_NOPARTYCHAT, "PLATFORM_PARTYCHATNOTALLOWED")
			end
		end
	end
end


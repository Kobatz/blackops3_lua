-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LobbyData")
CoD.LobbyBase = {}
CoD.LobbyBase.FailedDWConnection = false
CoD.LobbyBase.Prompt = {}
CoD.LobbyBase.Prompt.Title = nil
CoD.LobbyBase.Prompt.Description = nil
CoD.LobbyBase.Prompt.Options = nil
local registerVal1 = {}
local registerVal2 = {}
registerVal2.index = 0.000000
registerVal2.str = "MENU_READY"
registerVal1.INVALID = registerVal2
registerVal2 = {}
registerVal2.index = 1.000000
registerVal2.str = "MENU_EDITING_GAME_OPTIONS"
registerVal1.EDITING_GAME_RULES = registerVal2
registerVal2 = {}
registerVal2.index = 2.000000
registerVal2.str = "MENU_SELECTING_MAP"
registerVal1.CHOOSING_MAP = registerVal2
registerVal2 = {}
registerVal2.index = 3.000000
registerVal2.str = "MENU_SELECTING_GAMETYPE"
registerVal1.CHOOSING_GAME_MODE = registerVal2
registerVal2 = {}
registerVal2.index = 4.000000
registerVal2.str = "MENU_SETTING_UP_BOTS"
registerVal1.SETTING_UP_BOTS = registerVal2
registerVal2 = {}
registerVal2.index = 5.000000
registerVal2.str = "MENU_MODIFYING_REWARDS"
registerVal1.MODIFYNG_REWARDS = registerVal2
registerVal2 = {}
registerVal2.index = 6.000000
registerVal2.str = "MENU_MODIFYING_CAC"
registerVal1.MODIFYING_CAC = registerVal2
registerVal2 = {}
registerVal2.index = 7.000000
registerVal2.str = "MENU_MODIFYING_HERO"
registerVal1.MODIFYING_HERO = registerVal2
registerVal2 = {}
registerVal2.index = 8.000000
registerVal2.str = "MENU_VIEWING_PLAYLISTS"
registerVal1.VIEWING_PLAYLISTS = registerVal2
registerVal2 = {}
registerVal2.index = 9.000000
registerVal2.str = "MENU_VIEWING_PLAYERCARD"
registerVal1.VIEWING_PLAYERCARD = registerVal2
registerVal2 = {}
registerVal2.index = 10.000000
registerVal2.str = "MENU_MODIFYING_BUBBLEGUM"
registerVal1.MODIFYING_BUBBLEGUM = registerVal2
registerVal2 = {}
registerVal2.index = 11.000000
registerVal2.str = "MENU_MODIFYING_WEAPON_BUILD_KITS"
registerVal1.MODIFYING_WEAPON_BUILD_KITS = registerVal2
registerVal2 = {}
registerVal2.index = 12.000000
registerVal2.str = "MENU_EDITING_CODCASTER_OPTIONS"
registerVal1.EDITING_CODCASTER_SETTINGS = registerVal2
registerVal2 = {}
registerVal2.index = 13.000000
registerVal2.str = "MENU_AT_MEGACHEW_FACTORY"
registerVal1.AT_MEGACHEW_FACTORY = registerVal2
registerVal2 = {}
registerVal2.index = 14.000000
registerVal2.str = "MENU_VIEWING_NEWTONS_COOKBOOK"
registerVal1.VIEWING_NEWTONS_COOKBOOK = registerVal2
CoD.LobbyBase.LeaderActivity = registerVal1
registerVal1 = {}
registerVal1.LAUNCH = 0.000000
registerVal1.NAVIGATE = 1.000000
registerVal1.SELECT = 2.000000
CoD.LobbyBase.MapSelect = registerVal1
CoD.LobbyBase.DisplayedFirstTimeDurangoDownloadSetting = false
function CoD.LobbyBase.RegisterEventHandlers(arg0)
	arg0:registerEventHandler("open_toaster_popup", CoD.LobbyBase.OpenToasterPopup)
	arg0:registerEventHandler("playlist_selected", CoD.LobbyBase.GoToFindingGames)
	arg0:registerEventHandler("lobby_leader_activity_changed", CoD.LobbyBase.LeaderActivityChanged)
	arg0:registerEventHandler("ugc_activity", CoD.LobbyBase.UGCActivity)
	CoD.LobbyBase.LeaderActivityInit()
	CoD.LobbyBase.SubscribeToLobbyVMRequest(arg0)
end

function CoD.LobbyBase.UGCActivity(arg0, arg1)
	if arg1.type == "subscribe" then
		local registerVal6 = Engine.Localize("MENU_MODS_CAPS")
		local registerVal7 = Engine.Localize("PLATFORM_MODS_SUBSCRIBE")
		CoD.OverlayUtility.ShowToast("DefaultState", registerVal6, (registerVal7 .. " " .. arg1.modName))
	else
		if arg1.type == "install_started" then
			registerVal6 = Engine.Localize("MENU_MODS_CAPS")
			registerVal7 = Engine.Localize("PLATFORM_MODS_INSTALLING")
			CoD.OverlayUtility.ShowToast("DefaultState", registerVal6, (registerVal7 .. " " .. arg1.modName))
		else
			if arg1.type == "install_complete" then
				registerVal6 = Engine.Localize("MENU_MODS_CAPS")
				registerVal7 = Engine.Localize("PLATFORM_MODS_INSTALLED")
				CoD.OverlayUtility.ShowToast("DefaultState", registerVal6, (registerVal7 .. " " .. arg1.modName))
			else
				if arg1.type == "load" then
					registerVal6 = Engine.Localize("MENU_MODS_CAPS")
					registerVal7 = Engine.Localize("PLATFORM_MODS_LOADING")
					CoD.OverlayUtility.ShowToast("DefaultState", registerVal6, (registerVal7 .. " " .. arg1.modName))
				else
					if arg1.type == "unload" then
						registerVal6 = Engine.Localize("MENU_MODS_CAPS")
						registerVal7 = Engine.Localize("PLATFORM_MODS_UNLOADING")
						CoD.OverlayUtility.ShowToast("DefaultState", registerVal6, (registerVal7 .. " " .. arg1.modName))
					else
						if arg1.type == "loaded" then
							registerVal6 = Engine.Localize("MENU_MODS_CAPS")
							registerVal7 = Engine.Localize("PLATFORM_MODS_LOADED")
							CoD.OverlayUtility.ShowToast("DefaultState", registerVal6, (registerVal7 .. " " .. arg1.modName))
						else
							if arg1.type == "unloaded" then
								registerVal6 = Engine.Localize("MENU_MODS_CAPS")
								registerVal7 = Engine.Localize("PLATFORM_MODS_UNLOADED")
								CoD.OverlayUtility.ShowToast("DefaultState", registerVal6, (registerVal7 .. " " .. arg1.modName))
							end
						end
					end
				end
			end
		end
	end
	return true
end

function CoD.LobbyBase.SubscribeToLobbyVMRequest(arg0)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot.lobbyVMRequest")
	local function __FUNC_200D_(arg0)
		CoD.LobbyBase.ExecuteLobbyVMRequest(arg0)
	end

	arg0:subscribeToModel(registerVal3, __FUNC_200D_, false)
end

function CoD.LobbyBase.ExecuteLobbyVMRequest(arg0)
	local registerVal1 = Engine.GetModelValue(arg0)
	if registerVal1 == LuaEnums.LOBBYVM_REQUEST.FORCE_LOCAL_MODE then
		CoD.LobbyBase.FailedDWConnection = true
	end
end

function CoD.LobbyBase.OpenToasterPopup(arg0, arg1)
	if arg1.isError == false then
		local registerVal6 = Engine.Localize("MENU_INVITE_SENT")
		CoD.OverlayUtility.ShowToast("Invite", registerVal6, arg1.gamertag, LuaEnums.INVITE_TOAST_POPUP_ICON)
	else
		registerVal6 = Engine.ToUpper(Engine.Localize("MENU_INVITE_FAILED"))
		CoD.OverlayUtility.ShowToast("Invite", registerVal6, arg1.gamertag, LuaEnums.INVITE_TOAST_POPUP_ERROR_ICON)
	end
	return true
end

function CoD.LobbyBase.ChunkAllDownloading()
	local registerVal0 = IsOrbis()
	registerVal0 = IsDurango()
	if not  or registerVal0 then
		registerVal0 = Engine.IsMpStillDownloading()
		registerVal0 = Engine.IsZmStillDownloading()
		registerVal0 = Engine.IsCpStillDownloading()
		if registerVal0 and registerVal0 and registerVal0 then
			return true
		end
	end
	return false
end

function CoD.LobbyBase.ChunkAnyDownloading()
	local registerVal0 = IsOrbis()
	registerVal0 = IsDurango()
	if not  or registerVal0 then
		registerVal0 = Engine.IsMpStillDownloading()
		registerVal0 = Engine.IsZmStillDownloading()
		registerVal0 = Engine.IsCpStillDownloading()
		registerVal0 = Engine.IsZmInitialStillDownloading()
		registerVal0 = Engine.IsMpInitialStillDownloading()
		if not registerVal0 and not registerVal0 and not registerVal0 and not  or registerVal0 then
			return true
		end
	end
	return false
end

function CoD.LobbyBase.ForceOffline()
	if not  or LuaUtils.isXbox then
		local registerVal0 = LuaUtils.IsSkuOfflineOnly()
		if registerVal0 then
			return true
		end
	end
	return false
end

function CoD.LobbyBase.DoFirstTimeProfileSetup(arg0, arg1)
	local registerVal2 = IsMainFirstTimeSetup(arg1)
	if registerVal2 then
		registerVal2 = IsCurrentTextLanguageEnglish()
		if registerVal2 then
			OpenOverlay(arg0, "FirstTimeGraphicContentSetting", arg1)
		else
			OpenOverlay(arg0, "FirstTimeBrightnessSetting", arg1)
		end
		return true
	else
		registerVal2 = IsGameInstalled()
		if CoD.isDurango and not registerVal2 and not CoD.LobbyBase.DisplayedFirstTimeDurangoDownloadSetting then
			CoD.LobbyBase.DisplayedFirstTimeDurangoDownloadSetting = true
			OpenOverlay(arg0, "FirstTimeDurangoDownloadSetting", arg1, "", "")
			return true
		end
	end
	return false
end

function CoD.LobbyBase.BeginLivePlay(arg0, arg1)
	local registerVal2 = IsOrbis()
	if registerVal2 then
		registerVal2 = Engine.DisplayNpAvailabilityErrors(arg1)
		if registerVal2 then
			CoD.LobbyBase.FailedDWConnection = true
			CoD.LobbyBase.BeginPlay(arg0, arg1)
			return 
		else
			registerVal2 = Engine.DisplayUpsellAndContentWarnings(arg1)
			if not registerVal2 then
				CoD.LobbyBase.FailedDWConnection = true
				CoD.LobbyBase.BeginPlay(arg0, arg1)
				return 
			else
				registerVal2 = Engine.HasCompletedCheckingRestrictions(arg1)
				if not registerVal2 then
					CoD.OverlayUtility.CreateOverlay(arg1, arg0, "CheckingRestrictions")
					return 
				end
			end
		end
	end
	registerVal2 = Engine.IsPlayerQueued(arg1)
	if registerVal2 then
		CoD.OverlayUtility.CreateOverlay(arg1, arg0, "LoginQueued")
	else
		registerVal2 = Engine.IsDemonwareFetchingDone(arg1)
		registerVal2 = Engine.AreLocalFilesReady(arg1)
		if registerVal2 and registerVal2 then
			registerVal2 = CoD.LobbyBase.ForceOffline()
			if registerVal2 == true then
				CoD.LobbyBase.FailedDWConnection = true
				CoD.OverlayUtility.CreateOverlay(arg1, arg0, "UpdateNeeded")
				return 
			end
			CoD.LobbyBase.FailedDWConnection = false
			LuaUtils.SetNetworkMode(arg1, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE)
			Engine.LoadSaveGame()
			Engine.ExecNow(arg1, "invalidateEmblemComponent")
			registerVal2 = CoD.LobbyBase.DoFirstTimeProfileSetup(arg0, arg1)
			if not registerVal2 then
				registerVal2 = LobbyData.GetLobbyNav()
				local registerVal3 = LobbyData:UITargetFromId(registerVal2)
				if registerVal3.id == LobbyData.UITargets.UI_MODESELECT.id then
					local registerVal4 = {}
					registerVal4.controller = arg1
					registerVal4.networkMode = Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE
					Engine.LobbyVM_CallFunc("NetworkModeChanged", registerVal4)
				else
					registerVal4 = ShouldSkipMtxCommsMOTD(arg1)
					registerVal4 = Engine.GetMarketingMessage(arg1, "motd")
					if registerVal4 and registerVal4 ~= nil and registerVal4.messageViewReported ~= true then
						Engine.ReportMarketingMessageViewed(arg1, "motd")
					end
					registerVal4 = ShouldShowMtxCommsMOTDPopup(arg1)
					if registerVal4 then
						local registerVal5 = ShouldShowLoginRewardPopup(arg1)
						if registerVal5 then
						end
						OpenMOTDPopup(arg0, nil, arg1, "LoginReward", arg0)
					else
						registerVal4 = ShouldShowLoginRewardPopup(arg1)
						if registerVal4 then
							OpenLoginRewardPopup(arg0, arg1)
						else
							registerVal5 = LuaUtils.IsBetaBuild()
							if registerVal5 then
							end
							NavigateToLobby(arg0, "MPLobbyOnline", false, arg1)
						end
					end
				end
			end
			CoD.ParseKnownDLC()
		else
			Engine.LiveConnectEnableDemonwareConnect()
			CoD.OverlayUtility.CreateOverlay(arg1, arg0, "ConnectingToDemonware")
		end
	end
end

function CoD.LobbyBase.BeginIfLocalFilesReady(arg0, arg1)
	local registerVal2 = Engine.AreLocalFilesReady(arg1)
	if registerVal2 then
		Engine.LoadSaveGame()
		Engine.ExecNow(arg1, "invalidateEmblemComponent")
		registerVal2 = CoD.LobbyBase.DoFirstTimeProfileSetup(arg0, arg1)
		if not registerVal2 then
			NavigateToLobby(arg0, "ModeSelect", false, arg1)
		else
			registerVal2 = CoD.OverlayUtility.CreateOverlay(arg1, arg0, "LoadingProfile")
			registerVal2.callingMenu = arg0
		end
	end
end

function CoD.LobbyBase.BeginLANPlay(arg0, arg1)
	LuaUtils.SetNetworkMode(arg1, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN)
	CoD.LobbyBase.BeginIfLocalFilesReady(arg0, arg1)
end

function CoD.LobbyBase.BeginLocalPlay(arg0, arg1)
	LuaUtils.SetNetworkMode(arg1, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LOCAL)
	CoD.LobbyBase.BeginIfLocalFilesReady(arg0, arg1)
end

function CoD.LobbyBase.ShouldBeginLAN(arg0)
	local registerVal1 = Engine.IsSignedInToLive(arg0)
	local registerVal2 = Engine.IsPlayerQueued(arg0)
	local registerVal3 = Engine.IsPlusAuthorized(arg0)
	if not registerVal3 then
	end
	if not registerVal1 and not registerVal2 then
		return true
	end
	local registerVal4 = Dvar.lobby_forceOffline:get()
	if registerVal4 == true then
		return true
	end
	if CoD.LobbyBase.FailedDWConnection == true then
		return true
	end
	if not CoD.isPC then
		return true
	end
	registerVal4 = CoD.LobbyBase.ChunkAllDownloading()
	if registerVal4 then
		return true
	end
	registerVal4 = Engine.GetAnticheatReputation(arg0)
	if Engine.GetAnticheatReputation and LuaEnums.DW_REPUTATION_BAN <= registerVal4 then
		return true
	end
	return false
end

function CoD.LobbyBase.BeginPlay(arg0, arg1)
	Engine.ActivatePrimaryLocalClient(arg1)
	local registerVal2 = Engine.CheckNetConnection()
	if not registerVal2 then
		CoD.LobbyBase.BeginLocalPlay(arg0, 0.000000)
	else
		local registerVal4 = CoD.LobbyBase.ShouldBeginLAN(0.000000)
		if registerVal4 then
			CoD.LobbyBase.BeginLANPlay(arg0, 0.000000)
		else
			CoD.LobbyBase.BeginLivePlay(arg0, 0.000000)
		end
	end
end

function CoD.LobbyBase.EndPlay(arg0, arg1)
	Engine.DeactivateAllLocalClients()
end

function CoD.LobbyBase.LobbyOpenMenu(arg0, arg1, arg2)
end

function CoD.LobbyBase.RecordFocusOverride(arg0, arg1)
	if arg1.idStack and 0.000000 < #arg1.idStack then
		for index3=1.000000, #arg1.idStack, 1.000000 do
			if arg1.idStack[index3] == "selectionList" then
			else
			end
		end
	end
	if true then
		CoD.Menu.RecordCurrFocusedElemID(arg0, arg1)
	end
end

function CoD.LobbyBase.SetInitLobbyMenu(arg0, arg1)
	local registerVal2 = Engine.IsCinematicPlaying()
	if registerVal2 then
		local function __FUNC_4181_(arg1, arg2)
			local registerVal2 = Engine.IsCinematicPlaying()
			if registerVal2 then
				return 
			end
			arg0:registerEventHandler("check_cinematic_play_music", CoD.NullFunction)
			arg1.timer:close()
			CoD.PlayFrontendMusic()
		end

		arg0:registerEventHandler("check_cinematic_play_music", __FUNC_4181_)
		registerVal2 = LUI.UITimer.new(1000.000000, "check_cinematic_play_music", false, arg0)
		arg0.timer = registerVal2
		arg0:addElement(arg0.timer)
	else
		CoD.PlayFrontendMusic()
	end
end

function CoD.LobbyBase.NavigateToLobby(arg0, arg1, arg2, arg3)
	if not CoD.MenuNavigation then
		CoD.MenuNavigation = {}
	end
	if not CoD.MenuNavigation[arg3] then
		local registerVal5 = {}
		local registerVal6 = {}
		registerVal6 = {arg0.menuName}
		registerVal5 = {registerVal6}
		CoD.MenuNavigation[arg3] = registerVal5
	end
	local registerVal4, registerVal5 = CoD.Menu.GetNavigationForMenu(arg3, arg0.menuName)
	if registerVal4 and registerVal5 then
		if arg2 then
			table.insert(CoD.MenuNavigation[arg3][registerVal4], (registerVal5 + 1.000000), "Lobby")
		else
			CoD.MenuNavigation[arg3][registerVal4][registerVal5] = "Lobby"
		else
			local registerVal8 = {}
			registerVal8 = {"Lobby"}
			table.insert(CoD.MenuNavigation[arg3], registerVal8)
		end
	end
	registerVal6 = {}
	registerVal6.controller = arg3
	registerVal6.navToMenu = arg1
	local registerVal7 = LobbyData:UITargetFromName(arg1)
	registerVal8 = Engine.GetUsedControllerCount()
	if registerVal7.maxLocalClients < registerVal8 then
		registerVal6.maxLocalClients = registerVal7.maxLocalClients
		CoD.OverlayUtility.CreateOverlay(arg3, arg0, "LobbyLocalClientWarning", registerVal6)
		return 
	end
	registerVal8 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_ALL)
	local registerVal9 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_ALL)
	if registerVal7.maxClients < registerVal8 or registerVal7.maxClients < registerVal9 then
		local registerVal14 = Engine.Localize("MENU_TOO_MANY_CLIENTS_FOR_GAME", registerVal7.maxClients)
		OpenGenericSmallPopup(arg0, arg3, "MENU_WARNING", registerVal14, nil, "MENU_OK")
		return 
	end
	Engine.LobbyVM_CallFunc("GoForward", registerVal6)
end

function CoD.LobbyBase.ShowLeaveLobbyPopup(arg0)
	local registerVal1 = Dvar.leaveWithPartyEnabled:get()
	if registerVal1 == false then
		return LuaEnums.LEAVE_LOBBY_POPUP.NONE
	end
	registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal2 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal3 = Engine.InLobbyParty(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal4 = Engine.InLobbyParty(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal5 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	local registerVal6 = Engine.GetUsedControllerCount()
	if (registerVal5 - registerVal6) ~= 0.000000 then
	end
	if arg0.id == LobbyData.UITargets.UI_MAIN.id then
	else
		if arg0.id == LobbyData.UITargets.UI_MODESELECT.id then
			if registerVal1 and registerVal3 then
			else
				if registerVal3 then
				else
					if arg0.id ~= LobbyData.UITargets.UI_CPLOBBYONLINE.id and arg0.id ~= LobbyData.UITargets.UI_CP2LOBBYONLINE.id and arg0.id ~= LobbyData.UITargets.UI_DOALOBBYONLINE.id and arg0.id ~= LobbyData.UITargets.UI_MPLOBBYMAIN.id and arg0.id ~= LobbyData.UITargets.UI_MPLOBBYONLINE.id and arg0.id ~= LobbyData.UITargets.UI_MPLOBBYONLINETHEATER.id and arg0.id ~= LobbyData.UITargets.UI_MPLOBBYONLINEARENA.id and arg0.id == LobbyData.UITargets.UI_ZMLOBBYONLINE.id or arg0.id == LobbyData.UITargets.UI_ZMLOBBYONLINETHEATER.id then
						if not registerVal1 and registerVal3 then
						else
						else
							if arg0.id ~= LobbyData.UITargets.UI_CPLOBBYONLINEPUBLICGAME.id and arg0.id ~= LobbyData.UITargets.UI_CP2LOBBYONLINEPUBLICGAME.id and arg0.id ~= LobbyData.UITargets.UI_DOALOBBYONLINEPUBLICGAME.id and arg0.id ~= LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id and arg0.id == LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.id or arg0.id == LobbyData.UITargets.UI_ZMLOBBYONLINEPUBLICGAME.id then
								if not registerVal3 then
								else
									if registerVal1 and registerVal3 and not true then
									else
										if not registerVal1 and registerVal3 then
										else
											if arg0.id ~= LobbyData.UITargets.UI_CPLOBBYONLINECUSTOMGAME.id and arg0.id ~= LobbyData.UITargets.UI_CP2LOBBYONLINECUSTOMGAME.id and arg0.id ~= LobbyData.UITargets.UI_MPLOBBYONLINECUSTOMGAME.id and arg0.id == LobbyData.UITargets.UI_MPLOBBYONLINEMODGAME.id or arg0.id == LobbyData.UITargets.UI_ZMLOBBYONLINECUSTOMGAME.id then
												if not registerVal3 then
												else
													if registerVal1 and registerVal3 and not true then
													else
														if not registerVal1 and registerVal3 then
														else
															if arg0.id ~= LobbyData.UITargets.UI_CPLOBBYLANGAME.id and arg0.id ~= LobbyData.UITargets.UI_CP2LOBBYLANGAME.id and arg0.id ~= LobbyData.UITargets.UI_CP2LOBBYLANGAME.id and arg0.id == LobbyData.UITargets.UI_MPLOBBYLANGAME.id or arg0.id == LobbyData.UITargets.UI_ZMLOBBYLANGAME.id then
																if registerVal2 and registerVal4 then
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
	end
	return LuaEnums.LEAVE_LOBBY_POPUP.LEAVE_LOBBY
end

function CoD.LobbyBase.LobbyGoBack(arg0, arg1)
	local function __FUNC_6110_(arg0)
		local registerVal1 = {}
		registerVal1.controller = arg1
		registerVal1.withParty = arg0
		Engine.LobbyVM_CallFunc("GoBack", registerVal1)
	end

	local registerVal3 = Engine.GetLobbyUIScreen()
	local registerVal4 = LobbyData:UITargetFromId(registerVal3)
	local registerVal5 = MapVoteTimerActive()
	if registerVal5 then
		if registerVal4.lobbyTimerType == LuaEnums.TIMER_TYPE.MANUAL or registerVal4.lobbyTimerType == LuaEnums.TIMER_TYPE.THEATER then
			local registerVal6 = Engine.GetGlobalModel()
			registerVal5 = Engine.GetModel(registerVal6, "MapVote.timerActive")
			Engine.SetModelValue(registerVal5, 0.000000)
			Engine.ForceNotifyModelSubscriptions(registerVal5)
			local registerVal8 = {}
			registerVal8.controller = arg1
			registerVal8.lobbyType = registerVal4.lobbyType
			registerVal8.mainMode = registerVal4.mainMode
			Engine.LobbyVM_CallFunc("StopLobbyTimer", registerVal8)
			return 
		end
	end
	if registerVal4.id == LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id or registerVal4.id == LobbyData.UITargets.UI_MPLOBBYONLINEARENAGAME.id then
		registerVal5 = LuaUtils.LobbyProcessQueueEmpty()
		registerVal5 = Engine.GetSessionStatus(Enum.LobbyType.LOBBY_TYPE_GAME)
		registerVal5 = Engine.GetSessionStatus(Enum.LobbyType.LOBBY_TYPE_GAME)
		if registerVal5 == false and registerVal5 ~= Enum.SessionStatus.SESSION_STATUS_MERGE and registerVal5 ~= Enum.SessionStatus.SESSION_STATUS_MIGRATE then
			local registerVal7 = {}
			registerVal7.name = "lose_focus"
			registerVal7.controller = arg1
			arg0.ClientList:processEvent(registerVal7)
			__FUNC_6110_(LuaEnums.LEAVE_WITH_PARTY.WITH)
			return 
		end
	end
	registerVal5 = CoD.LobbyBase.ShowLeaveLobbyPopup(registerVal4)
	if LuaEnums.LEAVE_LOBBY_POPUP.NONE_LEAVE_WITH_PARTY < registerVal5 then
		CoD.OverlayUtility.CreateOverlay(arg1, arg0, "LobbyLeavePopup", registerVal5)
	else
		registerVal8 = {}
		registerVal8.name = "lose_focus"
		registerVal8.controller = arg1
		arg0.ClientList:processEvent(registerVal8)
		if registerVal5 == LuaEnums.LEAVE_LOBBY_POPUP.NONE_LEAVE_WITH_PARTY then
			__FUNC_6110_(LuaEnums.LEAVE_WITH_PARTY.WITH)
		else
			__FUNC_6110_(LuaEnums.LEAVE_WITH_PARTY.WITHOUT)
		end
	end
end

function CoD.LobbyBase.LobbyQuitOrLeaveParty(arg0, arg1)
	local registerVal2 = Engine.GetLobbyUIScreen()
	local registerVal3 = LobbyData:UITargetFromId(registerVal2)
	local registerVal4 = CoD.LobbyBase.ShowLeaveLobbyPopup(registerVal3)
	if registerVal4 ~= LuaEnums.LEAVE_LOBBY_POPUP.NONE then
		CoD.OverlayUtility.CreateOverlay(arg1, arg0, "LobbyLeavePopup", registerVal4)
	else
		OpenPCQuit(arg0, arg0, arg1)
	end
end

function CoD.LobbyBase.GiveLeadership(arg0, arg1, arg2)
	if arg0.MemberList == nil then
		return 
	end
	if arg1.id == "LUIList" then
		return 
	end
	local registerVal6 = arg0.MemberList.listItems[(arg0.MemberList.firstIndex + arg1.zeroBasedIndex)]:getModel(arg2, "xuid")
	local registerVal7 = Engine.GetModelValue(registerVal6)
	Engine.GiveLeadership(arg2, Enum.LobbyType.LOBBY_TYPE_PRIVATE, registerVal7)
end

function CoD.LobbyBase.SplitscreenControllersAllowed()
	local registerVal0 = CoD.LobbyBase.SplitscreenPlayAvailable()
	if registerVal0 == false then
		return false
	end
	return CoD.LobbyBase.SplitscreenLobbyRoomAvailable()
end

function CoD.LobbyBase.SplitscreenPlayAvailable()
	local registerVal0 = IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if not registerVal0 then
		return false
	end
	local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 then
		registerVal1 = IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
		if not registerVal1 then
			return false
		end
		registerVal1 = IsMultiplayer()
		registerVal1 = IsLive()
		registerVal1 = Engine.GameModeIsMode(CoD.GAMEMODE_PRIVATE_MATCH)
		if registerVal1 and Enum.LobbyType.LOBBY_TYPE_GAME or registerVal1 then
			registerVal1 = IsZombies()
			registerVal1 = IsLive()
			registerVal1 = Engine.GameModeIsMode(CoD.GAMEMODE_PRIVATE_MATCH)
			if registerVal1 and registerVal1 and not registerVal1 then
				return false
			end
		end
		registerVal1 = CompetitiveSettingsEnabled()
		if registerVal1 then
			return false
		end
	end
	return true
end

function CoD.LobbyBase.SplitscreenLobbyRoomAvailable()
	local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal1 then
	end
	registerVal1 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal2 = Engine.GetLobbyMaxClients(Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal3 = Engine.GetUsedControllerCount()
	local registerVal4 = Dvar.lobby_maxLocalPlayers:get()
	local registerVal5 = Engine.LobbyJoinCount()
	if 2.000000 <= registerVal3 and Enum.LobbyType.LOBBY_TYPE_GAME == Enum.LobbyType.LOBBY_TYPE_GAME and (registerVal1 + registerVal5) ~= registerVal3 then
		return false
	end
	if registerVal1 >= registerVal2 or registerVal3 >= registerVal4 then
	end
	return true
end

function CoD.LobbyBase.UnusedGamepadButton(arg0, arg1)
	local registerVal2 = CoD.LobbyBase.SplitscreenControllersAllowed()
	if not registerVal2 then
		return 
	end
	registerVal2 = LuaUtils.LobbyProcessQueueEmpty()
	if not registerVal2 then
		return 
	end
	local registerVal3 = Engine.IsLobbyClientActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal3 then
	end
	registerVal3 = Engine.IsControllerBeingUsed(arg1)
	if not registerVal3 then
		local registerVal4 = IsLive()
		registerVal4 = Engine.IsUserGuest(arg1)
		if registerVal4 and not registerVal4 then
			CoD.OverlayUtility.CreateOverlay(arg1, arg0, "ConnectingToDemonware")
		end
		registerVal4 = Engine.SigninLocalClient(arg1, Enum.LobbyType.LOBBY_TYPE_GAME)
		if registerVal4 ~= nil then
			if registerVal4 == Enum.AddLocalClientResult.ADD_LOCAL_CLIENT_RESULT_NO_FILES_LOCAL then
				CoD.OverlayUtility.CreateOverlay(arg1, arg0, "LoadingProfile")
			else
				if registerVal4 == Enum.AddLocalClientResult.ADD_LOCAL_CLIENT_RESULT_NO_FILES_LIVE and not true then
					CoD.OverlayUtility.CreateOverlay(arg1, arg0, "ConnectingToDemonware")
				end
			end
		end
	end
end

function CoD.LobbyBase.RemoveLocalPlayerFromTheLobby(arg0, arg1)
	Engine.SetLocalClientToInactive(arg1)
end

function CoD.LobbyBase.LaunchGame(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3.controller = arg1
	registerVal3.lobbyType = arg2
	Engine.LobbyVM_CallFunc("LaunchGame", registerVal3)
end

function CoD.LobbyBase.LaunchDemo(arg0, arg1, arg2)
	local registerVal3 = {}
	registerVal3.controller = arg1
	registerVal3.lobbyType = arg2
	Engine.LobbyVM_CallFunc("LaunchDemo", registerVal3)
end

function CoD.LobbyBase.LaunchDOA(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModeName()
	local registerVal4 = Engine.GetLobbyNetworkMode()
	if registerVal4 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
		local registerVal6 = Engine.GetGlobalModel()
		local registerVal5 = Engine.CreateModel(registerVal6, "cpLobby")
		Engine.SetModelValue(registerVal5, "lan")
	else
		registerVal6 = Engine.GetGlobalModel()
		registerVal5 = Engine.CreateModel(registerVal6, "cpLobby")
		Engine.SetModelValue(registerVal5, "public")
	end
	registerVal5 = Engine.GetGlobalModel()
	registerVal4 = Engine.GetModel(registerVal5, "cpLobby")
	registerVal5 = Engine.GetModelValue(registerVal4)
	registerVal6 = Engine.GetLobbyNetworkMode()
	if registerVal6 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
	end
	if true == true then
		if registerVal5 == "public" then
		else
			if registerVal5 == "custom" then
			else
			end
		end
	end
	SetMap(arg1, "cp_doa_bo3", true)
	Engine.SetGametype("doa")
	if true then
		Engine.SetPlaylistID(211.000000)
	end
	local registerVal11 = Engine.GetGlobalModel()
	local registerVal10 = Engine.CreateModel(registerVal11, "lobbyRoot.doaSkipSearch")
	if arg2 ~= true then
	end
	Engine.SetModelValue(registerVal10, true)
	NavigateToLobby(arg0, ((registerVal3 .. "DOA") .. "LobbyLANCustomGame"), true, arg1)
end

function CoD.LobbyBase.SetPrompt(arg0, arg1, arg2)
	CoD.LobbyBase.Prompt.Title = arg0
	CoD.LobbyBase.Prompt.Description = arg1
	CoD.LobbyBase.Prompt.Options = arg2
end

function CoD.LobbyBase.SetPlaylistName(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyPlaylist")
	registerVal3 = Engine.CreateModel(registerVal2, "name")
	Engine.SetModelValue(registerVal3, Engine.ToUpper(arg0))
	local registerVal4 = Engine.CreateModel(registerVal2, "kickerText")
	Engine.SetModelValue(registerVal4, "")
end

function CoD.LobbyBase.GetActivityString(arg0)
	local registerVal1, registerVal2, registerVal3 = pairs(CoD.LobbyBase.LeaderActivity)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.index == arg0 then
			Engine.Localize(value5.str)
			return Engine.Localize("MENU_PARTY_LEADER", Engine.Localize)
		end
	end
	return ""
end

function CoD.LobbyBase.LeaderActivityInit()
	local registerVal0 = Engine.GetLobbyUIScreen()
	local registerVal1 = LobbyData:UITargetFromId(registerVal0)
	if registerVal1.lobbyType then
	end
	if registerVal1.lobbyType == Enum.LobbyType.LOBBY_TYPE_INVALID then
		return 
	end
	local registerVal3 = {}
	registerVal3.lobbyType = registerVal1.lobbyType
	registerVal3.activity = 0.000000
	CoD.LobbyBase.LeaderActivityChanged(nil, registerVal3)
end

function CoD.LobbyBase.LeaderActivityChanged(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "lobbyRoot")
	registerVal3 = Engine.CreateModel(registerVal2, "leaderActivity")
	local registerVal4 = Engine.IsLobbyHost(arg1.lobbyType)
	if registerVal4 then
		Engine.SetModelValue(registerVal3, Engine.Localize("MENU_YOU_ARE_PARTY_LEADER"))
	else
		Engine.SetModelValue(registerVal3, CoD.LobbyBase.GetActivityString(arg1.activity))
	end
	return true
end

function CoD.LobbyBase.SetLeaderActivity(arg0, arg1)
	local registerVal2 = Engine.IsAnyLocalClientLeader(Enum.LobbyType.LOBBY_TYPE_GAME)
	if not registerVal2 then
		return 
	end
	if arg1 ~= nil then
		Engine.SetLeaderActivity(arg0, arg1.index)
	else
		Engine.SetLeaderActivity(arg0, 0.000000)
	end
end

function CoD.LobbyBase.ResetLeaderActivity(arg0)
	CoD.LobbyBase.SetLeaderActivity(arg0, CoD.LobbyBase.LeaderActivity.READY)
end

function CoD.LobbyBase.OpenFindMatch(arg0, arg1, arg2)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.VIEWING_PLAYLISTS)
	CoD.PlaylistCategoryFilter = "playermatch"
	local registerVal3 = OpenOverlay(arg0, "PlaylistSelection", arg1)
	local function __FUNC_8393_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "close", __FUNC_8393_)
end

function CoD.LobbyBase.OpenCompetitivePlaylist(arg0, arg1)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.VIEWING_PLAYLISTS)
	CoD.PlaylistCategoryFilter = "arenamatch"
	local registerVal2 = OpenOverlay(arg0, "Competitive_Playlist", arg1)
	local function __FUNC_85F1_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_85F1_)
end

function CoD.LobbyBase.OpenFreerunMapSelection(arg0, arg1)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.CHOOSING_MAP)
	local registerVal2 = OpenOverlay(arg0, "Freerun_ChangeMap", arg1)
	local function __FUNC_880D_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_880D_)
end

function CoD.LobbyBase.OpenMPPublicLobbyLeaderboard(arg0, arg1)
	local registerVal2 = Engine.GetPlaylistInfoByID(Engine.GetPlaylistID())
	if not registerVal2 then
		return 
	end
	CoD.perController[arg1].isInLobbyLeaderboard = true
	local registerVal5 = Engine.GetPlaylistCategoryIdByName("core")
	if registerVal2.playlist.category == registerVal5 then
	else
		registerVal5 = Engine.GetPlaylistCategoryIdByName("hardcore")
		if registerVal2.playlist.category == registerVal5 then
		end
	end
	local registerVal7 = Engine.GetGlobalModel()
	local registerVal6 = Engine.CreateModel(registerVal7, "combatRecordMode")
	Engine.SetModelValue(registerVal6, "mp")
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "leaderboardCategoryName")
	Engine.SetModelValue(registerVal6, "hardcore")
	registerVal6 = Engine.ToUpper(Dvar.ui_gametype:get())
	if "hardcore" == "hardcore" then
	end
	SetGlobalModelValue("leaderboardDef", (("LB_MP_GM_" .. registerVal6) .. "_HC"))
	registerVal6 = OpenOverlay(arg0, "Leaderboard_GameMode", arg1)
	local function __FUNC_8DA0_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
		CoD.perController[arg1].isInLobbyLeaderboard = false
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "close", __FUNC_8DA0_)
	registerVal7 = LeaderboardsDownForMaintanence()
	if registerVal7 then
		OpenLeaderboardMaintanencePopup(registerVal6, arg1)
	end
end

function CoD.LobbyBase.OpenMPCustomLobbyLeaderboard(arg0, arg1)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "combatRecordMode")
	Engine.SetModelValue(registerVal3, "mp")
	registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.CreateModel(registerVal4, "leaderboardCategoryName")
	Engine.SetModelValue(registerVal3, "custom")
	registerVal4 = Dvar.ui_gametype:get()
	local registerVal2 = Engine.ToUpper(("LB_MP_CG_" .. registerVal4))
	local registerVal5 = {}
	registerVal5 = {"LB_MP_CG_GENERAL", registerVal2}
	CoD.LeaderboardUtility.CustomLeaderboardButtonPrepare(arg1, registerVal5)
	SetGlobalModelValue("leaderboardDef", registerVal2)
	registerVal3 = OpenOverlay(arg0, "Leaderboard_GameMode", arg1)
	local function __FUNC_9277_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
		CoD.perController[arg1].isInLobbyLeaderboard = false
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "close", __FUNC_9277_)
	registerVal4 = LeaderboardsDownForMaintanence()
	if registerVal4 then
		OpenLeaderboardMaintanencePopup(registerVal3, arg1)
	end
end

function CoD.LobbyBase.OpenFreerunLeaderboards(arg0, arg1)
	local registerVal2 = Dvar.ui_mapname:get()
	local registerVal3 = IsFreeRunMap(registerVal2)
	if not registerVal3 then
		return ""
	end
	if registerVal2 and CoD.mapsTable[registerVal2] and CoD.mapsTable[registerVal2].freerunTrackIndex then
	end
	local registerVal5 = tostring((CoD.mapsTable[registerVal2].freerunTrackIndex + 1.000000))
	local registerVal7 = Engine.GetGlobalModel()
	local registerVal6 = Engine.CreateModel(registerVal7, "combatRecordMode")
	Engine.SetModelValue(registerVal6, "mp")
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "leaderboardCategoryName")
	Engine.SetModelValue(registerVal6, "freerun")
	CoD.LeaderboardUtility.LeaderboardGameModeButtonPrepare(arg1)
	SetGlobalModelValue("leaderboardDef", ("LB_MP_GM_FR_FREERUN_0" .. registerVal5))
	registerVal5 = OpenOverlay(arg0, "Leaderboard_GameMode", arg1)
	local function __FUNC_97DF_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "close", __FUNC_97DF_)
	registerVal6 = LeaderboardsDownForMaintanence()
	if registerVal6 then
		OpenLeaderboardMaintanencePopup(registerVal5, arg1)
	end
end

function CoD.LobbyBase.OpenArenaMasterLeaderboards(arg0, arg1)
	local registerVal2 = Engine.GetCurrentArenaSlot()
	if registerVal2 < 0.000000 then
		return 
	end
	local registerVal5 = tostring(registerVal2)
	local registerVal7 = Engine.GetGlobalModel()
	local registerVal6 = Engine.CreateModel(registerVal7, "combatRecordMode")
	Engine.SetModelValue(registerVal6, "mp")
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "leaderboardCategoryName")
	Engine.SetModelValue(registerVal6, "arena")
	CoD.LeaderboardUtility.LeaderboardGameModeButtonPrepare(arg1)
	SetGlobalModelValue("leaderboardDef", ("LB_MP_ARENA_MASTERS_0" .. registerVal5))
	registerVal5 = OpenOverlay(arg0, "Leaderboard_GameMode", arg1)
	local function __FUNC_9C31_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "close", __FUNC_9C31_)
	registerVal6 = LeaderboardsDownForMaintanence()
	if registerVal6 then
		OpenLeaderboardMaintanencePopup(registerVal5, arg1)
	end
end

function CoD.LobbyBase.OpenDOALeaderboards(arg0, arg1)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "combatRecordMode")
	Engine.SetModelValue(registerVal3, "doa")
	registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.CreateModel(registerVal4, "leaderboardCategoryName")
	Engine.SetModelValue(registerVal3, nil)
	local registerVal2 = OpenPopup(arg0, "Leaderboard_Main", arg1)
	local function __FUNC_9F2A_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_9F2A_)
	registerVal3 = LeaderboardsDownForMaintanence()
	if registerVal3 then
		OpenLeaderboardMaintanencePopup(registerVal2, arg1)
	end
end

function CoD.LobbyBase.GoToFindingGames(arg0, arg1)
	local registerVal2 = Engine.GetModeName()
	if registerVal2 == "Invalid" then
		Engine.PrintError(Enum.consoleLabel.LABEL_LOBBY, "GoToFindingGames: Invalid mode in matchmaking, Engine.GetModeName() == 'Invalid'.
")
		return 
	end
	NavigateToLobby_SelectionList(arg0, nil, arg1.controller, (registerVal2 .. "LobbyOnlinePublicGame"), arg0)
	return true
end

function CoD.LobbyBase.OpenTheaterSelectFilm(arg0, arg1)
	CoD.FileshareUtility.InitModels()
	OpenPopup(arg0, "Theater_SelectFilm", arg1)
end

function CoD.LobbyBase.OpenCAC(arg0, arg1)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.MODIFYING_CAC)
	Engine.PlaySound("cac_enter_cac")
	CoD.CACUtility.SetDefaultCACRoot(arg1)
	if not CoD.UnlockablesTable then
		local registerVal3 = CoD.GetUnlockablesTable(arg1)
		CoD.UnlockablesTable = registerVal3
	end
	CoD.CraftUtility.Gunsmith.ParseDDL(arg1, Enum.StorageFileType.STORAGE_GUNSMITH)
	local registerVal2 = IsClassSetsAvailableForCurrentGameMode()
	if registerVal2 then
		registerVal2 = Engine.GetCurrentClassSetIndex(arg1)
		local registerVal5 = Engine.GetModelForController(arg1)
		local registerVal4 = Engine.CreateModel(registerVal5, "currentClassSetIndex")
		Engine.SetModelValue(registerVal4, registerVal2)
		CopyLoadoutFromClassSet(arg1)
	else
		registerVal4 = Engine.GetModelForController(arg1)
		registerVal3 = Engine.CreateModel(registerVal4, "currentClassSetIndex")
		Engine.SetModelValue(registerVal3, 0.000000)
	end
	CoD.CACUtility.ForceStreamAttachmentImages(arg1)
	CoD.CACUtility.ValidateMPLootWeapons(arg1)
	registerVal2 = CoD.OpenCACMenu(arg0, arg1)
	local function __FUNC_A7FE_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_A7FE_)
end

function CoD.LobbyBase.OpenScorestreaks(arg0, arg1)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.MODIFYNG_REWARDS)
	local registerVal2 = OpenPopup(arg0, "Scorestreaks", arg1)
	local function __FUNC_AA16_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_AA16_)
end

function CoD.LobbyBase.OpenEditCodcasterSettings(arg0, arg1)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.EDITING_CODCASTER_SETTINGS)
	local registerVal2 = OpenPopup(arg0, "EditCodCasterSettings", arg1)
	local function __FUNC_AC41_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_AC41_)
end

function CoD.LobbyBase.OpenTest(arg0, arg1)
	local registerVal2 = OpenPopup(arg0, "MarketplaceTest", arg1)
end

function CoD.LobbyBase.OpenBarracks(arg0, arg1)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.VIEWING_PLAYERCARD)
	local registerVal2 = OpenOverlay(arg0, "Barracks", arg1)
	local function __FUNC_AEC6_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_AEC6_)
end

function CoD.LobbyBase.OpenBubbleGumBuffs(arg0, arg1)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.MODIFYING_BUBBLEGUM)
	local registerVal2 = OpenOverlay(arg0, "BubblegumBuffs", arg1)
	local function __FUNC_B0E5_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_B0E5_)
end

function CoD.LobbyBase.OpenMegaChewFactory(arg0, arg1)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.AT_MEGACHEW_FACTORY)
	local registerVal2 = OpenOverlay(arg0, "MegaChewFactory", arg1)
	local function __FUNC_B306_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_B306_)
end

function CoD.LobbyBase.OpenGobbleGumCookbook(arg0, arg1)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.VIEWING_NEWTONS_COOKBOOK)
	local registerVal2 = OpenOverlay(arg0, "GobbleGumCookbook", arg1)
	local function __FUNC_B52D_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_B52D_)
end

function CoD.LobbyBase.OpenPersonalizeCharacter(arg0, arg1)
	OpenOverlay(arg0, "ChoosePersonalizationCharacter", arg1)
end

function CoD.LobbyBase.OpenChooseCharacterLoadout(arg0, arg1, arg2)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.MODIFYING_HERO)
	if arg2 ~= LuaEnums.CHOOSE_CHARACTER_OPENED_FROM.FIRST_TIME then
		SetFirstTimeSetupComplete_MP(nil, nil, arg1, nil, nil)
	end
	local registerVal4 = OpenOverlay(arg0, "ChooseCharacterLoadout", arg1, arg2)
	local function __FUNC_B882_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "close", __FUNC_B882_)
	return registerVal4
end

function CoD.LobbyBase.OpenPersonalizeCharacter(arg0, arg1)
	NavigateToMenu(arg0, "ChoosePersonalizationCharacter", true, arg1)
end

function CoD.LobbyBase.OpenGenders(arg0, arg1)
	NavigateToMenu(arg0, "ChooseGender", true, arg1)
end

function CoD.LobbyBase.OpenChangeMap(arg0, arg1)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.CHOOSING_MAP)
	local registerVal2 = OpenOverlay(arg0, "ChangeMap", arg1)
	local function __FUNC_BB89_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_BB89_)
end

function CoD.LobbyBase.ZMOpenChangeMap(arg0, arg1, arg2, arg3)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.CHOOSING_MAP)
	local registerVal4 = OpenPopup(arg0, "ZMMapSelection", arg1)
	registerVal4.selectType = arg2
	registerVal4.data = arg3
	local function __FUNC_BDCE_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
		if registerVal4.selectType == CoD.LobbyBase.MapSelect.LAUNCH and registerVal4.mapSelected == true then
			local registerVal0 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_ALL)
			if 1.000000 < registerVal0 then
				LuaUtils.UI_ShowErrorMessageDialog(arg1, "MENU_TOO_MANY_CLIENTS_FOR_SOLO_GAME")
				return 
			end
			registerVal4.mapSelected = nil
			CoD.LobbyBase.LaunchGame(registerVal4, arg1, Enum.LobbyType.LOBBY_TYPE_GAME)
		else
			if registerVal4.selectType == CoD.LobbyBase.MapSelect.NAVIGATE then
				NavigateToLobby_OccludedMenu(registerVal4, element, arg1, registerVal4.data, registerVal4)
			else
				if registerVal4.selectType == CoD.LobbyBase.MapSelect.SELECT then
				end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "close", __FUNC_BDCE_)
end

function CoD.LobbyBase.OpenSetupGame(arg0, arg1, arg2)
	OpenPopup(arg0, arg2, arg1)
end

function CoD.LobbyBase.OpenChangeGameMode(arg0, arg1)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.CHOOSING_GAME_MODE)
	local registerVal2 = OpenOverlay(arg0, "ChangeGameMode", arg1)
	local function __FUNC_C420_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_C420_)
end

function CoD.LobbyBase.OpenEditGameRules(arg0, arg1)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.EDITING_GAME_RULES)
	local registerVal2 = OpenOverlay(arg0, "GameSettings_Main", arg1)
	local function __FUNC_C643_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_C643_)
end

function CoD.LobbyBase.OpenBotSettings(arg0, arg1)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.SETTING_UP_BOTS)
	SetPerControllerTableProperty(arg1, "disableGameSettingsOptions", true)
	local registerVal2 = OpenOverlay(arg0, "GameSettings_Bots", arg1)
	local function __FUNC_C8BF_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_C8BF_)
end

function CoD.LobbyBase.OpenServerSettings(arg0, arg1)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.EDITING_GAME_RULES)
	local registerVal2 = OpenOverlay(arg0, "ServerSettings", arg1)
	local function __FUNC_CADC_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_CADC_)
end

function CoD.LobbyBase.OpenOptions(arg0, arg1)
	Engine.ExecNow(arg1, "disableallclients")
	Engine.ExecNow(arg1, "setclientbeingusedandprimary")
	OpenPopup(arg0, "OptionsMenu", arg1)
end

function CoD.LobbyBase.OpenQuit(arg0, arg1)
	OpenMenu(arg0, "QuitPopup", arg1)
end

function CoD.LobbyBase.OpenWeaponBuildKits(arg0, arg1)
	CoD.LobbyBase.SetLeaderActivity(arg1, CoD.LobbyBase.LeaderActivity.MODIFYING_WEAPON_BUILD_KITS)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "Gunsmith.Mode")
	Engine.SetModelValue(registerVal2, Enum.GunsmithMode.GUNSMITHMODE_WEAPONLIST)
	registerVal3 = CoD.CraftUtility.Gunsmith.ParseDDL(arg1, "cacRoot")
	local registerVal4 = CoD.CraftUtility.Paintjobs.ParseDDL(arg1, Enum.StorageFileType.STORAGE_PAINTJOBS)
	if not registerVal3 then
		return 
	end
	local registerVal5 = IsLobbyNetworkModeLive()
	if registerVal5 and not registerVal4 then
		return 
	end
	registerVal5 = OpenOverlay(arg0, "WeaponBuildKitsCategorySelect", arg1)
	local function __FUNC_D0ED_()
		CoD.LobbyBase.ResetLeaderActivity(arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "close", __FUNC_D0ED_)
end

function CoD.LobbyBase.FindMatch(arg0, arg1)
end

function CoD.LobbyBase.LobbyMapVoteSelect(arg0, arg1, arg2)
	Engine.MapVoteSelect(arg1, arg2)
end

function CoD.LobbyBase.LobbyTeamSelection(arg0, arg1, arg2, arg3)
	if arg3 == nil then
	end
	local registerVal6 = {}
	registerVal6.controller = arg1
	registerVal6.selection = arg2
	registerVal6.xuid = 0.000000
	Engine.LobbyVM_CallFunc("SwitchTeam", registerVal6)
end

function CoD.LobbyBase.LobbyLANServerBrowserFilterUpdateEvent(arg0, arg1)
	local registerVal2 = Engine.LobbyServerListGetMainModeFilter()
	if registerVal2 == Enum.LobbyMainMode.LOBBY_MAINMODE_CP then
	else
		if registerVal2 == Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
		else
			if registerVal2 == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
			end
		end
	end
	arg0.currentFilter = "zm"
	local registerVal6 = {}
	registerVal6.name = "filter_mode_changed"
	registerVal6.controller = arg1
	arg0:processEvent(registerVal6)
end

function CoD.LobbyBase.LobbyLANServerBrowserSetMainModeFilter(arg0, arg1)
	local registerVal2 = Engine.LobbyServerListGetMainModeFilter()
	if registerVal2 == Enum.LobbyMainMode.LOBBY_MAINMODE_INVALID then
	else
		if Enum.LobbyMainMode.LOBBY_MAINMODE_MP == Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
		else
			if Enum.LobbyMainMode.LOBBY_MAINMODE_ZM == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
			else
				if Enum.LobbyMainMode.LOBBY_MAINMODE_CP == Enum.LobbyMainMode.LOBBY_MAINMODE_CP then
				else
				end
			end
		end
	end
	local registerVal3 = Dvar.ui_execdemo_cp:get()
	if registerVal3 == true then
	end
	registerVal3 = Dvar.ui_execdemo_e3:get()
	registerVal3 = Dvar.ui_execdemo_e3_host:get()
	if registerVal3 == true or registerVal3 == true then
	end
	Engine.LobbyServerListSetMainModeFilter(Enum.LobbyMainMode.LOBBY_MAINMODE_MP)
	CoD.LobbyBase.LobbyLANServerBrowserFilterUpdateEvent(arg0, arg1)
end


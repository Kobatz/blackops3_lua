-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.StartMenu.StartMenu_Main")
require("ui.uieditor.menus.Social.Social_Main")
require("ui.uieditor.menus.StartMenu.StartMenu_Options_Network")
require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.Lobby.Common.LeftContainer")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberList")
require("ui.uieditor.widgets.Lobby.LobbySlide.LobbySlideSelectedPlayerInfo")
require("ui.uieditor.widgets.Lobby.MapVote.MapVote")
require("ui.uieditor.widgets.Debug.SessionSearchQoSJoin")
require("ui.uieditor.widgets.Footer.fe_FooterContainer")
require("ui.uieditor.widgets.Chat.ChatClientContainer")
require("ui.uieditor.widgets.HUD.CenterConsole.CenterConsole")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
require("ui.uieditor.menus.Spinner")
require("ui.uieditor.widgets.Debug.LobbyDebugOverlay")
local function __FUNC_5AE_(arg0, arg1)
	if CoD.useMouse then
		arg0.ClientList:setForceMouseEventDispatch(true)
		arg0:setForceMouseEventDispatch(true)
		arg0.defaultNav = "left"
	end
	local function __FUNC_85C_(arg0, arg1)
		return true
	end

	arg0:registerEventHandler("unused_gamepad_button", __FUNC_85C_)
	local function __FUNC_890_(arg1, arg2)
		local registerVal4 = {}
		registerVal4.name = "update_state"
		registerVal4.menu = arg0
		arg0.feFooterContainer:processEvent(registerVal4)
		if CoD.useMouse then
			local registerVal2 = IsMenuInState(arg0, "Right")
			if registerVal2 then
				arg0.ClientList.lobbyList.itemStencil:setMouseDisabled(false)
			else
				registerVal2 = IsMenuInState(arg0, "Left")
				if registerVal2 then
				end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_890_)
	local registerVal2 = LuaUtils.GetSteamServerPasswordModel("showPasswordInput")
	Engine.SetModelValue(registerVal2, 0.000000)
	local function __FUNC_A70_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if 0.000000 < registerVal1 then
			ShowKeyboard(arg0, element, arg1, "KEYBOARD_TYPE_SERVER_CLIENT_PASSWORD")
		end
	end

	arg0:subscribeToModel(registerVal2, __FUNC_A70_)
	local function __FUNC_B55_(arg0, arg1)
		if arg1.type == Enum.KeyboardType.KEYBOARD_TYPE_SERVER_CLIENT_PASSWORD then
			LuaUtils.HandleSteamClientPasswordComplete()
			return true
		end
	end

	arg0:registerEventHandler("ui_keyboard_input", __FUNC_B55_)
end

local function __FUNC_C69_(arg0, arg1)
	if arg1 == "auto" then
		local registerVal2 = Engine.GetMostRecentPlayedMode(arg0)
		local registerVal3 = Engine.GetAbbreviationForMode(registerVal2)
		registerVal3 = Engine.SessionModeIsMode(CoD.SESSIONMODE_SYSTEMLINK)
		if registerVal3 == true then
		end
		registerVal3 = IsCustomLobby()
		if registerVal3 then
		end
	end
	return ((registerVal3 .. "_local") .. "_custom")
end

local function __FUNC_E09_(arg0, arg1, arg2)
	local registerVal3 = IsFirstTimeSetup(arg1, Enum.eModes.MODE_MULTIPLAYER)
	if not CoD.isZombie and registerVal3 then
		registerVal3 = Engine.IsCampaignGame()
		registerVal3 = IsFirstTimeSetup(arg1, Enum.eModes.MODE_CAMPAIGN)
		if arg1 or not registerVal3 then
			return 
		end
	end
	if arg2 == true and arg0.occludedBy.occludedBy.disableLeaderChangePopupShutdown ~= nil then
		return 
	end
	if arg0.occludedBy.occludedBy.menuName == "Spinner" then
		return 
	end
	local registerVal6 = arg0.occludedBy.occludedBy:getOwner()
	if not registerVal6 then
	end
	local registerVal4 = GoBack(arg0.occludedBy.occludedBy, arg1)
	local registerVal7 = Engine.GetLocalClientNum(arg1)
	Engine.SendClientScriptNotify(arg1, ("menu_change" .. registerVal7), "Main", "closeToMenu")
	LuaUtils.MessageDialogForceSubscriptionFire()
	return 
end

local function __FUNC_11D2_()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "lobbyRoot")
	registerVal1 = Engine.CreateModel(registerVal0, "onlinePlayerCount")
	local registerVal3 = Engine.CurrentSessionMode()
	if registerVal3 == Enum.eModes.MODE_INVALID then
		local registerVal4 = Engine.GetPlayerGroupCount("online")
	else
		if registerVal3 == Enum.eModes.MODE_CAMPAIGN then
			registerVal4 = Engine.GetPlayerGroupCount("online/cp")
		else
			if registerVal3 == Enum.eModes.MODE_MULTIPLAYER then
				registerVal4 = Engine.GetPlayerGroupCount("online/mp")
			else
				if registerVal3 == Enum.eModes.MODE_ZOMBIES then
					registerVal4 = Engine.GetPlayerGroupCount("online/zm")
				end
			end
		end
	end
	Engine.SetModelValue(registerVal1, registerVal4)
end

local function __FUNC_151F_(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.GetModel(registerVal2, "aarType")
	registerVal2 = Engine.GetModelValue(registerVal1)
	local registerVal3 = LobbyData:UITargetFromId(LobbyData.GetLobbyNav())
	if registerVal1 and registerVal3 then
		if registerVal3.id == LobbyData.UITargets.UI_MODESELECT.id then
			Engine.SetModelValue(registerVal1, "")
			return 
		end
		local registerVal5 = IsLAN()
		if not registerVal5 then
			if registerVal3.id ~= LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id or registerVal2 == "public" then
				if registerVal3.id == LobbyData.UITargets.UI_MPLOBBYONLINECUSTOMGAME.id and registerVal2 ~= "custom" then
					Engine.SetModelValue(registerVal1, "")
				end
			end
		end
	end
end

local function __FUNC_184B_(arg0, arg1)
	arg0.anyControllerAllowed = true
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "lobbyRoot")
	LuaUtils.UnlockLobby()
	registerVal3 = Engine.CreateModel(registerVal2, "inspectionView")
	Engine.SetModelValue(registerVal3, false)
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.CreateModel(registerVal5, "autoevents")
	registerVal5 = Engine.CreateModel(registerVal4, "cycled")
	local registerVal6 = Engine.CreateModel(registerVal2, "onlinePlayerCountUpdate")
	local registerVal7 = Engine.GetModel(registerVal2, "lobbyNav")
	if arg0.onlinePlayerCountUpdateSubscription then
		arg0:removeSubscription(arg0.onlinePlayerCountUpdateSubscription)
	end
	local function __FUNC_1BBC_(arg0)
		__FUNC_11D2_()
	end

	local registerVal8 = arg0:subscribeToModel(registerVal6, __FUNC_1BBC_, true)
	arg0.onlinePlayerCountUpdateSubscription = registerVal8
	if arg0.onlinePlayerCountNavSubscription then
		arg0:removeSubscription(arg0.onlinePlayerCountNavSubscription)
	end
	local function __FUNC_1BF0_(arg2)
		__FUNC_11D2_()
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == LobbyData.UITargets.UI_ZMLOBBYONLINE.id then
			local function __FUNC_1DEF_()
				CoD.BubbleGumBuffUtility.ScheduleTimerTick(arg1)
			end

			local registerVal3 = LUI.UITimer.newElementTimer(100.000000, false, __FUNC_1DEF_)
			arg0.GobbleGumCookbookTimer = registerVal3
			arg0:addElement(arg0.GobbleGumCookbookTimer)
		else
			if arg0.GobbleGumCookbookTimer then
				arg0.GobbleGumCookbookTimer:close()
				arg0.GobbleGumCookbookTimer = nil
			end
		end
	end

	registerVal8 = arg0:subscribeToModel(registerVal7, __FUNC_1BF0_, false)
	arg0.onlinePlayerCountNavSubscription = registerVal8
end

local function __FUNC_1E82_(arg0, arg1)
	local registerVal2 = IsFirstTimeSetup(arg1, Enum.eModes.MODE_MULTIPLAYER)
	if registerVal2 then
		local registerVal3 = Engine.GetGlobalModel()
		registerVal2 = Engine.CreateModel(registerVal3, "heroSelectionTutorial")
		Engine.SetModelValue(registerVal2, true)
		OpenOverlay(arg0, "WelcomeMenu", arg1, nil, nil)
	end
end

local function __FUNC_202B_(arg0, arg1)
	Engine.SetDvar("ui_blocksaves", "0")
	local registerVal2 = Engine.GetLobbyUIScreen()
	local registerVal3 = LuaUtils.IsDOATarget(registerVal2)
	if not registerVal3 then
		Engine.SetGametype("coop")
	end
	Engine.SetDvar("ui_mapname", "cp_doa_bo3")
	Engine.ClearMapVoteData()
	Engine.SetDvar("cp_queued_level", "")
	local registerVal5 = Dvar.ui_mapname:get()
	SetMap(arg1, registerVal5, false)
end

local function __FUNC_2267_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "heroSelectionTutorial")
	Engine.SetModelValue(registerVal2, false)
	local registerVal4 = {}
	local registerVal5 = Dvar.hls_quality_available:get()
	registerVal4.availableQualities = registerVal5
	CoD.LiveEventNewQualities(registerVal4)
	registerVal3 = IsGameTypeDOA()
	if registerVal3 then
		__FUNC_202B_(arg0, arg1)
	end
	Engine.SetDvar("cg_isGameplayActive", "0")
	Dvar.groups_enabled:set(true)
	registerVal4 = Engine.GetMaxControllerCount()
	for index3=0.000000, (registerVal4 - 1.000000), 1.000000 do
		Engine.ExecNow(index3, "execcontrollerbindings")
	end
	arg0.tryOpenFirstTimeFlow = __FUNC_1E82_
	arg0.LeftContainer.navigation = nil
	arg0.LeftContainer.navigation = {}
	arg0.LeftContainer.navigation.right = arg0.ClientList
	arg0.LeftContainer.navigation.down = arg0.MapVote
	arg0.LeftContainer.navigation.up = arg0.MapVote
	arg0.ClientList.navigation = nil
	arg0.ClientList.navigation = {}
	arg0.ClientList.navigation.left = arg0.LeftContainer
	arg0.MapVote.navigation = nil
	arg0.MapVote.navigation = {}
	arg0.MapVote.navigation.up = arg0.LeftContainer
	arg0.MapVote.navigation.down = arg0.LeftContainer
	arg0.MapVote.navigation.right = arg0.ClientList
	arg0:clearSavedState()
	CoD.LobbyBase.RegisterEventHandlers(arg0)
	local registerVal6 = Engine.GetGlobalModel()
	registerVal5 = Engine.GetModel(registerVal6, "lobbyRoot.spinnerActive")
	local function __FUNC_311A_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == true then
			OpenPopup(arg0, "Spinner", arg1, nil, arg0)
		else
			local registerVal4 = {}
			registerVal4.name = "spinner_close"
			arg0:dispatchEventToRoot(registerVal4)
			if arg0.openOverlayAfterSpinner then
				OpenOverlay(arg0, arg0.openOverlayAfterSpinner, arg0.openOverlayAfterSpinnerController)
				arg0.openOverlayAfterSpinner = nil
				arg0.openOverlayAfterSpinnerController = nil
			end
		end
	end

	arg0:subscribeToModel(registerVal5, __FUNC_311A_, true)
	local function __FUNC_32DD_()
		local registerVal1 = Engine.GetMaxControllerCount()
		for index0=0.000000, (registerVal1 - 1.000000), 1.000000 do
			local registerVal4 = Engine.IsControllerBeingUsed(index0)
			registerVal4 = Engine.StorageGetBuffer(index0, Enum.StorageFileType.STORAGE_MP_LOADOUTS)
			local registerVal5 = registerVal4.cacLoadouts.characterContext.characterIndex:get()
			local registerVal6 = Engine.GetHeroList(Enum.eModes.MODE_MULTIPLAYER)
			local registerVal7 = CoDShared.IsLootHero(registerVal6[(registerVal5 + 1.000000)])
			if registerVal4 and registerVal4 and registerVal7 then
				registerVal7 = Engine.GetHeroBundleInfo(Enum.eModes.MODE_MULTIPLAYER, registerVal5)
				if registerVal7 then
					for index8=0.000000, (Enum.CharacterTauntTypes.TAUNT_TYPE_COUNT - 1.000000), 1.000000 do
						local registerVal12 = CoD.CCUtility.TauntsData.GetTauntCount(registerVal7, index8)
						if 0.000000 < registerVal12 then
							registerVal4.cacLoadouts.characters[registerVal5].selectedTaunts[CoD.CCUtility.TauntsData.TauntTypeStatArray[(index8 + 1.000000)]]:set(math.random(registerVal12))
						else
							registerVal4.cacLoadouts.characters[registerVal5].selectedTaunts[CoD.CCUtility.TauntsData.TauntTypeStatArray[(index8 + 1.000000)]]:set(0.000000)
						end
					end
				end
				UploadStats(arg0, index0)
			end
		end
	end

	local registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.CreateModel(registerVal7, "lobbyRoot.lobbyNav")
	local function __FUNC_3805_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == LobbyData.UITargets.UI_MAIN.id then
			local registerVal2 = CoD.Menu.safeCreateMenu("Main", arg1)
			local registerVal3 = arg0:getParent()
			registerVal3:addElement(registerVal2)
			arg0:close()
			return 
		else
			if registerVal1 == LobbyData.UITargets.UI_MPLOBBYMAIN.id then
				CoD.CACUtility.ForceStreamAttachmentImages(arg1)
				registerVal3 = Engine.GetMaxControllerCount()
				for index2=0.000000, (registerVal3 - 1.000000), 1.000000 do
					local registerVal6 = Engine.IsControllerBeingUsed(index2)
					registerVal6 = Engine.GetXUID(index2)
					if registerVal6 and not {}[registerVal6] then
						{}[registerVal6] = true
						CoD.CACUtility.ValidateMPClasses(index2)
						CoD.CACUtility.ValidateMPLootWeapons(index2)
					end
				end
			else
				if registerVal1 == LobbyData.UITargets.UI_ZMLOBBYONLINE.id then
					CoD.CACUtility.ForceStreamAttachmentImages(arg1)
					registerVal3 = Engine.GetMaxControllerCount()
					for index2=0.000000, (registerVal3 - 1.000000), 1.000000 do
						registerVal6 = Engine.IsControllerBeingUsed(index2)
						registerVal6 = Engine.GetXUID(index2)
						if registerVal6 and not {}[registerVal6] then
							{}[registerVal6] = true
							CoD.CACUtility.ValidateZMBGBEntitlement(index2)
						end
					end
				else
					if registerVal1 == LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id then
						CoD.CACUtility.ForceStreamAttachmentImages(arg1)
						__FUNC_32DD_()
					else
						if registerVal1 == LobbyData.UITargets.UI_ZMLOBBYONLINECUSTOMGAME.id then
							Engine.SetPlaylistID(150.000000)
							Engine.RunPlaylistRules(arg1)
						else
							if registerVal1 == LobbyData.UITargets.UI_MPLOBBYONLINECUSTOMGAME.id or registerVal1 == LobbyData.UITargets.UI_MPLOBBYONLINEARENA.id then
								CoD.CACUtility.ForceStreamAttachmentImages(arg1)
							end
						end
					end
				end
			end
		end
		DisableAllMenuInput(arg0, false)
		registerVal3 = Engine.GetGlobalModel()
		registerVal2 = Engine.CreateModel(registerVal3, "pubstorageFilesChanged")
		Engine.ForceNotifyModelSubscriptions(registerVal2)
		CoD.PlayFrontendMusicForLobby(registerVal1)
		__FUNC_151F_(arg1)
		CoD.PrestigeUtility.ResetForStarterPack(arg0, arg1)
		registerVal3 = LobbyData:UITargetFromId(registerVal1)
		local registerVal4 = Engine.DvarBool(0.000000, "probation_league_enabled")
		if registerVal4 and registerVal3.isGame then
			if registerVal3.eGameModes == Enum.eGameModes.MODE_GAME_MATCHMAKING_PLAYLIST or registerVal3.eGameModes == Enum.eGameModes.MODE_GAME_LEAGUE then
				registerVal4 = Engine.ProbationCheckForProbation(arg1, registerVal3.eGameModes)
				if registerVal4 then
					registerVal6 = {}
					registerVal6.controller = arg1
					registerVal6.withParty = LuaEnums.LEAVE_WITH_PARTY.WITHOUT
					Engine.LobbyVM_CallFunc("GoBack", registerVal6)
					if registerVal3.eGameModes == Enum.eGameModes.MODE_GAME_MATCHMAKING_PLAYLIST then
						LuaUtils.UI_ShowErrorMessageDialog(arg1, "MENU_JOIN_DENIED_PUBLIC_PROBATION")
					else
						LuaUtils.UI_ShowErrorMessageDialog(arg1, "MENU_JOIN_DENIED_ARENA_PROBATION")
					end
				end
			end
		end
		if not registerVal3.isGame and registerVal3.eGameModes ~= Enum.eGameModes.MODE_GAME_LEAGUE then
			LuaUtils.UnlockLobby()
		end
		if registerVal3.eGameModes == Enum.eGameModes.MODE_GAME_LEAGUE then
			local registerVal5 = Engine.GetMaxControllerCount()
			for index4=0.000000, (registerVal5 - 1.000000), 1.000000 do
				CoD.ArenaUtility.CheckSeason(index4)
			end
		end
	end

	arg0:subscribeToModel(registerVal6, __FUNC_3805_, false)
	registerVal7 = Engine.GetModelValue(registerVal6)
	CoD.PlayFrontendMusicForLobby(registerVal7)
	if registerVal7 and registerVal7 == LobbyData.UITargets.UI_MPLOBBYONLINEPUBLICGAME.id then
		__FUNC_32DD_()
	end
	local registerVal9 = Engine.GetGlobalModel()
	local registerVal8 = Engine.CreateModel(registerVal9, "lobbyRoot.Pregame")
	registerVal9 = Engine.CreateModel(registerVal8, "Update")
	local registerVal10 = Engine.CreateModel(registerVal8, "state")
	local registerVal11 = Engine.CreateModel(registerVal8, "closeAAR")
	local function __FUNC_4512_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == nil then
			return 
		end
		if registerVal1 ~= Enum.LobbyPregameState.LOBBY_PREGAME_STATE_IDLE then
			__FUNC_E09_(arg0, arg1, false)
			Engine.ForceNotifyModelSubscriptions(registerVal11)
			CoD.ArenaUtility.ArenaPregameStart(arg1)
			NavigateToMenu(arg0, "Pregame_Main", true, arg1)
		end
	end

	arg0:subscribeToModel(registerVal10, __FUNC_4512_)
	local registerVal13 = Engine.GetModelForController(arg1)
	local registerVal12 = Engine.CreateModel(registerVal13, "Pregame")
	registerVal13 = Engine.CreateModel(registerVal12, "clientState")
	local function __FUNC_46F2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		local registerVal2 = LuaUtils.IsArenaMode()
		registerVal2 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		if registerVal2 and registerVal1 == Enum.LobbyClientPregameState.LOBBY_CLIENT_PREGAME_STATE_END and registerVal2 then
			local registerVal4 = {}
			registerVal4.controller = arg1
			registerVal4.withParty = LuaEnums.LEAVE_WITH_PARTY.WITH
			Engine.LobbyVM_CallFunc("GoBack", registerVal4)
		end
	end

	arg0:subscribeToModel(registerVal13, __FUNC_46F2_, false)
	if CoD.isPC then
		__FUNC_5AE_(arg0, arg1)
	end
	local registerVal14 = Dvar.ui_execdemo_cp:get()
	if registerVal14 then
		arg0.Vignette:setAlpha(0.000000)
	end
	local function __FUNC_4964_(arg0)
		local registerVal4 = Engine.GetGlobalModel()
		local registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot.room")
		local function __FUNC_4A3F_(arg2)
			RefreshLobbyRoom(arg0, arg1)
			local registerVal1 = Engine.GetModelValue(arg2)
			local registerVal2 = IsLive()
			if registerVal2 then
				if registerVal1 == "mp_online" or registerVal1 == "zm" then
					registerVal2 = ShouldShowDashboardMessage(arg1)
					if registerVal1 == "zm" and registerVal2 then
						local function __FUNC_4C94_(arg0, arg1, arg2, arg3)
							local registerVal4 = Engine.StorageGetBuffer(arg2, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
							if not registerVal4 then
								return 
							end
							registerVal4.dashboardingTrackingHistory.bufferFull:set(0.000000)
							registerVal4.dashboardingTrackingHistory.currentDashboardingTrackingHistoryIndex:set(0.000000)
							Engine.Exec(arg2, "uploadstats")
							GoBack(arg3, arg2)
						end

						local function __FUNC_4E95_(arg0, arg1, arg2, arg3, arg4)
							__FUNC_4C94_(arg0, arg1, arg2, arg4)
						end

						local registerVal4 = Engine.GetGamertagForController(arg1)
						local registerVal9 = Engine.Localize("ZMUI_PLAYER_MESSAGE", registerVal4)
						OpenGenericSmallPopup(arg0, arg1, "MENU_NOTICE_CAPS", registerVal9, nil, "MENU_OK", __FUNC_4E95_, __FUNC_4C94_)
					else
						GoThroughZMHDPopups(arg0, arg1)
					end
				end
			end
		end

		arg0:subscribeToModel(registerVal3, __FUNC_4A3F_)
	end

	local function __FUNC_4ED8_(arg0, arg1)
		local registerVal2 = arg0.m_eventHandlers.menu_opened(arg0, arg1)
		local registerVal3 = __FUNC_4964_(arg0, arg1)
		return registerVal2
	end

	arg0.m_eventHandlers.menu_opened = __FUNC_4ED8_
	local registerVal19 = Engine.GetGlobalModel()
	local registerVal18 = Engine.CreateModel(registerVal19, "lobbyRoot.lobbyGameMode")
	local function __FUNC_4F34_(arg2)
		__FUNC_E09_(arg0, arg1, true)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == Enum.eGameModes.MODE_GAME_LEAGUE and CoD.ArenaUtility.ArenaNewSeasonStats then
			OpenSystemOverlay(nil, arg0, arg1, "ArenaNewSeason", nil)
		end
	end

	arg0:subscribeToModel(registerVal18, __FUNC_4F34_, false)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.CreateModel(registerVal19, "lobbyRoot.lobbyMainMode")
	local function __FUNC_50C6_(arg2)
		__FUNC_E09_(arg0, arg1, true)
		Engine.MarkPSDataDirty(arg1, true)
	end

	arg0:subscribeToModel(registerVal18, __FUNC_50C6_, false)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.CreateModel(registerVal19, "lobbyRoot.closePopups")
	local function __FUNC_5149_(arg2)
		__FUNC_E09_(arg0, arg1, false)
	end

	arg0:subscribeToModel(registerVal18, __FUNC_5149_, false)
	if CoD.isPC then
		local function __FUNC_5188_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = LUI.UIElement.GetCorrespondingGamepadButtonString(arg3)
			if registerVal5 == "left" or registerVal5 == "right" then
				arg0.defaultNav = registerVal5
			end
		end

		LUI.OverrideFunction_CallOriginalSecond(arg0, "handleGamepadButtonModelCallback", __FUNC_5188_)
	end
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.CreateModel(registerVal19, "MapVote.timerActive")
	local function __FUNC_526A_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		registerVal1 = Engine.GetModelValue(arg1)
		if arg1 and registerVal1 and registerVal1 ~= 0.000000 then
			registerVal1 = Dvar.ui_mapname:get()
			local registerVal2 = CoD.GetMapValue(registerVal1, "loadingImage", "black")
			if registerVal1 or registerVal1 ~= arg0.mapName then
				arg0.mapName = registerVal1
				local registerVal4 = LUI.UIStreamedImage.new()
				arg0.mapImage = registerVal4
				arg0.mapImage:setLeftRight(true, false, 0.000000, 1.000000)
				arg0.mapImage:setTopBottom(true, false, 0.000000, 1.000000)
				arg0.mapImage:setAlpha(0.000000)
				arg0.mapImage:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
				arg0.mapImage:setImage(RegisterImage(registerVal2))
				arg0:addElement(arg0.mapImage)
			end
		end
	end

	arg0:subscribeToModel(registerVal18, __FUNC_526A_)
	arg0.occluded = false
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.CreateModel(registerVal19, "pubstorageFilesChanged")
	local function __FUNC_5628_(arg2)
		local registerVal1 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
		if registerVal1 then
			return 
		end
		registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == true and arg0.occluded ~= nil and arg0.occluded == false then
			CoD.OverlayUtility.CreateOverlay(arg1, arg0, "PublisherFilesChangedPopup")
		end
	end

	arg0:subscribeToModel(registerVal18, __FUNC_5628_, false)
	local function __FUNC_57FB_(arg0, arg1)
		arg0.occluded = arg1.occluded
		if arg1.occluded == false then
			local registerVal3 = Engine.GetGlobalModel()
			local registerVal2 = Engine.CreateModel(registerVal3, "pubstorageFilesChanged")
			Engine.ForceNotifyModelSubscriptions(registerVal2)
		end
		local registerVal4 = Engine.GetGlobalModel()
		registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot.lobbyMenuOccluded")
		Engine.SetModelValue(registerVal3, arg1.occluded)
		arg0.OcclusionChange(arg0, arg1)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_57FB_)
	registerVal19 = Engine.GetGlobalModel()
	registerVal18 = Engine.CreateModel(registerVal19, "lobbyDebug.debugEnabled")
	local function __FUNC_59DD_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 then
			local registerVal2 = CoD.LobbyDebugOverlay.new(arg0, arg1)
			registerVal2:setLeftRight(true, true, 0.000000, 0.000000)
			registerVal2:setTopBottom(true, true, 0.000000, 0.000000)
			arg0:addElement(registerVal2)
			arg0.LobbyDebugOverlay = registerVal2
			if not arg0.LobbyDebugyOverlay and arg0.LobbyDebugOverlay then
				arg0.LobbyDebugOverlay:close()
			end
		end
	end

	arg0:subscribeToModel(registerVal18, __FUNC_59DD_)
	Engine.ExecNow(arg1, "emblemGetProfile")
	ValidateEmblemBackground(arg1, Engine.GetEmblemBackgroundId())
	CoD.CACUtility.ForceStreamAttachmentImages(arg1)
end

local function __FUNC_5BB0_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Lobby")
	if __FUNC_184B_ then
		__FUNC_184B_(registerVal1, arg0)
	end
	registerVal1.soundSet = "MultiplayerMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Lobby.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.LobbyStreamerBlackFade.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Transparent"
	local function __FUNC_7FE7_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal7.condition = __FUNC_7FE7_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "hideWorldForStreamer")
	local function __FUNC_8072_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_8072_)
	registerVal1:addElement(registerVal3)
	registerVal1.FadeForStreamer = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.FadeForLeftRight = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.300000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_textureoverlaya"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal5)
	registerVal1.NoiseOverlay = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -640.000000, 648.000000)
	registerVal6:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setImage(RegisterImage("uie_frontend_vingette_c"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal1:addElement(registerVal6)
	registerVal1.Vignette = registerVal6
	registerVal7 = CoD.LeftContainer.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 0.000000, 520.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 720.000000)
	local function __FUNC_819A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.MenuTitleContainer.MenuTitle.TextBox1.Label0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "LobbyRoot", "lobbyTitle", __FUNC_819A_)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "ListUp"
	local function __FUNC_82D3_(arg0, arg1, arg2)
		return ShouldLobbyListBeUp()
	end

	registerVal11.condition = __FUNC_82D3_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "lobbyRoot.lobbyMainMode")
	local function __FUNC_8325_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyMainMode"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_8325_)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "lobbyRoot.lobbyNav")
	local function __FUNC_8451_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_8451_)
	registerVal1:addElement(registerVal7)
	registerVal1.LeftContainer = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 1232.500000, 1235.500000)
	registerVal8:setTopBottom(true, false, 52.000000, 640.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal8)
	registerVal1.LineSide = registerVal8
	local registerVal9 = CoD.LobbyMemberList.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 800.500000, 1280.000000)
	registerVal9:setTopBottom(true, false, 36.000000, 684.000000)
	registerVal9:setYRot(-20.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.ClientList = registerVal9
	registerVal10 = LUI.UIElement.new()
	registerVal10:setLeftRight(true, false, 709.000000, 757.000000)
	registerVal10:setTopBottom(true, false, -48.000000, 0.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.slideSound = registerVal10
	registerVal11 = CoD.LobbySlideSelectedPlayerInfo.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 1405.000000, 1725.000000)
	registerVal11:setTopBottom(true, false, 36.000000, 684.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.SelectedPlayerInfo = registerVal11
	local registerVal12 = CoD.MapVote.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 69.000000, 424.000000)
	registerVal12:setTopBottom(true, false, 435.000000, 615.000000)
	registerVal12:setYRot(25.000000)
	registerVal12.MapVoting:setText(Engine.Localize("MENU_VOTING_VOTE_STRING"))
	local function __FUNC_8578_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.LobbyStatus:setText(registerVal1)
		end
	end

	registerVal12:subscribeToGlobalModel(arg0, "LobbyRoot", "lobbyStatus", __FUNC_8578_)
	registerVal1:addElement(registerVal12)
	registerVal1.MapVote = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 1232.500000, 1235.500000)
	registerVal13:setTopBottom(true, false, 52.000000, 640.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.LineSide1 = registerVal13
	local registerVal14 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal14:makeFocusable()
	registerVal14:setLeftRight(true, true, 351.500000, -420.500000)
	registerVal14:setTopBottom(true, true, 103.000000, -36.000000)
	registerVal14:setWidgetType(CoD.SessionSearchQoSJoin)
	registerVal14:setVerticalCount(53.000000)
	registerVal14:setDataSource("DebugSessionSearchQoSJoin")
	registerVal1:addElement(registerVal14)
	registerVal1.DebugSessionSearchQoSJoin = registerVal14
	local registerVal15 = CoD.fe_FooterContainer.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal15:setTopBottom(false, true, -80.000000, 0.000000)
	local function __FUNC_862D_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("menu_loaded", __FUNC_862D_)
	registerVal1:addElement(registerVal15)
	registerVal1.feFooterContainer = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal16:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal16:setRGB(0.000000, 0.000000, 0.000000)
	registerVal16:setAlpha(0.000000)
	local function __FUNC_86C1_(arg1, arg2)
		PlayClip(registerVal1, "FadeIn", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("menu_opened", __FUNC_86C1_)
	registerVal1:addElement(registerVal16)
	registerVal1.FadeForMatchStart = registerVal16
	local registerVal18 = IsPC()
	if registerVal18 then
		registerVal18 = CoD.ChatClientContainer.new(registerVal1, arg0)
	else
		registerVal18 = LUI.UIElement.createFake()
	end
	registerVal18:setLeftRight(true, false, 424.000000, 850.000000)
	registerVal18:setTopBottom(true, false, 388.000000, 788.000000)
	registerVal18 = IsPC()
	if registerVal18 then
		registerVal1:addElement(registerVal18)
	end
	registerVal1.ChatClientContainer = registerVal18
	registerVal18 = CoD.CenterConsole.new(registerVal1, arg0)
	registerVal18:setLeftRight(false, false, -370.000000, 370.000000)
	registerVal18:setTopBottom(true, false, 64.000000, 162.000000)
	registerVal1:addElement(registerVal18)
	registerVal1.console = registerVal18
	local registerVal19 = CoD.XCamMouseControl.new(registerVal1, arg0)
	registerVal19:setLeftRight(false, false, 687.000000, 1085.000000)
	registerVal19:setTopBottom(false, false, -308.000000, 280.000000)
	registerVal1:addElement(registerVal19)
	registerVal1.XCamMouseControl = registerVal19
	local registerVal20 = {}
	registerVal20.left = registerVal12
	registerVal20.right = registerVal14
	registerVal20.down = registerVal14
	registerVal7.navigation = registerVal20
	registerVal20 = {}
	registerVal20.left = registerVal14
	registerVal20.right = registerVal11
	registerVal20.down = registerVal14
	registerVal9.navigation = registerVal20
	registerVal20 = {}
	registerVal20.left = registerVal9
	registerVal11.navigation = registerVal20
	registerVal20 = {}
	registerVal20.up = registerVal7
	registerVal20.right = registerVal7
	registerVal12.navigation = registerVal20
	registerVal20 = {}
	registerVal20.left = registerVal7
	registerVal20.up = registerVal7
	registerVal20.right = registerVal18
	registerVal20.down = registerVal18
	registerVal14.navigation = registerVal20
	registerVal20 = {}
	registerVal20.left = registerVal14
	registerVal20.up = registerVal7
	registerVal20.right = registerVal9
	registerVal18.navigation = registerVal20
	registerVal20 = {}
	local registerVal21 = {}
	local function __FUNC_8763_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal21.DefaultClip = __FUNC_8763_
	local function __FUNC_87C2_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_88AA_(arg0, arg1)
			local function __FUNC_8A00_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 949.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8A00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A00_)
		end

		registerVal16:completeAnimation()
		registerVal1.FadeForMatchStart:setAlpha(1.000000)
		__FUNC_88AA_(registerVal16, {})
	end

	registerVal21.FadeIn = __FUNC_87C2_
	local function __FUNC_8BB5_()
		registerVal1:setupElementClipCounter(6.000000)
		local function __FUNC_8FE9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -520.000000, 0.000000)
			arg0:setTopBottom(true, false, 0.000000, 720.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.LeftContainer:setLeftRight(true, false, 0.000000, 520.000000)
		registerVal1.LeftContainer:setTopBottom(true, false, 0.000000, 720.000000)
		__FUNC_8FE9_(registerVal7, {})
		local function __FUNC_91E5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1307.500000, 1787.000000)
			arg0:setTopBottom(true, false, 36.000000, 684.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.ClientList:setLeftRight(true, false, 800.500000, 1280.000000)
		registerVal1.ClientList:setTopBottom(true, false, 36.000000, 684.000000)
		__FUNC_91E5_(registerVal9, {})
		local function __FUNC_93E6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -402.000000, -47.000000)
			arg0:setTopBottom(true, false, 440.000000, 620.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.MapVote:setLeftRight(true, false, 69.000000, 424.000000)
		registerVal1.MapVote:setTopBottom(true, false, 434.000000, 614.000000)
		__FUNC_93E6_(registerVal12, {})
		local function __FUNC_95E6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, 0.000000, 80.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal1.feFooterContainer:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal1.feFooterContainer:setTopBottom(false, true, -80.000000, 0.000000)
		__FUNC_95E6_(registerVal15, {})
		local function __FUNC_97DC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal1.FadeForMatchStart:setAlpha(0.000000)
		__FUNC_97DC_(registerVal16, {})
		registerVal19:completeAnimation()
		registerVal1.XCamMouseControl:setLeftRight(false, false, -540.000000, 540.000000)
		registerVal1.XCamMouseControl:setTopBottom(false, false, -137.000000, 162.000000)
		registerVal1.clipFinished(registerVal19, {})
	end

	registerVal21.HideForGameStart = __FUNC_8BB5_
	registerVal20.DefaultState = registerVal21
	registerVal21 = {}
	local function __FUNC_9991_()
		registerVal1:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal1.FadeForLeftRight:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal1.LeftContainer:setLeftRight(true, false, 0.000000, 520.000000)
		registerVal1.LeftContainer:setTopBottom(true, false, 0.000000, 720.000000)
		registerVal1.LeftContainer:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.LineSide:setLeftRight(true, false, 1232.500000, 1235.500000)
		registerVal1.LineSide:setTopBottom(true, false, 52.000000, 640.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.ClientList:setLeftRight(true, false, 800.500000, 1280.000000)
		registerVal1.ClientList:setTopBottom(true, false, 36.000000, 684.000000)
		registerVal1.ClientList:setYRot(-20.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.SelectedPlayerInfo:setLeftRight(true, false, 1404.000000, 1724.000000)
		registerVal1.SelectedPlayerInfo:setTopBottom(true, false, 36.000000, 684.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.MapVote:setLeftRight(true, false, 69.000000, 424.000000)
		registerVal1.MapVote:setTopBottom(true, false, 434.000000, 614.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.LineSide1:setLeftRight(true, false, 1307.500000, 1310.500000)
		registerVal1.LineSide1:setTopBottom(true, false, 52.000000, 640.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal19:completeAnimation()
		registerVal1.XCamMouseControl:setLeftRight(false, false, 686.000000, 1084.000000)
		registerVal1.XCamMouseControl:setTopBottom(false, false, -308.000000, 280.000000)
		registerVal1.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_9991_
	local function __FUNC_9F64_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_A04E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal1.FadeForMatchStart:setAlpha(1.000000)
		__FUNC_A04E_(registerVal16, {})
	end

	registerVal21.FadeIn = __FUNC_9F64_
	local function __FUNC_A201_()
		registerVal1:setupElementClipCounter(8.000000)
		local function __FUNC_A79E_(arg0, arg1)
			local function __FUNC_A8F4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_A8F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A8F4_)
		end

		registerVal4:completeAnimation()
		registerVal1.FadeForLeftRight:setAlpha(1.000000)
		__FUNC_A79E_(registerVal4, {})
		local function __FUNC_AAA9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -520.000000, 0.000000)
			arg0:setTopBottom(true, false, 0.000000, 720.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.LeftContainer:setLeftRight(true, false, 0.000000, 520.000000)
		registerVal1.LeftContainer:setTopBottom(true, false, 0.000000, 720.000000)
		registerVal1.LeftContainer:setAlpha(1.000000)
		__FUNC_AAA9_(registerVal7, {})
		local function __FUNC_ACC3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 42.500000, 45.500000)
			arg0:setTopBottom(true, false, 52.000000, 640.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.LineSide:setLeftRight(true, false, 1232.500000, 1235.500000)
		registerVal1.LineSide:setTopBottom(true, false, 52.000000, 640.000000)
		__FUNC_ACC3_(registerVal8, {})
		local function __FUNC_AEC2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 159.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 479.500000)
			arg0:setTopBottom(true, false, 36.000000, 684.000000)
			arg0:setYRot(20.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.ClientList:setLeftRight(true, false, 800.500000, 1280.000000)
		registerVal1.ClientList:setTopBottom(true, false, 36.000000, 684.000000)
		registerVal1.ClientList:setYRot(-20.000000)
		__FUNC_AEC2_(registerVal9, {})
		local function __FUNC_B0E4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 896.000000, 1216.000000)
			arg0:setTopBottom(true, false, 36.000000, 684.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal1.SelectedPlayerInfo:setLeftRight(true, false, 1404.000000, 1724.000000)
		registerVal1.SelectedPlayerInfo:setTopBottom(true, false, 36.000000, 684.000000)
		__FUNC_B0E4_(registerVal11, {})
		local function __FUNC_B2E6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -462.000000, -107.000000)
			arg0:setTopBottom(true, false, 437.500000, 617.500000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.MapVote:setLeftRight(true, false, 69.000000, 424.000000)
		registerVal1.MapVote:setTopBottom(true, false, 434.000000, 614.000000)
		__FUNC_B2E6_(registerVal12, {})
		local function __FUNC_B4E6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 219.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1232.500000, 1235.500000)
			arg0:setTopBottom(true, false, 52.000000, 640.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.LineSide1:setLeftRight(true, false, 1307.500000, 1310.500000)
		registerVal1.LineSide1:setTopBottom(true, false, 52.000000, 640.000000)
		__FUNC_B4E6_(registerVal13, {})
		local function __FUNC_B6E6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -188.000000, 210.000000)
			arg0:setTopBottom(false, false, -308.000000, 280.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal1.XCamMouseControl:setLeftRight(false, false, 701.000000, 1099.000000)
		registerVal1.XCamMouseControl:setTopBottom(false, false, -308.000000, 280.000000)
		__FUNC_B6E6_(registerVal19, {})
	end

	registerVal21.Right = __FUNC_A201_
	local function __FUNC_B8E6_()
		registerVal1:setupElementClipCounter(5.000000)
		local function __FUNC_BC5D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -520.000000, 0.000000)
			arg0:setTopBottom(true, false, 0.000000, 720.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.LeftContainer:setLeftRight(true, false, 0.000000, 520.000000)
		registerVal1.LeftContainer:setTopBottom(true, false, 0.000000, 720.000000)
		__FUNC_BC5D_(registerVal7, {})
		local function __FUNC_BE59_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1307.500000, 1787.000000)
			arg0:setTopBottom(true, false, 36.000000, 684.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.ClientList:setLeftRight(true, false, 800.500000, 1280.000000)
		registerVal1.ClientList:setTopBottom(true, false, 36.000000, 684.000000)
		__FUNC_BE59_(registerVal9, {})
		local function __FUNC_C05A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -402.000000, -47.000000)
			arg0:setTopBottom(true, false, 440.000000, 620.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.MapVote:setLeftRight(true, false, 69.000000, 424.000000)
		registerVal1.MapVote:setTopBottom(true, false, 434.000000, 614.000000)
		__FUNC_C05A_(registerVal12, {})
		local function __FUNC_C25A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, 0.000000, 80.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal1.feFooterContainer:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal1.feFooterContainer:setTopBottom(false, true, -80.000000, 0.000000)
		__FUNC_C25A_(registerVal15, {})
		local function __FUNC_C450_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal1.FadeForMatchStart:setAlpha(0.000000)
		__FUNC_C450_(registerVal16, {})
	end

	registerVal21.HideForGameStart = __FUNC_B8E6_
	registerVal20.Left = registerVal21
	registerVal21 = {}
	local function __FUNC_C605_()
		registerVal1:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal1.FadeForLeftRight:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal7:completeAnimation()
		registerVal1.LeftContainer:setLeftRight(true, false, -520.000000, 0.000000)
		registerVal1.LeftContainer:setTopBottom(true, false, 0.000000, 720.000000)
		registerVal1.LeftContainer:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.LineSide:setLeftRight(true, false, 42.500000, 45.500000)
		registerVal1.LineSide:setTopBottom(true, false, 52.000000, 640.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.ClientList:setLeftRight(true, false, 0.000000, 479.500000)
		registerVal1.ClientList:setTopBottom(true, false, 36.000000, 684.000000)
		registerVal1.ClientList:setYRot(20.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.SelectedPlayerInfo:setLeftRight(true, false, 896.000000, 1216.000000)
		registerVal1.SelectedPlayerInfo:setTopBottom(true, false, 36.000000, 684.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.MapVote:setLeftRight(true, false, -462.000000, -107.000000)
		registerVal1.MapVote:setTopBottom(true, false, 437.500000, 617.500000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal1.LineSide1:setLeftRight(true, false, 1232.500000, 1235.500000)
		registerVal1.LineSide1:setTopBottom(true, false, 52.000000, 640.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal16:completeAnimation()
		registerVal1.FadeForMatchStart:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal19:completeAnimation()
		registerVal1.XCamMouseControl:setLeftRight(false, false, -188.000000, 210.000000)
		registerVal1.XCamMouseControl:setTopBottom(false, false, -308.000000, 280.000000)
		registerVal1.clipFinished(registerVal19, {})
	end

	registerVal21.DefaultClip = __FUNC_C605_
	local function __FUNC_CC2D_()
		registerVal1:setupElementClipCounter(1.000000)
		local function __FUNC_CD16_(arg0, arg1)
			local function __FUNC_CE6C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 949.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal1.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_CE6C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE6C_)
		end

		registerVal16:completeAnimation()
		registerVal1.FadeForMatchStart:setAlpha(1.000000)
		__FUNC_CD16_(registerVal16, {})
	end

	registerVal21.FadeIn = __FUNC_CC2D_
	local function __FUNC_D021_()
		registerVal1:setupElementClipCounter(8.000000)
		local function __FUNC_D5B4_(arg0, arg1)
			local function __FUNC_D72F_(arg0, arg1)
				local function __FUNC_D884_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal1.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_D884_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D884_)
			end

			if arg1.interrupted then
				__FUNC_D72F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D72F_)
		end

		registerVal4:completeAnimation()
		registerVal1.FadeForLeftRight:setAlpha(0.000000)
		__FUNC_D5B4_(registerVal4, {})
		local function __FUNC_DA39_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 520.000000)
			arg0:setTopBottom(true, false, 0.000000, 720.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.LeftContainer:setLeftRight(true, false, -520.000000, 0.000000)
		registerVal1.LeftContainer:setTopBottom(true, false, 0.000000, 720.000000)
		registerVal1.LeftContainer:setAlpha(0.000000)
		__FUNC_DA39_(registerVal7, {})
		local function __FUNC_DC58_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1232.500000, 1235.500000)
			arg0:setTopBottom(true, false, 52.000000, 640.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal1.LineSide:setLeftRight(true, false, 42.500000, 45.500000)
		registerVal1.LineSide:setTopBottom(true, false, 52.000000, 640.000000)
		__FUNC_DC58_(registerVal8, {})
		local function __FUNC_DE5A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 170.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 800.500000, 1280.000000)
			arg0:setTopBottom(true, false, 36.000000, 684.000000)
			arg0:setYRot(-20.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.ClientList:setLeftRight(true, false, 0.000000, 479.500000)
		registerVal1.ClientList:setTopBottom(true, false, 36.000000, 684.000000)
		registerVal1.ClientList:setYRot(20.000000)
		__FUNC_DE5A_(registerVal9, {})
		local function __FUNC_E07C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1450.000000, 1770.000000)
			arg0:setTopBottom(true, false, 36.000000, 684.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal1.SelectedPlayerInfo:setLeftRight(true, false, 896.000000, 1216.000000)
		registerVal1.SelectedPlayerInfo:setTopBottom(true, false, 36.000000, 684.000000)
		__FUNC_E07C_(registerVal11, {})
		local function __FUNC_E27E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 69.000000, 424.000000)
			arg0:setTopBottom(true, false, 434.000000, 614.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.MapVote:setLeftRight(true, false, -462.000000, -107.000000)
		registerVal1.MapVote:setTopBottom(true, false, 437.500000, 617.500000)
		__FUNC_E27E_(registerVal12, {})
		local function __FUNC_E47E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1307.500000, 1310.500000)
			arg0:setTopBottom(true, false, 52.000000, 640.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal1.LineSide1:setLeftRight(true, false, 1232.500000, 1235.500000)
		registerVal1.LineSide1:setTopBottom(true, false, 52.000000, 640.000000)
		__FUNC_E47E_(registerVal13, {})
		local function __FUNC_E67E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, true, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, 732.000000, 1130.000000)
			arg0:setTopBottom(false, false, -308.000000, 280.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal19:completeAnimation()
		registerVal1.XCamMouseControl:setLeftRight(false, false, -188.000000, 210.000000)
		registerVal1.XCamMouseControl:setTopBottom(false, false, -308.000000, 280.000000)
		__FUNC_E67E_(registerVal19, {})
	end

	registerVal21.Left = __FUNC_D021_
	local function __FUNC_E87E_()
		registerVal1:setupElementClipCounter(4.000000)
		local function __FUNC_EB8E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -520.000000, -40.500000)
			arg0:setTopBottom(true, false, 36.000000, 684.000000)
			arg0:setYRot(20.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.ClientList:setLeftRight(true, false, 0.000000, 479.500000)
		registerVal1.ClientList:setTopBottom(true, false, 36.000000, 684.000000)
		registerVal1.ClientList:setYRot(20.000000)
		__FUNC_EB8E_(registerVal9, {})
		local function __FUNC_EDB0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1322.000000, 1642.000000)
			arg0:setTopBottom(true, false, 36.000000, 684.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal1.SelectedPlayerInfo:setLeftRight(true, false, 896.000000, 1216.000000)
		registerVal1.SelectedPlayerInfo:setTopBottom(true, false, 36.000000, 684.000000)
		__FUNC_EDB0_(registerVal11, {})
		local function __FUNC_EFB2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, 0.000000, 80.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal1.feFooterContainer:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal1.feFooterContainer:setTopBottom(false, true, -80.000000, 0.000000)
		__FUNC_EFB2_(registerVal15, {})
		local function __FUNC_F1A8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal1.FadeForMatchStart:setAlpha(0.000000)
		__FUNC_F1A8_(registerVal16, {})
	end

	registerVal21.HideForGameStart = __FUNC_E87E_
	registerVal20.Right = registerVal21
	registerVal21 = {}
	local function __FUNC_F35D_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal7:completeAnimation()
		registerVal1.LeftContainer:setLeftRight(true, false, -520.000000, 0.000000)
		registerVal1.LeftContainer:setTopBottom(true, false, 0.000000, 720.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal1.ClientList:setLeftRight(true, false, 1307.500000, 1787.000000)
		registerVal1.ClientList:setTopBottom(true, false, 36.000000, 684.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal1.MapVote:setLeftRight(true, false, -402.000000, -47.000000)
		registerVal1.MapVote:setTopBottom(true, false, 440.000000, 620.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal15:completeAnimation()
		registerVal1.feFooterContainer:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal1.feFooterContainer:setTopBottom(false, true, 0.000000, 80.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.FadeForMatchStart:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal18:completeAnimation()
		registerVal1.ChatClientContainer:setLeftRight(true, false, 406.000000, 832.000000)
		registerVal1.ChatClientContainer:setTopBottom(true, false, 1033.000000, 1433.000000)
		registerVal1.clipFinished(registerVal18, {})
	end

	registerVal21.DefaultClip = __FUNC_F35D_
	local function __FUNC_F7AD_()
		registerVal1:setupElementClipCounter(5.000000)
		local function __FUNC_FB2A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 520.000000)
			arg0:setTopBottom(true, false, 0.000000, 720.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.LeftContainer:setLeftRight(true, false, -520.000000, 0.000000)
		registerVal1.LeftContainer:setTopBottom(true, false, 0.000000, 720.000000)
		__FUNC_FB2A_(registerVal7, {})
		local function __FUNC_FD25_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 800.500000, 1280.000000)
			arg0:setTopBottom(true, false, 36.000000, 684.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.ClientList:setLeftRight(true, false, 1307.500000, 1787.000000)
		registerVal1.ClientList:setTopBottom(true, false, 36.000000, 684.000000)
		__FUNC_FD25_(registerVal9, {})
		local function __FUNC_FF26_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 69.000000, 424.000000)
			arg0:setTopBottom(true, false, 434.000000, 614.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.MapVote:setLeftRight(true, false, -402.000000, -47.000000)
		registerVal1.MapVote:setTopBottom(true, false, 440.000000, 620.000000)
		__FUNC_FF26_(registerVal12, {})
		local function __FUNC_10126_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, -80.000000, 0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal1.feFooterContainer:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal1.feFooterContainer:setTopBottom(false, true, 0.000000, 80.000000)
		__FUNC_10126_(registerVal15, {})
		local function __FUNC_1031C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal1.FadeForMatchStart:setAlpha(1.000000)
		__FUNC_1031C_(registerVal16, {})
	end

	registerVal21.DefaultState = __FUNC_F7AD_
	local function __FUNC_104D1_()
		registerVal1:setupElementClipCounter(5.000000)
		local function __FUNC_1084E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.000000, 520.000000)
			arg0:setTopBottom(true, false, 0.000000, 720.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal1.LeftContainer:setLeftRight(true, false, -520.000000, 0.000000)
		registerVal1.LeftContainer:setTopBottom(true, false, 0.000000, 720.000000)
		__FUNC_1084E_(registerVal7, {})
		local function __FUNC_10A49_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 800.500000, 1280.000000)
			arg0:setTopBottom(true, false, 36.000000, 684.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal1.ClientList:setLeftRight(true, false, 1307.500000, 1787.000000)
		registerVal1.ClientList:setTopBottom(true, false, 36.000000, 684.000000)
		__FUNC_10A49_(registerVal9, {})
		local function __FUNC_10C4A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 69.000000, 424.000000)
			arg0:setTopBottom(true, false, 434.000000, 614.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal1.MapVote:setLeftRight(true, false, -402.000000, -47.000000)
		registerVal1.MapVote:setTopBottom(true, false, 440.000000, 620.000000)
		__FUNC_10C4A_(registerVal12, {})
		local function __FUNC_10E4A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, -80.000000, 0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal1.feFooterContainer:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal1.feFooterContainer:setTopBottom(false, true, 0.000000, 80.000000)
		__FUNC_10E4A_(registerVal15, {})
		local function __FUNC_11040_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal1.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal1.clipFinished)
			end
		end

		registerVal16:completeAnimation()
		registerVal1.FadeForMatchStart:setAlpha(1.000000)
		__FUNC_11040_(registerVal16, {})
	end

	registerVal21.Left = __FUNC_104D1_
	registerVal20.HideForGameStart = registerVal21
	registerVal1.clipsPerState = registerVal20
	local registerVal22 = {}
	local registerVal23 = {}
	registerVal23.stateName = "Left"
	local function __FUNC_111F5_(arg1, arg2, arg3)
		local registerVal3 = IsWidgetInFocus(registerVal1, "LeftContainer", arg3)
		if registerVal3 then
			registerVal3 = IsGlobalModelValueEqualTo(arg2, arg0, "lobbyRoot.hideMenusForGameStart", 1.000000)
		end
		return (not registerVal3)
	end

	registerVal23.condition = __FUNC_111F5_
	local registerVal24 = {}
	registerVal24.stateName = "Right"
	local function __FUNC_112DD_(arg1, arg2, arg3)
		local registerVal3 = isClientListSlideFocus(registerVal1, "ClientList", arg3, arg0)
		if registerVal3 then
			registerVal3 = IsGlobalModelValueEqualTo(arg2, arg0, "lobbyRoot.hideMenusForGameStart", 1.000000)
		end
		return (not registerVal3)
	end

	registerVal24.condition = __FUNC_112DD_
	local registerVal25 = {}
	registerVal25.stateName = "HideForGameStart"
	local function __FUNC_113CD_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "lobbyRoot.hideMenusForGameStart", 1.000000)
	end

	registerVal25.condition = __FUNC_113CD_
	registerVal22 = {registerVal23, registerVal24, registerVal25}
	registerVal1:mergeStateConditions(registerVal22)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "lobbyRoot.hideMenusForGameStart")
	local function __FUNC_11465_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.hideMenusForGameStart"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal22, __FUNC_11465_)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "lobbyRoot.hideMenusForGameStart")
	local function __FUNC_11599_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.hideMenusForGameStart"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal1:subscribeToModel(registerVal22, __FUNC_11599_)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "lobbyRoot.lobbyLockedIn")
	local function __FUNC_1176D_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyLockedIn"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
	end

	registerVal1:subscribeToModel(registerVal22, __FUNC_1176D_)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "lobbyRoot.lobbyNetworkMode")
	local function __FUNC_11939_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNetworkMode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal22, __FUNC_11939_)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "lobbyRoot.lobbyNav")
	local function __FUNC_11B70_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyNav"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_BACK)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal22, __FUNC_11B70_)
	local function __FUNC_11EB6_(arg1, arg2)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
	end

	registerVal1:registerEventHandler("update_team_selection_buttons", __FUNC_11EB6_)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "GametypeSettings.Update")
	local function __FUNC_11FF4_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "GametypeSettings.Update"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
	end

	registerVal1:subscribeToModel(registerVal22, __FUNC_11FF4_)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "lobbyRoot.lobbyMainMode")
	local function __FUNC_12213_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.lobbyMainMode"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_BACK)
	end

	registerVal1:subscribeToModel(registerVal22, __FUNC_12213_)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "FeaturedCardsRoot.Enabled")
	local function __FUNC_123D5_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "FeaturedCardsRoot.Enabled"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
	end

	registerVal1:subscribeToModel(registerVal22, __FUNC_123D5_)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "liveEventViewer.stream")
	local function __FUNC_1265B_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "liveEventViewer.stream"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
	end

	registerVal1:subscribeToModel(registerVal22, __FUNC_1265B_)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "autoevents.cycled")
	local function __FUNC_128DC_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "autoevents.cycled"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
	end

	registerVal1:subscribeToModel(registerVal22, __FUNC_128DC_)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "PlayGoDownloadProgress.progress")
	local function __FUNC_12B5B_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "PlayGoDownloadProgress.progress"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal22, __FUNC_12B5B_)
	registerVal23 = Engine.GetGlobalModel()
	registerVal22 = Engine.GetModel(registerVal23, "ModsGlobal.update")
	local function __FUNC_12D2D_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "ModsGlobal.update"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal22, __FUNC_12D2D_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_12EF3_(arg1, arg2)
		if not arg2.controller then
		end
		LobbyAddLocalClient(registerVal1, arg0)
		if not nil then
			local registerVal4 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal4
	end

	registerVal1:registerEventHandler("unused_gamepad_button", __FUNC_12EF3_)
	local function __FUNC_12FB6_(arg0, arg1)
		if arg0.RecordCurrFocusedElemID then
			local registerVal3 = arg0.RecordCurrFocusedElemID(arg0, arg1)
		else
			if arg0.super.RecordCurrFocusedElemID then
				registerVal3 = arg0.super.RecordCurrFocusedElemID(arg0, arg1)
			end
		end
		UpdateMenuState(registerVal1, arg1)
		return registerVal3
	end

	registerVal1:registerEventHandler("record_curr_focused_elem_id", __FUNC_12FB6_)
	local function __FUNC_130BD_(arg1, arg2)
		local registerVal3 = CanShowAAR(arg0)
		if registerVal3 then
			OpenAARIfNeeded(registerVal1, arg0)
		else
			PlayClip(registerVal1, "FadeIn", arg0)
			SetButtonPromptHidden(registerVal1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
			SetButtonPromptHidden(registerVal1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_130BD_)
	local function __FUNC_13282_(arg1, arg2)
		local registerVal3 = ShouldPlayLobbyFadeAnim(registerVal1, arg0)
		if registerVal3 then
			PlayClip(registerVal1, "FadeIn", arg0)
		else
			ForceNotifyGlobalModel(arg0, "pubstorageFilesChanged")
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_13282_)
	local function __FUNC_133B0_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsPrimaryControllerIndex(arg2)
		if not registerVal4 then
			LobbyRemoveLocalClientFromLobby(registerVal1, arg2)
			return true
		else
			registerVal4 = ChatClientAnySubMenuOpen(arg2)
			if registerVal4 then
				ChatClientResetSubMenus(registerVal1, arg0, arg2)
				return true
			else
				registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "lobbyRoot.hideMenusForGameStart", 1.000000)
				registerVal4 = IsMenuInState(arg1, "Right")
				if not registerVal4 and registerVal4 then
					SendButtonPressToMenu(arg1, arg2, arg3, Enum.LUIButton.LUI_KEY_LEFT)
					return true
				else
					registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "lobbyRoot.hideMenusForGameStart", 1.000000)
					registerVal4 = IsGlobalModelValueTrue(arg0, arg2, "lobbyRoot.lobbyLockedIn")
					if not registerVal4 and not registerVal4 then
						LobbyGoBack(registerVal1, arg2)
						return true
					end
				end
			end
		end
	end

	local function __FUNC_136B9_(arg0, arg1, arg2)
		local registerVal3 = IsPrimaryControllerIndex(arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
			return true
		else
			registerVal3 = ChatClientAnySubMenuOpen(arg2)
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
				return true
			else
				registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "lobbyRoot.hideMenusForGameStart", 1.000000)
				registerVal3 = IsMenuInState(arg1, "Right")
				if not registerVal3 and registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
					return true
				else
					registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "lobbyRoot.hideMenusForGameStart", 1.000000)
					registerVal3 = IsGlobalModelValueTrue(arg0, arg2, "lobbyRoot.lobbyLockedIn")
					if not registerVal3 and not registerVal3 then
						CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MP_BACK")
						return true
					end
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_133B0_, __FUNC_136B9_, false)
	local function __FUNC_13A43_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_13A74_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_13A43_, __FUNC_13A74_, false)
	local function __FUNC_13B72_(arg0, arg1, arg2, arg3)
		OpenOverlay(registerVal1, "StartMenu_Main", arg2, "", "")
		return true
	end

	local function __FUNC_13BF7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_MENU")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "M", __FUNC_13B72_, __FUNC_13BF7_, false)
	local function __FUNC_13CEA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsLAN()
		registerVal4 = IsPlayerAGuest(arg2)
		if not registerVal4 and not registerVal4 then
			OpenOverlay(registerVal1, "Social_Main", arg2, "", "")
			return true
		end
	end

	local function __FUNC_13DB7_(arg0, arg1, arg2)
		local registerVal3 = IsLAN()
		registerVal3 = IsPlayerAGuest(arg2)
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_SOCIAL")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "S", __FUNC_13CEA_, __FUNC_13DB7_, false)
	local function __FUNC_13F08_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsRepeatButtonPress(arg3)
		registerVal4 = IsLobbyWithTeamAssignment()
		registerVal4 = IsTeamAssignment(LuaEnums.TEAM_ASSIGNMENT.HOST)
		registerVal4 = IsMenuInState(arg1, "Left")
		registerVal4 = CanSwitchTeams()
		if not registerVal4 and registerVal4 and not registerVal4 and registerVal4 and registerVal4 then
			LobbyTeamSelectionLB(registerVal1, arg0, arg2)
			PlaySoundSetSound(registerVal1, "team_switch")
			return true
		else
			registerVal4 = IsMenuInState(arg1, "Left")
			registerVal4 = FeaturedCards_IsEnabled(arg0, arg2)
			registerVal4 = IsGameLobbyExcept("ZMLobbyOnline")
			registerVal4 = IsLobbyWithTeamAssignment()
			if registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
				FeaturedCardsGetPreviousCard(registerVal1, arg0, arg2, "", arg1)
				FeaturedCardsResetTimer(registerVal1, arg0, arg2, "", arg1)
				return true
			end
		end
	end

	local function __FUNC_14232_(arg0, arg1, arg2)
		local registerVal4 = IsRepeatButtonPress(nil)
		registerVal4 = IsLobbyWithTeamAssignment()
		registerVal4 = IsTeamAssignment(LuaEnums.TEAM_ASSIGNMENT.HOST)
		registerVal4 = IsMenuInState(arg1, "Left")
		registerVal4 = CanSwitchTeams()
		if not registerVal4 and registerVal4 and not registerVal4 and registerVal4 and registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "MPUI_CHANGE_ROLE")
			return true
		else
			registerVal4 = IsMenuInState(arg1, "Left")
			registerVal4 = FeaturedCards_IsEnabled(arg0, arg2)
			registerVal4 = IsGameLobbyExcept("ZMLobbyOnline")
			registerVal4 = IsLobbyWithTeamAssignment()
			if registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
				return false
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_13F08_, __FUNC_14232_, false)
	local function __FUNC_1457F_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsRepeatButtonPress(arg3)
		registerVal4 = IsLobbyWithTeamAssignment()
		registerVal4 = IsTeamAssignment(LuaEnums.TEAM_ASSIGNMENT.HOST)
		registerVal4 = IsMenuInState(arg1, "Left")
		registerVal4 = CanSwitchTeams()
		if not registerVal4 and registerVal4 and not registerVal4 and registerVal4 and registerVal4 then
			LobbyTeamSelectionRB(registerVal1, arg0, arg2)
			PlaySoundSetSound(registerVal1, "team_switch")
			return true
		else
			registerVal4 = IsMenuInState(arg1, "Left")
			registerVal4 = FeaturedCards_IsEnabled(arg0, arg2)
			registerVal4 = IsGameLobbyExcept("ZMLobbyOnline")
			registerVal4 = IsLobbyWithTeamAssignment()
			if registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
				FeaturedCardsGetNextCard(registerVal1, arg0, arg2, "", arg1)
				FeaturedCardsResetTimer(registerVal1, arg0, arg2, "", arg1)
				return true
			end
		end
	end

	local function __FUNC_148A2_(arg0, arg1, arg2)
		local registerVal4 = IsRepeatButtonPress(nil)
		registerVal4 = IsLobbyWithTeamAssignment()
		registerVal4 = IsTeamAssignment(LuaEnums.TEAM_ASSIGNMENT.HOST)
		registerVal4 = IsMenuInState(arg1, "Left")
		registerVal4 = CanSwitchTeams()
		if not registerVal4 and registerVal4 and not registerVal4 and registerVal4 and registerVal4 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, " ")
			return true
		else
			registerVal4 = IsMenuInState(arg1, "Left")
			registerVal4 = FeaturedCards_IsEnabled(arg0, arg2)
			registerVal4 = IsGameLobbyExcept("ZMLobbyOnline")
			registerVal4 = IsLobbyWithTeamAssignment()
			if registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
				return false
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_1457F_, __FUNC_148A2_, false)
	local function __FUNC_14BE0_(arg0, arg1, arg2, arg3)
		local registerVal4 = CanShowAAR(arg2)
		registerVal4 = IsAARValid(arg2)
		if registerVal4 and registerVal4 then
			OpenAAR(arg1, arg2)
			return true
		end
	end

	local function __FUNC_14C85_(arg0, arg1, arg2)
		local registerVal3 = CanShowAAR(arg2)
		registerVal3 = IsAARValid(arg2)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_BACK, "MPUI_AFTER_ACTION_REPORT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_BACK, "TAB", __FUNC_14BE0_, __FUNC_14C85_, false)
	local function __FUNC_14DE0_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuInState(arg1, "Left")
		registerVal4 = FeaturedCards_IsEnabled(arg0, arg2)
		registerVal4 = IsGameLobbyExcept("ZMLobbyOnline")
		registerVal4 = ShouldHideOfflineNetworkPrompt(arg2)
		registerVal4 = IsLive()
		if registerVal4 and registerVal4 and not registerVal4 and registerVal4 and registerVal4 then
			FeaturedCardsActionButtonHandler(registerVal1, arg0, arg2, "", arg1)
			return true
		else
			registerVal4 = IsLive()
			registerVal4 = IsGameLobby()
			registerVal4 = ShouldHideOfflineNetworkPrompt(arg2)
			registerVal4 = PlayGoIsStillDownloading(arg2)
			if not registerVal4 and not registerVal4 and not registerVal4 and not registerVal4 then
				OpenPopup(registerVal1, "StartMenu_Options_Network", arg2, "", "")
				return true
			end
		end
	end

	local function __FUNC_15059_(arg0, arg1, arg2)
		local registerVal3 = IsMenuInState(arg1, "Left")
		registerVal3 = FeaturedCards_IsEnabled(arg0, arg2)
		registerVal3 = IsGameLobbyExcept("ZMLobbyOnline")
		registerVal3 = ShouldHideOfflineNetworkPrompt(arg2)
		registerVal3 = IsLive()
		if registerVal3 and registerVal3 and not registerVal3 and registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
			return false
		else
			registerVal3 = IsLive()
			registerVal3 = IsGameLobby()
			registerVal3 = ShouldHideOfflineNetworkPrompt(arg2)
			registerVal3 = PlayGoIsStillDownloading(arg2)
			if not registerVal3 and not registerVal3 and not registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
				return false
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "N", __FUNC_14DE0_, __FUNC_15059_, false)
	local function __FUNC_1533B_(arg0, arg1, arg2, arg3)
		ChatClientInputStart(registerVal1, arg0, arg2, "All")
		return true
	end

	local function __FUNC_153AF_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_PCKEY_0, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_PCKEY_0, "T", __FUNC_1533B_, __FUNC_153AF_, false)
	local function __FUNC_1549B_(arg0, arg1, arg2, arg3)
		ChatClientInputStart(registerVal1, arg0, arg2, "Team")
		return true
	end

	local function __FUNC_15510_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_PCKEY_1, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_PCKEY_1, "Y", __FUNC_1549B_, __FUNC_15510_, false)
	local function __FUNC_155FF_(arg0, arg1, arg2, arg3)
		ChatClientInputStart(registerVal1, arg0, arg2, "Party")
		return true
	end

	local function __FUNC_15675_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_PCKEY_2, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_PCKEY_2, "P", __FUNC_155FF_, __FUNC_15675_, false)
	local function __FUNC_15763_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsStarterPack(arg2)
		if registerVal4 then
			StarterParckPurchase(registerVal1, arg2, arg1)
			return true
		end
	end

	local function __FUNC_157F1_(arg0, arg1, arg2)
		local registerVal3 = IsStarterPack(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LTRIG, "PLATFORM_STARTER_PACK_UPGRADE_TITLE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LTRIG, "U", __FUNC_15763_, __FUNC_157F1_, false)
	local function __FUNC_15933_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsServerBrowserEnabled()
		if registerVal4 then
			OpenServerBrowser(registerVal1, arg0, arg2, "", arg1)
			return true
		end
	end

	local function __FUNC_159D5_(arg0, arg1, arg2)
		local registerVal3 = IsServerBrowserEnabled()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, "MENU_SERVER_BROWSER")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, "B", __FUNC_15933_, __FUNC_159D5_, false)
	local function __FUNC_15B15_(arg1, arg2)
		local registerVal2 = IsElementInState(arg1, "Left")
		if registerVal2 then
			SendCustomClientScriptMenuChangeNotify(arg0, "Inspection", false)
			SetGlobalModelValueFalse("lobbyRoot.inspectionView")
		else
			registerVal2 = IsElementInState(arg1, "Right")
			if registerVal2 then
				local registerVal4 = {}
				registerVal4.elementName = "SelectedPlayerInfo"
				registerVal4.clipName = "Intro"
				PlayClipOnElement(registerVal1, registerVal4, arg0)
				SendCustomClientScriptMenuChangeNotify(arg0, "Inspection", true)
				SetGlobalModelValueTrue("lobbyRoot.inspectionView")
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "setState", __FUNC_15B15_)
	registerVal7.id = "LeftContainer"
	registerVal9.id = "ClientList"
	registerVal11.id = "SelectedPlayerInfo"
	registerVal12.id = "MapVote"
	registerVal14.id = "DebugSessionSearchQoSJoin"
	registerVal15:setModel(registerVal1.buttonModel, arg0)
	registerVal18.id = "ChatClientContainer"
	registerVal22 = {}
	registerVal22.name = "menu_loaded"
	registerVal22.controller = arg0
	registerVal1:processEvent(registerVal22)
	registerVal22 = {}
	registerVal22.name = "update_state"
	registerVal22.menu = registerVal1
	registerVal1:processEvent(registerVal22)
	registerVal20 = registerVal1:restoreState()
	if not registerVal20 then
		registerVal22 = {}
		registerVal22.name = "gain_focus"
		registerVal22.controller = arg0
		registerVal1.LeftContainer:processEvent(registerVal22)
	end
	local function __FUNC_15D1D_(arg1)
		arg1.FadeForStreamer:close()
		arg1.LeftContainer:close()
		arg1.ClientList:close()
		arg1.SelectedPlayerInfo:close()
		arg1.MapVote:close()
		arg1.DebugSessionSearchQoSJoin:close()
		arg1.feFooterContainer:close()
		arg1.ChatClientContainer:close()
		arg1.console:close()
		arg1.XCamMouseControl:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Lobby.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_15D1D_)
	if __FUNC_2267_ then
		__FUNC_2267_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Lobby = __FUNC_5BB0_

-- Decompiled with CoDLUIDecompiler by JariK

require("lua.Shared.LuaEnums")
CoD.OverlayUtility = {}
local registerVal1 = LuaEnums.createEnum("Popup", "Overlay")
CoD.OverlayUtility.OpenMethods = registerVal1
registerVal1 = LuaEnums.createEnum("GenericMessage", "Connection", "Settings", "Unlock", "Save", "Quit", "Alert", "Error", "Warning", "Info", "Notice", "CODPoints", "RetailIncentive", "DigitalIncentive", "SeasonPassIncentive")
CoD.OverlayUtility.OverlayTypes = registerVal1
registerVal1 = LuaEnums.createEnum("Small", "Large")
CoD.OverlayUtility.GenericPopupSizes = registerVal1
CoD.OverlayUtility.LOCAL_FILES_FETCH_WAIT_TIME = 20000.000000
CoD.OverlayUtility.CONNECTINGDW_MAX_WAIT_TIME = 30000.000000
local registerVal0 = Engine.GetCurrentPlatform()
if registerVal0 == "orbis" then
	CoD.OverlayUtility.CONNECTINGDW_MAX_WAIT_TIME = 40000.000000
end
registerVal0 = Engine.GetCurrentPlatform()
if registerVal0 == "durango" then
	CoD.OverlayUtility.CONNECTINGDW_MAX_WAIT_TIME = 60000.000000
end
function CoD.OverlayUtility.callFnOrGetValue(arg0, arg1)
	local registerVal2 = type(arg0)
	if registerVal2 == "function" then
		unpack(arg1)
		return arg0(unpack)
	else
		return arg0
	end
end

registerVal1 = {}
registerVal1 = {"title", "image", "description", "supportText", "categoryType", "listDatasource", "frameWidget", "state", "cryptoKeyType.rarity", "cost", "codpointcost", "codpointcostString", "totalDuplicates", "commonDuplicates", "rareDuplicates", "legendaryDuplicates", "epicDuplicates", "vials", "supplyDropType", "variantName", "weaponName", "inputText", "backgroundId", "xuid", "gamertag", "clantag", "emblemBacking", "fractionText", "progressPercentage", "rewardText", "groupId"}
CoD.OverlayUtility.OverlayModelFields = registerVal1
CoD.OverlayUtility.GoBackPropertyName = "backButtonFn"
CoD.OverlayUtility.ContinuePropertyName = "continueButtonFn"
CoD.OverlayUtility.ProcessActionPropertyName = "actionButtonFn"
CoD.OverlayUtility.ProcessActionKeyboardComplete = "keyboardCompleteFn"
CoD.OverlayUtility.ProcessConfirmVariantName = "confirmVariantNameFn"
registerVal1 = {}
registerVal1 = {CoD.OverlayUtility.GoBackPropertyName, CoD.OverlayUtility.ContinuePropertyName, CoD.OverlayUtility.ProcessActionPropertyName, CoD.OverlayUtility.ProcessActionKeyboardComplete, CoD.OverlayUtility.ProcessConfirmVariantName}
CoD.OverlayUtility.OverlayPropertyFields = registerVal1
registerVal1 = {}
local function __FUNC_547C_(arg0, arg1)
	local registerVal2 = CoD.OverlayUtility.callFnOrGetValue(arg0.categoryType, arg1)
	if registerVal2 == CoD.OverlayUtility.OverlayTypes.Connection then
		return "t7_icon_connect_overlays_bkg"
	else
		if registerVal2 == CoD.OverlayUtility.OverlayTypes.Error then
			return "t7_icon_error_overlays_bkg"
		else
			if registerVal2 == CoD.OverlayUtility.OverlayTypes.Quit then
				return "t7_icon_quit_overlays_bkg"
			else
				if registerVal2 == CoD.OverlayUtility.OverlayTypes.Unlock then
					return "t7_icon_unlock_overlays_bkg"
				else
					if registerVal2 == CoD.OverlayUtility.OverlayTypes.Save then
						return "t7_icon_save_overlays_bkg"
					else
						if registerVal2 == CoD.OverlayUtility.OverlayTypes.Settings then
							return "t7_icon_options_overlays_bkg"
						else
							if registerVal2 == CoD.OverlayUtility.OverlayTypes.Info or registerVal2 == CoD.OverlayUtility.OverlayTypes.GenericMessage then
								return "t7_icon_info_overlays_bkg"
							else
								if registerVal2 == CoD.OverlayUtility.OverlayTypes.Notice then
									return "t7_icon_notice_overlays_bkg"
								else
									if registerVal2 == CoD.OverlayUtility.OverlayTypes.Warning then
										return "t7_icon_notice_overlays_bkg"
									else
										if registerVal2 == CoD.OverlayUtility.OverlayTypes.CODPoints then
											return "uie_t7_menu_blackmarket_codpoints_large"
										else
											if registerVal2 == CoD.OverlayUtility.OverlayTypes.RetailIncentive then
												return "t7_icon_retail_incentive_overlay"
											else
												if registerVal2 == CoD.OverlayUtility.OverlayTypes.DigitalIncentive then
													return "t7_icon_digital_incentive_overlay"
												else
													if registerVal2 == CoD.OverlayUtility.OverlayTypes.SeasonPassIncentive then
														return "uie_t7_icon_seasonpassreward"
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
	return "blacktransparent"
end

registerVal1.image = __FUNC_547C_
local function __FUNC_5B77_(arg0, arg1)
	local registerVal2 = CoD.OverlayUtility.callFnOrGetValue(arg0.menuName, arg1)
	if registerVal2 ~= "SystemOverlay_Compact" and registerVal2 == "SystemOverlay_MessageDialog" or registerVal2 == "SystemOverlay_NoBG" then
		return "CoD.systemOverlay_Compact_BasicFrame"
	else
		if registerVal2 == "SystemOverlay_Full" or registerVal2 == "SystemOverlay_MessageDialogFull" then
			return "CoD.systemOverlay_Full_BasicFrame"
		end
	end
end

registerVal1.frameWidget = __FUNC_5B77_
CoD.OverlayUtility.DefaultModelFields = registerVal1
CoD.OverlayUtility.DefaultPropertyFields = {}
function CoD.OverlayUtility.DefaultGoBack()
	local function __FUNC_5D8C_(arg0, arg1, arg2, arg3)
		GoBack(arg3, arg2)
	end

	return __FUNC_5D8C_
end

function CoD.OverlayUtility.DefaultButtonAction(arg0, arg1, arg2, arg3, arg4)
	GoBack(arg4, arg2)
end

function CoD.OverlayUtility.QueueGoBack()
	local function __FUNC_5E58_(arg0, arg1, arg2, arg3)
		Engine.LeaveQueue(arg2)
		GoBack(arg3, arg2)
	end

	return __FUNC_5E58_
end

function CoD.OverlayUtility.DefaultScriptDialogGoBack(arg0)
	local function __FUNC_5F18_(arg1, arg2, arg3, arg4)
		SendMenuResponse(arg4, arg0, "close", arg3)
		Engine.LockInput(arg3, false)
		Close(arg4, arg3)
	end

	return __FUNC_5F18_
end

function CoD.OverlayUtility.AutoSizeMenuFromDescription(arg0, arg1, arg2)
	local function __FUNC_6020_(...)
		local registerVal0 = {}
		local registerVal1 = select("#", ...)
		registerVal0.n = registerVal1
		registerVal0 = {}
		registerVal1 = CoD.OverlayUtility.callFnOrGetValue(CoD.OverlayUtility.Overlays[arg0].description, registerVal0)
		local registerVal2 = Engine.GetNumTextLines(registerVal1, CoD.fonts.Default, 20.000000, 660.000000)
		if 3.000000 < registerVal2 then
			if not arg2 then
			end
			return "SystemOverlay_Full"
		end
		if not arg1 then
		end
		return "SystemOverlay_Compact"
	end

	return __FUNC_6020_
end

registerVal1 = {}
local registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local function __FUNC_6253_()
	local registerVal0 = CoD.isHost()
	registerVal0 = Engine.InPrivateParty()
	registerVal0 = Engine.PrivatePartyHost()
	registerVal0 = Engine.PrivatePartyHostInLobby()
	if not registerVal0 and registerVal0 == 1.000000 and not registerVal0 and registerVal0 then
		return Engine.Localize("MENU_LEAVE_GAME_AND_PARTY")
	else
		registerVal0 = CoD.isRankedGame()
		registerVal0 = CoD.isHost()
		if not registerVal0 and registerVal0 then
			return Engine.Localize("MPUI_END_GAME2")
		end
	end
	return Engine.Localize("MENU_QUIT_GAME")
end

registerVal2.title = __FUNC_6253_
local function __FUNC_647C_()
	local registerVal0 = CoD.isRankedGame()
	if not registerVal0 then
		return ""
	else
		registerVal0 = Engine.ProbationCheckIfPenalizedForQuit(Engine.GetPrimaryController())
		if registerVal0 == true then
			registerVal0 = CoDShared.IsGametypeTeamBased()
			registerVal0 = LuaUtils.IsArenaMode()
			registerVal0 = CoDShared.IsTeamOverwhelmed(Engine.GetPrimaryController())
			if registerVal0 and registerVal0 and registerVal0 then
				Dvar.arena_unfairTeamGap:get()
				return LocalizeIntoString("MENU_NO_PROBATION_EXPLAINATION", Dvar.arena_unfairTeamGap:get)
			else
				return Engine.Localize("MENU_LEAVE_GAME_RANKED_PROBATION")
			else
				if CoD.isZombie == true then
					return Engine.Localize("ZOMBIE_LEAVE_GAME_RANKED")
				else
					registerVal0 = Engine.GameModeIsMode(CoD.GAMEMODE_LEAGUE_MATCH)
					if registerVal0 == true then
						return Engine.Localize("MENU_LEAVE_GAME_LEAGUES")
					else
						registerVal0 = Engine.GameModeIsMode(Enum.eGameModes.MODE_GAME_FREERUN)
						if registerVal0 then
							return ""
						end
					end
				end
			end
		end
	end
	return Engine.Localize("MENU_LEAVE_GAME_RANKED")
end

registerVal2.description = __FUNC_647C_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Quit
local function __FUNC_692E_()
	local registerVal0 = Engine.ProbationCheckIfPenalizedForQuit(Engine.GetPrimaryController())
	registerVal0 = CoDShared.IsGametypeTeamBased()
	registerVal0 = LuaUtils.IsArenaMode()
	if registerVal0 and registerVal0 and registerVal0 then
		registerVal0 = CoDShared.IsTeamOverwhelmed(Engine.GetPrimaryController())
	end
	local function __FUNC_6B48_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_YES")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_6C9D_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = Engine.CanPauseGame()
			if registerVal5 then
				Engine.SetDvar("cl_paused", 0.000000)
			end
			if CoD.isMultiplayer == true then
				CloseStartMenu(arg4, arg2)
				CoDShared.QuitGame(arg2, registerVal0)
			end

		registerVal3.action = __FUNC_6C9D_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_NO")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_6DF6_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal4.action = __FUNC_6DF6_
		registerVal4.selectIndex = true
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal2 = DataSourceHelpers.ListSetup("EndGamePopup_List", __FUNC_6B48_, true, nil)
	DataSources.EndGamePopup_List = registerVal2
	return "EndGamePopup_List"
end

registerVal2.listDatasource = __FUNC_692E_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.EndGamePopup = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local registerVal3 = Engine.Localize("MENU_ARE_YOU_SURE_QUIT")
registerVal2.title = registerVal3
local function __FUNC_6E40_()
	local registerVal0 = Engine.DvarBool(0.000000, "ui_blocksaves")
	if not registerVal0 then
		return Engine.Localize("MENU_SAVEQUIT_TEXT_WITHOUT_DEVICE_CHANGE")
	end
	return ""
end

registerVal2.description = __FUNC_6E40_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Quit
local function __FUNC_6F40_()
	local function __FUNC_7006_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_RESUMEGAME_CAPS")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_7156_(arg0, arg1, arg2, arg3, arg4)
			Engine.SetDvar("cl_paused", 0.000000)
			Engine.LockInput(arg2, false)
			CloseStartMenu(arg4, arg2)
		end

		registerVal3.action = __FUNC_7156_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_SAVE_AND_QUIT_CAPS")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_722C_(arg0, arg1, arg2, arg3, arg4)
			Engine.Exec(arg2, "updategamerprofile")
			arg4:openMenu("SaveGameSavingPopup", arg2)
			arg4:close()
			CloseStartMenu(arg4, arg2)
			Engine.SendMenuResponse(arg2, "popup_leavegame", "endround")
		end

		registerVal4.action = __FUNC_722C_
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("SaveAndQuitGamePopup_List", __FUNC_7006_, true, nil)
	DataSources.SaveAndQuitGamePopup_List = registerVal1
	return "SaveAndQuitGamePopup_List"
end

registerVal2.listDatasource = __FUNC_6F40_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.SaveAndQuitGamePopup = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.Localize("MENU_QUIT_WARNING")
registerVal2.title = registerVal3
registerVal3 = Engine.Localize("MENU_NOPROFILE_QUIT_WARNING_DESC")
registerVal2.description = registerVal3
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Quit
local function __FUNC_7391_()
	local function __FUNC_744F_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_RESUMEGAME_CAPS")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_7599_(arg0, arg1, arg2, arg3, arg4)
			Engine.SetDvar("cl_paused", 0.000000)
			local registerVal7 = {}
			registerVal7.name = "close_all_ingame_menus"
			registerVal7.controller = arg2
			arg4:processEvent(registerVal7)
			CloseStartMenu(arg4, arg2)
		end

		registerVal3.action = __FUNC_7599_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = Engine.Localize("PLATFORM_QUIT_CAPS")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_76AD_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = IsGameTypeDOA()
			if not registerVal5 then
				local registerVal7 = {}
				registerVal7.name = "close_all_ingame_menus"
				registerVal7.controller = arg2
				arg4:processEvent(registerVal7)
				Engine.SetDvar("cl_paused", 0.000000)
				Engine.SendMenuResponse(arg2, "popup_leavegame", "endround")
				Engine.Exec(arg2, "disconnect")
			else
				registerVal5 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
				local registerVal6 = CoDShared.QuitGame(arg2)
				if not registerVal6 then
					CloseStartMenu(arg4, arg2)
					return 
				end
				local registerVal8 = {}
				registerVal8.name = "close_all_ingame_menus"
				registerVal8.controller = arg2
				arg4:processEvent(registerVal8)
				Engine.SetDvar("cl_paused", 0.000000)
				Engine.SendMenuResponse(arg2, "popup_leavegame", "endround")
			end
		end

		registerVal4.action = __FUNC_76AD_
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("QuitGamePopup_List", __FUNC_744F_, true, nil)
	DataSources.QuitGamePopup_List = registerVal1
	return "QuitGamePopup_List"
end

registerVal2.listDatasource = __FUNC_7391_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.QuitGamePopup = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.Localize("MENU_ARE_YOU_SURE_QUIT")
registerVal2.title = registerVal3
registerVal2.description = ""
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Quit
local function __FUNC_79A7_()
	local function __FUNC_7A65_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_NO")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_7B9A_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal3.action = __FUNC_7B9A_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_YES")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_7BE4_(arg0, arg1, arg2, arg3, arg4)
			Engine.Exec(arg2, "quit")
		end

		registerVal4.action = __FUNC_7BE4_
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("QuitPCGamePopup_List", __FUNC_7A65_, true, nil)
	DataSources.QuitPCGamePopup_List = registerVal1
	return "QuitPCGamePopup_List"
end

registerVal2.listDatasource = __FUNC_79A7_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.QuitPCGamePopup = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.Localize("MENU_CONTINUE_RESTART_CHECKPOINT")
registerVal2.title = registerVal3
registerVal3 = Engine.Localize("MENU_CHECKPOINT_RESTART_TEXT")
registerVal2.description = registerVal3
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Quit
local function __FUNC_7C58_()
	local function __FUNC_7D20_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_RESUMEGAME_CAPS")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_7E77_(arg0, arg1, arg2, arg3, arg4)
			Engine.SetDvar("cl_paused", 0.000000)
			Engine.LockInput(arg2, false)
			CloseStartMenu(arg4, arg2)
		end

		registerVal3.action = __FUNC_7E77_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_RESTART_CHECKPOINT_CAPS")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_7F4C_(arg0, arg1, arg2, arg3, arg4)
			Dvar.ui_busyBlockIngameMenu:set(1.000000)
			local registerVal7 = {}
			registerVal7.name = "flush_dynamic_hud"
			arg4:dispatchEventToRoot(registerVal7)
			registerVal7 = {}
			registerVal7.name = "close_all_ingame_menus"
			registerVal7.controller = arg2
			arg4:processEvent(registerVal7)
			Engine.SetDvar("cl_paused", 0.000000)
			CloseStartMenu(arg4, arg2)
			Engine.Exec(arg2, "fade 0 0 0 255 0 0 1")
			Engine.Exec(arg2, "stopControllerRumble")
			Engine.Exec(arg2, "silence")
			Engine.Exec(arg2, "checkpoint_restart")
		end

		registerVal4.action = __FUNC_7F4C_
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("RestartCheckpointPopup_List", __FUNC_7D20_, true, nil)
	DataSources.RestartCheckpointPopup_List = registerVal1
	return "RestartCheckpointPopup_List"
end

registerVal2.listDatasource = __FUNC_7C58_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.RestartCheckpointPopup = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.Localize("MENU_CONTINUE_RESTART")
registerVal2.title = registerVal3
registerVal3 = Engine.Localize("MENU_RESTART_LEVEL_TEXT")
registerVal2.description = registerVal3
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Quit
local function __FUNC_81EC_()
	local function __FUNC_82AE_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_NO")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_83E2_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal3.action = __FUNC_83E2_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_YES")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_842C_(arg0, arg1, arg2, arg3, arg4)
			Engine.SetDvar("cl_paused", 0.000000)
			Dvar.ui_busyBlockIngameMenu:set(1.000000)
			CloseStartMenu(arg4, arg2)
			Engine.Exec(arg2, "stopControllerRumble")
			Engine.Exec(arg2, "fade 0 0 0 255 0 0 1")
			Engine.Exec(arg2, "silence")
			local registerVal5 = Engine.SessionModeIsMode(CoD.SESSIONMODE_SYSTEMLINK)
			if registerVal5 ~= true then
			end
			local registerVal6 = Engine.SessionModeIsMode(CoD.SESSIONMODE_OFFLINE)
			if registerVal6 ~= true then
			end
			if not arg1 or true then
				Engine.Exec(arg2, "fast_restart")
			else
				Engine.SendMenuResponse(arg2, "restartgamepopup", "restart_level_zm")
			end
			Engine.PlayMenuMusic("death")
		end

		registerVal4.action = __FUNC_842C_
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("RestartGamePopup_List", __FUNC_82AE_, true, nil)
	DataSources.RestartGamePopup_List = registerVal1
	return "RestartGamePopup_List"
end

registerVal2.listDatasource = __FUNC_81EC_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.RestartGamePopup = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.Localize("MENU_CONTINUE_RESTART")
registerVal2.title = registerVal3
registerVal3 = Engine.Localize("MENU_RESTART_MISSION_TEXT")
registerVal2.description = registerVal3
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Quit
local function __FUNC_87A1_()
	local function __FUNC_8865_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_RESUMEGAME_CAPS")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_89B8_(arg0, arg1, arg2, arg3, arg4)
			Engine.SetDvar("cl_paused", 0.000000)
			Engine.LockInput(arg2, false)
			CloseStartMenu(arg4, arg2)
			local registerVal7 = {}
			registerVal7.name = "close_all_ingame_menus"
			registerVal7.controller = arg2
			arg4:processEvent(registerVal7)
		end

		registerVal3.action = __FUNC_89B8_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_RESTART_MISSION_CAPS")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_8AFC_(arg0, arg1, arg2, arg3, arg4)
			Dvar.ui_busyBlockIngameMenu:set(1.000000)
			local registerVal7 = {}
			registerVal7.name = "close_all_ingame_menus"
			registerVal7.controller = arg2
			arg4:processEvent(registerVal7)
			Engine.SetDvar("cl_paused", 0.000000)
			Engine.SendMenuResponse(arg2, "StartMenu_Main", "restartmission")
			CloseStartMenu(arg4, arg2)
			Engine.PlayMenuMusic("death")
			Engine.Exec(arg2, "stopControllerRumble")
			Engine.Exec(arg2, "fade 0 0 0 255 0 0 1")
			Engine.Exec(arg2, "silence")
			Engine.Exec(arg2, "clearKeyStates")
		end

		registerVal4.action = __FUNC_8AFC_
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("RestartMissionPopup_List", __FUNC_8865_, true, nil)
	DataSources.RestartMissionPopup_List = registerVal1
	return "RestartMissionPopup_List"
end

registerVal2.listDatasource = __FUNC_87A1_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.RestartMissionPopup = registerVal2
registerVal2 = {}
registerVal3 = CoD.OverlayUtility.AutoSizeMenuFromDescription("MessageDialogBox", "SystemOverlay_MessageDialog", "SystemOverlay_MessageDialogFull")
registerVal2.menuName = registerVal3
local function __FUNC_8DF8_(arg0)
	local registerVal3 = DataSources.MessageDialog.getModel(arg0)
	local registerVal1 = Engine.GetModelValue(Engine.GetModel(registerVal3, "message"))
	if not registerVal1 then
	end
	return ""
end

registerVal2.getStringRef = __FUNC_8DF8_
local function __FUNC_8F16_(arg0, arg1)
	local registerVal2 = CoD.OverlayUtility.Overlays.MessageDialogBox.getStringRef(arg1)
	if registerVal2 == "PLATFORM_SAVEDATA_CORRUPT" then
		arg0.ignoreForcedClose = true
	end
end

registerVal2.postCreateStep = __FUNC_8F16_
local function __FUNC_902F_(arg0)
	local registerVal1 = DataSources.MessageDialog.getModel(arg0)
	local registerVal2 = CoD.SafeGetModelValue(registerVal1, "messageTitle")
	if registerVal2 == nil or registerVal2 == "" then
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal1, "messageType"))
		if registerVal3 == Enum.MessageDialogType.MESSAGE_DIALOG_TYPE_INFO then
			local registerVal4 = Engine.Localize("MENU_INFO")
		else
			if registerVal3 == Enum.MessageDialogType.MESSAGE_DIALOG_TYPE_WARNING then
				registerVal4 = Engine.Localize("MENU_WARNING")
			else
				if registerVal3 == Enum.MessageDialogType.MESSAGE_DIALOG_TYPE_ERROR then
					registerVal4 = Engine.Localize("MENU_ERROR")
				else
					if registerVal3 == Enum.MessageDialogType.MESSAGE_DIALOG_TYPE_NOTICE then
						registerVal4 = CoD.OverlayUtility.Overlays.MessageDialogBox.getStringRef(arg0)
						if registerVal4 == "PLATFORM_PROFILE_CHANGE_MESSAGE" then
							registerVal4 = Engine.Localize("PLATFORM_PROFILE_CHANGE_CAPS")
						else
							registerVal4 = Engine.Localize("MENU_NOTICE")
						end
					end
				end
			end
		end
	end
	return Engine.ToUpper(registerVal4)
end

registerVal2.title = __FUNC_902F_
local function __FUNC_950E_(arg0)
	CoD.OverlayUtility.Overlays.MessageDialogBox.getStringRef(arg0)
	return Engine.Localize(CoD.OverlayUtility.Overlays.MessageDialogBox.getStringRef)
end

registerVal2.description = __FUNC_950E_
local function __FUNC_9615_(arg0)
	local registerVal1 = DataSources.MessageDialog.getModel(arg0)
	local registerVal2 = CoD.SafeGetModelValue(registerVal1, "messageImage")
	if registerVal2 ~= nil and registerVal2 ~= "" then
		return registerVal2
	end
	return nil
end

registerVal2.image = __FUNC_9615_
local function __FUNC_9723_(arg0)
	local registerVal3 = DataSources.MessageDialog.getModel(arg0)
	local registerVal1 = Engine.GetModelValue(Engine.GetModel(registerVal3, "messageType"))
	if registerVal1 == Enum.MessageDialogType.MESSAGE_DIALOG_TYPE_WARNING then
	else
		if registerVal1 == Enum.MessageDialogType.MESSAGE_DIALOG_TYPE_ERROR then
		else
			if registerVal1 == Enum.MessageDialogType.MESSAGE_DIALOG_TYPE_INFO then
			else
				if registerVal1 == Enum.MessageDialogType.MESSAGE_DIALOG_TYPE_NOTICE then
				end
			end
		end
	end
	return CoD.OverlayUtility.OverlayTypes.Notice
end

registerVal2.categoryType = __FUNC_9723_
local function __FUNC_9AD8_(arg0)
	local registerVal3 = DataSources.MessageDialog.getModel(arg0)
	local registerVal1 = Engine.GetModelValue(Engine.GetModel(registerVal3, "messagePending"))
	local function __FUNC_9C6B_(arg0)
		local registerVal1 = DataSources.MessageDialog.getModel(arg0)
		local registerVal2 = CoD.SafeGetModelValue(registerVal1, "messageTitle")
		local registerVal3 = CoD.OverlayUtility.Overlays.MessageDialogBox.getStringRef(arg0)
		if registerVal3 == "PLATFORM_PROFILE_CHANGE_MESSAGE" then
			registerVal3 = {}
			local registerVal4 = {}
			local registerVal5 = {}
			local registerVal6 = Engine.Localize("PLATFORM_CONTINUE_AS_USERNAME", Engine.GetGamertagWhoStolePrimaryController())
			registerVal5.displayText = registerVal6
			registerVal4.models = registerVal5
			registerVal5 = {}
			local function __FUNC_A0BA_(arg0, arg1, arg2, arg3, arg4)
				LuaUtils.UI_ClearErrorMessageDialog()
				LuaUtils.UI_SetSignedInGamertagModel(Engine.GetGamertagWhoStolePrimaryController())
				GoBack(arg4, arg2)
				Engine.Durango_ContinueAs()
				Engine.ComError(Enum.errorCode.ERROR_SOFTRESTART_KEEPDW, "")
			end

			registerVal5.action = __FUNC_A0BA_
			registerVal4.properties = registerVal5
			registerVal5 = {}
			registerVal6 = {}
			local registerVal7 = Engine.Localize("PLATFORM_SWITCH_USER")
			registerVal6.displayText = registerVal7
			registerVal5.models = registerVal6
			registerVal6 = {}
			local function __FUNC_A29C_(arg0, arg1, arg2, arg3, arg4)
				Engine.ShowAccountPicker(arg2)
				LuaUtils.UI_ClearErrorMessageDialog()
				GoBack(arg4, arg2)
			end

			registerVal6.action = __FUNC_A29C_
			registerVal5.properties = registerVal6
			registerVal3 = {registerVal4, registerVal5}
			return registerVal3
		else
			if registerVal2 == "MENU_CONNECTIVITY_NOTICE_CAPS" then
				registerVal3 = {}
				registerVal4 = {}
				registerVal5 = {}
				registerVal6 = Engine.Localize("MENU_PLAY_LOCAL")
				registerVal5.displayText = registerVal6
				registerVal4.models = registerVal5
				registerVal5 = {}
				local function __FUNC_A375_(arg0, arg1, arg2, arg3, arg4)
					LuaUtils.UI_ClearErrorMessageDialog()
					GoBack(arg4, arg2)
					local registerVal5 = GoBack(arg4, arg2)
					LobbyBeginPlay(registerVal5, arg2)
				end

				registerVal5.action = __FUNC_A375_
				registerVal4.properties = registerVal5
				registerVal5 = {}
				registerVal6 = {}
				registerVal7 = Engine.Localize("MENU_RETRY")
				registerVal6.displayText = registerVal7
				registerVal5.models = registerVal6
				registerVal6 = {}
				local function __FUNC_A442_(arg0, arg1, arg2, arg3, arg4)
					LuaUtils.UI_ClearErrorMessageDialog()
					local registerVal5 = GoBack(arg4, arg2)
					CoD.LobbyBase.FailedDWConnection = false
					LobbyBeginPlay(registerVal5, arg2)
				end

				registerVal6.action = __FUNC_A442_
				registerVal5.properties = registerVal6
				registerVal3 = {registerVal4, registerVal5}
				return registerVal3
			else
				registerVal3 = {}
				registerVal4 = {}
				registerVal5 = {}
				registerVal6 = Engine.Localize("MENU_OK")
				registerVal5.displayText = registerVal6
				registerVal4.models = registerVal5
				registerVal5 = {}
				local function __FUNC_A550_(arg0, arg1, arg2, arg3, arg4)
					LuaUtils.UI_ClearErrorMessageDialog()
					GoBack(arg4, arg2)
				end

				registerVal5.action = __FUNC_A550_
				registerVal4.properties = registerVal5
				registerVal3 = {registerVal4}
				return registerVal3
			end
		end
	end

	local registerVal4 = DataSourceHelpers.ListSetup(("MessageDialogBoxList" .. registerVal1), __FUNC_9C6B_, true, nil)
	DataSources[("MessageDialogBoxList" .. registerVal1)] = registerVal4
	return ("MessageDialogBoxList" .. registerVal1)
end

registerVal2.listDatasource = __FUNC_9AD8_
local function __FUNC_A5E6_(arg0)
	local registerVal1 = CoD.OverlayUtility.Overlays.MessageDialogBox.getStringRef(arg0)
	if registerVal1 ~= "PLATFORM_PROFILE_CHANGE_MESSAGE" and registerVal1 ~= "PLATFORM_SAVEDATA_CORRUPT" then
		local function __FUNC_A717_(arg0, arg1, arg2, arg3)
			LuaUtils.UI_ClearErrorMessageDialog()
			GoBack(arg3, arg2)
		end

		return __FUNC_A717_
	end
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_A5E6_
registerVal1.MessageDialogBox = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
local function __FUNC_A7AA_()
	Engine.Localize("MENU_KEEP_SEGMENT")
	return Engine.ToUpper(Engine.Localize)
end

registerVal2.title = __FUNC_A7AA_
local function __FUNC_A852_()
	return Engine.Localize("DEMO_KEEP_SEGMENT_HINT")
end

registerVal2.description = __FUNC_A852_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Save
local function __FUNC_A8DA_()
	local function __FUNC_A99B_(arg0)
		local registerVal4 = {}
		local registerVal5 = {}
		local registerVal6 = Engine.Localize("MENU_AUTONAME_SEGMENT")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_AC0C_(arg0, arg1, arg2, arg3, arg4)
			Engine.Exec(arg2, "demo_savesegment 0")
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_AC0C_
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal6 = Engine.Localize("MENU_NAME_SEGMENT")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_ACAE_(arg0, arg1, arg2, arg3, arg4)
			OpenDemoKeyboard(arg0, arg1, arg2, "segmentName")
		end

		registerVal5.action = __FUNC_ACAE_
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal6 = Engine.Localize("MENU_PREVIEW_SEGMENT")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_AD1F_(arg0, arg1, arg2, arg3, arg4)
			Engine.Exec(arg2, "demo_previewsegment")
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_AD1F_
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal6 = Engine.Localize("MENU_DISCARD_SEGMENT")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_ADBF_(arg0, arg1, arg2, arg3, arg4)
			Engine.Exec(arg2, "demo_savesegment 1")
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_ADBF_
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		return {}
	end

	local registerVal1 = DataSourceHelpers.ListSetup("DemoSaveClipPopup_List", __FUNC_A99B_, true, nil)
	DataSources.DemoSaveClipPopup_List = registerVal1
	return "DemoSaveClipPopup_List"
end

registerVal2.listDatasource = __FUNC_A8DA_
local function __FUNC_AE5E_(arg0, arg1)
	Engine.LockInput(arg1, true)
	Engine.SetUIActive(arg1, true)
	local function __FUNC_AF65_(arg0)
		Engine.LockInput(arg1, false)
		Engine.SetUIActive(arg1, false)
	end

	LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_AF65_)
end

registerVal2.postCreateStep = __FUNC_AE5E_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = nil
registerVal1.DemoSaveClipPopup = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal2.frameWidget = "CoD.DemoStartHighlightReel"
registerVal3 = Engine.ToUpper(Engine.Localize("MENU_DEMO_HIGHLIGHT_REEL"))
registerVal2.title = registerVal3
registerVal3 = Engine.Localize("MENU_DEMO_HIGHLIGHT_REEL_START_DESC")
registerVal2.description = registerVal3
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Save
local function __FUNC_B000_()
	local function __FUNC_B0C8_(arg0)
		local registerVal1 = Engine.GetNumberOfHighlightReelMoments()
		local registerVal5 = {}
		local registerVal6 = {}
		local registerVal7 = Engine.ToUpper(Engine.Localize("MENU_DEMO_CUSTOMIZE_HIGHLIGHT_REEL"))
		registerVal6.displayText = registerVal7
		registerVal5.models = registerVal6
		registerVal6 = {}
		local function __FUNC_B378_(arg0, arg1, arg2, arg3, arg4)
			StartMenuOpenCustomizeHighlightReel(arg0, arg1, arg2, arg3, arg4)
		end

		registerVal6.action = __FUNC_B378_
		registerVal5.properties = registerVal6
		table.insert({}, registerVal5)
		registerVal5 = {}
		registerVal6 = {}
		registerVal7 = Engine.ToUpper(Engine.Localize("MENU_DEMO_START_HIGHLIGHT_REEL"))
		registerVal6.displayText = registerVal7
		if registerVal1 > 0.000000 then
		end
		registerVal6.disabled = true
		registerVal5.models = registerVal6
		registerVal6 = {}
		if registerVal1 > 0.000000 then
		end
		registerVal6.disabled = true
		registerVal6.disabledAllowNav = true
		local function __FUNC_B3ED_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
			Engine.Exec(arg2, "demo_regeneratehighlightreel")
		end

		registerVal6.action = __FUNC_B3ED_
		if 0.000000 >= registerVal1 then
		end
		registerVal6.selectIndex = true
		registerVal5.properties = registerVal6
		table.insert({}, registerVal5)
		return {}
	end

	local function __FUNC_B498_(arg0, arg1, arg2)
		local registerVal3 = CoD.DemoUtility.GetNumHighlightReelMomentsModel()
		if arg1.updateSubscription then
			arg1:removeSubscription(arg1.updateSubscription)
		end
		local function __FUNC_B5C5_()
			arg1:updateDataSource(false)
		end

		local registerVal4 = arg1:subscribeToModel(registerVal3, __FUNC_B5C5_, false)
		arg1.updateSubscription = registerVal4
	end

	local registerVal1 = DataSourceHelpers.ListSetup("DemoStartHighlightReel_List", __FUNC_B0C8_, nil, nil, __FUNC_B498_)
	DataSources.DemoStartHighlightReel_List = registerVal1
	return "DemoStartHighlightReel_List"
end

registerVal2.listDatasource = __FUNC_B000_
local function __FUNC_B61A_(arg0)
	local function __FUNC_B64C_(arg0, arg1, arg2, arg3)
		GoBack(arg3, arg2)
	end

	return __FUNC_B64C_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_B61A_
registerVal1.DemoStartHighlightReelPopup = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_DemoCustomizeHighlightReel"
registerVal2.frameWidget = "CoD.DemoCustomizeHighlightReel"
registerVal3 = Engine.ToUpper(Engine.Localize("MENU_DEMO_CUSTOMIZE_HIGHLIGHT_REEL"))
registerVal2.title = registerVal3
registerVal3 = Engine.Localize("MENU_DEMO_CUSTOMIZE_HIGHLIGHT_REEL_DESC")
registerVal2.description = registerVal3
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Save
local function __FUNC_B698_()
	local function __FUNC_B764_(arg0)
		local registerVal1 = Engine.GetNumberOfHighlightReelMoments()
		local registerVal5 = {}
		local registerVal6 = {}
		local registerVal7 = Engine.ToUpper(Engine.Localize("MENU_DEMO_START_HIGHLIGHT_REEL"))
		registerVal6.displayText = registerVal7
		if registerVal1 > 0.000000 then
		end
		registerVal6.disabled = true
		registerVal5.models = registerVal6
		registerVal6 = {}
		local function __FUNC_B927_(arg0, arg1, arg2, arg3, arg4)
			GoBackMultiple(arg0, arg2, 2.000000)
			Engine.Exec(arg2, "demo_regeneratehighlightreel")
		end

		registerVal6.action = __FUNC_B927_
		registerVal5.properties = registerVal6
		table.insert({}, registerVal5)
		return {}
	end

	local function __FUNC_B9E1_(arg0, arg1, arg2)
		local registerVal3 = CoD.DemoUtility.GetNumHighlightReelMomentsModel()
		if arg1.updateSubscription then
			arg1:removeSubscription(arg1.updateSubscription)
		end
		local function __FUNC_BB0D_()
			arg1:updateDataSource(false)
		end

		local registerVal4 = arg1:subscribeToModel(registerVal3, __FUNC_BB0D_, false)
		arg1.updateSubscription = registerVal4
	end

	local registerVal1 = DataSourceHelpers.ListSetup("DemoCustomizeHighlightReel_List", __FUNC_B764_, nil, nil, __FUNC_B9E1_)
	DataSources.DemoCustomizeHighlightReel_List = registerVal1
	return "DemoCustomizeHighlightReel_List"
end

registerVal2.listDatasource = __FUNC_B698_
local function __FUNC_BB62_()
	local function __FUNC_BB94_(arg0, arg1, arg2, arg3)
		GoBack(arg3, arg2)
	end

	return __FUNC_BB94_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_BB62_
registerVal1.DemoCustomizeHighlightReelPopup = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local function __FUNC_BBE0_()
	Engine.Localize("DEMO_DELETE_ALL_KEYFRAMES")
	return Engine.ToUpper(Engine.Localize)
end

registerVal2.title = __FUNC_BBE0_
local function __FUNC_BC92_()
	return Engine.Localize("DEMO_DELETE_ALL_KEYFRAMES_HINT")
end

registerVal2.description = __FUNC_BC92_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Alert
local function __FUNC_BD22_()
	local function __FUNC_BDF1_(arg0)
		local registerVal4 = {}
		local registerVal5 = {}
		local registerVal6 = Engine.Localize("DEMO_DELETE_ALL")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_BF97_(arg0, arg1, arg2, arg3, arg4)
			CoD.DemoUtility.RemoveDollyCamMarker(arg2, -1.000000)
			CoD.DemoUtility.SetEditingDollyCameraMarker(arg2, false)
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_BF97_
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal6 = Engine.Localize("MENU_CANCEL")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_C09A_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_C09A_
		registerVal5.selectIndex = true
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		return {}
	end

	local registerVal1 = DataSourceHelpers.ListSetup("DemoDeleteAllDollyCameraMarkers_List", __FUNC_BDF1_, true, nil)
	DataSources.DemoDeleteAllDollyCameraMarkers_List = registerVal1
	return "DemoDeleteAllDollyCameraMarkers_List"
end

registerVal2.listDatasource = __FUNC_BD22_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = nil
registerVal1.DemoDeleteAllDollyCameraMarkers = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local function __FUNC_C0E4_()
	Engine.Localize("DEMO_DELETE_ALL_LIGHTS")
	return Engine.ToUpper(Engine.Localize)
end

registerVal2.title = __FUNC_C0E4_
local function __FUNC_C193_()
	return Engine.Localize("DEMO_DELETE_ALL_LIGHTS_HINT")
end

registerVal2.description = __FUNC_C193_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Alert
local function __FUNC_C21F_()
	local function __FUNC_C2EA_(arg0)
		local registerVal4 = {}
		local registerVal5 = {}
		local registerVal6 = Engine.Localize("DEMO_DELETE_ALL")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_C48F_(arg0, arg1, arg2, arg3, arg4)
			CoD.DemoUtility.RemoveLightmanMarker(arg2, -1.000000)
			CoD.DemoUtility.SetEditingLightmanMarker(arg2, false)
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_C48F_
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal6 = Engine.Localize("MENU_CANCEL")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_C58F_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_C58F_
		registerVal5.selectIndex = true
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		return {}
	end

	local registerVal1 = DataSourceHelpers.ListSetup("DemoDeleteAllLightmanMarkers_List", __FUNC_C2EA_, true, nil)
	DataSources.DemoDeleteAllLightmanMarkers_List = registerVal1
	return "DemoDeleteAllLightmanMarkers_List"
end

registerVal2.listDatasource = __FUNC_C21F_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = nil
registerVal1.DemoDeleteAllLightmanMarkers = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local function __FUNC_C5D8_()
	Engine.Localize("MENU_DELETE_SEGMENT")
	return Engine.ToUpper(Engine.Localize)
end

registerVal2.title = __FUNC_C5D8_
local function __FUNC_C684_()
	return Engine.Localize("MENU_DELETE_SEGMENT_CONFIRMATION")
end

registerVal2.description = __FUNC_C684_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Alert
local function __FUNC_C718_()
	local function __FUNC_C7DB_(arg0)
		local registerVal4 = {}
		local registerVal5 = {}
		local registerVal6 = Engine.Localize("MENU_YES")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_C978_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = CoD.DemoUtility.Timeline_GetHighlightedSegmentModel()
			local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal5, "segmentNumber"))
			Engine.ExecNow(arg2, ("demo_deletesegment " .. (registerVal6 - 1.000000)))
			TimelineEditorRefresh()
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_C978_
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal6 = Engine.Localize("MENU_CANCEL")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_CB35_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_CB35_
		registerVal5.selectIndex = true
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		return {}
	end

	local registerVal1 = DataSourceHelpers.ListSetup("DemoDeleteSegment_List", __FUNC_C7DB_, true, nil)
	DataSources.DemoDeleteSegment_List = registerVal1
	return "DemoDeleteSegment_List"
end

registerVal2.listDatasource = __FUNC_C718_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = nil
registerVal1.DemoDeleteSegment = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local function __FUNC_CB80_()
	Engine.Localize("MENU_DELETE_ALL_SEGMENTS")
	return Engine.ToUpper(Engine.Localize)
end

registerVal2.title = __FUNC_CB80_
local function __FUNC_CC31_()
	return Engine.Localize("MENU_DELETE_ALL_SEGMENTS_CONFIRMATION")
end

registerVal2.description = __FUNC_CC31_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Alert
local function __FUNC_CCC9_()
	local function __FUNC_CD8F_(arg0)
		local registerVal4 = {}
		local registerVal5 = {}
		local registerVal6 = Engine.Localize("MENU_YES")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_CF2C_(arg0, arg1, arg2, arg3, arg4)
			Engine.ExecNow(arg2, "demo_deleteclip")
			TimelineEditorRefresh()
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_CF2C_
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal6 = Engine.Localize("MENU_CANCEL")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_CFF5_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_CFF5_
		registerVal5.selectIndex = true
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		return {}
	end

	local registerVal1 = DataSourceHelpers.ListSetup("DemoDeleteAllSegments_List", __FUNC_CD8F_, true, nil)
	DataSources.DemoDeleteAllSegments_List = registerVal1
	return "DemoDeleteAllSegments_List"
end

registerVal2.listDatasource = __FUNC_CCC9_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = nil
registerVal1.DemoDeleteAllSegments = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local function __FUNC_D040_()
	Engine.Localize("MENU_MERGE_ALL_SEGMENTS")
	return Engine.ToUpper(Engine.Localize)
end

registerVal2.title = __FUNC_D040_
local function __FUNC_D0F0_()
	return Engine.Localize("MENU_MERGE_ALL_SEGMENTS_CONFIRMATION")
end

registerVal2.description = __FUNC_D0F0_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Alert
local function __FUNC_D188_()
	local function __FUNC_D24E_(arg0)
		local registerVal4 = {}
		local registerVal5 = {}
		local registerVal6 = Engine.Localize("MENU_YES")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_D3EC_(arg0, arg1, arg2, arg3, arg4)
			Engine.ExecNow(arg2, "demo_mergesegments")
			TimelineEditorRefresh()
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_D3EC_
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		registerVal4 = {}
		registerVal5 = {}
		registerVal6 = Engine.Localize("MENU_CANCEL")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_D4B8_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_D4B8_
		registerVal5.selectIndex = true
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		return {}
	end

	local registerVal1 = DataSourceHelpers.ListSetup("DemoMergeAllSegments_List", __FUNC_D24E_, true, nil)
	DataSources.DemoMergeAllSegments_List = registerVal1
	return "DemoMergeAllSegments_List"
end

registerVal2.listDatasource = __FUNC_D188_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = nil
registerVal1.DemoMergeAllSegments = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local function __FUNC_D504_()
	local registerVal1 = Engine.IsDemoClipPlaying()
	local registerVal2 = Engine.GameHost()
	if not registerVal1 then
		if registerVal2 then
			local registerVal3 = Engine.Localize("MPUI_LEAVE_FILM")
		else
			registerVal3 = Engine.Localize("MPUI_END_FILM")
		else
			if registerVal2 then
				registerVal3 = Engine.Localize("MPUI_LEAVE_CLIP")
			else
				registerVal3 = Engine.Localize("MPUI_END_CLIP")
			end
		end
	end
	return Engine.ToUpper(registerVal3)
end

registerVal2.title = __FUNC_D504_
local function __FUNC_D6CC_()
	local registerVal0 = Engine.IsClipModified()
	if registerVal0 then
		return Engine.Localize("MENU_DEMO_UNUPLOADED_CLIP")
	else
		return ""
	end
end

registerVal2.description = __FUNC_D6CC_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Quit
local function __FUNC_D7A3_()
	local function __FUNC_D85E_(arg0)
		local registerVal2 = Engine.IsClipModified()
		local function __FUNC_DB87_()
			local registerVal0 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
			if not registerVal0 then
				Engine.GameModeResetModes()
				Engine.SessionModeResetModes()
				Engine.Exec(arg0, "disconnect")
			else
				Engine.Exec(arg0, "xpartystopdemo")
			end
		end

		if not registerVal2 then
			local registerVal6 = {}
			local registerVal7 = {}
			local registerVal8 = Engine.Localize("MENU_YES")
			registerVal7.displayText = registerVal8
			registerVal6.models = registerVal7
			registerVal7 = {}
			local function __FUNC_DD20_(arg0, arg1, arg2, arg3, arg4)
				GoBack(arg4, arg2)
				__FUNC_DB87_(arg2)
			end

			registerVal7.action = __FUNC_DD20_
			registerVal6.properties = registerVal7
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal8 = Engine.Localize("MENU_NO")
			registerVal7.displayText = registerVal8
			registerVal6.models = registerVal7
			registerVal7 = {}
			local function __FUNC_DD78_(arg0, arg1, arg2, arg3, arg4)
				GoBack(arg4, arg2)
			end

			registerVal7.action = __FUNC_DD78_
			registerVal7.selectIndex = true
			registerVal6.properties = registerVal7
			table.insert({}, registerVal6)
		else
			registerVal6 = {}
			registerVal7 = {}
			registerVal8 = Engine.Localize("MENU_SAVE_CLIP")
			registerVal7.displayText = registerVal8
			registerVal6.models = registerVal7
			registerVal7 = {}
			local function __FUNC_DDC4_(arg0, arg1, arg2, arg3, arg4)
				StartMenuUploadClip(arg0, arg1, arg2, arg3, arg4)
			end

			registerVal7.action = __FUNC_DDC4_
			registerVal7.selectIndex = true
			registerVal6.properties = registerVal7
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal8 = Engine.Localize("MENU_END_FILM_WITHOUT_SAVING")
			registerVal7.displayText = registerVal8
			registerVal6.models = registerVal7
			registerVal7 = {}
			local function __FUNC_DE29_(arg0, arg1, arg2, arg3, arg4)
				GoBack(arg4, arg2)
				__FUNC_DB87_(arg2)
			end

			registerVal7.action = __FUNC_DE29_
			registerVal6.properties = registerVal7
			table.insert({}, registerVal6)
			registerVal6 = {}
			registerVal7 = {}
			registerVal8 = Engine.Localize("MENU_CANCEL")
			registerVal7.displayText = registerVal8
			registerVal6.models = registerVal7
			registerVal7 = {}
			local function __FUNC_DE80_(arg0, arg1, arg2, arg3, arg4)
				GoBack(arg4, arg2)
			end

			registerVal7.action = __FUNC_DE80_
			registerVal6.properties = registerVal7
			table.insert({}, registerVal6)
		end
		return {}
	end

	local registerVal1 = DataSourceHelpers.ListSetup("EndDemoPopup_List", __FUNC_D85E_, true, nil)
	DataSources.EndDemoPopup_List = registerVal1
	return "EndDemoPopup_List"
end

registerVal2.listDatasource = __FUNC_D7A3_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.EndDemoPopup = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal2.title = nil
registerVal2.description = nil
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local registerVal4 = CoD.OverlayUtility.DefaultScriptDialogGoBack("ScriptMessageDialog_Compact")
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = registerVal4
registerVal1.ScriptMessageDialog_Compact = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local function __FUNC_DECC_(arg0, arg1)
	arg0.anyControllerAllowed = true
end

registerVal2.postCreateStep = __FUNC_DECC_
registerVal2.title = "MENU_NOTICE"
registerVal2.description = "MENU_UPDATE_NEEDED"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Connection
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
local function __FUNC_DF1C_(arg0)
	local function __FUNC_DFDE_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_OK")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_E0C8_(arg0, arg1, arg2, arg3, arg4)
			CoD.LobbyBase.FailedDWConnection = true
			GoBack(arg4, arg2)
		end

		registerVal3.action = __FUNC_E0C8_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal2 = DataSourceHelpers.ListSetup("UpdateNeededPopupList", __FUNC_DFDE_, true, nil)
	DataSources.UpdateNeededPopupList = registerVal2
	return "UpdateNeededPopupList"
end

registerVal2.listDatasource = __FUNC_DF1C_
registerVal1.UpdateNeeded = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local function __FUNC_E166_(arg0, arg1)
	arg0.unusedControllerAllowed = true
	if arg0.layout and arg0.layout.frameWidget and arg0.layout.frameWidget.framedWidget then
		arg0.layout.frameWidget.framedWidget:playClip("LoadingLoop")
	end
	local function __FUNC_E342_(arg2)
		local registerVal1 = Engine.AreLocalFilesReady(arg1)
		if registerVal1 == true then
			GoBack(arg0, arg1)
			return 
		else
			if CoD.OverlayUtility.LOCAL_FILES_FETCH_WAIT_TIME < 0.000000 then
				GoBack(arg0, arg1)
				return 
			end
		end
	end

	arg0:addElement(LUI.UITimer.newElementTimer(400.000000, false, __FUNC_E342_))
end

registerVal2.postCreateStep = __FUNC_E166_
registerVal2.title = "MENU_LOADING_PROFILE"
registerVal2.description = ""
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Connection
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.LoadingProfile = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local function __FUNC_E495_(arg0, arg1)
	arg0.unusedControllerAllowed = true
	if arg0.layout and arg0.layout.frameWidget and arg0.layout.frameWidget.framedWidget then
		arg0.layout.frameWidget.framedWidget:playClip("LoadingLoop")
	end
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.GetModel(registerVal5, "lobbyRoot.beginPlay")
	Engine.SetModelValue(registerVal4, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_INVALID)
	local function __FUNC_E787_(arg2)
		local registerVal1 = Engine.SteamVacBanned(Engine.GetPrimaryController())
		if CoD.isPC and registerVal1 then
			CoD.LobbyBase.FailedDWConnection = true
			GoBack(arg0, arg1)
			LuaUtils.UI_ShowErrorMessageDialog(arg1, "PLATFORM_VACBANNED")
			return 
		end
		registerVal1 = Engine.IsDemonwareFetchingDone(arg1)
		if registerVal1 then
			CoD.LobbyBase.FailedDWConnection = false
			registerVal1 = LobbyData.GetLobbyNav()
			local registerVal2 = Engine.GetPrimaryController()
			if registerVal2 == arg1 then
				if registerVal1 == LobbyData.UITargets.UI_MODESELECT.id then
					registerVal2 = {}
					registerVal2.controller = arg1
					registerVal2.networkMode = Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE
					Engine.LobbyVM_CallFunc("NetworkModeChanged", registerVal2)
				else
					if registerVal1 == LobbyData.UITargets.UI_MAIN.id then
						LuaUtils.SetNetworkMode(arg1, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE)
					end
				end
			end
			GoBack(arg0, arg1)
			registerVal2 = Dvar.lobby_beginPlay:exists()
			if registerVal1 == LobbyData.UITargets.UI_MAIN.id and registerVal2 then
				Dvar.lobby_beginPlay:set(Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE)
			end
			return 
		end
		registerVal1 = Engine.CheckNetConnection()
		registerVal2 = Engine.IsLPCBusy()
		if registerVal2 then
			registerVal2 = Engine.GetLPCCompletionPercentage()
			if registerVal2 == 0.000000 or registerVal2 == 100.000000 then
				local registerVal4 = Engine.Localize("MENU_CHECKING_FILES")
				CoD.OverlayUtility.Overlays[arg0.menuName].description = registerVal4
			else
				registerVal4 = Engine.Localize("MENU_DOWNLOAD_IN_PROGRESS")
				CoD.OverlayUtility.Overlays[arg0.menuName].description = (registerVal4 .. "
" .. registerVal2 .. "%")
			end
			arg0.refreshData(arg0, nil)
		else
			if CoD.OverlayUtility.CONNECTINGDW_MAX_WAIT_TIME < 0.000000 or registerVal1 == false then
				registerVal2 = GoBack(arg0, arg1)
				if registerVal1 == false then
				else
					local registerVal5, registerVal6 = Engine.GetSystemInfo(arg1, CoD.SYSINFO_CONNECTIVITY_INFO)
					local registerVal7 = Engine.DvarBool(nil, "systemUnderMaintenance")
					if registerVal7 == true then
						registerVal7 = Engine.Localize("MENU_SYSTEM_UNDER_MAINTENANCE", Engine.Localize("MENU_BLACKOPS_CAPS"))
					else
						registerVal7 = Engine.Localize("PLATFORM_DEMONWARE_DISCONNECT")
						local registerVal9 = Engine.Localize("MENU_ERROR_CODE", registerVal5)
					end
					if registerVal2 ~= nil and registerVal2.id == "Menu.Main" then
					end
					registerVal7 = Engine.IsShipBuild()
					if registerVal7 == false then
					end
				end
				CoD.LobbyBase.FailedDWConnection = true
				LuaUtils.UI_ShowErrorMessageDialog(arg1, ((registerVal7 .. "

" .. registerVal9) .. "

	DEBUG INFO:
" .. registerVal6), "MENU_CONNECTIVITY_NOTICE_CAPS")
			end
		end
	end

	arg0:addElement(LUI.UITimer.newElementTimer(400.000000, false, __FUNC_E787_))
end

registerVal2.postCreateStep = __FUNC_E495_
registerVal2.title = "MENU_CONNECTING_DW"
registerVal2.description = ""
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Connection
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.ConnectingToDemonware = registerVal2
registerVal2 = {}
registerVal3 = CoD.OverlayUtility.AutoSizeMenuFromDescription("LobbyPlayNetworkModePopup")
registerVal2.menuName = registerVal3
local function __FUNC_F298_(arg0)
	if arg0 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
	else
		if arg0 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
		end
	end
	return Engine.Localize("MENU_PLAY_LOCAL_CAPS")
end

registerVal2.title = __FUNC_F298_
local function __FUNC_F40A_(arg0)
	if arg0 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		local registerVal2 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		if 1.000000 < registerVal2 then
		else
		else
			if arg0 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
				registerVal2 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
				if 1.000000 < registerVal2 then
				else
				end
			end
		end
	end
	return Engine.Localize("XBOXLIVE_PLAY_LOCAL_DESC")
end

registerVal2.description = __FUNC_F40A_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Connection
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
local function __FUNC_F6AE_(arg0)
	local function __FUNC_F77D_(arg1)
		if arg0 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		else
			if arg0 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
			end
		end
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_PLAY_LOCAL")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_F9C9_(arg0, arg1, arg2, arg3, arg4)
			LobbyToggleNetwork(arg0, arg1, arg2, arg3)
			GoBack(arg4, arg2)
		end

		registerVal4.action = __FUNC_F9C9_
		registerVal4.actionParam = arg0
		registerVal3.properties = registerVal4
		registerVal4 = {}
		registerVal5 = {}
		local registerVal6 = Engine.Localize("MENU_CANCEL")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_FA48_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_FA48_
		registerVal4.properties = registerVal5
		registerVal2 = {registerVal3, registerVal4}
		return registerVal2
	end

	local registerVal2 = DataSourceHelpers.ListSetup("LobbyPlayNetworkModePopupButtons", __FUNC_F77D_, true, nil)
	DataSources.LobbyPlayNetworkModePopupButtons = registerVal2
	return "LobbyPlayNetworkModePopupButtons"
end

registerVal2.listDatasource = __FUNC_F6AE_
registerVal1.LobbyPlayNetworkModePopup = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_NoBG"
registerVal2.title = "MENU_PLAY_AGAIN"
registerVal2.description = ""
registerVal2.image = ""
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_FA94_()
	local function __FUNC_FB56_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		registerVal3.displayText = "MENU_FR_RESTART_COURSE"
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_FC52_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg0, arg2)
			Engine.LockInput(arg2, false)
			Engine.SendMenuResponse(arg2, "freerun_endgame_popup", "fr_restart")
		end

		registerVal3.action = __FUNC_FC52_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		local registerVal4 = {}
		registerVal4.displayText = "MENU_QUIT_GAME_CAPS"
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_FD48_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg0, arg2)
			CoDShared.QuitGame(arg2)
		end

		registerVal4.action = __FUNC_FD48_
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("FreerunEndGameButtons", __FUNC_FB56_, true, nil)
	DataSources.FreerunEndGameButtons = registerVal1
	return "FreerunEndGameButtons"
end

registerVal2.listDatasource = __FUNC_FA94_
registerVal1.FreerunEndGamePopup = registerVal2
registerVal2 = {}
registerVal2.menuName = "FeatureOverlay"
local function __FUNC_FDD1_(arg0, arg1)
	return "MENU_ATTACHMENT_RESTRICTION_OPTIONS"
end

registerVal2.title = __FUNC_FDD1_
local function __FUNC_FE31_(arg0, arg1)
	return ""
end

registerVal2.description = __FUNC_FE31_
local function __FUNC_FE6E_(arg0, arg1)
	local registerVal2 = arg1:getModel()
	if registerVal2 then
		Engine.GetModel(registerVal2, "image")
		return Engine.GetModelValue(Engine.GetModel)
	end
	return ""
end

registerVal2.image = __FUNC_FE6E_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal2.openMethod = CoD.OverlayUtility.OpenMethods.Overlay
registerVal2.frameWidget = "CoD.GameSettings_AttachmentOptionsPopup"
local function __FUNC_FF48_()
	local function __FUNC_FF7C_(arg0, arg1, arg2, arg3)
		local registerVal5 = Engine.GetGlobalModel()
		local registerVal4 = Engine.CreateModel(registerVal5, "GametypeSettings.Update")
		Engine.ForceNotifyModelSubscriptions(registerVal4)
		GoBack(arg0, arg2)
	end

	return __FUNC_FF7C_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_FF48_
local function __FUNC_10091_(arg0, arg1)
	local function __FUNC_10162_()
		local registerVal0 = arg1:getModel()
		local registerVal1 = Engine.GetModelValue(Engine.GetModel(registerVal0, "attachmentIndex"))
		local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal0, "title"))
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal0, "description"))
		local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal0, "image"))
		local registerVal13 = CoD.GameSettingsUtility.GetGroupRestrictionOptions()
		local registerVal16 = {}
		registerVal16.attachmentIndex = registerVal1
		local function __FUNC_10495_(arg0)
			local registerVal2 = Engine.AttachmentRestrictionStateChangedForAnyWeapon(arg0.attachmentIndex)
			if registerVal2 == true then
				return -1.000000
			else
				return Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_NONE
			end
		end

		table.insert({}, CoD.OptionsUtility.CreateItemRestrictionSettings(arg0, registerVal2, "", ("Attachment_" .. registerVal2), registerVal13, registerVal4, CoD.OptionsUtility.GametypeSettingsSetAttachmentRestrictionState, registerVal16, __FUNC_10495_))
		return {}
	end

	local function __FUNC_105D0_(arg0, arg1, arg2)
		local registerVal4 = Engine.GetGlobalModel()
		local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
		registerVal4 = Engine.CreateModel(registerVal3, "Update")
		if arg1.updateSubscription then
			arg1:removeSubscription(arg1.updateSubscription)
		end
		local function __FUNC_10741_()
			arg1:updateDataSource(false)
		end

		local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_10741_, false)
		arg1.updateSubscription = registerVal5
	end

	local registerVal3 = DataSourceHelpers.ListSetup("CompetitiveSettingsAttachment", __FUNC_10162_, nil, nil, __FUNC_105D0_)
	DataSources.CompetitiveSettingsAttachment = registerVal3
	return "CompetitiveSettingsAttachment"
end

registerVal2.listDatasource = __FUNC_10091_
registerVal1.RestrictedAttachmentMenu = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.Localize("PLATFORM_CHECKING_RESTRICTIONS_TITLE")
registerVal2.title = registerVal3
registerVal2.description = ""
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Connection
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
local function __FUNC_10796_(arg0, arg1)
	arg0.unusedControllerAllowed = true
	if arg0.layout and arg0.layout.frameWidget and arg0.layout.frameWidget.framedWidget then
		arg0.layout.frameWidget.framedWidget:playClip("LoadingLoop")
	end
	local function __FUNC_1096E_(arg2)
		local registerVal1 = Engine.IsCurrentlyCheckingContentRestrictions(arg1)
		if registerVal1 == false then
			registerVal1 = Engine.HasCompletedCheckingRestrictions(arg1)
			if registerVal1 then
				CoD.LobbyBase.FailedDWConnection = false
				registerVal1 = LobbyData.GetLobbyNav()
				if registerVal1 == LobbyData.UITargets.UI_MODESELECT.id then
					local registerVal2 = {}
					registerVal2.controller = arg1
					registerVal2.networkMode = Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE
					Engine.LobbyVM_CallFunc("NetworkModeChanged", registerVal2)
				else
					if registerVal1 == LobbyData.UITargets.UI_MAIN.id then
						LuaUtils.SetNetworkMode(arg1, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE)
					end
				end
				GoBack(arg0, arg1)
				registerVal2 = Dvar.lobby_beginPlay:exists()
				if registerVal1 == LobbyData.UITargets.UI_MAIN.id and registerVal2 then
					Dvar.lobby_beginPlay:set(Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE)
				end
				return 
			else
				registerVal1 = LobbyData.GetLobbyNav()
				if registerVal1 == LobbyData.UITargets.UI_MODESELECT.id then
					registerVal2 = {}
					registerVal2.controller = arg1
					registerVal2.networkMode = Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN
					Engine.LobbyVM_CallFunc("NetworkModeChanged", registerVal2)
				else
					if registerVal1 == LobbyData.UITargets.UI_MAIN.id then
						LuaUtils.SetNetworkMode(arg1, Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN)
					end
				end
				GoBack(arg0, arg1)
				registerVal2 = Dvar.lobby_beginPlay:exists()
				if registerVal1 == LobbyData.UITargets.UI_MAIN.id and registerVal2 then
					Dvar.lobby_beginPlay:set(Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN)
				end
				return 
			end
		end
	end

	arg0:addElement(LUI.UITimer.newElementTimer(400.000000, false, __FUNC_1096E_))
end

registerVal2.postCreateStep = __FUNC_10796_
registerVal1.CheckingRestrictions = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.Localize("MENU_LOGIN_QUEUE_DEFAULT")
registerVal2.title = registerVal3
registerVal2.description = ""
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Connection
local function __FUNC_10F63_()
	local function __FUNC_1101C_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_PLAY_LOCAL")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_11110_(arg0, arg1, arg2, arg3, arg4)
			Engine.LeaveQueue(arg2)
			CoD.LobbyBase.FailedDWConnection = true
			GoBack(arg4, arg2)
		end

		registerVal3.action = __FUNC_11110_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("LoginQueue_List", __FUNC_1101C_, true, nil)
	DataSources.LoginQueue_List = registerVal1
	return "LoginQueue_List"
end

registerVal2.listDatasource = __FUNC_10F63_
local function __FUNC_111EA_(arg0, arg1)
	if arg0.layout and arg0.layout.frameWidget and arg0.layout.frameWidget.framedWidget then
		arg0.layout.frameWidget.framedWidget:playClip("LoadingLoop")
	end
	local function __FUNC_1139F_(arg2)
		local registerVal1 = Engine.GetPlayerQueueInfo(arg1)
		local registerVal2 = Engine.IsPlayerQueued(arg1)
		if registerVal2 then
			if registerVal1 ~= nil and 0.000000 < registerVal1.position and 0.000000 < registerVal1.eta then
				local registerVal4 = math.floor((registerVal1.eta / 60.000000))
				local registerVal6 = math.floor((registerVal4 / 60.000000))
				local registerVal8 = math.floor(((0.000000 / 1000.000000) / 60.000000))
				local registerVal9 = math.floor((0.000000 / 1000.000000))
				local registerVal10 = math.floor((registerVal8 / 60.000000))
				local registerVal12 = Engine.Localize("MENU_LOGIN_QUEUE", registerVal1.position, registerVal6, (registerVal4 % 60.000000), (registerVal1.eta % 60.000000), registerVal10, (registerVal8 % 60.000000), (registerVal9 % 60.000000))
				CoD.OverlayUtility.Overlays[arg0.menuName].description = registerVal12
				arg0.refreshData(arg0, nil)
			else
				if registerVal1 == nil or not registerVal1.success then
					local registerVal3 = GoBack(arg0, arg1)
					LuaUtils.UI_ShowErrorMessageDialog(arg1, "PLATFORM_DEMONWARE_DISCONNECT", "MENU_NOTICE_CAPS")
					CoD.LobbyBase.FailedDWConnection = true
					Engine.LeaveQueue(arg1)
				else
					registerVal2 = GoBack(arg0, arg1)
					CoD.OverlayUtility.CreateOverlay(arg1, registerVal2, "ConnectingToDemonware")
				end
			end
		end
	end

	arg0:addElement(LUI.UITimer.newElementTimer(400.000000, false, __FUNC_1139F_))
end

registerVal2.postCreateStep = __FUNC_111EA_
registerVal1.LoginQueued = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal2.title = "MENU_PAINTJOB_DELETE_CONFIRMATION"
registerVal2.description = "MENU_CANNOT_UNDO"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_1187E_()
	local function __FUNC_11947_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_YES")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_11A95_(arg0, arg1, arg2, arg3, arg4)
			PaintjobSelector_ClearPaintjob(arg4, arg1, arg2)
		end

		registerVal3.action = __FUNC_11A95_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_NO")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_11AFC_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal4.action = __FUNC_11AFC_
		registerVal4.selectIndex = true
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("PaintjobClearConfirmation_List", __FUNC_11947_, true, nil)
	DataSources.PaintjobClearConfirmation_List = registerVal1
	return "PaintjobClearConfirmation_List"
end

registerVal2.listDatasource = __FUNC_1187E_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.PaintjobClearConfirmationOverlay = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local function __FUNC_11B48_(arg0, arg1)
	if arg1.resetAction == 0.000000 then
	end
	return Engine.Localize("MENU_LB_CLEAR_ALL_CONFIRMATION_TITLE")
end

registerVal2.title = __FUNC_11B48_
local function __FUNC_11C48_(arg0, arg1)
	if arg1.resetAction == 0.000000 then
	end
	return Engine.Localize("MENU_LB_CLEAR_ALL_CONFIRMATION_MESSAGE")
end

registerVal2.description = __FUNC_11C48_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_11D4C_(arg0, arg1)
	local function __FUNC_11E24_(arg0, arg2)
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_YES")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_11F79_(arg0, arg2, arg3, arg4, arg5)
			if arg1.resetAction == 0.000000 then
				Engine.ExecNow(arg3, "ClearCustomLeaderboards")
			else
				local registerVal6 = Engine.GetGlobalModel()
				local registerVal5 = Engine.GetModel(registerVal6, "leaderboardDef")
				if arg1.resetAction == 1.000000 and registerVal5 ~= nil then
					registerVal6 = Engine.GetModelValue(registerVal5)
					Engine.ExecNow(arg3, ("resetLeaderboard " .. registerVal6 .. " MPUI_CUSTOM_LEADERBOARD_RESET_FAILED"))
				end
			end
			registerVal5 = GoBack(arg5, arg3)
			GoBack(registerVal5, arg3)
		end

		registerVal4.action = __FUNC_11F79_
		registerVal3.properties = registerVal4
		registerVal4 = {}
		registerVal5 = {}
		local registerVal6 = Engine.Localize("MENU_NO")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_1219D_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_1219D_
		registerVal5.selectIndex = true
		registerVal4.properties = registerVal5
		registerVal2 = {registerVal3, registerVal4}
		return registerVal2
	end

	local registerVal3 = DataSourceHelpers.ListSetup("LeaderboardClearCustomConfirmation_List", __FUNC_11E24_, true, nil)
	DataSources.LeaderboardClearCustomConfirmation_List = registerVal3
	return "LeaderboardClearCustomConfirmation_List"
end

registerVal2.listDatasource = __FUNC_11D4C_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.LeaderboardClearCustomConfirmationOverlay = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.ToUpper(Engine.Localize("MENU_CODPOINTS_INTRO_HEADER"))
registerVal2.title = registerVal3
registerVal2.description = "MENU_CODPOINTS_INTRO_DESC"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.CODPoints
local function __FUNC_121E8_()
	local function __FUNC_122AA_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_OK")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_12394_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = Engine.StorageGetBuffer(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			if registerVal5 then
				registerVal5.codPointMsgSeen:set(1.000000)
				Engine.StorageWrite(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			end
			local registerVal6 = GoBack(arg4, arg2)
			OpenBlackMarketIncentivePopup(registerVal6, arg2)
		end

		registerVal3.action = __FUNC_12394_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("InitialCODPoints_List", __FUNC_122AA_, true, nil)
	DataSources.InitialCODPoints_List = registerVal1
	return "InitialCODPoints_List"
end

registerVal2.listDatasource = __FUNC_121E8_
registerVal1.InitialCODPointsOverlay = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.ToUpper(Engine.Localize("MENU_RETAIL_INCENTIVE_TITLE"))
registerVal2.title = registerVal3
registerVal2.description = "MENU_RETAIL_INCENTIVE_DESC"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.RetailIncentive
local function __FUNC_12552_()
	local function __FUNC_12611_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_OK")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_126FC_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = Engine.StorageGetBuffer(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			if registerVal5 then
				registerVal5.retailIncentiveMsgSeen:set(1.000000)
				Engine.StorageWrite(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			end
			local registerVal6 = GoBack(arg4, arg2)
			OpenBlackMarketIncentivePopup(registerVal6, arg2)
		end

		registerVal3.action = __FUNC_126FC_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("RetailIncentive_List", __FUNC_12611_, true, nil)
	DataSources.RetailIncentive_List = registerVal1
	return "RetailIncentive_List"
end

registerVal2.listDatasource = __FUNC_12552_
registerVal1.RetailIncentiveOverlay = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal3 = Engine.ToUpper(Engine.Localize("MPUI_BM_INCENTIVE_SEASONPASS_TITLE"))
registerVal2.title = registerVal3
registerVal2.description = "MPUI_BM_INCENTIVE_SEASONPASS_DESC"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.SeasonPassIncentive
local function __FUNC_128C1_()
	local function __FUNC_12985_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_OK")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_12A70_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = Engine.StorageGetBuffer(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			if registerVal5 then
				registerVal5.spIncentiveMsgSeen:set(1.000000)
				Engine.StorageWrite(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			end
			local registerVal6 = GoBack(arg4, arg2)
			OpenBlackMarketIncentivePopup(registerVal6, arg2)
		end

		registerVal3.action = __FUNC_12A70_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("SeasonPassIncentive_List", __FUNC_12985_, true, nil)
	DataSources.SeasonPassIncentive_List = registerVal1
	return "SeasonPassIncentive_List"
end

registerVal2.listDatasource = __FUNC_128C1_
registerVal1.SeasonPassIncentiveOverlay = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.Localize("MENU_NOTICE")
registerVal2.title = registerVal3
registerVal2.description = "MENU_SP_INCENTIVE_EXPLOIT"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Notice
local function __FUNC_12C31_()
	local function __FUNC_12CF3_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_OK")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_12DDC_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = Engine.StorageGetBuffer(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			if registerVal5 then
				registerVal5.spIncentiveExploitMsgSeen:set(1.000000)
				Engine.StorageWrite(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			end
			local registerVal6 = GoBack(arg4, arg2)
			OpenBlackMarketIncentivePopup(registerVal6, arg2)
		end

		registerVal3.action = __FUNC_12DDC_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("SeasonPassExlpoit_List", __FUNC_12CF3_, true, nil)
	DataSources.SeasonPassExlpoit_List = registerVal1
	return "SeasonPassExlpoit_List"
end

registerVal2.listDatasource = __FUNC_12C31_
registerVal1.SeasonPassExlpoitOverlay = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.ToUpper(Engine.Localize("MENU_DIGITAL_INCENTIVE_TITLE"))
registerVal2.title = registerVal3
registerVal2.description = "MENU_DIGITAL_INCENTIVE_DESC"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.DigitalIncentive
local function __FUNC_12FA4_()
	local function __FUNC_13066_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_OK")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_13150_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = Engine.StorageGetBuffer(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			if registerVal5 then
				registerVal5.digitalIncentiveMsgSeen:set(1.000000)
				Engine.StorageWrite(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			end
			local registerVal6 = GoBack(arg4, arg2)
			OpenBlackMarketIncentivePopup(registerVal6, arg2)
		end

		registerVal3.action = __FUNC_13150_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("DigitalIncentive_List", __FUNC_13066_, true, nil)
	DataSources.DigitalIncentive_List = registerVal1
	return "DigitalIncentive_List"
end

registerVal2.listDatasource = __FUNC_12FA4_
registerVal1.DigitalIncentiveOverlay = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal2.title = "MENU_GUNSMITH_DELETE_CONFIRMATION"
registerVal2.description = "MENU_CANNOT_UNDO"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_13316_()
	local function __FUNC_133DF_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_YES")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_1352D_(arg0, arg1, arg2, arg3, arg4)
			Gunsmith_ClearVariant(arg4, arg1, arg2)
		end

		registerVal3.action = __FUNC_1352D_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_NO")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_1358B_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal4.action = __FUNC_1358B_
		registerVal4.selectIndex = true
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("GunsmithClearConfirmation_List", __FUNC_133DF_, true, nil)
	DataSources.GunsmithClearConfirmation_List = registerVal1
	return "GunsmithClearConfirmation_List"
end

registerVal2.listDatasource = __FUNC_13316_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.GunsmithClearConfirmationOverlay = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal2.title = "MENU_EMBLEM_DELETE_CONFIRMATION"
registerVal2.description = "MENU_CANNOT_UNDO"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_135D4_()
	local function __FUNC_1369D_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_YES")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_137ED_(arg0, arg1, arg2, arg3, arg4)
			EmblemSelect_ClearEmblem(arg4, arg1, arg2)
		end

		registerVal3.action = __FUNC_137ED_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_NO")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_1384E_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal4.action = __FUNC_1384E_
		registerVal4.selectIndex = true
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("EmblemClearConfirmation_List", __FUNC_1369D_, true, nil)
	DataSources.EmblemClearConfirmation_List = registerVal1
	return "EmblemClearConfirmation_List"
end

registerVal2.listDatasource = __FUNC_135D4_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.EmblemClearConfirmationOverlay = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal2.title = "MENU_CUSTOMGAME_DELETE_CONFIRMATION"
registerVal2.description = "MENU_CANNOT_UNDO"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_13898_()
	local function __FUNC_13965_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_YES")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		registerVal3.action = CustomGameSelector_Delete
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_NO")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_13AD8_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal4.action = __FUNC_13AD8_
		registerVal4.selectIndex = true
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("CustomGameClearConfirmation_List", __FUNC_13965_, true, nil)
	DataSources.CustomGameClearConfirmation_List = registerVal1
	return "CustomGameClearConfirmation_List"
end

registerVal2.listDatasource = __FUNC_13898_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.CustomGameClearConfirmationOverlay = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.frameWidget = "CoD.systemOverlay_SaveVariantFrame"
registerVal3 = Engine.Localize("MENU_GUNSMITH_SAVE_CHANGES_TITLE")
registerVal2.title = registerVal3
local function __FUNC_13B24_(arg0, arg1)
	local registerVal2 = CoD.GetCustomization(arg0, "weapon_index")
	LocalizeWeaponNameIntoString("MENU_GUNSMITH_SAVE_CHANGES_SUBTITLE", "mp", arg0, registerVal2)
	return Engine.Localize(LocalizeWeaponNameIntoString)
end

registerVal2.description = __FUNC_13B24_
local function __FUNC_13C5A_(arg0, arg1)
	local registerVal2 = arg1:getModel()
	local registerVal3 = Engine.GetModel(registerVal2, "variantIndex")
	if registerVal2 and registerVal3 then
		return Engine.GetModelValue(registerVal3)
	end
	return ""
end

registerVal2.image = __FUNC_13C5A_
local function __FUNC_13D47_(arg0, arg1)
	local registerVal2 = arg1:getModel()
	local registerVal3 = Engine.GetModel(registerVal2, "variantName")
	if registerVal2 and registerVal3 then
		return Engine.GetModelValue(registerVal3)
	end
	return ""
end

registerVal2.variantName = __FUNC_13D47_
local function __FUNC_13E32_(arg0, arg1)
	local registerVal2 = arg1:getModel()
	local registerVal3 = Engine.GetModel(registerVal2, "weaponIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = Engine.GetItemName(registerVal4)
	if registerVal2 and registerVal3 and registerVal5 then
		local registerVal6 = Engine.ToUpper(Engine.Localize(Engine.GetItemName(registerVal4)))
		return registerVal6
	end
	return ""
end

registerVal2.weaponName = __FUNC_13E32_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Save
local function __FUNC_13FB6_(arg0, arg1)
	local function __FUNC_14079_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = LocalizeToUpperString("MENU_SAVE")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_14199_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = Gunsmith_IsCurrentVariantChanged(arg2)
			if registerVal5 then
				Gunsmith_ClearSelectedGunsmithVariantStats(arg2)
				Gunsmith_ClearCACWithUpdatedVariant(arg4, arg2)
			end
			Gunsmith_SaveChangesButtonAction(arg4, arg1, "save", arg2)
			ForceNotifyModel(arg2, "Gunsmith.UpdateDataSource")
		end

		registerVal3.action = __FUNC_14199_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = LocalizeToUpperString("MENU_DISCARD")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_1431C_(arg0, arg1, arg2, arg3, arg4)
			Gunsmith_SaveChangesButtonAction(arg0, arg1, "discard", arg2)
		end

		registerVal4.action = __FUNC_1431C_
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal3 = DataSourceHelpers.ListSetup("GunsmithSaveVariant_List", __FUNC_14079_, true, nil)
	DataSources.GunsmithSaveVariant_List = registerVal3
	return "GunsmithSaveVariant_List"
end

registerVal2.listDatasource = __FUNC_13FB6_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.GunsmithSaveVariant = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.frameWidget = "CoD.systemOverlay_SaveEmblemFrame"
registerVal3 = Engine.Localize("MENU_SAVE_EMBLEM")
registerVal2.title = registerVal3
registerVal3 = Engine.Localize("MENU_SAVE_EMBLEM_DESC")
registerVal2.description = registerVal3
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Save
local function __FUNC_1439B_(arg0, arg1)
	PaintjobEditor_RemoveGrid(arg1)
end

registerVal2.postCreateStep = __FUNC_1439B_
local function __FUNC_143F3_(arg0)
	if arg0 then
		local registerVal1 = Engine.GetModel(arg0, "emblemTextEntry")
		return Engine.GetModelValue(registerVal1)
	end
end

registerVal2.inputText = __FUNC_143F3_
local function __FUNC_144AE_(arg0)
	local function __FUNC_1456C_(arg1)
		local registerVal2 = IsPreBuiltEmblemTab(arg1)
		if registerVal2 then
			registerVal2 = LocalizeToUpperString("MENU_EMBLEM_SAVE_AS_NEW")
		else
			registerVal2 = LocalizeToUpperString("MENU_EMBLEM_SAVE_CHANGES")
		end
		registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = {}
		registerVal4.displayText = registerVal2
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_1471A_(arg1, arg2, arg3, arg4, arg5)
			EmblemEditor_SaveEmblem(arg5, arg2, arg3, arg0)
			ForceNotifyModel(arg3, "Emblem.UpdateDataSource")
		end

		registerVal4.action = __FUNC_1471A_
		registerVal3.properties = registerVal4
		registerVal4 = {}
		local registerVal5 = {}
		local registerVal6 = LocalizeToUpperString("MENU_EMBLEMS_DISCARD")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_147C8_(arg1, arg2, arg3, arg4, arg5)
			EmblemEditor_DiscardChanges(arg5, arg2, arg3, arg0)
		end

		registerVal5.action = __FUNC_147C8_
		registerVal4.properties = registerVal5
		registerVal2 = {registerVal3, registerVal4}
		return registerVal2
	end

	local registerVal2 = DataSourceHelpers.ListSetup("EmblemSave_List", __FUNC_1456C_, true, nil)
	DataSources.EmblemSave_List = registerVal2
	return "EmblemSave_List"
end

registerVal2.listDatasource = __FUNC_144AE_
local function __FUNC_14831_(arg0)
	local function __FUNC_14864_(arg0, arg1, arg2, arg3)
		GoBack(arg3, arg2)
		PaintjobEditor_RestoreGridState(arg2)
	end

	return __FUNC_14864_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_14831_
local function __FUNC_148E5_(arg0)
	local function __FUNC_14918_(arg0, arg1, arg2, arg3)
		ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_EMBLEMS")
	end

	return __FUNC_14918_
end

registerVal2[CoD.OverlayUtility.ProcessActionKeyboardComplete] = __FUNC_148E5_
registerVal1.EmblemSave = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.frameWidget = "CoD.systemOverlay_SavePaintjobFrame"
registerVal3 = Engine.Localize("MENU_SAVE_PAINTJOB")
registerVal2.title = registerVal3
registerVal3 = Engine.Localize("MENU_SAVE_PAINTJOB_DESC")
registerVal2.description = registerVal3
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Save
local function __FUNC_14991_(arg0)
	if arg0 then
		local registerVal1 = Engine.GetModel(arg0, "paintjobTextEntry")
		return Engine.GetModelValue(registerVal1)
	end
end

registerVal2.inputText = __FUNC_14991_
local function __FUNC_14A50_(arg0)
	local function __FUNC_14B12_(arg1)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = LocalizeToUpperString("MENU_EMBLEM_SAVE_CHANGES")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_14C50_(arg1, arg2, arg3, arg4, arg5)
			PaintjobEditor_SavePaintjob(arg1, arg2, arg3, arg0)
			ForceNotifyModel(arg3, "Paintshop.UpdateDataSource")
		end

		registerVal3.action = __FUNC_14C50_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = LocalizeToUpperString("MENU_EMBLEMS_DISCARD")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_14D07_(arg1, arg2, arg3, arg4, arg5)
			PaintjobEditor_DiscardChanges(arg5, arg2, arg3, arg0)
		end

		registerVal4.action = __FUNC_14D07_
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal2 = DataSourceHelpers.ListSetup("PaintjobSave_List", __FUNC_14B12_, true, nil)
	DataSources.PaintjobSave_List = registerVal2
	return "PaintjobSave_List"
end

registerVal2.listDatasource = __FUNC_14A50_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
local function __FUNC_14D6F_(arg0)
	local function __FUNC_14DA0_(arg0, arg1, arg2, arg3)
		ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_PAINTJOB")
	end

	return __FUNC_14DA0_
end

registerVal2[CoD.OverlayUtility.ProcessActionKeyboardComplete] = __FUNC_14D6F_
registerVal1.PaintjobSave = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.frameWidget = "CoD.systemOverlay_DailyChallengeWarningFrame"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Notice
registerVal2.title = "MENU_ABANDON_CHALLENGE_QUESTION"
registerVal2.description = "MENU_ABANDON_CHALLENGE_DESC"
local function __FUNC_14E1A_()
	local function __FUNC_14EE1_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = LocalizeToUpperString("MENU_DISMISS")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_1500E_(arg0, arg1, arg2, arg3, arg4)
			HandleGoBackFromDailyChallenge(nil, nil, arg2)
			GoBack(arg4, arg2)
		end

		registerVal3.action = __FUNC_1500E_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = LocalizeToUpperString("MENU_ABANDON_CHALLENGE")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_15090_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = Engine.GetPlayerStats(arg2, CoD.STATS_LOCATION_NORMAL, Enum.eModes.MODE_ZOMBIES)
			local registerVal6 = registerVal5.PlayerStatsList.ZM_CURRENT_DAILY_CHALLENGE.statValue:get()
			local registerVal7 = Engine.GetDailyChallengeInfo(arg2, Enum.eModes.MODE_ZOMBIES, registerVal6)
			local registerVal8 = registerVal5.PlayerStatsList.ZM_DAILY_CHALLENGE_INGAME_TIME.statValue:get()
			local registerVal9 = registerVal5.PlayerStatsList.ZM_DAILY_CHALLENGE_START_TIME.statValue:get()
			local registerVal10 = registerVal5.PlayerStatsList.ZM_DAILY_CHALLENGE_GAMES_PLAYED.statValue:get()
			LUI.CoDMetrics.DailyChallengeAbandonedEvent(arg2, registerVal6, registerVal9, registerVal7[1.000000].currChallengeStatValue, registerVal8, registerVal10)
			Engine.RecordDailyChallengeAbandoned(arg2, registerVal6, registerVal9, registerVal7[1.000000].currChallengeStatValue, registerVal8, registerVal10)
			Engine.AbandonDailyChallenge(arg2)
			HandleGoBackFromDailyChallenge(nil, nil, arg2)
			GoBack(arg4, arg2)
		end

		registerVal4.action = __FUNC_15090_
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("DailyChallengeWarningOverlay", __FUNC_14EE1_, true, nil)
	DataSources.DailyChallengeWarningOverlay = registerVal1
	return "DailyChallengeWarningOverlay"
end

registerVal2.listDatasource = __FUNC_14E1A_
local function __FUNC_15512_(arg0, arg1, arg2, arg3)
	local function __FUNC_15544_(arg0, arg1, arg2)
		local registerVal3 = GoBack(arg1, arg2)
		OpenSystemOverlay(arg0, registerVal3, arg2, "InspectDailyChallengeOverlay", nil)
	end

	return __FUNC_15544_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_15512_
registerVal1.DailyChallengeWarningOverlay = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.frameWidget = "CoD.systemOverlay_DailyChallengeFrame"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Notice
local function __FUNC_155ED_(arg0, arg1)
	local registerVal3 = CoD.ChallengesUtility.GetDailyChallenge(arg0, Enum.eModes.MODE_ZOMBIES)
	CoD.perController[arg0].dailyChallengeInfo = registerVal3
	if not CoD.perController[arg0].dailyChallengeInfo then
		return ""
	end
	return CoD.perController[arg0].dailyChallengeInfo.challengeName
end

registerVal2.title = __FUNC_155ED_
local function __FUNC_157B3_(arg0, arg1)
	if not CoD.perController[arg0].dailyChallengeInfo then
		return ""
	end
	return CoD.perController[arg0].dailyChallengeInfo.challengeDescription
end

registerVal2.description = __FUNC_157B3_
local function __FUNC_158B4_(arg0, arg1)
	if not CoD.perController[arg0].dailyChallengeInfo then
		return ""
	end
	return CoD.perController[arg0].dailyChallengeInfo.image
end

registerVal2.image = __FUNC_158B4_
local function __FUNC_159A9_(arg0, arg1)
	if not CoD.perController[arg0].dailyChallengeInfo then
		return ""
	end
	return Engine.Localize("MPUI_X_SLASH_Y", CoD.perController[arg0].dailyChallengeInfo.currChallengeStatValue, CoD.perController[arg0].dailyChallengeInfo.targetVal)
end

registerVal2.fractionText = __FUNC_159A9_
local function __FUNC_15B1F_(arg0, arg1)
	if not CoD.perController[arg0].dailyChallengeInfo then
		return 0.000000
	end
	return CoD.perController[arg0].dailyChallengeInfo.percentComplete
end

registerVal2.progressPercentage = __FUNC_15B1F_
local function __FUNC_15C16_(arg0, arg1)
	if not CoD.perController[arg0].dailyChallengeInfo then
		return ""
	end
	return CoD.perController[arg0].dailyChallengeInfo.rewardText
end

registerVal2.rewardText = __FUNC_15C16_
local function __FUNC_15D0E_()
	local function __FUNC_15DD5_(arg0)
		local registerVal4 = {}
		local registerVal5 = {}
		local registerVal6 = LocalizeToUpperString("MENU_DISMISS")
		registerVal5.displayText = registerVal6
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_15FA3_(arg0, arg1, arg2, arg3, arg4)
			HandleGoBackFromDailyChallenge(nil, nil, arg2)
			GoBack(arg4, arg2)
		end

		registerVal5.action = __FUNC_15FA3_
		registerVal4.properties = registerVal5
		table.insert({}, registerVal4)
		local registerVal2 = Engine.CanDailyChallengeBeAbandoned(arg0)
		if registerVal2 then
			registerVal4 = {}
			registerVal5 = {}
			registerVal6 = LocalizeToUpperString("MENU_ABANDON_CHALLENGE")
			registerVal5.displayText = registerVal6
			registerVal4.models = registerVal5
			registerVal5 = {}
			local function __FUNC_16024_(arg0, arg1, arg2, arg3, arg4)
				local registerVal5 = GoBack(arg4, arg2)
				OpenSystemOverlay(arg0, registerVal5, arg2, "DailyChallengeWarningOverlay", nil)
			end

			registerVal5.action = __FUNC_16024_
			registerVal4.properties = registerVal5
			table.insert({}, registerVal4)
		end
		return {}
	end

	local registerVal1 = DataSourceHelpers.ListSetup("InspectDailyChallengeOverlay", __FUNC_15DD5_, true, nil)
	DataSources.InspectDailyChallengeOverlay = registerVal1
	return "InspectDailyChallengeOverlay"
end

registerVal2.listDatasource = __FUNC_15D0E_
local function __FUNC_160CD_()
	local function __FUNC_16100_(arg0, arg1, arg2, arg3)
		HandleGoBackFromDailyChallenge(nil, nil, arg2)
		GoBack(arg3, arg2)
	end

	return __FUNC_16100_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_160CD_
registerVal1.InspectDailyChallengeOverlay = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.frameWidget = "CoD.systemOverlay_CreateVariantNameFrame"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Save
local function __FUNC_16184_(arg0, arg1)
	local registerVal2 = CoD.GetCustomization(arg0, "weapon_index")
	LocalizeWeaponNameIntoString("MENU_GUNSMITH_CREATE_VARIANT_NAME_TITLE", "mp", arg0, registerVal2)
	return Engine.Localize(LocalizeWeaponNameIntoString)
end

registerVal2.title = __FUNC_16184_
registerVal2.description = ""
local function __FUNC_162BE_(arg0, arg1)
	local registerVal2 = arg1:getModel()
	if registerVal2 then
		local registerVal3 = Engine.GetModel(registerVal2, "variantTextEntry")
		return Engine.GetModelValue(registerVal3)
	end
end

registerVal2.inputText = __FUNC_162BE_
local function __FUNC_16395_(arg0, arg1)
	local function __FUNC_163CC_(arg0, arg2, arg3, arg4)
		Gunsmith_CreateVariantNameBack(arg1, arg2, arg3)
		GoBack(arg4, arg3)
		ClearMenuSavedState(arg4)
	end

	return __FUNC_163CC_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_16395_
local function __FUNC_1647D_()
	local function __FUNC_164B0_(arg0, arg1, arg2, arg3)
		ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_GUNSMITH")
	end

	return __FUNC_164B0_
end

registerVal2[CoD.OverlayUtility.ProcessActionKeyboardComplete] = __FUNC_1647D_
local function __FUNC_1652A_(arg0, arg1)
	local function __FUNC_16560_(arg0, arg2, arg3, arg4)
		Gunsmith_ConfirmVariantName(arg1, arg2, arg3, arg4)
	end

	return __FUNC_16560_
end

registerVal2[CoD.OverlayUtility.ProcessConfirmVariantName] = __FUNC_1652A_
registerVal1.GunsmithCreateVariantNameOverlay = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal2.title = "MENU_EMBLEM_NO_CHANGES_TITLE"
registerVal2.description = "MENU_EMBLEM_NO_CHANGES_DESC"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_165C9_()
	local function __FUNC_1668F_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		registerVal3.displayText = "MENU_OK_CAPS"
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_16743_(arg0, arg1, arg2, arg3, arg4)
			EmblemEditor_NoChangesAction(arg0, arg1, arg2, arg4)
		end

		registerVal3.action = __FUNC_16743_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("CraftNoChangesNotification", __FUNC_1668F_, true, nil)
	DataSources.CraftNoChangesNotification = registerVal1
	return "CraftNoChangesNotification"
end

registerVal2.listDatasource = __FUNC_165C9_
registerVal1.CraftNoChangesNotification = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal2.title = "MENU_WARNING_CAMPAIGN_OFFLINE_TO_ONLINE"
registerVal2.description = "MENU_WARNING_CAMPAIGN_OFFLINE_TO_ONLINE2"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Connection
local function __FUNC_167AA_()
	local function __FUNC_16873_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		registerVal3.displayText = "MENU_OK_CAPS"
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_16927_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal3.action = __FUNC_16927_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("CampaignOfflineToOnlineWarning", __FUNC_16873_, true, nil)
	DataSources.CampaignOfflineToOnlineWarning = registerVal1
	return "CampaignOfflineToOnlineWarning"
end

registerVal2.listDatasource = __FUNC_167AA_
registerVal1.CampaignOfflineToOnlineWarning = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal2.title = "MENU_REFETCH_WAD_CONFIRMATION_TITLE"
registerVal2.description = "MENU_REFETCH_WAD_CONFIRMATION_MESSAGE"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Connection
local function __FUNC_16970_()
	local function __FUNC_16A39_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		registerVal3.displayText = "MENU_CONFIRM_CAPS"
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_16AF4_(arg0, arg1, arg2, arg3, arg4)
			local registerVal7 = Engine.GetGlobalModel()
			local registerVal6 = Engine.GetModel(registerVal7, "pubstorageFilesChanged")
			Engine.SetModelValue(registerVal6, false)
			Engine.SetDvar("live_pubSemaphoreUserTriggerTime", Engine.milliseconds())
			Engine.ComError(Enum.errorCode.ERROR_SOFTRESTART_KEEPDW, "")
		end

		registerVal3.action = __FUNC_16AF4_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("PublisherFilesChangedButtons", __FUNC_16A39_, true, nil)
	DataSources.PublisherFilesChangedButtons = registerVal1
	return "PublisherFilesChangedButtons"
end

registerVal2.listDatasource = __FUNC_16970_
registerVal1.PublisherFilesChangedPopup = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.Localize("PLATFORM_RESET_CONTROLS_CONFIRM")
registerVal2.title = registerVal3
registerVal2.description = ""
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Settings
local function __FUNC_16CE5_()
	local function __FUNC_16DA5_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_NO")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_16EDA_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal3.action = __FUNC_16EDA_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_YES")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_16F24_(arg0, arg1, arg2, arg3, arg4)
			ResetPCControlsToDefault(arg4, arg1, arg2)
			GoBack(arg4, arg2)
		end

		registerVal4.action = __FUNC_16F24_
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("ResetPCControls_List", __FUNC_16DA5_, true, nil)
	DataSources.ResetPCControls_List = registerVal1
	return "ResetPCControls_List"
end

registerVal2.listDatasource = __FUNC_16CE5_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.ResetPCControls = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.Localize("PLATFORM_APPLY_GRAPHICS_CONFIRM")
registerVal2.title = registerVal3
registerVal2.description = ""
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Settings
local function __FUNC_16FA6_()
	local function __FUNC_17065_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_NO")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_1719A_(arg0, arg1, arg2, arg3, arg4)
			CoD.PCUtil.RevertUnsavedGraphicsOptions()
			CoD.PCUtil.FreeOptionsDirtyModel(arg2)
			GoBack(arg4, arg2)
		end

		registerVal3.action = __FUNC_1719A_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_YES")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_1728A_(arg0, arg1, arg2, arg3, arg4)
			ApplyPCGraphicsOptions(arg4, arg1, arg2)
			UpdateGamerprofile(arg4, arg1, arg2)
			CoD.PCUtil.FreeOptionsDirtyModel(arg2)
			GoBack(arg4, arg2)
		end

		registerVal4.action = __FUNC_1728A_
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("ApplyPCGraphics_List", __FUNC_17065_, true, nil)
	DataSources.ApplyPCGraphics_List = registerVal1
	return "ApplyPCGraphics_List"
end

registerVal2.listDatasource = __FUNC_16FA6_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.ApplyPCGraphics = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local function __FUNC_17398_(arg0, arg1)
	local function __FUNC_1746A_(arg2)
		local registerVal1 = Engine.GetSteamExchangeProcessStatus()
		if registerVal1 == 0.000000 then
			GoBack(arg0, arg1)
		else
			if registerVal1 == 4.000000 then
			else
				if registerVal1 == 1.000000 or 90000.000000 < 0.000000 then
					local registerVal2 = GoBack(arg0, arg1)
					CoD.OverlayUtility.CreateOverlay(arg1, registerVal2, "ErrorCoDPointsPurchasePC")
				else
					if registerVal1 == 3.000000 then
						registerVal2 = GoBack(arg0, arg1)
						CoD.OverlayUtility.CreateOverlay(arg1, registerVal2, "OverlayErrorCoDPointsPurchasePC")
					end
				end
			end
		end
	end

	arg0:addElement(LUI.UITimer.newElementTimer(500.000000, false, __FUNC_1746A_))
end

registerVal2.postCreateStep = __FUNC_17398_
registerVal2.title = "PLATFORM_PROCESSING"
registerVal2.description = ""
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.CODPoints
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = nil
registerVal1.ProcessingCoDPointsPurchasePC = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local function __FUNC_1767B_(arg0, arg1)
end

registerVal2.postCreateStep = __FUNC_1767B_
registerVal2.title = "PLATFORM_PROCESSING_FAILED"
registerVal2.description = ""
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Error
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.ErrorCoDPointsPurchasePC = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local function __FUNC_176A4_(arg0, arg1)
end

registerVal2.postCreateStep = __FUNC_176A4_
registerVal2.title = "PLATFORM_PROCESSING_FAILED"
registerVal2.description = "PLATFORM_PROCESSING_FAILED_NO_OVERLAY"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Error
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.OverlayErrorCoDPointsPurchasePC = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.Localize("MENU_REGISTRATION_SUCCESS_TITLE")
registerVal2.title = registerVal3
registerVal3 = Engine.Localize("MENU_REGISTRATION_SUCCESS")
registerVal2.description = registerVal3
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Unlock
local function __FUNC_176D0_()
	local function __FUNC_17795_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_OK")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_17880_(arg0, arg1, arg2, arg3, arg4)
			LUI.CoDMetrics.AccountCreated(arg0, arg2, "1", "menu")
			FinishRegistrationFlow(arg0, arg2, arg4)
		end

		registerVal3.action = __FUNC_17880_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("RegistrationSuccess_List", __FUNC_17795_, true, nil)
	DataSources.RegistrationSuccess_List = registerVal1
	return "RegistrationSuccess_List"
end

registerVal2.listDatasource = __FUNC_176D0_
local function __FUNC_17962_()
	local function __FUNC_17994_(arg0, arg1, arg2, arg3)
		LUI.CoDMetrics.AccountCreated(arg0, arg2, "1", "menu")
		FinishRegistrationFlow(arg0, arg2, arg3)
	end

	return __FUNC_17994_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_17962_
registerVal1.RegistrationSuccess = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.Localize("MENU_REGISTRATION_SUCCESS_TITLE")
registerVal2.title = registerVal3
registerVal3 = Engine.Localize("MENU_REGISTRATION_OPTIN_SUCCESS")
registerVal2.description = registerVal3
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Unlock
local function __FUNC_17A76_()
	local function __FUNC_17B32_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_OK")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_17C1C_(arg0, arg1, arg2, arg3, arg4)
			LUI.CoDMetrics.AccountCreated(arg0, arg2, "1", "menu")
			FinishRegistrationFlow(arg0, arg2, arg4)
		end

		registerVal3.action = __FUNC_17C1C_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("OptInSuccess_List", __FUNC_17B32_, true, nil)
	DataSources.OptInSuccess_List = registerVal1
	return "OptInSuccess_List"
end

registerVal2.listDatasource = __FUNC_17A76_
local function __FUNC_17CFE_()
	local function __FUNC_17D30_(arg0, arg1, arg2, arg3)
		LUI.CoDMetrics.AccountCreated(arg0, arg2, "1", "menu")
		FinishRegistrationFlow(arg0, arg2, arg3)
	end

	return __FUNC_17D30_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_17CFE_
registerVal1.OptInSuccess = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.Localize("PLATFORM_CONFIRM_GRAPHICS_CHANGE")
registerVal2.title = registerVal3
registerVal2.description = ""
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Settings
local function __FUNC_17E12_()
	local function __FUNC_17ED9_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_NO")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_1800E_(arg0, arg1, arg2, arg3, arg4)
			CoD.PCUtil.RevertUnsavedGraphicsOptions()
			CoD.PCUtil.FreeOptionsDirtyModel(arg2)
			GoBackMultiple(arg4, arg2, 2.000000)
		end

		registerVal3.action = __FUNC_1800E_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_YES")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_1810F_(arg0, arg1, arg2, arg3, arg4)
			ApplyPCGraphicsOptions(arg4, arg1, arg2)
			UpdateGamerprofile(arg4, arg1, arg2)
			CoD.PCUtil.FreeOptionsDirtyModel(arg2)
			GoBack(arg4, arg2)
		end

		registerVal4.action = __FUNC_1810F_
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("ConfirmPCGraphicsChange_List", __FUNC_17ED9_, true, nil)
	DataSources.ConfirmPCGraphicsChange_List = registerVal1
	return "ConfirmPCGraphicsChange_List"
end

registerVal2.listDatasource = __FUNC_17E12_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.ConfirmPCGraphicsChange = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal3 = Engine.Localize("PLATFORM_RESTORE_GRAPHICS")
registerVal2.title = registerVal3
registerVal2.description = ""
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Settings
local function __FUNC_1821C_()
	local function __FUNC_182DD_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_NO")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_18412_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		registerVal3.action = __FUNC_18412_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		registerVal4 = {}
		local registerVal5 = Engine.Localize("MENU_YES")
		registerVal4.displayText = registerVal5
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_1845C_(arg0, arg1, arg2, arg3, arg4)
			ResetPCGraphicsOptions(arg4, arg1, arg2)
			UpdateGamerprofile(arg4, arg1, arg2)
			CoD.PCUtil.FreeOptionsDirtyModel(arg2)
			GoBack(arg4, arg2)
		end

		registerVal4.action = __FUNC_1845C_
		registerVal3.properties = registerVal4
		registerVal1 = {registerVal2, registerVal3}
		return registerVal1
	end

	local registerVal1 = DataSourceHelpers.ListSetup("ResetPCGraphics_List", __FUNC_182DD_, true, nil)
	DataSources.ResetPCGraphics_List = registerVal1
	return "ResetPCGraphics_List"
end

registerVal2.listDatasource = __FUNC_1821C_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.ResetPCGraphics = registerVal2
registerVal2 = {}
local function __FUNC_1856C_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	if arg0 == CoD.OverlayUtility.GenericPopupSizes.Small then
		return "SystemOverlay_Compact"
	else
		if arg0 == CoD.OverlayUtility.GenericPopupSizes.Large then
			return "SystemOverlay_Full"
		end
	end
end

registerVal2.menuName = __FUNC_1856C_
local function __FUNC_186A5_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	return Engine.Localize(arg1)
end

registerVal2.title = __FUNC_186A5_
local function __FUNC_1870E_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	return Engine.Localize(arg2)
end

registerVal2.description = __FUNC_1870E_
local function __FUNC_18776_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	if arg3 and arg3 ~= "" then
		return arg3
	end
end

registerVal2.image = __FUNC_18776_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_187BE_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	if arg4 then
		local function __FUNC_188A5_(arg0)
			local registerVal2 = type(arg5)
			if arg0 or registerVal2 ~= "function" then
			end
			registerVal2 = {}
			local registerVal3 = {}
			local registerVal4 = {}
			local registerVal5 = Engine.Localize(arg4)
			registerVal4.displayText = registerVal5
			registerVal3.models = registerVal4
			registerVal4 = {}
			registerVal4.action = CoD.OverlayUtility.DefaultButtonAction
			registerVal3.properties = registerVal4
			registerVal2 = {registerVal3}
			return registerVal2
		end

		local registerVal9 = DataSourceHelpers.ListSetup((("GenericPopup_" .. arg1) .. "_List"), __FUNC_188A5_, true, nil)
		DataSources[("GenericPopup_" .. arg1)] = registerVal9
		return ("GenericPopup_" .. arg1)
	end
end

registerVal2.listDatasource = __FUNC_187BE_
local function __FUNC_18A19_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal7 = type(arg6)
	if arg6 and registerVal7 == "function" then
		return arg6
	else
		return CoD.OverlayUtility.DefaultGoBack()
	end
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_18A19_
registerVal1.GenericPopup = registerVal2
registerVal2 = {}
registerVal3 = CoD.OverlayUtility.AutoSizeMenuFromDescription("GenericModalDialog")
registerVal2.menuName = registerVal3
local function __FUNC_18AE8_(arg0, arg1, arg2, arg3, arg4)
	return Engine.Localize(arg0)
end

registerVal2.title = __FUNC_18AE8_
local function __FUNC_18B52_(arg0, arg1, arg2, arg3, arg4)
	return Engine.Localize(arg1)
end

registerVal2.description = __FUNC_18B52_
local function __FUNC_18BBA_(arg0, arg1, arg2, arg3, arg4)
	if arg2 and arg2 ~= "" then
		return arg2
	end
end

registerVal2.image = __FUNC_18BBA_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_18C02_(arg0, arg1, arg2, arg3, arg4)
	local function __FUNC_18CE6_(arg0)
		local registerVal2, registerVal3, registerVal4 = ipairs(arg3)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			local registerVal9 = {}
			local registerVal10 = {}
			local registerVal11 = Engine.Localize(value6)
			registerVal10.displayText = registerVal11
			registerVal9.models = registerVal10
			registerVal10 = {}
			local function __FUNC_18E26_(arg0, arg1, arg2, arg3, arg5)
				local registerVal5 = arg4((index5 - 1.000000))
				if arg1 or registerVal5 then
					GoBack(arg5, arg2)
				end
			end

			registerVal10.action = __FUNC_18E26_
			registerVal9.properties = registerVal10
			table.insert({}, registerVal9)
		end
		return {}
	end

	local registerVal7 = DataSourceHelpers.ListSetup((("GenericModalDialog" .. arg0) .. "_List"), __FUNC_18CE6_, true, nil)
	DataSources[("GenericModalDialog" .. arg0)] = registerVal7
	return ("GenericModalDialog" .. arg0)
end

registerVal2.listDatasource = __FUNC_18C02_
local function __FUNC_18E99_(arg0, arg1, arg2, arg3, arg4)
	local function __FUNC_18ED0_(arg0, arg1, arg2, arg3)
		if arg4 then
			arg4()
		end
		GoBack(arg3, arg2)
	end

	return __FUNC_18ED0_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_18E99_
registerVal1.GenericModalDialog = registerVal2
registerVal2 = {}
registerVal3 = CoD.OverlayUtility.AutoSizeMenuFromDescription("LobbyLeavePopup")
registerVal2.menuName = registerVal3
local function __FUNC_18F30_(arg0)
	if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.LEAVE_PARTY then
	else
		if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.LEAVE_AND_DISBAND_PARTY then
		else
			if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.LEAVE_LOBBY then
			else
				if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.LEAVE_LOBBY_AND_PARTY then
				else
					if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.BRING_PARTY_LEAVE_ALONE then
					else
						if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.MANAGE_PARTY_LEAVE then
						end
					end
				end
			end
		end
	end
	return Engine.Localize("MENU_LEAVE_LOBBY_MANAGE_PARTY_LEAVE_TITLE")
end

registerVal2.title = __FUNC_18F30_
local function __FUNC_1923E_(arg0)
	if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.LEAVE_PARTY then
	else
		if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.LEAVE_AND_DISBAND_PARTY then
		else
			if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.LEAVE_LOBBY_AND_PARTY then
			else
				if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.MANAGE_PARTY_LEAVE then
				end
			end
		end
	end
	return Engine.Localize("MENU_LEAVE_LOBBY_MANAGE_PARTY_LEAVE_HINT")
end

registerVal2.description = __FUNC_1923E_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Quit
local function __FUNC_1948D_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.lobbyLockedIn")
	local function __FUNC_19574_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 == true then
			GoBack(arg0, arg1)
		end
	end

	arg0:subscribeToModel(registerVal2, __FUNC_19574_)
end

registerVal2.postCreateStep = __FUNC_1948D_
local function __FUNC_19609_(arg0)
	local function __FUNC_196C7_(arg1)
		local registerVal1 = {}
		registerVal1.controller = arg1
		local function __FUNC_19DF1_()
			local registerVal1 = Engine.IsLobbyHost(Enum.LobbyType.LOBBY_TYPE_GAME)
			if registerVal1 then
				registerVal1 = Engine.LobbyLaunchGetServerStatus(Enum.LobbyModule.LOBBY_MODULE_HOST)
			else
				registerVal1 = Engine.LobbyLaunchGetServerStatus(Enum.LobbyModule.LOBBY_MODULE_CLIENT)
			end
			if registerVal1 == nil then
				return true
			end
			if registerVal1 ~= Enum.GameServerStatus.GAME_SERVER_STATUS_IDLE then
			end
			return true
		end

		local function __FUNC_1A028_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = GoBackToMenu(arg4, arg2, "Lobby")
			DisableAllMenuInput(registerVal5, nil)
			if arg3 == nil then
				return 
			end
			if registerVal5.ClientList ~= nil then
				local registerVal8 = {}
				registerVal8.name = "lose_focus"
				registerVal8.controller = arg2
				registerVal5.ClientList:processEvent(registerVal8)
			end
			registerVal1.withParty = arg3
			local registerVal6 = __FUNC_19DF1_()
			if registerVal6 == false and registerVal1.withParty == LuaEnums.LEAVE_WITH_PARTY.WITH then
				return 
			end
			Engine.LobbyVM_CallFunc("GoBack", registerVal1)
		end

		local function __FUNC_1A250_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
			Engine.LobbyVM_CallFunc("ManagePartyLeave", registerVal1)
		end

		local function __FUNC_1A2FC_(arg0, arg1, arg2, arg3, arg4)
			local registerVal7 = {}
			registerVal7.optionDisplay = arg2
			registerVal7.action = arg3
			registerVal7.param = arg4
			registerVal7.customId = arg1
			registerVal7.isLargeButton = true
			registerVal7.isLastButtonInGroup = false
			registerVal7.disabled = false
			table.insert(arg0, registerVal7)
		end

		if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.LEAVE_PARTY then
			__FUNC_1A2FC_({}, "btnWithout", "MENU_LEAVE_LOBBY_LEAVE_PARTY", __FUNC_1A028_, LuaEnums.LEAVE_WITH_PARTY.WITHOUT)
		else
			if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.LEAVE_AND_DISBAND_PARTY then
				__FUNC_1A2FC_({}, "btnWithout", "MENU_LEAVE_LOBBY_LEAVE_AND_DISBAND_PARTY", __FUNC_1A028_, LuaEnums.LEAVE_WITH_PARTY.WITHOUT)
			else
				if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.LEAVE_LOBBY then
					__FUNC_1A2FC_({}, "btnWithout", "MENU_LEAVE_LOBBY_LEAVE_LOBBY", __FUNC_1A028_, LuaEnums.LEAVE_WITH_PARTY.WITHOUT)
				else
					if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.LEAVE_LOBBY_AND_PARTY then
						__FUNC_1A2FC_({}, "btnWithout", "MENU_LEAVE_LOBBY_LEAVE_LOBBY_AND_PARTY", __FUNC_1A028_, LuaEnums.LEAVE_WITH_PARTY.WITHOUT)
					else
						if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.BRING_PARTY_LEAVE_ALONE then
							__FUNC_1A2FC_({}, "btnWithout", "MENU_LEAVE_LOBBY_LEAVE_ALONE", __FUNC_1A028_, LuaEnums.LEAVE_WITH_PARTY.WITHOUT)
							__FUNC_1A2FC_({}, "btnWith", "MENU_LEAVE_LOBBY_BRING_PARTY", __FUNC_1A028_, LuaEnums.LEAVE_WITH_PARTY.WITH)
						else
							if arg0 == LuaEnums.LEAVE_LOBBY_POPUP.MANAGE_PARTY_LEAVE then
								__FUNC_1A2FC_({}, "btnWithout", "MENU_CONFIRM_CAPS", __FUNC_1A250_, nil)
							end
						end
					end
				end
			end
		end
		__FUNC_1A2FC_({}, "btnCancel", "MENU_LEAVE_LOBBY_CANCEL", __FUNC_1A028_, nil)
		local registerVal8, registerVal9, registerVal10 = ipairs({})
		for index11,value12 in registerVal8, registerVal9, registerVal10 do
			local registerVal15 = {}
			local registerVal16 = {}
			local registerVal17 = Engine.Localize(value12.optionDisplay)
			registerVal16.displayText = registerVal17
			registerVal16.customId = value12.customId
			registerVal15.models = registerVal16
			registerVal16 = {}
			registerVal16.disabled = value12.disabled
			registerVal16.action = value12.action
			registerVal16.actionParam = value12.param
			registerVal16.isLastButtonInGroup = value12.isLastButtonInGroup
			registerVal15.properties = registerVal16
			table.insert({}, registerVal15)
		end
		return {}
	end

	local registerVal2 = DataSourceHelpers.ListSetup("LeaveLobbyPopupButtons", __FUNC_196C7_)
	DataSources.LeaveLobbyPopupButtons = registerVal2
	return "LeaveLobbyPopupButtons"
end

registerVal2.listDatasource = __FUNC_19609_
local function __FUNC_1A411_()
	local function __FUNC_1A444_(arg0, arg1, arg2, arg3)
		local registerVal4 = GoBack(arg3, arg2)
		DisableAllMenuInput(registerVal4, nil)
	end

	return __FUNC_1A444_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_1A411_
registerVal1.LobbyLeavePopup = registerVal2
registerVal2 = {}
registerVal3 = CoD.OverlayUtility.AutoSizeMenuFromDescription("LobbyLocalClientWarning")
registerVal2.menuName = registerVal3
registerVal2.title = "MENU_DISBAND_PARTY_CAPS"
registerVal2.description = "MENU_NO_SPLITSCREEN_ALLOWED_DESC"
registerVal2.image = ""
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Alert
local function __FUNC_1A4BD_(arg0)
	local function __FUNC_1A58B_()
		local registerVal0 = {}
		local registerVal1 = {}
		local registerVal2 = {}
		registerVal2.displayText = "MENU_CONTINUE_AND_DISBAND"
		registerVal1.models = registerVal2
		registerVal2 = {}
		local function __FUNC_1A685_(arg1, arg2, arg3, arg4, arg5)
			GoBack(arg5, arg3)
			arg0.disbandParty = true
			local registerVal6 = Engine.GetMaxControllerCount()
			for index5=1.000000, (registerVal6 - 1.000000), 1.000000 do
				LobbyRemoveLocalClientFromLobby(arg1, index5)
			end
			if arg0.navToMenu ~= nil then
				Engine.LobbyVM_CallFunc("GoForward", arg0)
			else
				if arg0.popupName ~= nil and arg0.openFromMenu ~= nil then
					OpenPopup(arg0.openFromMenu, arg0.popupName, 0.000000)
				else
					if arg0.actionFunc ~= nil then
						arg0.actionFunc(arg0)
					end
				end
			end
		end

		registerVal2.action = __FUNC_1A685_
		registerVal1.properties = registerVal2
		registerVal2 = {}
		local registerVal3 = {}
		registerVal3.displayText = "MENU_CANCEL"
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_1A8E3_(arg0, arg1, arg2, arg3, arg4)
			if arg4.occludedMenu and arg4.occludedMenu.openOverlayAfterSpinner then
				arg4.occludedMenu.openOverlayAfterSpinner = nil
			end
			GoBack(arg4, arg2)
		end

		registerVal3.action = __FUNC_1A8E3_
		registerVal2.properties = registerVal3
		registerVal0 = {registerVal1, registerVal2}
		return registerVal0
	end

	local registerVal2 = DataSourceHelpers.ListSetup("LobbyLocalClientWarningButtons", __FUNC_1A58B_, true, nil)
	DataSources.LobbyLocalClientWarningButtons = registerVal2
	return "LobbyLocalClientWarningButtons"
end

registerVal2.listDatasource = __FUNC_1A4BD_
registerVal1.LobbyLocalClientWarning = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.openMethod = CoD.OverlayUtility.OpenMethods.Overlay
registerVal2.frameWidget = "CoD.cpReachedMaxLevelOverlayFrame"
local function __FUNC_1A9A8_()
	Engine.TableLookup(0.000000, CoD.rankTable, 0.000000, CoD.MAX_RANK, 5.000000)
	return Engine.Localize(Engine.TableLookup)
end

registerVal2.maxRankName = __FUNC_1A9A8_
local function __FUNC_1AA9F_()
	return CoD.OverlayUtility.Overlays.CPMaxLevelNotification.maxRankName()
end

registerVal2.title = __FUNC_1AA9F_
local function __FUNC_1AB70_()
	CoD.OverlayUtility.Overlays.CPMaxLevelNotification.maxRankName()
	return Engine.Localize("CPUI_MAX_RANK_MESSAGE", CoD.OverlayUtility.Overlays.CPMaxLevelNotification.maxRankName)
end

registerVal2.description = __FUNC_1AB70_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Unlock
registerVal1.CPMaxLevelNotification = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal3 = Engine.Localize("MENU_ERROR")
registerVal2.title = registerVal3
local function __FUNC_1AC9D_(arg0, arg1, arg2)
	return Engine.Localize(arg0, arg1)
end

registerVal2.description = __FUNC_1AC9D_
local function __FUNC_1AD0A_(arg0, arg1, arg2)
	local function __FUNC_1ADD4_(arg0)
		if arg1 ~= "" then
			local registerVal6 = {}
			local registerVal7 = {}
			local registerVal8 = Engine.Localize("MENU_INFO")
			registerVal7.displayText = registerVal8
			registerVal6.models = registerVal7
			registerVal7 = {}
			registerVal7.action = OpenAnticheatPolicyInBrowser
			registerVal6.properties = registerVal7
			table.insert({}, registerVal6)
		end
		registerVal6 = {}
		registerVal7 = {}
		registerVal8 = Engine.Localize("MENU_OK")
		registerVal7.displayText = registerVal8
		registerVal6.models = registerVal7
		registerVal7 = {}
		registerVal7.action = arg2
		registerVal6.properties = registerVal7
		table.insert({}, registerVal6)
		return {}
	end

	local registerVal4 = DataSourceHelpers.ListSetup("AnticheatMessageButtons", __FUNC_1ADD4_, true, nil)
	DataSources.AnticheatMessageButtons = registerVal4
	return "AnticheatMessageButtons"
end

registerVal2.listDatasource = __FUNC_1AD0A_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Error
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.AnticheatMessage = registerVal2
registerVal2 = {}
registerVal2.menuName = "FeatureOverlay"
registerVal2.frameWidget = "CoD.systemOverlay_reportPlayer"
local function __FUNC_1AF92_(arg0, arg1, arg2)
	return arg2.xuid
end

registerVal2.xuid = __FUNC_1AF92_
local function __FUNC_1AFDA_(arg0, arg1, arg2)
	return arg2.gamertag
end

registerVal2.gamertag = __FUNC_1AFDA_
local function __FUNC_1B026_(arg0, arg1, arg2)
	return arg2.clantag
end

registerVal2.clantag = __FUNC_1B026_
local function __FUNC_1B071_(arg0, arg1, arg2)
	return arg2.emblemBacking
end

registerVal2.emblemBacking = __FUNC_1B071_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Unlock
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
local function __FUNC_1B0C3_(arg0, arg1, arg2)
	local function __FUNC_1B1E4_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		registerVal3.displayText = "MENU_REPORT_USER_OFFENSIVE_CAPS"
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_1B457_(arg0, arg1, arg2, arg3, arg4)
			Engine.ReportUser(arg2.xuid, "offensive", 1.000000, true)
			GoBack(arg0, arg2)
			local registerVal7 = Engine.Localize("MENU_REPORTPLAYER_OFFENSIVE_LANGUAGE_REPORTED")
			CoD.OverlayUtility.ShowToast("Invite", registerVal7, arg2.gamertag, "uie_t7_icon_menu_options_dislike")
		end

		registerVal3.action = __FUNC_1B457_
		registerVal3.actionParam = arg2.xuid
		registerVal2.properties = registerVal3
		registerVal3 = {}
		local registerVal4 = {}
		registerVal4.displayText = "MENU_REPORT_USER_OFFENSIVE_EMBLEM_CAPS"
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_1B5D5_(arg0, arg1, arg2, arg3, arg4)
			local registerVal7 = {}
			registerVal7.controller = arg2
			registerVal7.xuid = arg2.xuid
			Engine.LobbyVM_CallFunc("UGCOffensiveEmblemAdd", registerVal7)
			Engine.ReportUser(arg2.xuid, "offensive_emblem", 1.000000, true)
			GoBack(arg0, arg2)
			registerVal7 = Engine.Localize("MENU_REPORTPLAYER_OFFENSIVE_EMBLEM_REPORTED")
			CoD.OverlayUtility.ShowToast("Invite", registerVal7, arg2.gamertag, "uie_t7_icon_menu_options_dislike")
		end

		registerVal4.action = __FUNC_1B5D5_
		registerVal4.actionParam = arg2.xuid
		registerVal3.properties = registerVal4
		registerVal4 = {}
		local registerVal5 = {}
		registerVal5.displayText = "MENU_REPORT_USER_OFFENSIVE_PAINTJOB_CAPS"
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_1B7DD_(arg0, arg1, arg2, arg3, arg4)
			Engine.ReportUser(arg2.xuid, "offensive_paintjob", 1.000000, true)
			GoBack(arg0, arg2)
			local registerVal7 = Engine.Localize("MENU_REPORTPLAYER_OFFENSIVE_PAINTJOB_REPORTED")
			CoD.OverlayUtility.ShowToast("Invite", registerVal7, arg2.gamertag, "uie_t7_icon_menu_options_dislike")
		end

		registerVal5.action = __FUNC_1B7DD_
		registerVal5.actionParam = arg2.xuid
		registerVal4.properties = registerVal5
		registerVal5 = {}
		local registerVal6 = {}
		registerVal6.displayText = "MENU_REPORT_USER_CHEATER_CAPS"
		registerVal5.models = registerVal6
		registerVal6 = {}
		local function __FUNC_1B966_(arg0, arg1, arg2, arg3, arg4)
			Engine.ReportUser(arg2.xuid, "cheater", 1.000000, true)
			GoBack(arg0, arg2)
			local registerVal7 = Engine.Localize("MENU_REPORTPLAYER_CHEATING_REPORTED")
			CoD.OverlayUtility.ShowToast("Invite", registerVal7, arg2.gamertag, "uie_t7_icon_menu_options_dislike")
		end

		registerVal6.action = __FUNC_1B966_
		registerVal6.actionParam = arg2.xuid
		registerVal5.properties = registerVal6
		registerVal6 = {}
		local registerVal7 = {}
		registerVal7.displayText = "MENU_REPORT_USER_BOOSTER_CAPS"
		registerVal6.models = registerVal7
		registerVal7 = {}
		local function __FUNC_1BAD9_(arg0, arg1, arg2, arg3, arg4)
			Engine.ReportUser(arg2.xuid, "booster", 1.000000, true)
			GoBack(arg0, arg2)
			local registerVal7 = Engine.Localize("MENU_REPORTPLAYER_BOOSTER_REPORTED")
			CoD.OverlayUtility.ShowToast("Invite", registerVal7, arg2.gamertag, "uie_t7_icon_menu_options_dislike")
		end

		registerVal7.action = __FUNC_1BAD9_
		registerVal7.actionParam = arg2.xuid
		registerVal6.properties = registerVal7
		registerVal1 = {registerVal2, registerVal3, registerVal4, registerVal5, registerVal6}
		return registerVal1
	end

	local registerVal7 = DataSourceHelpers.ListSetup("ReportOptions", __FUNC_1B1E4_)
	DataSources.ReportOptions = registerVal7
	return "ReportOptions"
end

registerVal2.listDatasource = __FUNC_1B0C3_
registerVal1.ReportPlayer = registerVal2
registerVal2 = {}
registerVal2.menuName = "FeatureOverlay"
registerVal2.frameWidget = "CoD.systemOverlay_reportGroup"
local function __FUNC_1BC4C_(arg0, arg1, arg2)
	return arg2.groupId
end

registerVal2.groupId = __FUNC_1BC4C_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Unlock
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
local function __FUNC_1BC99_(arg0, arg1, arg2)
	local function __FUNC_1BD70_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		registerVal3.displayText = "MENU_REPORT_GROUP_OFFENSIVE_NAME_CAPS"
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_1BEF3_(arg0, arg1, arg2, arg3, arg4)
			Engine.ReportUser(arg2.groupId, "offensive_group_name", 1.000000, true)
			GoBack(arg0, arg2)
		end

		registerVal3.action = __FUNC_1BEF3_
		registerVal2.properties = registerVal3
		registerVal3 = {}
		local registerVal4 = {}
		registerVal4.displayText = "MENU_REPORT_GROUP_OFFENSIVE_EMBLEM_CAPS"
		registerVal3.models = registerVal4
		registerVal4 = {}
		local function __FUNC_1BFA7_(arg0, arg1, arg2, arg3, arg4)
			Engine.ReportUser(arg2.groupId, "offensive_group_emblem", 1.000000, true)
			GoBack(arg0, arg2)
		end

		registerVal4.action = __FUNC_1BFA7_
		registerVal3.properties = registerVal4
		registerVal4 = {}
		local registerVal5 = {}
		registerVal5.displayText = "MENU_REPORT_GROUP_OFFENSIVE_DESCRIPTION_CAPS"
		registerVal4.models = registerVal5
		registerVal5 = {}
		local function __FUNC_1C05D_(arg0, arg1, arg2, arg3, arg4)
			Engine.ReportUser(arg2.groupId, "offensive_group_description", 1.000000, true)
			GoBack(arg0, arg2)
		end

		registerVal5.action = __FUNC_1C05D_
		registerVal4.properties = registerVal5
		registerVal1 = {registerVal2, registerVal3, registerVal4}
		return registerVal1
	end

	local registerVal5 = DataSourceHelpers.ListSetup("ReportGroupOptions", __FUNC_1BD70_)
	DataSources.ReportGroupOptions = registerVal5
	return "ReportGroupOptions"
end

registerVal2.listDatasource = __FUNC_1BC99_
registerVal1.ReportGroup = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
local function __FUNC_1C11A_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal7 = IsProcessingGroupTask(arg0)
	if registerVal7 then
		return Engine.Localize("GROUPS_PROCESSING_WAIT_TEXT")
	end
	return Engine.Localize(arg1)
end

registerVal2.title = __FUNC_1C11A_
registerVal2.frameWidget = "CoD.SystemOverlay_GroupsNotification"
local function __FUNC_1C1F6_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal7 = IsProcessingGroupTask(arg0)
	if registerVal7 then
		return ""
	end
	return Engine.Localize(arg2)
end

registerVal2.description = __FUNC_1C1F6_
local function __FUNC_1C2A3_(arg0, arg1)
	local registerVal4 = GetProcessingGroupTaskModel(arg1)
	local function __FUNC_1C327_(arg1)
		arg0.refreshData(arg0, nil)
	end

	arg0:subscribeToModel(registerVal4, __FUNC_1C327_)
end

registerVal2.postCreateStep = __FUNC_1C2A3_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_1C381_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	if arg4 then
		local function __FUNC_1C471_(arg0)
			local registerVal2 = type(arg5)
			if arg0 or registerVal2 ~= "function" then
			end
			registerVal2 = IsProcessingGroupTask(arg0)
			registerVal2 = CloseGroupsNotifyPopupAutomaticallyAfterEvent(arg0)
			if not CoD.OverlayUtility.DefaultButtonAction or registerVal2 then
				return {}
			else
				registerVal2 = {}
				local registerVal3 = {}
				local registerVal4 = {}
				local registerVal5 = Engine.Localize(arg4)
				registerVal4.displayText = registerVal5
				registerVal3.models = registerVal4
				registerVal4 = {}
				registerVal4.action = CoD.OverlayUtility.DefaultButtonAction
				registerVal3.properties = registerVal4
				registerVal2 = {registerVal3}
				return registerVal2
			end
		end

		local function __FUNC_1C66F_(arg0, arg1, arg2)
			local registerVal3 = GetProcessingGroupTaskModel(arg0)
			local registerVal4 = GetCloseAutomaticallyModelForGroupsNotifyPoup(arg0)
			if arg1.updateSubscriptionForProcessingModel then
				arg1:removeSubscription(arg1.updateSubscriptionForProcessingModel)
			end
			local function __FUNC_1C821_()
				arg1:updateDataSource(false)
			end

			local registerVal5 = arg1:subscribeToModel(registerVal3, __FUNC_1C821_, false)
			arg1.updateSubscriptionForProcessingModel = registerVal5
			if arg1.updateSubscriptionForCloseModel then
				arg1:removeSubscription(arg1.updateSubscriptionForCloseModel)
			end
			local function __FUNC_1C876_()
				arg1:updateDataSource(false)
			end

			registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_1C876_, false)
			arg1.updateSubscriptionForCloseModel = registerVal5
		end

		local registerVal9 = DataSourceHelpers.ListSetup(("GroupsNotificationButtons" .. "_List"), __FUNC_1C471_, true, nil, __FUNC_1C66F_)
		DataSources["GroupsNotificationButtons"] = registerVal9
		return "GroupsNotificationButtons"
	end
end

registerVal2.listDatasource = __FUNC_1C381_
local function __FUNC_1C8CA_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal7 = type(arg6)
	if arg6 and registerVal7 == "function" then
		return arg6
	else
		return CoD.OverlayUtility.DefaultGoBack()
	end
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_1C8CA_
registerVal1.GroupsNotificationPopup = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
local function __FUNC_1C998_(arg0, arg1)
	local registerVal2 = IsProcessingBMContractRewardTask(arg0)
	if registerVal2 then
		return Engine.Localize("BLACKJACK_PROCESSING_WAIT_TEXT")
	end
	return Engine.Localize(arg1)
end

registerVal2.title = __FUNC_1C998_
registerVal2.frameWidget = "CoD.SystemOverlay_ContractRewardNotification"
local function __FUNC_1CA84_(arg0, arg1)
	local registerVal2 = IsProcessingBMContractRewardTask(arg0)
	if registerVal2 then
		return ""
	end
	local registerVal3 = LuaUtils.IsWeaponContractNeeded(arg0)
	local registerVal4 = Engine.GetCryptokeysDue(arg0)
	if not registerVal4 then
	end
	if 0.000000 >= 0.000000 then
	end
	if registerVal3 and true then
	else
		if true then
		end
	end
	local registerVal7 = Engine.GetCryptokeysDue(arg0)
	if not registerVal7 then
	end
	return Engine.Localize("MPUI_BM_LOOT_XP_ERROR_DESC", 0.000000)
end

registerVal2.description = __FUNC_1CA84_
local function __FUNC_1CCA3_(arg0, arg1)
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.CreateModel(registerVal5, "bmRewards.processingTask")
	local function __FUNC_1CD8C_(arg1)
		arg0.refreshData(arg0, nil)
	end

	arg0:subscribeToModel(registerVal4, __FUNC_1CD8C_)
end

registerVal2.postCreateStep = __FUNC_1CCA3_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.Warning
local function __FUNC_1CDE9_(arg0, arg1)
	local function __FUNC_1CEB7_(arg0)
		local registerVal1 = IsProcessingBMContractRewardTask(arg0)
		if registerVal1 then
			return {}
		else
			registerVal1 = {}
			local registerVal2 = {}
			local registerVal3 = {}
			local registerVal4 = Engine.Localize("MENU_RETRY")
			registerVal3.displayText = registerVal4
			registerVal2.models = registerVal3
			registerVal3 = {}
			local function __FUNC_1D03A_(arg0, arg1, arg2, arg3, arg4)
				local registerVal5 = Dvar.reward_retry_min_delay_ms:get()
				if not registerVal5 then
				end
				local registerVal6 = Dvar.reward_retry_max_delay_ms:get()
				if not registerVal6 then
				end
				local registerVal7 = math.random(2000.000000, 4000.000000)
				local function __FUNC_1D321_(arg0)
					local function __FUNC_1D408_(arg1)
						local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
						if registerVal1 then
							local registerVal2 = registerVal1.mp_loot_xp_due:get()
							local registerVal5 = Engine.GetModelForController(arg0)
							local registerVal4 = Engine.CreateModel(registerVal5, "mp_loot_xp_due")
							Engine.SetModelValue(registerVal4, registerVal2)
							registerVal1.mp_loot_xp_due:set(0.000000)
							Engine.StorageWrite(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
						end
						Engine.SetDvar("reward_retry_perform_action", "1")
						Engine.SetDvar("reward_retry_controller", tostring(arg0))
						arg4.retryDelayTimer:close()
						arg4.retryDelayTimer = nil
					end

					local registerVal2 = LUI.UITimer.newElementTimer(registerVal7, true, __FUNC_1D408_)
					arg4.retryDelayTimer = registerVal2
					arg4:addElement(arg4.retryDelayTimer)
				end

				SetState(arg4, "Processing")
				__FUNC_1D321_(arg2)
				local registerVal10 = Engine.GetModelForController(arg2)
				local registerVal9 = Engine.GetModel(registerVal10, "bmRewards.processingTask")
				Engine.SetModelValue(registerVal9, true)
				local function __FUNC_1D71F_(arg0)
					local registerVal1 = Engine.DvarString(nil, "reward_retry_perform_action")
					registerVal1 = Engine.LootResultsReady(arg2)
					if registerVal1 ~= "1" and registerVal1 then
						Engine.SetModelValue(registerVal9, false)
						registerVal1 = LuaUtils.IsWeaponContractNeeded(arg2)
						if not registerVal1 then
							registerVal1 = Engine.GetCryptokeysDue(arg2)
							if not registerVal1 then
							end
							if 0.000000 < 0.000000 then
								SetState(arg4, "DefaultState")
							end
						else
							LuaUtils.UI_ClearErrorMessageDialog()
							GoBack(arg4, arg2)
						end
						arg4.retryCompleteTimer:close()
						arg4.retryCompleteTimer = nil
					end
				end

				registerVal10 = LUI.UITimer.newElementTimer((registerVal7 + 200.000000), false, __FUNC_1D71F_)
				arg4.retryCompleteTimer = registerVal10
				arg4:addElement(arg4.retryCompleteTimer)
			end

			registerVal3.action = __FUNC_1D03A_
			registerVal2.properties = registerVal3
			registerVal3 = {}
			registerVal4 = {}
			local registerVal5 = Engine.Localize("MENU_CANCEL")
			registerVal4.displayText = registerVal5
			registerVal3.models = registerVal4
			registerVal4 = {}
			local function __FUNC_1D9AA_(arg0, arg1, arg2, arg3, arg4)
				LuaUtils.UI_ClearErrorMessageDialog()
				GoBack(arg4, arg2)
			end

			registerVal4.action = __FUNC_1D9AA_
			registerVal3.properties = registerVal4
			registerVal1 = {registerVal2, registerVal3}
			return registerVal1
		end
	end

	local function __FUNC_1DA3E_(arg0, arg1, arg2)
		if arg1.updateSubscriptionForProcessingModel then
			arg1:removeSubscription(arg1.updateSubscriptionForProcessingModel)
		end
		local registerVal6 = Engine.GetModelForController(arg0)
		local registerVal5 = Engine.GetModel(registerVal6, "bmRewards.processingTask")
		local function __FUNC_1DB9F_()
			arg1:updateDataSource(false)
		end

		local registerVal3 = arg1:subscribeToModel(registerVal5, __FUNC_1DB9F_, false)
		arg1.updateSubscriptionForProcessingModel = registerVal3
	end

	local registerVal4 = DataSourceHelpers.ListSetup("GroupsNotificationButtons_List", __FUNC_1CEB7_, true, nil, __FUNC_1DA3E_)
	DataSources["GroupsNotificationButtons_List"] = registerVal4
	return "GroupsNotificationButtons_List"
end

registerVal2.listDatasource = __FUNC_1CDE9_
local function __FUNC_1DBF2_(arg0, arg1)
	local function __FUNC_1DC24_(arg0, arg1, arg2, arg3)
		if arg3.retryCompleteTimer then
			arg3.retryCompleteTimer:close()
			arg3.retryCompleteTimer = nil
		end
		GoBack(arg3, arg2)
	end

	return __FUNC_1DC24_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_1DBF2_
registerVal1.BMContractNotificationPopup = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.frameWidget = "CoD.SystemOverlay_PurchaseInventoryItem"
local function __FUNC_1DCC8_(arg0, arg1)
	local registerVal3 = Engine.GetCoDPoints(arg0)
	if 0.000000 < arg1.itemCODPointCost and registerVal3 < arg1.itemCODPointCost then
		return "MPUI_BM_NO_CURRENCY"
	end
	Engine.Localize("ZMUI_CONFIRM_TRADE")
	return Engine.ToUpper(Engine.Localize)
end

registerVal2.title = __FUNC_1DCC8_
local function __FUNC_1DE0D_(arg0, arg1)
	local registerVal3 = Engine.GetCoDPoints(arg0)
	if 0.000000 < arg1.itemCODPointCost and registerVal3 < arg1.itemCODPointCost then
		return Engine.Localize("MPUI_BM_NO_CODPOINTS_DESCRIPTION", arg1.itemName)
	end
	return Engine.Localize(arg1.displayText)
end

registerVal2.description = __FUNC_1DE0D_
local function __FUNC_1DF6C_(arg0, arg1)
	return arg1.image
end

registerVal2.image = __FUNC_1DF6C_
local function __FUNC_1DFB7_(arg0, arg1)
	return arg1.itemCODPointCost
end

registerVal2.codpointcost = __FUNC_1DFB7_
local function __FUNC_1E00A_(arg0, arg1)
	local registerVal3 = Engine.GetCoDPoints(arg0)
	if 0.000000 < arg1.itemCODPointCost and registerVal3 < arg1.itemCODPointCost then
		return Engine.Localize("MENU_CODPOINT_COST", arg1.itemCODPointCost)
	end
	return ""
end

registerVal2.codpointcostString = __FUNC_1E00A_
local function __FUNC_1E121_(arg0, arg1)
	return arg1.category
end

registerVal2.state = __FUNC_1E121_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_1E16E_(arg0, arg1)
	local function __FUNC_1E236_(arg0, arg2)
		if arg2.purchasingInventoryItem then
			return {}
		end
		local function __FUNC_1E4B1_(arg0, arg2, arg3, arg4)
			local registerVal4 = {}
			local registerVal5 = {}
			registerVal5.displayText = arg0
			registerVal5.disabled = arg4
			registerVal4.models = registerVal5
			registerVal5 = {}
			registerVal5.action = arg2
			registerVal5.actionParam = arg1
			registerVal5.selectIndex = arg3
			registerVal4.properties = registerVal5
			return registerVal4
		end

		local function __FUNC_1E591_(arg0, arg3, arg4, arg5, arg6)
			local registerVal6 = Engine.GetInventoryItemQuantity(arg4, arg1.skuId)
			if registerVal6 <= 0.000000 then
				registerVal6 = Engine.PurchaseDWSKU(arg4, arg1.skuId)
				if not registerVal6 then
					LuaUtils.UI_ShowErrorMessageDialog(arg4, "MENU_EXTRASLOTS_PURCHASE_FAILED", "")
					LUI.CoDMetrics.InventoryItemPurchased(arg4, arg5.productDesc, arg5.purchaseSource, arg5.itemCODPointCost, false)
					GoBack(arg6, arg4)
					return 
				end
				arg0:setState("Purchasing")
				arg0.PurchasingWidget:playClip("StartPurchasing")
				arg0.PurchasingWidget.nextClip = "Purchasing"
				arg2.purchasingInventoryItem = true
				arg2:updateDataSource()
				arg6[CoD.OverlayUtility.GoBackPropertyName] = nil
				arg2.disabled = true
				CoD.Menu.UpdateAllButtonPrompts(arg6, arg4)
				local function __FUNC_1EA22_(arg1, arg2)
					local registerVal2 = Engine.IsInventoryBusy(arg4)
					registerVal2 = Engine.GetPurchaseDWSKUResult(arg4)
					if not arg2 or registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
						LUI.UIElement.clipOver(arg1, arg2)
					else
						arg1:playClip("StopPurchasing")
						local function __FUNC_1EC33_(arg1, arg2)
							arg1:registerEventHandler("clip_over", LUI.UIElement.clipOver)
							arg0:setState("DefaultState")
							local registerVal2 = Engine.GetPurchaseDWSKUResult(arg4)
							if registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_SUCCESS then
								LUI.CoDMetrics.InventoryItemPurchased(arg4, arg5.productDesc, arg5.purchaseSource, arg5.itemCODPointCost, true)
								registerVal2 = GoBack(arg6, arg4)
								CoD.OverlayUtility.CreateOverlay(arg4, registerVal2, "PurchaseInventoryItemComplete", arg4, arg5)
							else
								LuaUtils.UI_ShowErrorMessageDialog(arg4, "GROUPS_GENERIC_ERROR_MSG", "")
								LUI.CoDMetrics.InventoryItemPurchased(arg4, arg5.productDesc, arg5.purchaseSource, arg5.itemCODPointCost, false)
								GoBack(arg6, arg4)
							end
						end

						arg1:registerEventHandler("clip_over", __FUNC_1EC33_)
					end
				end

				arg0.PurchasingWidget:registerEventHandler("clip_over", __FUNC_1EA22_)
			end
		end

		local function __FUNC_1F05C_(arg0, arg1, arg2, arg3, arg4)
			LUI.CoDMetrics.InventoryItemPurchased(arg2, arg3.productDesc, arg3.purchaseSource, arg3.itemCODPointCost, false)
			GoBackAndOpenStoreCodPointsOverlayOnParent(arg4, "BMOUTFITStore", arg2)
		end

		local function __FUNC_1F1BB_(arg0, arg1, arg2, arg3, arg4)
			LUI.CoDMetrics.InventoryItemPurchased(arg2, arg3.productDesc, arg3.purchaseSource, arg3.itemCODPointCost, false)
			GoBack(arg4, arg2)
		end

		local registerVal8 = Engine.GetCoDPoints(arg0)
		if 0.000000 < arg1.itemCODPointCost and registerVal8 < arg1.itemCODPointCost then
			table.insert({}, __FUNC_1E4B1_("MPUI_PURCHASE_CODPOINTS_CAPS", __FUNC_1F05C_, true, false))
		else
			if 0.000000 < arg1.itemCODPointCost then
				local registerVal10 = Engine.Localize("MPUI_BM_TRADE_COD_POINTS", arg1.itemCODPointCost)
				table.insert({}, __FUNC_1E4B1_(registerVal10, __FUNC_1E591_, true, false))
			end
		end
		table.insert({}, __FUNC_1E4B1_("MENU_CANCEL_CAPS", __FUNC_1F1BB_, false, false))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("PurchaseInventoryItemMenuList", __FUNC_1E236_, true)
	DataSources.PurchaseInventoryItemMenuList = registerVal3
	return "PurchaseInventoryItemMenuList"
end

registerVal2.listDatasource = __FUNC_1E16E_
local function __FUNC_1F2D8_(arg0, arg1)
	local function __FUNC_1F310_(arg0, arg2, arg3, arg4)
		LUI.CoDMetrics.InventoryItemPurchased(arg3, arg1.productDesc, arg1.purchaseSource, arg1.itemCODPointCost, false)
		GoBack(arg4, arg3)
	end

	return __FUNC_1F310_
end

registerVal2[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_1F2D8_
registerVal1.PurchaseInventoryItemConfirmation = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal2.frameWidget = "CoD.SystemOverlay_ActivateSpecialContract"
local function __FUNC_1F43C_(arg0, arg1)
	if arg1.specialContractReplaceConfirmation then
		return Engine.Localize("CONTRACT_REPLACE_CONTRACT_TITLE")
	end
	return Engine.Localize("CONTRACT_ACTIVATE_CONTRACT_TITLE")
end

registerVal2.title = __FUNC_1F43C_
local function __FUNC_1F555_(arg0, arg1)
	local registerVal2 = CoD.GetContractStatValuesForIndex(arg0, LuaUtils.BMContracts.specialContractIndex)
	if arg1.specialContractReplaceConfirmation and registerVal2 ~= nil then
		if registerVal2.index == 0.000000 then
			registerVal2.titleRef = "MPUI_BM_CONTRACT_TOTAL_VICTORY"
		end
		return Engine.Localize("CONTRACT_REPLACE_CONTRACT_DESC", registerVal2.titleRef)
	end
	return Engine.Localize("CONTRACT_ACTIVATE_CONTRACT_DESC", arg1.name)
end

registerVal2.description = __FUNC_1F555_
local function __FUNC_1F7AD_(arg0, arg1)
	if arg1.specialContractReplaceConfirmation then
		return "t7_icon_error_overlays_bkg"
	end
	return arg1.image
end

registerVal2.image = __FUNC_1F7AD_
local function __FUNC_1F863_(arg0, arg1)
	return arg1.backgroundId
end

registerVal2.emblemBacking = __FUNC_1F863_
local function __FUNC_1F8B2_(arg0, arg1)
	return arg1.category
end

registerVal2.state = __FUNC_1F8B2_
local function __FUNC_1F8FE_(arg0, arg1)
	if arg1.specialContractReplaceConfirmation then
		return CoD.OverlayUtility.OverlayTypes.Error
	else
		return CoD.OverlayUtility.OverlayTypes.GenericMessage
	end
end

registerVal2.categoryType = __FUNC_1F8FE_
local function __FUNC_1FA26_(arg0, arg1)
	local function __FUNC_1FAF0_(arg0, arg2)
		local function __FUNC_1FCDC_(arg0, arg2, arg3, arg4)
			local registerVal4 = {}
			local registerVal5 = {}
			registerVal5.displayText = arg0
			registerVal5.disabled = arg4
			registerVal4.models = registerVal5
			registerVal5 = {}
			registerVal5.action = arg2
			registerVal5.actionParam = arg1
			registerVal5.selectIndex = arg3
			registerVal4.properties = registerVal5
			return registerVal4
		end

		local function __FUNC_1FDBD_(arg0, arg2, arg3, arg4, arg5)
			if not arg1.specialContractReplaceConfirmation then
				local registerVal6 = IsIncompleteContractActive(arg3)
			end
			if registerVal6 then
				arg1.specialContractReplaceConfirmation = true
				registerVal6 = GoBack(arg5, arg3)
				CoD.OverlayUtility.CreateOverlay(arg3, registerVal6, "ActivateSpecialContractConfirmation", arg3, arg1)
			else
				local registerVal8 = {}
				registerVal8.contractIndex = arg1.contractIndex
				ActivateSpecialContract(arg0, registerVal8, arg3)
				Engine.StorageWrite(arg3, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
				DataSources.CurrentSpecialContract.getModel(arg3)
				registerVal6 = GoBack(arg5, arg3)
				local registerVal7 = GoBack(registerVal6, arg3)
				if registerVal7.id == "Menu.BM_SpecialContracts" then
					registerVal8 = GoBack(registerVal7, arg3)
				end
				if registerVal8.currentAlias then
					Engine.StopSound(registerVal8.currentAlias)
				end
				PlayMenuTrackedSound(registerVal8, "vox_mark_special_contract")
			end
		end

		local function __FUNC_201C8_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		if arg1.specialContractReplaceConfirmation then
			local registerVal7 = Engine.Localize("CONTRACT_REPLACE_CURRENT_CONTRACT_CAPS")
		end
		local registerVal10 = Engine.Localize(registerVal7)
		table.insert({}, __FUNC_1FCDC_(registerVal10, __FUNC_1FDBD_, (not arg1.specialContractReplaceConfirmation), false))
		table.insert({}, __FUNC_1FCDC_("MENU_CANCEL_CAPS", __FUNC_201C8_, arg1.specialContractReplaceConfirmation, false))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("ActivateSpecialContractMenuList", __FUNC_1FAF0_, true)
	DataSources.ActivateSpecialContractMenuList = registerVal3
	return "ActivateSpecialContractMenuList"
end

registerVal2.listDatasource = __FUNC_1FA26_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
local function __FUNC_20214_(arg0, arg1, arg2, arg3)
	if arg3.activeDvar and arg3.activeDvar ~= "" then
		local registerVal4 = Engine.DvarBool(nil, arg3.activeDvar)
		local function __FUNC_20342_()
			local registerVal1 = Engine.DvarBool(nil, arg3.activeDvar)
			if registerVal4 ~= registerVal1 then
				DelayGoBack(arg0, arg1)
			end
		end

		arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_20342_)
	end
end

registerVal2.postCreateStep = __FUNC_20214_
registerVal1.ActivateSpecialContractConfirmation = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.frameWidget = "CoD.SystemOverlay_TradeForBlackjackContract"
local function __FUNC_203FB_(arg0, arg1)
	if arg1.successConfirmation then
		return Engine.Localize("MPUI_PURCHASE_CONFIRMATION_TITLE")
	end
	local registerVal3 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
	if registerVal3 < arg1.itemCost then
		return Engine.Localize("MPUI_BM_NO_CURRENCY")
	end
	Engine.Localize("CONTRACT_PURCHASE_BLACKJACK_CONTRACT_TITLE")
	return Engine.ToUpper(Engine.Localize)
end

registerVal2.title = __FUNC_203FB_
local function __FUNC_20600_(arg0, arg1)
	if arg1.successConfirmation then
		return Engine.Localize("CONTRACT_PURCHASE_BLACKJACK_CONFIRMATION")
	end
	local registerVal3 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
	if registerVal3 < arg1.itemCost then
		return Engine.Localize("CONTRACT_PURCHASE_BLACKJACK_CONTRACT_INSUFFICIENT_FUNDS")
	end
	return Engine.Localize("CONTRACT_PURCHASE_BLACKJACK_CONTRACT_DESC", arg1.itemCost)
end

registerVal2.description = __FUNC_20600_
local function __FUNC_2081A_(arg0, arg1)
	return arg1.itemCost
end

registerVal2.cost = __FUNC_2081A_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_20866_(arg0, arg1)
	local function __FUNC_2092E_(arg0, arg2)
		if arg2.processingTrade then
			return {}
		end
		local function __FUNC_20BE7_(arg0, arg2, arg3, arg4)
			local registerVal4 = {}
			local registerVal5 = {}
			registerVal5.displayText = arg0
			registerVal5.disabled = arg4
			registerVal4.models = registerVal5
			registerVal5 = {}
			registerVal5.action = arg2
			registerVal5.actionParam = arg1
			registerVal5.selectIndex = arg3
			registerVal4.properties = registerVal5
			return registerVal4
		end

		local function __FUNC_20CC5_(arg0, arg3, arg4, arg5, arg6)
			local registerVal5 = Dvar.blackjack_contract_dwid:get()
			if registerVal5 then
				local registerVal6 = Engine.PurchaseDWSKU(arg4, registerVal5, true, 1.000000)
				if not registerVal6 then
					LuaUtils.UI_ShowErrorMessageDialog(arg4, "CONTRACT_PURCHASE_BLACKJACK_CONTRACT_FAILED", "")
					GoBack(arg6, arg4)
					return 
				end
				arg0:setState("Purchasing")
				arg0.PurchasingWidget:playClip("StartPurchasing")
				arg0.PurchasingWidget.nextClip = "Purchasing"
				arg2.processingTrade = true
				arg2:updateDataSource()
				arg6[CoD.OverlayUtility.GoBackPropertyName] = nil
				arg2.disabled = true
				CoD.Menu.UpdateAllButtonPrompts(arg6, arg4)
				local function __FUNC_21085_(arg2, arg3)
					local registerVal2 = Engine.IsInventoryBusy(arg4)
					registerVal2 = Engine.GetPurchaseDWSKUResult(arg4)
					if not arg3 or registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
						LUI.UIElement.clipOver(arg2, arg3)
					else
						arg2:playClip("StopPurchasing")
						local function __FUNC_21297_(arg2, arg3)
							arg2:registerEventHandler("clip_over", LUI.UIElement.clipOver)
							arg0:setState("DefaultState")
							local registerVal2 = Engine.GetPurchaseDWSKUResult(arg4)
							if registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_SUCCESS then
								ValidateBlackjackPurchase(arg4)
								registerVal2 = GoBack(arg6, arg4)
								local registerVal3 = GoBack(registerVal2, arg4)
								arg1.successConfirmation = true
								CoD.OverlayUtility.CreateOverlay(arg4, registerVal3, "TradeForBlackjackContract", arg4, arg1)
								if registerVal3.currentAlias then
									Engine.StopSound(registerVal3.currentAlias)
								end
								PlayMenuTrackedSound(registerVal3, "vox_mark_mercenary_contract")
							else
								LuaUtils.UI_ShowErrorMessageDialog(arg4, "GROUPS_GENERIC_ERROR_MSG", "")
								GoBack(arg6, arg4)
							end
						end

						arg2:registerEventHandler("clip_over", __FUNC_21297_)
					end
				end

				arg0.PurchasingWidget:registerEventHandler("clip_over", __FUNC_21085_)
			end
		end

		local function __FUNC_216A7_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		local function __FUNC_216F0_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = GoBack(arg4, arg2)
			local registerVal8 = {}
			registerVal8.name = "update_state"
			registerVal8.menu = registerVal5
			registerVal5:processEvent(registerVal8)
		end

		if arg1.successConfirmation then
			table.insert({}, __FUNC_20BE7_("MENU_OK_CAPS", __FUNC_216F0_, true, false))
		else
			local registerVal8 = CoD.BlackMarketUtility.GetCurrentCryptoKeyCount(arg0)
			if 0.000000 < arg1.itemCost and arg1.itemCost <= registerVal8 then
				local registerVal10 = Engine.Localize("MPUI_BM_TRADE_CRYPTOKEYS", arg1.itemCost)
				table.insert({}, __FUNC_20BE7_(registerVal10, __FUNC_20CC5_, true, false))
			end
			table.insert({}, __FUNC_20BE7_("MENU_CANCEL_CAPS", __FUNC_216A7_, false, false))
		end
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("PurchaseInventoryItemMenuList", __FUNC_2092E_, true)
	DataSources.PurchaseInventoryItemMenuList = registerVal3
	return "PurchaseInventoryItemMenuList"
end

registerVal2.listDatasource = __FUNC_20866_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.TradeForBlackjackContract = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.frameWidget = "CoD.SystemOverlay_MissingCoDPointsRedemption"
local function __FUNC_21798_(arg0, arg1)
	if arg1.purchaseState == 0.000000 then
		Engine.Localize("MENU_REDEEM_ERROR_PROCESSING_TITLE")
		return Engine.ToUpper(Engine.Localize)
	else
		if arg1.purchaseState == 1.000000 then
			Engine.Localize("MENU_REDEEM_ERROR_COMPLETE_TITLE")
			return Engine.ToUpper(Engine.Localize)
		else
			Engine.Localize("MENU_REDEEM_ERROR_MESSAGE_TITLE")
			return Engine.ToUpper(Engine.Localize)
		end
	end
end

registerVal2.title = __FUNC_21798_
local function __FUNC_21957_(arg0, arg1)
	if arg1.purchaseState == 0.000000 then
		return Engine.Localize("MENU_REDEEM_ERROR_PROCESSING_DESC")
	else
		if arg1.purchaseState == 1.000000 then
			local registerVal2 = Engine.GetCoDPoints(arg0)
			return Engine.Localize("MENU_REDEEM_ERROR_COMPLETE_DESC", registerVal2)
		else
			for index3=1.000000, #arg1.skuList, 1.000000 do
				local registerVal7 = CoD.StoreUtility.GetSkuName(arg1.skuList[index3].skuId)
				if registerVal7 then
					local registerVal10 = Engine.Localize(registerVal7)
				end
			end
			local registerVal3 = Engine.Localize("MENU_REDEEM_ERROR_MESSAGE_DESC")
			return (registerVal3 .. "

" .. ("" .. " - " .. registerVal10 .. " x " .. arg1.skuList[index3].quantity .. "
") .. "
")
		end
	end
end

registerVal2.description = __FUNC_21957_
local function __FUNC_21C69_(arg0, arg1)
	return Engine.GetCoDPoints(arg0)
end

registerVal2.cost = __FUNC_21C69_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_21CD6_(arg0, arg1)
	local function __FUNC_21DA0_(arg0, arg2)
		if arg2.redeemingMissingCoDPoints then
			return {}
		end
		local function __FUNC_21F59_(arg0, arg2, arg3, arg4)
			local registerVal4 = {}
			local registerVal5 = {}
			registerVal5.displayText = arg0
			registerVal5.disabled = arg4
			registerVal4.models = registerVal5
			registerVal5 = {}
			registerVal5.action = arg2
			registerVal5.actionParam = arg1
			registerVal5.selectIndex = arg3
			registerVal4.properties = registerVal5
			return registerVal4
		end

		local function __FUNC_22039_(arg0, arg3, arg4, arg5, arg6)
			if 0.000000 < #arg5.skuList then
				local registerVal5 = Engine.PurchaseDWSKUMultiple(arg4, false, arg5.skuList)
				if not registerVal5 then
					LuaUtils.UI_ShowErrorMessageDialog(arg4, "GROUPS_GENERIC_ERROR_MSG", "")
					GoBack(arg6, arg4)
					return 
				end
				arg1.purchaseState = 0.000000
				arg6:refreshData(arg4, arg5)
				arg0:setState("Purchasing")
				arg0.PurchasingWidget:playClip("StartPurchasing")
				arg0.PurchasingWidget.nextClip = "Purchasing"
				arg2.redeemingMissingCoDPoints = true
				arg2:updateDataSource()
				arg6[CoD.OverlayUtility.GoBackPropertyName] = nil
				arg2.disabled = true
				CoD.Menu.UpdateAllButtonPrompts(arg6, arg4)
				local function __FUNC_22415_(arg3, arg7)
					local registerVal2 = Engine.IsInventoryBusy(arg4)
					registerVal2 = Engine.GetPurchaseDWSKUResult(arg4)
					if not arg7 or registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
						LUI.UIElement.clipOver(arg3, arg7)
					else
						arg3:playClip("StopPurchasing")
						local function __FUNC_2262F_(arg3, arg7)
							arg3:registerEventHandler("clip_over", LUI.UIElement.clipOver)
							arg0:setState("DefaultState")
							local registerVal2 = Engine.GetPurchaseDWSKUResult(arg4)
							if registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_SUCCESS then
								arg1.purchaseState = 1.000000
								arg6:refreshData(arg4, arg5)
								arg0.CODPoints:show()
								arg2.redeemingMissingCoDPoints = false
								arg2:updateDataSource()
							else
								LuaUtils.UI_ShowErrorMessageDialog(arg4, "GROUPS_GENERIC_ERROR_MSG", "")
								GoBack(arg6, arg4)
							end
						end

						arg3:registerEventHandler("clip_over", __FUNC_2262F_)
					end
				end

				arg0.PurchasingWidget:registerEventHandler("clip_over", __FUNC_22415_)
			end
		end

		local function __FUNC_2295F_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = GoBack(arg4, arg2)
			OpenBlackMarketIncentivePopup(registerVal5, arg2)
		end

		if arg1.purchaseState == 1.000000 then
			table.insert({}, __FUNC_21F59_("MENU_OK_CAPS", __FUNC_2295F_, true, false))
		else
			local registerVal9 = Engine.Localize("MENU_REDEEM_ERROR_MESSAGE_CONFIRM")
			table.insert({}, __FUNC_21F59_(registerVal9, __FUNC_22039_, true, false))
		end
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("MissingCoDPointsRedemption_List", __FUNC_21DA0_, true)
	DataSources.MissingCoDPointsRedemption_List = registerVal3
	return "MissingCoDPointsRedemption_List"
end

registerVal2.listDatasource = __FUNC_21CD6_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = nil
registerVal1.MissingCoDPointsRedemption = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Full"
registerVal2.frameWidget = "CoD.SystemOverlay_MissingCurrencyRedemption"
registerVal2.title = "MENU_REDEEM_CURRENCY_ERROR_TITLE"
local function __FUNC_229DF_(arg0, arg1)
	if arg1.purchaseState == 0.000000 then
		return ""
	else
		if arg1.purchaseState == 1.000000 then
			return Engine.Localize("MENU_REDEEM_CURRENCY_ERROR_COMPLETE_DESC")
		else
			for index3=1.000000, #arg1.skuList, 1.000000 do
				local registerVal7 = CoD.StoreUtility.GetMissingCurrencySkuName(arg1.skuList[index3].skuId)
				if registerVal7 then
					local registerVal10 = Engine.Localize(registerVal7)
				end
			end
			local registerVal3 = Engine.Localize("MENU_REDEEM_CURRENCY_ERROR_DESC")
			return (registerVal3 .. "

" .. ("" .. " - " .. registerVal10 .. " x " .. arg1.skuList[index3].quantity .. "
") .. "
")
		end
	end
end

registerVal2.description = __FUNC_229DF_
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_22C99_(arg0, arg1)
	local function __FUNC_22D63_(arg0, arg2)
		if arg2.redeemingMissingCurrency then
			return {}
		end
		local function __FUNC_22F18_(arg0, arg2, arg3, arg4)
			local registerVal4 = {}
			local registerVal5 = {}
			registerVal5.displayText = arg0
			registerVal5.disabled = arg4
			registerVal4.models = registerVal5
			registerVal5 = {}
			registerVal5.action = arg2
			registerVal5.actionParam = arg1
			registerVal5.selectIndex = arg3
			registerVal4.properties = registerVal5
			return registerVal4
		end

		local function __FUNC_22FF9_(arg0, arg3, arg4, arg5, arg6)
			if 0.000000 < #arg5.skuList then
				local registerVal5 = Engine.PurchaseDWSKUMultiple(arg4, false, arg5.skuList)
				if not registerVal5 then
					LuaUtils.UI_ShowErrorMessageDialog(arg4, "GROUPS_GENERIC_ERROR_MSG", "")
					GoBack(arg6, arg4)
					return 
				end
				arg1.purchaseState = 0.000000
				arg6:refreshData(arg4, arg5)
				arg0:setState("Purchasing")
				arg0.PurchasingWidget:playClip("StartPurchasing")
				arg0.PurchasingWidget.nextClip = "Purchasing"
				arg2.redeemingMissingCurrency = true
				arg2:updateDataSource()
				arg6[CoD.OverlayUtility.GoBackPropertyName] = nil
				arg2.disabled = true
				CoD.Menu.UpdateAllButtonPrompts(arg6, arg4)
				local function __FUNC_233D4_(arg3, arg7)
					local registerVal2 = Engine.IsInventoryBusy(arg4)
					registerVal2 = Engine.GetPurchaseDWSKUResult(arg4)
					if not arg7 or registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
						LUI.UIElement.clipOver(arg3, arg7)
					else
						arg3:playClip("StopPurchasing")
						local function __FUNC_235EF_(arg3, arg7)
							arg3:registerEventHandler("clip_over", LUI.UIElement.clipOver)
							arg0:setState("DefaultState")
							local registerVal2 = Engine.GetPurchaseDWSKUResult(arg4)
							if registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_SUCCESS then
								arg1.purchaseState = 1.000000
								arg6:refreshData(arg4, arg5)
								arg2.redeemingMissingCurrency = false
								arg2:updateDataSource()
							else
								LuaUtils.UI_ShowErrorMessageDialog(arg4, "GROUPS_GENERIC_ERROR_MSG", "")
								GoBack(arg6, arg4)
							end
						end

						arg3:registerEventHandler("clip_over", __FUNC_235EF_)
					end
				end

				arg0.PurchasingWidget:registerEventHandler("clip_over", __FUNC_233D4_)
			end
		end

		local function __FUNC_238E5_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		if arg1.purchaseState == 1.000000 then
			table.insert({}, __FUNC_22F18_("MENU_OK_CAPS", __FUNC_238E5_, true, false))
		else
			local registerVal9 = Engine.Localize("MENU_REDEEM_ERROR_MESSAGE_CONFIRM")
			table.insert({}, __FUNC_22F18_(registerVal9, __FUNC_22FF9_, true, false))
		end
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("MissingCurrencyRedemption_List", __FUNC_22D63_, true)
	DataSources.MissingCurrencyRedemption_List = registerVal3
	return "MissingCurrencyRedemption_List"
end

registerVal2.listDatasource = __FUNC_22C99_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = nil
registerVal1.MissingCurrencyRedemption = registerVal2
registerVal2 = {}
registerVal2.menuName = "SystemOverlay_Compact"
registerVal2.frameWidget = "CoD.SystemOverlay_ActivateBlackjackContract"
registerVal2.title = "CONTRACT_ACTIVATE_CONTRACT_TITLE"
registerVal2.description = "CONTRACT_ACTIVATE_BLACKJACK_CONTRACT_DESC"
registerVal2.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_23930_(arg0, arg1)
	local function __FUNC_239F6_(arg0, arg2)
		local function __FUNC_23AFA_(arg0, arg2, arg3, arg4)
			local registerVal4 = {}
			local registerVal5 = {}
			registerVal5.displayText = arg0
			registerVal5.disabled = arg4
			registerVal4.models = registerVal5
			registerVal5 = {}
			registerVal5.action = arg2
			registerVal5.actionParam = arg1
			registerVal5.selectIndex = arg3
			registerVal4.properties = registerVal5
			return registerVal4
		end

		local function __FUNC_23BD9_(arg0, arg2, arg3, arg4, arg5)
			local registerVal5 = GoBack(arg5, arg3)
			if arg1.self and arg1.element then
				HeroBlackjackActivateContract(arg1.self, arg1.element, arg3)
				UpdateSelfElementState(registerVal5, arg1.element, arg3)
				UpdateButtonPromptState(registerVal5, arg1.element, arg3, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
			end
		end

		local function __FUNC_23D71_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		table.insert({}, __FUNC_23AFA_("MENU_ACTIVATE_CONTRACT_CAPS", __FUNC_23BD9_, true, false))
		table.insert({}, __FUNC_23AFA_("MENU_CANCEL_CAPS", __FUNC_23D71_, false, false))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("ActivateBlackjackMenuList", __FUNC_239F6_, true)
	DataSources.ActivateBlackjackMenuList = registerVal3
	return "ActivateBlackjackMenuList"
end

registerVal2.listDatasource = __FUNC_23930_
registerVal2[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
registerVal1.BlackjackActivationConfirmation = registerVal2
registerVal3 = {}
registerVal3.menuName = "SystemOverlay_Compact"
registerVal3.title = "MPUI_EXP_PROMO_GENERIC_TITLE"
registerVal3.description = "MPUI_EXP_PROMO_GENERIC_DESC"
registerVal3.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal3.image = "t7_blackmarket_promo_bundle"
local function __FUNC_23DBC_(arg0, arg1)
	local function __FUNC_23E88_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_OK")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_23F78_(arg0, arg2, arg3, arg4, arg5)
			if arg1.statToMarkAsSeen then
				arg1.statToMarkAsSeen:set(Engine.DvarInt(nil, "loot_experimentpromo_index"))
				Engine.StorageWrite(arg3, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			end
			GoBack(arg5, arg3)
		end

		registerVal3.action = __FUNC_23F78_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal3 = DataSourceHelpers.ListSetup("InitialExperimentPromo_List", __FUNC_23E88_, true, nil)
	DataSources.InitialExperimentPromo_List = registerVal3
	return "InitialExperimentPromo_List"
end

registerVal3.listDatasource = __FUNC_23DBC_
registerVal1["InitialExperimentPromoOverlay"] = registerVal3
registerVal3 = {}
registerVal3.menuName = "SystemOverlay_Compact"
registerVal3.frameWidget = "CoD.SystemOverlay_LoginReward"
local function __FUNC_2410E_(arg0, arg1)
	return CoD.LoginRewardTitle
end

registerVal3.title = __FUNC_2410E_
local function __FUNC_24173_(arg0, arg1)
	return CoD.LoginRewardDesc
end

registerVal3.description = __FUNC_24173_
registerVal3.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_241D6_(arg0, arg1)
	return CoD.LoginRewardOverlayImage
end

registerVal3.image = __FUNC_241D6_
local function __FUNC_24242_(arg0, arg1)
	local function __FUNC_242FD_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_OK")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_243E8_(arg0, arg1, arg2, arg3, arg4)
			local registerVal6 = arg0:getParent()
			RedeemLoginRewardAction(registerVal6, arg2, arg4)
		end

		registerVal3.action = __FUNC_243E8_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal3 = DataSourceHelpers.ListSetup("LoginReward_List", __FUNC_242FD_, true, nil)
	DataSources.LoginReward_List = registerVal3
	return "LoginReward_List"
end

registerVal3.listDatasource = __FUNC_24242_
registerVal1["LoginRewardOverlay"] = registerVal3
registerVal3 = {}
registerVal3.menuName = "SystemOverlay_Full"
registerVal3.title = "MENU_ZMDLC_TITLE"
local function __FUNC_24460_(arg0, arg1)
	local registerVal3 = Engine.Localize("MENU_ZMDLC_BODY_GENERAL")
	if arg1.dlc1 then
		local registerVal5 = Engine.Localize("MENU_ZMDLC_BODY_DLC1")
	end
	if arg1.dlc2 then
		registerVal5 = Engine.Localize("MENU_ZMDLC_BODY_DLC2")
	end
	if arg1.dlc3 then
		registerVal5 = Engine.Localize("MENU_ZMDLC_BODY_DLC3")
	end
	if arg1.dlc4 then
		registerVal5 = Engine.Localize("MENU_ZMDLC_BODY_DLC4")
	end
	return (((((("

" .. registerVal3 .. "
") .. "
" .. registerVal5) .. "
" .. registerVal5) .. "
" .. registerVal5) .. "
" .. registerVal5) .. "

")
end

registerVal3.description = __FUNC_24460_
registerVal3.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal3.image = "t7_icon_notice_overlays_bkg"
local function __FUNC_246AA_(arg0, arg1)
	local function __FUNC_24778_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_OK")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_24868_(arg0, arg2, arg3, arg4, arg5)
			local registerVal5 = Engine.StorageGetBuffer(arg3, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
			if registerVal5 then
				if arg1.dlc1 then
					registerVal5.extraBools[3.000000]:set(1.000000)
				end
				if arg1.dlc2 then
					registerVal5.extraBools[4.000000]:set(1.000000)
				end
				if arg1.dlc3 then
					registerVal5.extraBools[5.000000]:set(1.000000)
				end
				if arg1.dlc4 then
					registerVal5.extraBools[6.000000]:set(1.000000)
				end
				Engine.StorageWrite(arg3, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
			end
			ProceedToNextPreStartPopup(arg0, arg3, arg5)
		end

		registerVal3.action = __FUNC_24868_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal3 = DataSourceHelpers.ListSetup("ZMDLCPurchaseRewardOverlay_List", __FUNC_24778_, true, nil)
	DataSources.ZMDLCPurchaseRewardOverlay_List = registerVal3
	return "ZMDLCPurchaseRewardOverlay_List"
end

registerVal3.listDatasource = __FUNC_246AA_
registerVal1["ZMDLCPurchaseRewardOverlay"] = registerVal3
registerVal3 = {}
registerVal3.menuName = "SystemOverlay_Compact"
registerVal3.title = "MENU_ZMHD_PURCHASE_REWARD_TITLE"
registerVal3.description = "MENU_ZMHD_PURCHASE_REWARD_DESC"
registerVal3.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal3.image = "t7_icon_zmhd_camos"
local function __FUNC_24B26_(arg0, arg1)
	local function __FUNC_24BEF_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_OK")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_24CD8_(arg0, arg1, arg2, arg3, arg4)
			local registerVal5 = Engine.StorageGetBuffer(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			if registerVal5 then
				registerVal5.extraBools[7.000000]:set(1.000000)
				Engine.StorageWrite(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
			end
			ProceedToNextPreStartPopup(arg0, arg2, arg4)
		end

		registerVal3.action = __FUNC_24CD8_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal3 = DataSourceHelpers.ListSetup("ZMHDPurchaseRewardOverlay_List", __FUNC_24BEF_, true, nil)
	DataSources.ZMHDPurchaseRewardOverlay_List = registerVal3
	return "ZMHDPurchaseRewardOverlay_List"
end

registerVal3.listDatasource = __FUNC_24B26_
registerVal1["ZMHDPurchaseRewardOverlay"] = registerVal3
registerVal3 = {}
registerVal3.menuName = "SystemOverlay_Compact"
registerVal3.frameWidget = "CoD.SystemOverlay_ZMHDGobbleGum"
registerVal3.title = "MENU_ZMHD_GOBBLEGUM_REWARD_TITLE"
registerVal3.description = "MENU_ZMHD_GOBBLEGUM_REWARD_DESC"
registerVal3.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal3.image = "t7_icon_zmhd_gobblegum"
local function __FUNC_24E83_(arg0, arg1)
	local function __FUNC_24F46_(arg0, arg2)
		if arg2.purchasingInventoryItem then
			return {}
		end
		local function __FUNC_25043_(arg0, arg2, arg3, arg4)
			local registerVal4 = {}
			local registerVal5 = {}
			registerVal5.displayText = arg0
			registerVal5.disabled = arg4
			registerVal4.models = registerVal5
			registerVal5 = {}
			registerVal5.action = arg2
			registerVal5.actionParam = arg1
			registerVal5.selectIndex = arg3
			registerVal4.properties = registerVal5
			return registerVal4
		end

		local function __FUNC_25121_(arg0, arg3, arg4, arg5, arg6)
			local registerVal6 = Engine.GetInventoryItemQuantity(arg4, arg1.skuId)
			if 0.000000 < registerVal6 then
				GoBack(arg6, arg4)
			else
				registerVal6 = Engine.PurchaseDWSKU(arg4, arg1.skuId)
				if not registerVal6 then
					LuaUtils.UI_ShowErrorMessageDialog(arg4, "GROUPS_GENERIC_ERROR_MSG", "")
					GoBack(arg6, arg4)
					return 
				end
				registerVal6 = arg0:getParent()
				if not registerVal6.ProcessingWidget then
					GoBack(arg6, arg4)
				end
				registerVal6:setState("Purchasing")
				registerVal6.ProcessingWidget:playClip("StartPurchasing")
				registerVal6.ProcessingWidget.nextClip = "Purchasing"
				arg2.purchasingInventoryItem = true
				arg2:updateDataSource()
				arg6[CoD.OverlayUtility.GoBackPropertyName] = nil
				arg2.disabled = true
				CoD.Menu.UpdateAllButtonPrompts(arg6, arg4)
				local function __FUNC_2552E_(arg0, arg1)
					local registerVal2 = Engine.IsInventoryBusy(arg4)
					registerVal2 = Engine.GetPurchaseDWSKUResult(arg4)
					if not arg1 or registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
						LUI.UIElement.clipOver(arg0, arg1)
					else
						arg0:playClip("StopPurchasing")
						local function __FUNC_2573F_(arg0, arg1)
							arg0:registerEventHandler("clip_over", LUI.UIElement.clipOver)
							registerVal6:setState("DefaultState")
							local registerVal2 = Engine.GetPurchaseDWSKUResult(arg4)
							if registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_SUCCESS then
								registerVal2 = GoBack(arg6, arg4)
								CoD.OverlayUtility.CreateOverlay(arg4, registerVal2, "ZMHDGobbleGumPurchaseSuccessOverlay", arg4, arg5)
							else
								LuaUtils.UI_ShowErrorMessageDialog(arg4, "GROUPS_GENERIC_ERROR_MSG", "")
								GoBack(arg6, arg4)
							end
						end

						arg0:registerEventHandler("clip_over", __FUNC_2573F_)
					end
				end

				registerVal6.ProcessingWidget:registerEventHandler("clip_over", __FUNC_2552E_)
			end
		end

		table.insert({}, __FUNC_25043_("MENU_REDEEM_ERROR_MESSAGE_CONFIRM", __FUNC_25121_, true, false))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("ZMHDGobbleGumOverlay_List", __FUNC_24F46_, true)
	DataSources.ZMHDGobbleGumOverlay_List = registerVal3
	return "ZMHDGobbleGumOverlay_List"
end

registerVal3.listDatasource = __FUNC_24E83_
registerVal1["ZMHDGobbleGumOverlay"] = registerVal3
registerVal3 = {}
registerVal3.menuName = "SystemOverlay_Compact"
registerVal3.title = "MENU_ZMHD_GOBBLEGUM_REWARD_TITLE"
registerVal3.description = "MENU_ZMHD_GOBBLEGUM_REWARD_SUCCESS"
registerVal3.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
registerVal3.image = "t7_icon_zmhd_gobblegum"
local function __FUNC_25A43_(arg0, arg1)
	local function __FUNC_25B15_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_OK")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_25C00_(arg0, arg1, arg2, arg3, arg4)
			ProceedToNextPreStartPopup(arg0, arg2, arg4)
		end

		registerVal3.action = __FUNC_25C00_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal3 = DataSourceHelpers.ListSetup("ZMHDGobbleGumPurchaseSuccessOverlay_List", __FUNC_25B15_, true, nil)
	DataSources.ZMHDGobbleGumPurchaseSuccessOverlay_List = registerVal3
	return "ZMHDGobbleGumPurchaseSuccessOverlay_List"
end

registerVal3.listDatasource = __FUNC_25A43_
registerVal1["ZMHDGobbleGumPurchaseSuccessOverlay"] = registerVal3
registerVal3 = {}
registerVal3.menuName = "SystemOverlay_Compact"
registerVal3.title = "CONTRACT_BGB_CC_TITLE"
registerVal3.description = "MENU_ZMHD_GOBBLEGUM_REWARD_SUCCESS"
registerVal3.frameWidget = "CoD.SystemOverlay_Winter_Reward"
registerVal3.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_25C64_(arg0, arg1)
	local function __FUNC_25D38_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_OK")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_25E24_(arg0, arg1, arg2, arg3, arg4)
			ProceedToNextPreStartPopup(arg0, arg2, arg4)
		end

		registerVal3.action = __FUNC_25E24_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal3 = DataSourceHelpers.ListSetup("WinterCCRedeemRewardSuccessOverlay_List", __FUNC_25D38_, true, nil)
	DataSources.WinterCCRedeemRewardSuccessOverlay_List = registerVal3
	return "WinterCCRedeemRewardSuccessOverlay_List"
end

registerVal3.listDatasource = __FUNC_25C64_
registerVal1["WinterCCRedeemRewardSuccessOverlay"] = registerVal3
registerVal3 = {}
registerVal3.menuName = "SystemOverlay_Full"
registerVal3.frameWidget = "CoD.SystemOverlay_UltraRareMega"
local function __FUNC_25E88_(arg0, arg1)
	if arg1.isFirstTime then
		return "ZMUI_URM_FIRST_TIME_POPUP_TITLE"
	end
	return "ZMUI_CONFIRM_TRADE_CAPS"
end

registerVal3.title = __FUNC_25E88_
local function __FUNC_25F37_(arg0, arg1)
	if arg1.isFirstTime then
		return "ZMUI_URM_FIRST_TIME_POPUP_DESC"
	end
	return "ZMUI_URM_TRADE_CONFIRMATION_DESC"
end

registerVal3.description = __FUNC_25F37_
local function __FUNC_25FEB_(arg0, arg1)
	if arg1.isFirstTime then
		return "uie_t7_zm_icon_ggtilepromo_free"
	end
	return "uie_t7_zm_icon_ggtilepromo_5x"
end

registerVal3.image = __FUNC_25FEB_
local function __FUNC_2609D_(arg0, arg1)
	if arg1.isFirstTime then
		return "ZMUI_URM_FIRST_TIME_PURCHASE_DESC"
	end
	return "ZMUI_URM_PURCHASE_DESC"
end

registerVal3.supportText = __FUNC_2609D_
local function __FUNC_2614C_(arg0, arg1)
	return arg1.cost
end

registerVal3.cost = __FUNC_2614C_
registerVal3.vials = 0.000000
registerVal3.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_26196_(arg0, arg1)
	local function __FUNC_26262_(arg0, arg2)
		if arg2.purchasingInventoryItem then
			return {}
		end
		local function __FUNC_264FB_(arg0, arg2, arg3, arg4)
			local registerVal4 = {}
			local registerVal5 = {}
			registerVal5.displayText = arg0
			registerVal5.disabled = arg4
			registerVal4.models = registerVal5
			registerVal5 = {}
			registerVal5.action = arg2
			registerVal5.actionParam = arg1
			registerVal5.selectIndex = arg3
			registerVal4.properties = registerVal5
			return registerVal4
		end

		local function __FUNC_265D9_(arg0, arg3, arg4, arg5, arg6)
			local registerVal6 = Engine.PurchaseDWSKU(arg4, arg1.skuId)
			if not registerVal6 then
				LuaUtils.UI_ShowErrorMessageDialog(arg4, "GROUPS_GENERIC_ERROR_MSG", "")
				GoBack(arg6, arg4)
				return 
			end
			arg0:setState("Purchasing")
			arg0.ProcessingWidget:playClip("StartPurchasing")
			arg0.ProcessingWidget.nextClip = "Purchasing"
			arg2.purchasingInventoryItem = true
			arg2:updateDataSource()
			arg6[CoD.OverlayUtility.GoBackPropertyName] = nil
			arg2.disabled = true
			CoD.Menu.UpdateAllButtonPrompts(arg6, arg4)
			local function __FUNC_26944_(arg1, arg2)
				local registerVal2 = Engine.IsInventoryBusy(arg4)
				registerVal2 = Engine.GetPurchaseDWSKUResult(arg4)
				if not arg2 or registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
					LUI.UIElement.clipOver(arg1, arg2)
				else
					arg1:playClip("StopPurchasing")
					local function __FUNC_26B57_(arg1, arg2)
						arg1:registerEventHandler("clip_over", LUI.UIElement.clipOver)
						arg0:setState("DefaultState")
						local registerVal2 = Engine.GetPurchaseDWSKUResult(arg4)
						if registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_SUCCESS then
							registerVal2 = GoBack(arg6, arg4)
							CoD.OverlayUtility.CreateOverlay(arg4, registerVal2, "UltraRareMegaPurchaseSuccessOverlay", arg4, arg5)
						else
							LuaUtils.UI_ShowErrorMessageDialog(arg4, "GROUPS_GENERIC_ERROR_MSG", "")
							GoBack(arg6, arg4)
						end
					end

					arg1:registerEventHandler("clip_over", __FUNC_26B57_)
				end
			end

			arg0.ProcessingWidget:registerEventHandler("clip_over", __FUNC_26944_)
		end

		local function __FUNC_26E5B_(arg0, arg1, arg2, arg3, arg4)
			GoBack(arg4, arg2)
		end

		if arg1.isFirstTime then
			arg2.menu[CoD.OverlayUtility.GoBackPropertyName] = nil
			table.insert({}, __FUNC_264FB_("MENU_REDEEM_ERROR_MESSAGE_CONFIRM", __FUNC_265D9_, true, false))
		else
			local registerVal9 = Engine.Localize("ZMUI_PURCHASE_VIALS", arg1.cost)
			table.insert({}, __FUNC_264FB_(registerVal9, __FUNC_265D9_, true, false))
			table.insert({}, __FUNC_264FB_("MENU_CANCEL_CAPS", __FUNC_26E5B_, false, false))
		end
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("UltraRareMegaPurchaseOverlay_List", __FUNC_26262_, true)
	DataSources.UltraRareMegaPurchaseOverlay_List = registerVal3
	return "UltraRareMegaPurchaseOverlay_List"
end

registerVal3.listDatasource = __FUNC_26196_
local function __FUNC_26EA4_()
	local function __FUNC_26ED8_(arg0, arg1, arg2, arg3)
		local registerVal4 = GoBack(arg3, arg2)
		local registerVal5 = Engine.IsInventoryBusy(arg2)
		registerVal5 = Engine.GetPurchaseDWSKUResult(arg2)
		if not registerVal5 and registerVal5 ~= Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
			CoD.OverlayUtility.CreateOverlay(arg2, registerVal4, "PurchaseVials", arg2, {})
		end
	end

	return __FUNC_26ED8_
end

registerVal3[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_26EA4_
local function __FUNC_270AD_(arg0, arg1, arg2, arg3)
	local registerVal4 = IsUltraRareMegaGobblegumPromoActive(arg1)
	local function __FUNC_2717F_()
		local registerVal1 = IsUltraRareMegaGobblegumPromoActive(arg1)
		if registerVal4 ~= registerVal1 then
			DelayGoBack(arg0, arg1)
		end
	end

	arg0:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_2717F_)
end

registerVal3.postCreateStep = __FUNC_270AD_
registerVal1["UltraRareMegaPurchaseOverlay"] = registerVal3
registerVal3 = {}
registerVal3.menuName = "SystemOverlay_Full"
registerVal3.frameWidget = "CoD.SystemOverlay_UltraRareMega"
registerVal3.title = "ZMUI_URM_FIRST_TIME_POPUP_TITLE"
registerVal3.description = "MENU_ZMHD_GOBBLEGUM_REWARD_SUCCESS"
registerVal3.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_27212_(arg0, arg1)
	if arg1.isFirstTime then
		return "uie_t7_zm_icon_ggtilepromo_free"
	end
	return "uie_t7_zm_icon_ggtilepromo_5x"
end

registerVal3.image = __FUNC_27212_
local function __FUNC_272C5_(arg0, arg1)
	if arg1.isFirstTime then
		return "ZMUI_URM_FIRST_TIME_PURCHASE_DESC"
	end
	return "ZMUI_URM_PURCHASE_DESC"
end

registerVal3.supportText = __FUNC_272C5_
registerVal3.cost = 0.000000
local function __FUNC_27374_(arg0, arg1)
	local function __FUNC_27449_(arg0)
		local registerVal1 = {}
		local registerVal2 = {}
		local registerVal3 = {}
		local registerVal4 = Engine.Localize("MENU_OK")
		registerVal3.displayText = registerVal4
		registerVal2.models = registerVal3
		registerVal3 = {}
		local function __FUNC_27534_(arg0, arg1, arg2, arg3, arg4)
			local registerVal6 = Engine.GetGlobalModel()
			local registerVal5 = Engine.CreateModel(registerVal6, "autoevents.cycled")
			Engine.ForceNotifyModelSubscriptions(registerVal5)
			ProceedToNextPreStartPopup(arg0, arg2, arg4)
		end

		registerVal3.action = __FUNC_27534_
		registerVal2.properties = registerVal3
		registerVal1 = {registerVal2}
		return registerVal1
	end

	local registerVal3 = DataSourceHelpers.ListSetup("UltraRareMegaPurchaseSuccessOverlay_List", __FUNC_27449_, true, nil)
	DataSources.UltraRareMegaPurchaseSuccessOverlay_List = registerVal3
	return "UltraRareMegaPurchaseSuccessOverlay_List"
end

registerVal3.listDatasource = __FUNC_27374_
registerVal1["UltraRareMegaPurchaseSuccessOverlay"] = registerVal3
registerVal3 = {}
registerVal3.menuName = "SystemOverlay_Full"
registerVal3.frameWidget = "CoD.SystemOverlay_PurchaseInventoryItem"
local function __FUNC_2765B_(arg0, arg1)
	local registerVal3 = Engine.GetCoDPoints(arg0)
	if 0.000000 < arg1.itemCODPointCost and registerVal3 < arg1.itemCODPointCost then
		return "MPUI_BM_NO_CURRENCY"
	end
	Engine.Localize("ZMUI_CONFIRM_TRADE")
	return Engine.ToUpper(Engine.Localize)
end

registerVal3.title = __FUNC_2765B_
local function __FUNC_2779D_(arg0, arg1)
	local registerVal3 = Engine.GetCoDPoints(arg0)
	if 0.000000 < arg1.itemCODPointCost and registerVal3 < arg1.itemCODPointCost then
		return Engine.Localize("MPUI_BM_NO_CODPOINTS_DESCRIPTION", arg1.itemName)
	end
	return Engine.Localize(arg1.outfitDesc)
end

registerVal3.description = __FUNC_2779D_
local function __FUNC_278FB_(arg0, arg1)
	return arg1.image
end

registerVal3.image = __FUNC_278FB_
local function __FUNC_27943_(arg0, arg1)
	return arg1.itemCODPointCost
end

registerVal3.codpointcost = __FUNC_27943_
local function __FUNC_27996_(arg0, arg1)
	local registerVal3 = Engine.GetCoDPoints(arg0)
	if 0.000000 < arg1.itemCODPointCost and registerVal3 < arg1.itemCODPointCost then
		return Engine.Localize("MENU_CODPOINT_COST", arg1.itemCODPointCost)
	end
	return ""
end

registerVal3.codpointcostString = __FUNC_27996_
local function __FUNC_27AAD_(arg0, arg1)
	return arg1.category
end

registerVal3.state = __FUNC_27AAD_
registerVal3.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
local function __FUNC_27AFA_(arg0, arg1)
	local function __FUNC_27BC3_(arg0, arg2)
		if arg2.purchasingInventoryItem then
			return {}
		end
		local function __FUNC_27E3D_(arg0, arg2, arg3, arg4)
			local registerVal4 = {}
			local registerVal5 = {}
			registerVal5.displayText = arg0
			registerVal5.disabled = arg4
			registerVal4.models = registerVal5
			registerVal5 = {}
			registerVal5.action = arg2
			registerVal5.actionParam = arg1
			registerVal5.selectIndex = arg3
			registerVal4.properties = registerVal5
			return registerVal4
		end

		local function __FUNC_27F1D_(arg0, arg3, arg4, arg5, arg6)
			local registerVal6 = Engine.GetInventoryItemQuantity(arg4, arg1.skuId)
			if registerVal6 <= 0.000000 then
				registerVal6 = Engine.PurchaseDWSKU(arg4, arg1.skuId)
				if not registerVal6 then
					LuaUtils.UI_ShowErrorMessageDialog(arg4, "MENU_EXTRASLOTS_PURCHASE_FAILED", "")
					LUI.CoDMetrics.InventoryItemPurchased(arg4, arg5.productDesc, arg5.purchaseSource, arg5.itemCODPointCost, false)
					GoBack(arg6, arg4)
					return 
				end
				arg0:setState("Purchasing")
				arg0.PurchasingWidget:playClip("StartPurchasing")
				arg0.PurchasingWidget.nextClip = "Purchasing"
				arg2.purchasingInventoryItem = true
				arg2:updateDataSource()
				arg6[CoD.OverlayUtility.GoBackPropertyName] = nil
				arg2.disabled = true
				CoD.Menu.UpdateAllButtonPrompts(arg6, arg4)
				local function __FUNC_283AE_(arg1, arg2)
					local registerVal2 = Engine.IsInventoryBusy(arg4)
					registerVal2 = Engine.GetPurchaseDWSKUResult(arg4)
					if not arg2 or registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
						LUI.UIElement.clipOver(arg1, arg2)
					else
						arg1:playClip("StopPurchasing")
						local function __FUNC_285BF_(arg1, arg2)
							arg1:registerEventHandler("clip_over", LUI.UIElement.clipOver)
							arg0:setState("DefaultState")
							local registerVal2 = Engine.GetPurchaseDWSKUResult(arg4)
							if registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_SUCCESS then
								LUI.CoDMetrics.InventoryItemPurchased(arg4, arg5.productDesc, arg5.purchaseSource, arg5.itemCODPointCost, true)
								registerVal2, registerVal3, registerVal4 = ipairs(CoD.BlackMarketUtility.UniqueSpecialistOutfits)
								for index5,value6 in registerVal2, registerVal3, registerVal4 do
									if arg5.productDesc == value6.contractName then
										local registerVal7 = Engine.StorageGetBuffer(arg4, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
										registerVal7.ui_seen_new_contracts:set(0.000000)
									else
									end
								end
								registerVal2 = GoBack(arg6, arg4)
								CoD.OverlayUtility.CreateOverlay(arg4, registerVal2, "PurchaseInventoryItemComplete", arg4, arg5)
							else
								LuaUtils.UI_ShowErrorMessageDialog(arg4, "GROUPS_GENERIC_ERROR_MSG", "")
								LUI.CoDMetrics.InventoryItemPurchased(arg4, arg5.productDesc, arg5.purchaseSource, arg5.itemCODPointCost, false)
								GoBack(arg6, arg4)
							end
						end

						arg1:registerEventHandler("clip_over", __FUNC_285BF_)
					end
				end

				arg0.PurchasingWidget:registerEventHandler("clip_over", __FUNC_283AE_)
			end
		end

		local function __FUNC_28B7C_(arg0, arg1, arg2, arg3, arg4)
			LUI.CoDMetrics.InventoryItemPurchased(arg2, arg3.productDesc, arg3.purchaseSource, arg3.itemCODPointCost, false)
			GoBackAndOpenStoreCodPointsOverlayOnParent(arg4, "BMCPStore", arg2)
		end

		local function __FUNC_28CD7_(arg0, arg1, arg2, arg3, arg4)
			LUI.CoDMetrics.InventoryItemPurchased(arg2, arg3.productDesc, arg3.purchaseSource, arg3.itemCODPointCost, false)
			GoBack(arg4, arg2)
		end

		local registerVal8 = Engine.GetCoDPoints(arg0)
		if 0.000000 < arg1.itemCODPointCost and registerVal8 < arg1.itemCODPointCost then
			table.insert({}, __FUNC_27E3D_("MPUI_PURCHASE_CODPOINTS_CAPS", __FUNC_28B7C_, true, false))
		else
			if 0.000000 < arg1.itemCODPointCost then
				local registerVal10 = Engine.Localize("MPUI_BM_TRADE_COD_POINTS", arg1.itemCODPointCost)
				table.insert({}, __FUNC_27E3D_(registerVal10, __FUNC_27F1D_, true, false))
			end
		end
		table.insert({}, __FUNC_27E3D_("MENU_CANCEL_CAPS", __FUNC_28CD7_, false, false))
		return {}
	end

	local registerVal3 = DataSourceHelpers.ListSetup("PurchaseOutfitItemConfirmation", __FUNC_27BC3_, true)
	DataSources.PurchaseOutfitItemConfirmation = registerVal3
	return "PurchaseOutfitItemConfirmation"
end

registerVal3.listDatasource = __FUNC_27AFA_
local function __FUNC_28DF4_(arg0, arg1)
	local function __FUNC_28E2C_(arg0, arg2, arg3, arg4)
		LUI.CoDMetrics.InventoryItemPurchased(arg3, arg1.productDesc, arg1.purchaseSource, arg1.itemCODPointCost, false)
		GoBack(arg4, arg3)
	end

	return __FUNC_28E2C_
end

registerVal3[CoD.OverlayUtility.GoBackPropertyName] = __FUNC_28DF4_
registerVal1["PurchaseOutfitItemConfirmation"] = registerVal3
CoD.OverlayUtility.Overlays = registerVal1
local function __FUNC_28F58_(arg0, arg1)
	if arg1 or CoD.LoadingFFOTD then
		CoD.OverlayUtility.Overlays[arg0] = arg1
	end
end

CoD.OverlayUtility["AddSystemOverlay"] = __FUNC_28F58_
local function __FUNC_29039_(arg0, arg1)
	local function __FUNC_29074_()
		ClearMenuSavedState(arg0)
		local registerVal1 = Engine.GetModelForController(arg1)
		local registerVal0 = Engine.GetModel(registerVal1, arg0.overlayModelName)
		if arg0.overlayModelName and registerVal0 then
			Engine.UnsubscribeAndFreeModel(registerVal0)
		end
	end

	return __FUNC_29074_
end

CoD.OverlayUtility["OverlayCloseMethod"] = __FUNC_29039_
local function __FUNC_291B9_(arg0, arg1, arg2)
	local registerVal3, registerVal4, registerVal5 = ipairs(CoD.OverlayUtility.OverlayModelFields)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal9 = Engine.CreateModel(arg0, value7)
		local registerVal10 = CoD.OverlayUtility.callFnOrGetValue(arg1[value7], arg2)
		if not registerVal10 and CoD.OverlayUtility.DefaultModelFields[value7] then
			local registerVal12 = {}
			registerVal12 = {arg1, arg2}
			registerVal10 = CoD.OverlayUtility.callFnOrGetValue(CoD.OverlayUtility.DefaultModelFields[value7], registerVal12)
		end
		if registerVal10 ~= nil then
			Engine.SetModelValue(registerVal9, registerVal10)
		end
	end
end

CoD.OverlayUtility["RefreshOverlayModels"] = __FUNC_291B9_
local function __FUNC_293E4_(arg0, arg1, arg2)
	local registerVal3, registerVal4, registerVal5 = ipairs(CoD.OverlayUtility.OverlayPropertyFields)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal9 = CoD.OverlayUtility.callFnOrGetValue(arg1[value7], arg2)
		if not registerVal9 and CoD.OverlayUtility.DefaultPropertyFields[value7] then
			local registerVal11 = {}
			registerVal11 = {arg1, arg2}
			registerVal9 = CoD.OverlayUtility.callFnOrGetValue(CoD.OverlayUtility.DefaultPropertyFields[value7], registerVal11)
		end
		arg0[value7] = registerVal9
	end
end

CoD.OverlayUtility["RefreshOverlayProperties"] = __FUNC_293E4_
local function __FUNC_2959D_(arg0, arg1)
	local function __FUNC_295D8_()
		local registerVal1 = arg0:getModel()
		CoD.OverlayUtility.RefreshOverlayModels(registerVal1, CoD.OverlayUtility.Overlays[arg0.menuName], arg1)
		CoD.OverlayUtility.RefreshOverlayProperties(arg0, CoD.OverlayUtility.Overlays[arg0.menuName], arg1)
	end

	return __FUNC_295D8_
end

CoD.OverlayUtility["RefreshOverlayDataFunction"] = __FUNC_2959D_
local function __FUNC_29767_(arg0, arg1, arg2, ...)
	local registerVal4 = {}
	local registerVal5 = select("#", ...)
	registerVal4.n = registerVal5
	registerVal4 = {}
	local function __FUNC_29E0D_(arg0, arg1)
		local registerVal2, registerVal3, registerVal4 = ipairs(CoD.OverlayUtility.OverlayModelFields)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			local registerVal8 = Engine.CreateModel(arg0, value6)
			local registerVal9 = type(arg1[value6])
			if registerVal9 == "function" then
				registerVal9 = arg1[value6](unpack(registerVal4))
			else
			end
			if not arg1[value6] and CoD.OverlayUtility.DefaultModelFields[value6] then
				local registerVal11 = {}
				registerVal11 = {arg1, registerVal4}
				registerVal9 = CoD.OverlayUtility.callFnOrGetValue(CoD.OverlayUtility.DefaultModelFields[value6], registerVal11)
			end
			if registerVal9 ~= nil then
				Engine.SetModelValue(registerVal8, registerVal9)
			end
		end
	end

	local registerVal7 = CoD.OverlayUtility.callFnOrGetValue(CoD.OverlayUtility.Overlays[arg2].menuName, registerVal4)
	if CoD.OverlayUtility.Overlays[arg2] and registerVal7 then
		if CoD.Menu.ModelToUse then
			CoD.OverlayUtility.RefreshOverlayModels(CoD.Menu.ModelToUse, CoD.OverlayUtility.Overlays[arg2], registerVal4)
		end
		CoD.Menu.OverwriteMenuName = arg2
		if arg1 or CoD.OverlayUtility.Overlays[arg2].openMethod == CoD.OverlayUtility.OpenMethods.Popup then
			local registerVal8 = OpenPopup(arg1, registerVal7, arg0)
		else
			if CoD.OverlayUtility.Overlays[arg2].openMethod == CoD.OverlayUtility.OpenMethods.Overlay then
				registerVal8 = OpenOverlay(arg1, registerVal7, arg0)
			end
		end
		CoD.Menu.OverwriteMenuName = nil
		if registerVal8 then
			registerVal8 = CoD.OverlayUtility.RefreshOverlayDataFunction(registerVal8, registerVal4)
			registerVal8.refreshData = registerVal8
			CoD.OverlayUtility.RefreshOverlayProperties(registerVal8, CoD.OverlayUtility.Overlays[arg2], registerVal4)
			registerVal8 = registerVal8:getModel()
			if not registerVal8 then
				registerVal8.overlayModelName = ("Overlay." .. arg2)
				local registerVal10 = Engine.GetModelForController(arg0)
				local registerVal9 = Engine.CreateModel(registerVal10, registerVal8.overlayModelName)
				CoD.OverlayUtility.RefreshOverlayModels(registerVal9, CoD.OverlayUtility.Overlays[arg2], registerVal4)
				registerVal8:setModel(registerVal9)
			end
			LUI.OverrideFunction_CallOriginalFirst(registerVal8, "close", CoD.OverlayUtility.OverlayCloseMethod(registerVal8, arg0))
			if CoD.OverlayUtility.Overlays[arg2].postCreateStep then
				CoD.OverlayUtility.Overlays[arg2].postCreateStep(registerVal8, arg0, unpack(registerVal4))
			end
			registerVal8:UpdateAllButtonPrompts(arg0)
		end
	end
	return registerVal8
end

CoD.OverlayUtility["CreateOverlay"] = __FUNC_29767_
local function __FUNC_2A080_(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	local registerVal8 = Engine.GetModelForController(Engine.GetPrimaryController())
	local registerVal7 = Engine.CreateModel(registerVal8, "FrontendToast")
	local registerVal9 = Engine.CreateModel(registerVal7, "state")
	Engine.SetModelValue(registerVal9, "DefaultState")
	registerVal9 = Engine.CreateModel(registerVal7, "kicker")
	Engine.SetModelValue(registerVal9, "")
	registerVal9 = Engine.CreateModel(registerVal7, "description")
	Engine.SetModelValue(registerVal9, "")
	registerVal9 = Engine.CreateModel(registerVal7, "contentIcon")
	Engine.SetModelValue(registerVal9, "blacktransparent")
	registerVal9 = Engine.CreateModel(registerVal7, "functionIcon")
	Engine.SetModelValue(registerVal9, "blacktransparent")
	registerVal9 = Engine.CreateModel(registerVal7, "backgroundId")
	Engine.SetModelValue(registerVal9, arg6)
	registerVal9 = Engine.CreateModel(registerVal7, "emblemDecal")
	Engine.SetModelValue(registerVal9, 0.000000)
	registerVal9 = Engine.CreateModel(registerVal7, "notify")
	Engine.SetModelValue(registerVal9, true)
end

CoD.OverlayUtility["ShowToast"] = __FUNC_2A080_

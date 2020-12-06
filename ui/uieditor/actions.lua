-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.actions_helper")
function UpdateState(arg0, arg1)
	if arg1 ~= nil then
		local registerVal3 = LUI.ShallowCopy(arg1)
	end
	registerVal3.name = "update_state"
	arg0:processEvent(registerVal3)
end

function UpdateMenuState(arg0, arg1)
	if arg1 ~= nil then
		local registerVal3 = LUI.ShallowCopy(arg1)
	end
	registerVal3.name = "update_state"
	arg0:updateElementState(arg0, registerVal3)
end

function UpdateElementState(arg0, arg1, arg2)
	if arg0[arg1] then
		local registerVal5 = {}
		registerVal5.name = "update_state"
		registerVal5.controller = arg2
		arg0[arg1]:processEvent(registerVal5)
	end
end

function UpdateSelfElementState(arg0, arg1, arg2)
	local registerVal5 = {}
	registerVal5.name = "update_state"
	registerVal5.menu = arg0
	registerVal5.controller = arg2
	arg1:processEvent(registerVal5)
end

function UpdateSelfState(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "update_state"
	registerVal4.controller = arg1
	arg0:processEvent(registerVal4)
end

function SetLuiKeyCatcher(arg0)
	Engine.SetLuiKeyCatcher(arg0)
end

function UpdateAllMenuButtonPrompts(arg0, arg1)
	arg0:UpdateAllButtonPrompts(arg1)
end

function UpdateButtonPrompt(arg0, arg1, arg2)
	if not arg0.buttonPromptAddFunctions then
		return 
	end
	local registerVal6 = {}
	registerVal6.controller = arg2
	local registerVal3 = arg0.buttonPromptAddFunctions[arg1](arg0, arg0, registerVal6)
	if arg1 or not registerVal3 then
		arg0:removeButtonPrompt(arg1, arg0)
	end
end

function SetButtonPromptEnabled(arg0, arg1)
	arg0:SetButtonPromptState(arg1, Enum.LUIButtonPromptStates.FLAG_ENABLE_PROMPTS)
end

function SetButtonPromptDisabled(arg0, arg1)
	arg0:SetButtonPromptState(arg1, Enum.LUIButtonPromptStates.FLAG_DISABLE_PROMPTS)
end

function SetButtonPromptHidden(arg0, arg1)
	arg0:SetButtonPromptState(arg1, Enum.LUIButtonPromptStates.FLAG_HIDE_PROMPTS)
end

function UpdateButtonPromptState(arg0, arg1, arg2, arg3)
	CoD.Menu.UpdateButtonShownState(arg1, arg0, arg2, arg3)
end

function SendButtonPressToSiblingMenu(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = arg0:getParent()
	if registerVal5 then
	end
	if registerVal5[arg1] then
		CoD.Menu.HandleButtonPress(registerVal5[arg1], arg2, arg4, arg3)
	end
end

function SendButtonPressToOccludedMenu(arg0, arg1, arg2, arg3)
	if arg0.occludedMenu then
		CoD.Menu.HandleButtonPress(arg0.occludedMenu, arg1, arg3, arg2)
	end
end

function SendButtonPressToMenu(arg0, arg1, arg2, arg3)
	CoD.Menu.HandleButtonPress(arg0, arg1, arg3, arg2)
end

function SendButtonPressToMenuEx(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal4, ("ButtonBits." .. arg2))
	if registerVal3 then
		Engine.SetModelValue(registerVal3, Enum.LUIButtonFlags.FLAG_DOWN)
		Engine.SetModelValue(registerVal3, 0.000000)
	end
end

function SetProperty(arg0, arg1, arg2)
	arg0[arg1] = arg2
end

function SetElementProperty(arg0, arg1, arg2)
	arg0[arg1] = arg2
end

function ForceNotifyModel(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg0)
	Engine.ForceNotifyModelSubscriptions(Engine.GetModel(registerVal4, arg1))
end

function SetControllerModelValue(arg0, arg1, arg2)
	local registerVal5 = Engine.GetModelForController(arg0)
	local registerVal4 = Engine.CreateModel(registerVal5, arg1)
	Engine.SetModelValue(registerVal4, arg2)
end

function ToggleControllerModelValueBoolean(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, arg1)
	local registerVal5 = Engine.GetModelValue(registerVal2)
	Engine.SetModelValue(registerVal2, (not registerVal5))
end

function ToggleControllerModelValueNumber(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, arg1)
	local registerVal5 = Engine.GetModelValue(registerVal2)
	Engine.SetModelValue(registerVal2, (1.000000 - registerVal5))
end

function SetMenuModelValue(arg0, arg1, arg2)
	local registerVal5 = arg0:getModel()
	local registerVal4 = Engine.GetModel(registerVal5, arg1)
	Engine.SetModelValue(registerVal4, arg2)
end

function ToggleGlobalModelValueBoolean(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, arg0)
	local registerVal4 = Engine.GetModelValue(registerVal1)
	Engine.SetModelValue(registerVal1, (not registerVal4))
end

function SetGlobalModelValueTrue(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, arg0)
	Engine.SetModelValue(registerVal1, true)
end

function SetGlobalModelValueFalse(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, arg0)
	Engine.SetModelValue(registerVal1, false)
end

function SetGlobalModelValue(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, arg0)
	Engine.SetModelValue(registerVal2, arg1)
end

function SetGlobalModelValueArg(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, arg0)
	Engine.SetModelValue(registerVal2, arg1)
end

function SetElementModelValue(arg0, arg1, arg2)
	local registerVal5 = arg0:getModel()
	local registerVal4 = Engine.GetModel(registerVal5, arg1)
	Engine.SetModelValue(registerVal4, arg2)
end

function DispatchEventToChildren(arg0, arg1, arg2)
	local registerVal5 = {}
	registerVal5.name = arg1
	registerVal5.controller = arg2
	return arg0:dispatchEventToChildren(registerVal5)
end

function DispatchEventToRoot(arg0, arg1, arg2)
	local registerVal5 = {}
	registerVal5.name = arg1
	registerVal5.controller = arg2
	return arg0:dispatchEventToRoot(registerVal5)
end

function SetPerControllerTableProperty(arg0, arg1, arg2)
	CoD.perController[arg0][arg1] = arg2
end

function SetPrimaryControllerPerControllerTableProperty(arg0, arg1)
	local registerVal2 = Engine.GetPrimaryController()
	CoD.perController[registerVal2][arg0] = arg1
end

function SetElementModelOnPerControllerTable(arg0, arg1, arg2, arg3)
	local registerVal5 = arg2:getModel(arg0, arg3)
	if registerVal5 then
		local registerVal6 = Engine.GetModelValue(registerVal5)
	end
	CoD.perController[arg0][arg1] = registerVal6
end

function CopyElementModelToPerControllerTable(arg0, arg1, arg2)
	local registerVal4 = arg2:getModel()
	CoD.perController[arg0][arg1] = registerVal4
end

function SetElementPropertyOnPerControllerTable(arg0, arg1, arg2, arg3)
	CoD.perController[arg0][arg1] = arg2[arg3]
end

function SetModelFromPerControllerTable(arg0, arg1, arg2)
	arg1:setModel(CoD.perController[arg0][arg2])
end

function CopyElementToPerControllerTable(arg0, arg1, arg2)
	CoD.perController[arg0][arg2] = arg1
end

function SendClientScriptNotify(arg0, arg1, arg2)
	Engine.SendClientScriptNotify(arg0, arg1, arg2)
end

function SendClientScriptNotifyForAdjustedClient(arg0, arg1, arg2)
	local registerVal6 = CoD.GetLocalClientAdjustedNum(arg0)
	Engine.SendClientScriptNotify(arg0, (arg1 .. registerVal6), arg2)
end

function SendClientScriptEnumNotify(arg0, arg1, arg2)
	Engine.SendClientScriptNotify(arg0, arg1, arg2)
end

function SendClientScriptEnumNotifyForAdjustedClient(arg0, arg1, arg2)
	local registerVal6 = CoD.GetLocalClientAdjustedNum(arg0)
	Engine.SendClientScriptNotify(arg0, (arg1 .. registerVal6), arg2)
end

function SendClientScriptPropertyNotify(arg0, arg1, arg2, arg3)
	if arg1[arg3] then
		Engine.SendClientScriptNotify(arg0, arg2, arg1[arg3])
	end
end

function SendClientScriptPropertyNotifyForAdjustedClient(arg0, arg1, arg2, arg3)
	if arg1[arg3] then
		local registerVal7 = CoD.GetLocalClientAdjustedNum(arg0)
		Engine.SendClientScriptNotify(arg0, (arg2 .. registerVal7), arg1[arg3])
	end
end

function SendClientScriptPropertyNotifyForAdjustedClientTwoParam(arg0, arg1, arg2, arg3, arg4)
	if arg1[arg4] then
		local registerVal8 = CoD.GetLocalClientAdjustedNum(arg0)
		Engine.SendClientScriptNotify(arg0, (arg2 .. registerVal8), arg3, arg1[arg4])
	end
end

function SendClientScriptModelNotify(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel(arg0, arg3)
	if registerVal4 then
		Engine.SendClientScriptNotify(arg0, arg2, Engine.GetModelValue(registerVal4))
	end
end

function SendClientScriptModelNotifyForAdjustedClientTwoParam(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = arg1:getModel(arg0, arg4)
	if registerVal5 then
		local registerVal9 = CoD.GetLocalClientAdjustedNum(arg0)
		Engine.SendClientScriptNotify(arg0, (arg2 .. registerVal9), arg3, Engine.GetModelValue(registerVal5))
	end
end

function SendClientScriptMenuChangeNotify(arg0, arg1, arg2)
	SendClientScriptMenuChangeNotifyHelper(arg0, arg1.menuName, arg2)
end

function SendCustomClientScriptMenuChangeNotify(arg0, arg1, arg2)
	SendClientScriptMenuChangeNotifyHelper(arg0, arg1, arg2)
end

function SendClientScriptMenuStateChangeNotify(arg0, arg1, arg2, arg3)
	SendClientScriptMenuChangeNotifyHelper(arg0, arg1.menuName, arg2, arg3)
end

function SendCustomClientScriptMenuStateChangeNotify(arg0, arg1, arg2, arg3)
	SendClientScriptMenuChangeNotifyHelper(arg0, arg1, arg2, arg3)
end

function CallCustomElementFunction_Self(arg0, arg1, ...)
	if arg0[arg1] then
		arg0[arg1](arg0, ...)
	end
end

function CallCustomElementFunction_Element(arg0, arg1, ...)
	if arg0[arg1] then
		arg0[arg1](arg0, ...)
	end
end

function SetProfileVar(arg0, arg1, arg2)
	Engine.SetProfileVar(arg0, arg1, arg2)
end

function CheckGCCatchUp()
	if Engine.CheckGCCatchUp then
		Engine.CheckGCCatchUp()
	end
end

function OpenGameSettingsOptionsMenu(arg0, arg1, arg2, arg3)
	CoD.perController[arg2].selectedGameSettingElement = arg1
	arg3:saveState()
	OpenPopup(arg3, "GameSettings_OptionsMenu", arg2)
end

function ResetGameSettings()
	Engine.SetGametype(Engine.DvarString(nil, "ui_gametype"))
	Engine.SetDvar("bot_maxFree", 0.000000)
	Engine.SetDvar("bot_maxAllies", 0.000000)
	Engine.SetDvar("bot_maxAxis", 0.000000)
	Engine.SetDvar("bot_difficulty", 1.000000)
	local registerVal2 = Engine.GetGlobalModel()
	Engine.ForceNotifyModelSubscriptions(Engine.CreateModel(registerVal2, "GametypeSettings.Update"))
end

function ResetSelectedGameSetting(arg0, arg1, arg2, arg3)
	if CoD.perController[arg2].selectedGameSettingElement and CoD.perController[arg2].selectedGameSettingElement.revert then
		CoD.perController[arg2].selectedGameSettingElement:revert()
	end
	local registerVal7 = Engine.GetGlobalModel()
	Engine.ForceNotifyModelSubscriptions(Engine.CreateModel(registerVal7, "GametypeSettings.Update"))
end

function GameSettingsMenuClosed(arg0, arg1)
	if CoD.perController[arg1].editingPresetClass then
		Engine.StopEditingPresetClass()
		CoD.perController[arg1].isPreset = nil
	end
end

function ButtonListFocused(arg0, arg1, arg2)
	if arg1.isClassButton then
		CoD.perController[arg2].classNum = arg1.actionParam
		CoD.perController[arg2].isPreset = true
		CoD.perController[arg2].weaponSlot = nil
		CoD.perController[arg2].grenadeSlot = nil
		CoD.perController[arg2].perkCategory = nil
		CoD.perController[arg2].slotIndex = nil
	end
end

function GameSettingsButtonGainFocus(arg0, arg1, arg2)
	UpdateInfoModels(arg1)
end

function OpenGameSettings_GameMode(arg0, arg1, arg2, arg3, arg4)
	arg4:saveState()
	OpenOverlay(arg4, "GameSettings_EditModeSpecificOptions", arg2)
end

function OpenGameSettings_General(arg0, arg1, arg2, arg3, arg4)
	arg4:saveState()
	OpenOverlay(arg4, "GameSettings_GeneralSettings", arg2)
end

function OpenGameSettings_Spawn(arg0, arg1, arg2, arg3, arg4)
	arg4:saveState()
	OpenOverlay(arg4, "GameSettings_SpawnSettings", arg2)
end

function OpenGameSettings_HealthAndDamage(arg0, arg1, arg2, arg3, arg4)
	arg4:saveState()
	OpenOverlay(arg4, "GameSettings_HealthAndDamageSettings", arg2)
end

function OpenGameSettings_Competitive(arg0, arg1, arg2, arg3, arg4)
	arg4:saveState()
	OpenOverlay(arg4, "GameSettings_Competitive", arg2)
end

function OpenGameSettings_CreateAClass(arg0, arg1, arg2, arg3, arg4)
	arg4:saveState()
	OpenOverlay(arg4, "GameSettings_CreateAClassSettings", arg2)
end

function PlaySoundSetSound(arg0, arg1)
	arg0:playSound(arg1)
end

function PlayMenuMusic(arg0)
	CoD.PlayFrontendMusic(arg0)
end

function PlayMenuMusicForCurrentLobby()
	CoD.PlayFrontendMusic()
end

function PlaySoundAlias(arg0)
	Engine.PlaySound(arg0)
end

function StopSoundAlias(arg0)
	Engine.StopSound(arg0)
end

function PlayMenuTrackedSound(arg0, arg1)
	StopMenuTrackedSound(arg0)
	arg0.trackedSound = arg1
	Engine.PlaySound(arg0.trackedSound)
end

function StopMenuTrackedSound(arg0)
	if arg0.trackedSound then
		Engine.StopSound(arg0.trackedSound)
		arg0.trackedSound = nil
	end
end

function StopSoundFromElementModel(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, arg2)
	if registerVal3 and registerVal3 ~= "" then
		Engine.StopSound(registerVal3)
	end
end

function PlayMPMusicPreview(arg0, arg1)
	local registerVal3 = arg1:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "alias")
	if registerVal2 and registerVal2 ~= "" then
		if arg1.soundTimer then
			Engine.StopSound(registerVal2)
		end
		CoD.StopFrontendMusic()
		Engine.PlaySound(registerVal2)
		if not arg1.soundTimer then
			local registerVal4 = Engine.GetSoundPlaybackTime(registerVal2)
			local function __FUNC_10958_()
				StopMPMusicPreview(arg0, arg1)
			end

			registerVal3 = LUI.UITimer.newElementTimer(registerVal4, true, __FUNC_10958_)
			arg1.soundTimer = registerVal3
			arg1:addElement(arg1.soundTimer)
		else
			arg1.soundTimer:reset()
		end
	end
end

function StopMPMusicPreview(arg0, arg1)
	local registerVal3 = arg1:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "alias")
	if registerVal2 and registerVal2 ~= "" and arg1.soundTimer then
		Engine.StopSound(registerVal2)
		CoD.ResetFrontendMusic()
		arg1.soundTimer:close()
		arg1.soundTimer = nil
	end
end

function StopFrontendMusicForMusicTracks()
	CoD.StopFrontendMusic()
	CoD.musicTracks.queue = {}
end

function ResumeFrontendMusicForMusicTracks(arg0)
	CoD.ResetFrontendMusic(true)
end

function PlayMusicTrackPreview(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "alias")
	if registerVal2 then
		CoD.StopFrontendMusic()
		CoD.AddMusicTrack(registerVal2, false)
		CoD.NextMenuTrack(true)
	end
end

function UpdateMusicTrackGlobalSetting(arg0)
	DataSources.MusicTracksBase.updateSettingDescModel(arg0)
end

function ToggleMusicTrackSelected(arg0, arg1, arg2)
	local registerVal3 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_COMMON_SETTINGS)
	local registerVal5 = arg1:getModel()
	local registerVal4 = Engine.GetModel(registerVal5, "trackIndex")
	registerVal5 = Engine.GetModelValue(registerVal4)
	if arg1 or not registerVal5 then
	end
	local registerVal7 = arg1:getModel()
	local registerVal6 = Engine.GetModel(registerVal7, "selected")
	if registerVal3 and nil and registerVal6 then
		registerVal7 = Engine.GetModelValue(registerVal6)
		if arg1 or not 1.000000 then
		end
		registerVal3.snd_playMPFrontendMusicTrack[nil]:set(0.000000)
		DataSources.MusicTracksBase.updateTotalSelected(arg0, (not registerVal7))
		DataSources.MusicTracksBase.updateFilterTotalSelected(arg0, (not registerVal7))
		Engine.SetModelValue(registerVal6, (not registerVal7))
	end
end

function SelectAllMusicTracksInFilter(arg0, arg1)
	local registerVal3 = Engine.StorageGetBuffer(arg1, Enum.StorageFileType.STORAGE_COMMON_SETTINGS)
	local registerVal5, registerVal6, registerVal7 = ipairs(arg0.ButtonList[DataSources.MusicPlayerTracks.trackListDataSourceName])
	for index8,value9 in registerVal5, registerVal6, registerVal7 do
		local registerVal10 = CoD.SafeGetModelValue(value9.model, "trackIndex")
		local registerVal11 = CoD.SafeGetModelValue(value9.model, "selected")
		if registerVal10 and not registerVal11 then
			registerVal3.snd_playMPFrontendMusicTrack[registerVal10]:set(1.000000)
			DataSources.MusicTracksBase.updateTotalSelected(arg1, true)
			DataSources.MusicTracksBase.updateFilterTotalSelected(arg1, true)
			local registerVal14 = Engine.GetModel(value9.model, "selected")
			Engine.SetModelValue(registerVal14, true)
		end
	end
end

function DeselectAllMusicTracksInFilter(arg0, arg1, arg2)
	local registerVal4 = Engine.StorageGetBuffer(arg1, Enum.StorageFileType.STORAGE_COMMON_SETTINGS)
	local registerVal5 = Engine.GetModelValue(DataSources.MusicTracksBase.getCurrentFilterTotalSelectedModel(arg1))
	local registerVal6 = Engine.GetModelValue(DataSources.MusicTracksBase.getTotalSelectedModel(arg1))
	local registerVal8, registerVal9, registerVal10 = ipairs(arg0.ButtonList[DataSources.MusicPlayerTracks.trackListDataSourceName])
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		local registerVal13 = CoD.SafeGetModelValue(value12.model, "trackIndex")
		local registerVal14 = CoD.SafeGetModelValue(value12.model, "selected")
		if registerVal13 and registerVal14 then
			registerVal4.snd_playMPFrontendMusicTrack[registerVal13]:set(0.000000)
			DataSources.MusicTracksBase.updateTotalSelected(arg1, false)
			DataSources.MusicTracksBase.updateFilterTotalSelected(arg1, false)
			local registerVal17 = Engine.GetModel(value12.model, "selected")
			Engine.SetModelValue(registerVal17, false)
		end
	end
end

function UpdateMusicTrackFilters(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = DataSources.MusicTracksBase.getCurrentFilterModel(arg2)
	if arg1.filter and registerVal6 then
		Engine.SetModelValue(registerVal6, arg1.filter)
	end
end

function UpdateModel(arg0, arg1, arg2)
	arg0:setModel(arg1:getModel())
end

function UpdateElementModelToFocusedElementModel(arg0, arg1, arg2, arg3)
	if arg0[arg2] then
		local registerVal5, registerVal6, registerVal7 = pairs(arg3.idStack)
		for index8,value9 in registerVal5, registerVal6, registerVal7 do
			if value9 ~= arg0.id then
			end
		end
		if arg0[value9] and arg0[value9].id == arg3.id then
			arg0[arg2]:setModel(arg0[value9]:getModel())
		end
	end
end

function SetElementModelToFocusedElementModel(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if arg0[arg2] and registerVal3 then
		arg0[arg2]:setModel(registerVal3)
	end
end

function SetSelfModelValue(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = arg1:getModel(arg2, arg3)
	if registerVal5 ~= nil then
		Engine.SetModelValue(registerVal5, arg4)
	end
end

function ToggleSelfModelValueNumber(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel(arg2, arg3)
	if registerVal4 ~= nil then
		local registerVal7 = Engine.GetModelValue(registerVal4)
		Engine.SetModelValue(registerVal4, (1.000000 - registerVal7))
	end
end

function ToggleSelfModelBoolean(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel(arg2, arg3)
	if registerVal4 ~= nil then
		local registerVal7 = Engine.GetModelValue(registerVal4)
		Engine.SetModelValue(registerVal4, (not registerVal7))
	end
end

function ForceNotifyGlobalModel(arg0, arg1)
	local registerVal4 = Engine.GetGlobalModel()
	Engine.ForceNotifyModelSubscriptions(Engine.GetModel(registerVal4, arg1))
end

function ForceNotifyControllerModel(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, arg1)
	if registerVal2 then
		Engine.ForceNotifyModelSubscriptions(registerVal2)
	end
end

function ShowKeyboard(arg0, arg1, arg2, arg3)
	Engine.Exec(arg2, ("ui_keyboard_new " .. Enum.KeyboardType[arg3]))
end

function RunClientDemo(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel(arg2, "fileName")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	Engine.Exec(arg2, ("cl_demo_play " .. registerVal5))
end

function StartGame(arg0, arg1)
	local registerVal2 = Engine.GetGametypeSetting("teamAssignment")
	if registerVal2 == LuaEnums.TEAM_ASSIGNMENT.AUTO then
		Engine.PartyHostReassignTeams()
	end
	Engine.PartyHostToggleStart()
end

function SetPrimary(arg0, arg1)
	Engine.ExecNow(arg1, "setclientbeingusedandprimary")
end

function RefreshLobbyGameClient(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "lobbyRoot.gameClient.update")
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 == 0.000000 then
	else
	end
	Engine.SetModelValue(registerVal2, 0.000000)
end

function ShowHeaderIconOnly(arg0)
	arg0.showHeaderKicker = false
	arg0.showHeaderIcon = true
end

function ShowHeaderKickerAndIcon(arg0)
	arg0.showHeaderKicker = true
	arg0.showHeaderIcon = true
end

function ShowHeaderGroupHQ(arg0)
	arg0.showHeaderKicker = true
	arg0.showHeaderIcon = true
	arg0.showHeaderEmblem = true
end

function SetHeadingKickerText(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.headingKickerText")
	if registerVal1 then
		Engine.SetModelValue(registerVal1, Engine.Localize(arg0))
	end
end

function SetHeadingKickerTextToGameMode()
	if CoD.PrestigeUtility.isInPermanentUnlockMenu then
		SetHeadingKickerText("MENU_PERMANENT_UNLOCKS")
		return 
	end
	local registerVal0 = PregameActive()
	if registerVal0 then
		SetHeadingKickerText(GetGameMode())
		return 
	end
	local registerVal1 = Engine.GetGlobalModel()
	registerVal0 = Engine.CreateModel(registerVal1, "lobbyRoot.headingKickerMode")
	local registerVal2 = Engine.GetGlobalModel()
	registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.headingKickerText")
	if registerVal1 then
		local registerVal4 = Engine.GetModelValue(registerVal0)
		if registerVal1 or not registerVal4 then
		end
		Engine.SetModelValue(registerVal1, "")
	end
end

function SetHeadingKickerTextToSelectedWeapon(arg0)
	local registerVal1 = Engine.CurrentSessionMode()
	if CoD.isFrontend then
	end
	local registerVal2 = CoD.GetCustomization(arg0, "weapon_index")
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot.headingKickerText")
	registerVal4 = Engine.ToUpper(Engine.Localize(Engine.GetItemName(registerVal2, Enum.eModes.MODE_MULTIPLAYER)))
	if registerVal3 and registerVal2 ~= CoD.CACUtility.EmptyItemIndex and registerVal3 and registerVal4 then
		Engine.SetModelValue(registerVal3, registerVal4)
	end
end

function ForceLobbyButtonUpdate(arg0)
	LuaUtils.ForceLobbyButtonUpdate()
end

function SetButtonRecentlySelected(arg0, arg1, arg2)
	if arg1 ~= nil and arg1.id ~= nil then
		CoD.LobbyMenus.UpdateHistory(arg2, arg1.id)
	end
end

function OpenChangeRankedSettingsPopup(arg0, arg1, arg2, arg3, arg4)
	local registerVal7 = {}
	registerVal7.menuName = "SystemOverlay_Compact"
	registerVal7.title = "MENU_CHANGE_RANKED_SETTINGS_CAPS"
	registerVal7.description = "MENU_CHANGE_RANKED_SETTINGS_DESC"
	local function __FUNC_13131_()
		local function __FUNC_131FC_(arg0)
			local registerVal1 = {}
			local registerVal2 = {}
			local registerVal3 = {}
			registerVal3.displayText = "MENU_NON_RANKED_GAME_CAPS"
			registerVal2.models = registerVal3
			registerVal3 = {}
			local function __FUNC_133FB_(arg0, arg1, arg2, arg3, arg4)
				local registerVal5 = Dvar.zm_private_rankedmatch:exists()
				if registerVal5 then
					Dvar.zm_private_rankedmatch:set(false)
					Engine.SetProfileVar(arg2, "com_privategame_ranked_zm", 0.000000)
					Engine.Exec(arg2, "updategamerprofile")
				end
				GoBack(arg4, arg2)
			end

			registerVal3.action = __FUNC_133FB_
			local registerVal4 = Dvar.zm_private_rankedmatch:exists()
			if registerVal4 then
				registerVal4 = Dvar.zm_private_rankedmatch:get()
				if registerVal4 ~= false then
				end
			end
			registerVal3.selectIndex = true
			registerVal2.properties = registerVal3
			registerVal3 = {}
			registerVal4 = {}
			registerVal4.displayText = "MENU_RANKED_GAME_CAPS"
			registerVal3.models = registerVal4
			registerVal4 = {}
			local function __FUNC_13580_(arg0, arg1, arg2, arg3, arg4)
				local registerVal5 = Dvar.zm_private_rankedmatch:exists()
				if registerVal5 then
					Dvar.zm_private_rankedmatch:set(true)
					Engine.SetProfileVar(arg2, "com_privategame_ranked_zm", 1.000000)
					Engine.Exec(arg2, "updategamerprofile")
				end
				GoBack(arg4, arg2)
			end

			registerVal4.action = __FUNC_13580_
			local registerVal5 = Dvar.zm_private_rankedmatch:exists()
			if registerVal5 then
				registerVal5 = Dvar.zm_private_rankedmatch:get()
				if registerVal5 ~= true then
				end
			end
			registerVal4.selectIndex = true
			registerVal3.properties = registerVal4
			registerVal1 = {registerVal2, registerVal3}
			return registerVal1
		end

		local registerVal1 = DataSourceHelpers.ListSetup("ChangeRankedSettingssPopup_List", __FUNC_131FC_, true, nil)
		DataSources.ChangeRankedSettingssPopup_List = registerVal1
		return "ChangeRankedSettingssPopup_List"
	end

	registerVal7.listDatasource = __FUNC_13131_
	registerVal7[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
	registerVal7.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
	CoD.OverlayUtility.AddSystemOverlay("ChangeRankedSettingsPopup", registerVal7)
	CoD.OverlayUtility.CreateOverlay(arg2, arg0, "ChangeRankedSettingsPopup")
end

function UpdateQuickJoinFocus(arg0, arg1)
	if arg0.currentState == "ShowQuickJoin" then
		arg0.friendsAndGroups:makeFocusableWithoutResettingNavigation()
	else
		arg0.friendsAndGroups:makeNotFocusable()
	end
end

function SetPlayerReady(arg0, arg1, arg2)
	if Engine.GetReadyUp then
		local registerVal4 = Engine.GetReadyUp(arg2)
	end
	Engine.SetReadyUp(arg2, (not ))
end

function RefreshServerList(arg0, arg1)
	Engine.LobbyServerRefreshLocalServers(arg1)
end

function JoinSystemLinkServer(arg0, arg1, arg2)
	if not arg1.gridInfoTable then
		return 
	end
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.CreateModel(registerVal5, "serverListRoot")
	local registerVal8 = tostring(arg1.gridInfoTable.zeroBasedIndex)
	registerVal5 = Engine.CreateModel(registerVal4, ("server" .. registerVal8))
	local registerVal6 = Engine.CreateModel(registerVal5, "sessionMode")
	local registerVal7 = Engine.GetModelValue(registerVal6)
	if registerVal7 == Enum.eModes.MODE_CAMPAIGN then
	else
		if registerVal7 == Enum.eModes.MODE_MULTIPLAYER then
		else
			if registerVal7 == Enum.eModes.MODE_ZOMBIES then
			end
		end
	end
	if LobbyData.UITargets.UI_ZMLOBBYLANGAME.maxLocalClientsNetwork == nil then
	end
	local function __FUNC_13E64_(arg0)
		if arg0 then
			Engine.LobbyServerListJoinServer(arg0.controller, arg0.index)
		end
	end

	local registerVal10 = Engine.GetUsedControllerCount()
	if 1.000000 < registerVal10 then
		registerVal10 = {}
		registerVal10.controller = arg2
		registerVal10.navToMenu = nil
		registerVal10.popupName = nil
		registerVal10.openFromMenu = nil
		registerVal10.actionFunc = __FUNC_13E64_
		registerVal10.index = arg1.gridInfoTable.zeroBasedIndex
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "LobbyLocalClientWarning", registerVal10)
		return 
	end
	local registerVal11 = {}
	registerVal11.controller = arg2
	registerVal11.index = arg1.gridInfoTable.zeroBasedIndex
	__FUNC_13E64_(registerVal11)
end

function LobbyLANServerPlayerListRefresh(arg0, arg1, arg2)
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.CreateModel(registerVal5, "serverPlayerListRoot")
	registerVal5 = Engine.CreateModel(registerVal4, "selectedServer")
	Engine.SetModelValue(registerVal5, arg1.gridInfoTable.zeroBasedIndex)
	if arg0.LANServerBrowserDetails and arg0.LANServerBrowserDetails.PlayerList then
		arg0.LANServerBrowserDetails.PlayerList:updateDataSource()
	end
end

function UploadStats(arg0, arg1)
	Engine.Exec(arg1, "uploadstats")
	Engine.Exec(arg1, "savegamerprofilestats")
end

function SaveLoadout(arg0, arg1)
	if not CoD.CCUtility.customizationMode then
		local registerVal3 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	end
	Engine.Exec(arg1, ("saveLoadout " .. registerVal3))
end

function CustomGameSettingsMenuClosed(arg0, arg1)
	local registerVal4 = {}
	registerVal4.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
	registerVal4.lobbyModule = Enum.LobbyModule.LOBBY_MODULE_HOST
	Engine.LobbyVM_CallFunc("OnGametypeSettingsChange", registerVal4)
	Engine.LobbyHostSessionSetDirty(Enum.LobbyType.LOBBY_TYPE_GAME, Enum.SessionDirty.SESSION_DIRTY_STATE)
end

function OpenCACItemBansRestrictionsFlyout(arg0, arg1, arg2)
	SetGlobalModelValueTrue("lobbyRoot.ShowCACItemBansRestrictionFlyout")
	local registerVal5 = Engine.GetGlobalModel()
	Engine.ForceNotifyModelSubscriptions(Engine.CreateModel(registerVal5, "lobbyRoot.ShowCACItemBansRestrictionFlyout"))
end

function AdjustGameSettingsTab(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "GametypeSettings")
	registerVal5 = Engine.CreateModel(registerVal4, "selectedTab")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal7 = Engine.GetModelValue(Engine.CreateModel(registerVal4, "tabCount"))
	local registerVal8 = tonumber(arg3)
	if registerVal7 < (registerVal6 + registerVal8) then
	end
	if 1.000000 < 1.000000 then
	end
	Engine.SetModelValue(registerVal5, registerVal7)
end

function SetGameSettingsTab(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "GametypeSettings")
	registerVal5 = Engine.CreateModel(registerVal4, "selectedTab")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	if registerVal6 ~= arg3 then
		Engine.SetModelValue(registerVal5, arg3)
	end
end

function AdjustCompetitiveItemSettingsFilter(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "GametypeSettings")
	registerVal5 = Engine.CreateModel(registerVal4, "selectedItemSettingGroup")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal7 = Engine.CreateModel(registerVal4, "selectedItemSettingGroupCount")
	local registerVal8 = Engine.GetModelValue(registerVal7)
	local registerVal9 = tonumber(arg3)
	if registerVal8 < (registerVal6 + registerVal9) then
	end
	if 1.000000 < 1.000000 then
	end
	Engine.SetModelValue(registerVal5, registerVal8)
end

function SetCompetitiveItemSettingsFilter(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "GametypeSettings")
	registerVal5 = Engine.CreateModel(registerVal4, "selectedItemSettingGroup")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal7 = Engine.CreateModel(registerVal4, "selectedItemSettingGroupCount")
	local registerVal8 = Engine.GetModelValue(registerVal7)
	if registerVal6 ~= arg3 then
		Engine.SetModelValue(registerVal5, arg3)
	end
end

function ToggleCompetitiveAttachmentSettingsTab(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg2)
	local registerVal3 = Engine.GetModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "selectedAttachmentTab")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal5 == 1.000000 then
	end
	Engine.SetModelValue(registerVal4, 2.000000)
end

function SetCompetitiveAttachmentSettingsTab(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "GametypeSettings")
	registerVal5 = Engine.CreateModel(registerVal4, "selectedAttachmentTab")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	if selectedAttahmentTab ~= arg3 then
		Engine.SetModelValue(registerVal5, arg3)
	end
end

function UpdateSelectedGametypeSettingModels(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = arg1:getModel()
	local registerVal5 = Engine.CreateModel(registerVal3, "title")
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal4, "title"))
	Engine.SetModelValue(registerVal5, registerVal6)
	local registerVal7 = Engine.CreateModel(registerVal3, "description")
	local registerVal8 = Engine.GetModelValue(Engine.GetModel(registerVal4, "description"))
	Engine.SetModelValue(registerVal7, registerVal8)
	local registerVal9 = Engine.CreateModel(registerVal3, "image")
	local registerVal10 = Engine.GetModelValue(Engine.GetModel(registerVal4, "image"))
	Engine.SetModelValue(registerVal9, registerVal10)
end

function OpenAttachmentRestrictionPopup(arg0, arg1, arg2, arg3)
	arg3:saveState()
	CoD.OverlayUtility.CreateOverlay(arg2, arg0, "RestrictedAttachmentMenu", arg2, arg1)
end

function CharacterDraftLoadoutSelected(arg0, arg1, arg2)
	local registerVal3 = CharacterDraftActive()
	if not registerVal3 then
		return 
	end
	local registerVal4 = Engine.GetEquippedHero(arg2, CoD.CCUtility.customizationMode)
	Engine.SendCharacterDraftSelection(arg2, registerVal4, Engine.GetLoadoutTypeForHero(arg2, registerVal4))
end

function ForceNotifyPregameUpdate(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot.Pregame.Update")
	Engine.ForceNotifyModelSubscriptions(registerVal3)
end

function SetPregameEditIncomplete(arg0)
	Engine.SendPregameEditComplete(arg0, false)
end

function AdjustPregameVoteFilter(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "Pregame")
	registerVal5 = Engine.CreateModel(registerVal4, "voteFilter")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal7 = tonumber(arg3)
	if #CoD.CACUtility.PregameLoadoutFilters < (registerVal6 + registerVal7) then
	end
	if 1.000000 < 1.000000 then
	end
	Engine.SetModelValue(registerVal5, #1.000000)
end

function SetPregameVoteFilter(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "Pregame")
	registerVal5 = Engine.CreateModel(registerVal4, "voteFilter")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	if registerVal6 ~= arg3 then
		Engine.SetModelValue(registerVal5, arg3)
	end
end

function ToggleRestrictedContentEquippedFilter(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.GetModel(registerVal2, "Pregame")
	registerVal2 = Engine.CreateModel(registerVal1, "equippedFilter")
	local registerVal5 = Engine.GetModelValue(registerVal2)
	Engine.SetModelValue(registerVal2, (not registerVal5))
end

function SendItemVote(arg0, arg1, arg2, arg3)
	local registerVal5 = arg1:getModel(arg2, "itemType")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal8 = arg1:getModel(arg2, "itemIndex")
	if registerVal8 then
		local registerVal9 = Engine.GetModelValue(registerVal8)
	end
	local registerVal10 = arg1:getModel(arg2, "attachmentIndex")
	if registerVal10 then
		local registerVal11 = Engine.GetModelValue(registerVal10)
	end
	local registerVal12 = arg1:getModel(arg2, "itemGroup")
	if registerVal12 then
		local registerVal13 = Engine.GetModelValue(registerVal12)
	end
	if registerVal6 == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM then
		Engine.SendItemVote(arg2, registerVal9, arg3)
	else
		if registerVal6 == Enum.VoteItemType.VOTE_ITEM_TYPE_ATTACHMENT then
			Engine.SendAttachmentVote(arg2, registerVal11, arg3)
		else
			if registerVal6 == Enum.VoteItemType.VOTE_ITEM_TYPE_ITEM_ATTACHMENT then
				Engine.SendItemAttachmentVote(arg2, registerVal9, registerVal11, arg3)
			else
				if registerVal6 == Enum.VoteItemType.VOTE_ITEM_TYPE_ATTACHMENT_GROUP then
					Engine.SendItemGroupAttachmentVote(arg2, registerVal13, registerVal11, arg3)
				end
			end
		end
	end
end

function ShowPregameVoteOptions(arg0, arg1, arg2)
	local registerVal5 = {}
	registerVal5.menuName = "FeatureOverlay"
	registerVal5.frameWidget = "CoD.Pregame_ItemVote_BanProtectPopup"
	registerVal5.title = "MENU_BAN_PROTECT_CAPS"
	local function __FUNC_162E4_(arg0, arg2)
		local registerVal2 = arg2:getModel(arg0, "name")
		local registerVal3 = Engine.GetModelValue(registerVal2)
		local registerVal6 = Engine.GetModelForController(arg0)
		local registerVal5 = Engine.CreateModel(registerVal6, "Pregame.selectedItemName")
		Engine.SetModelValue(registerVal5, registerVal3)
		local registerVal4 = arg1:getModel(arg0, "loadoutSlot")
		return "MENU_BAN_PROTECT_DESC"
	end

	registerVal5.description = __FUNC_162E4_
	local function __FUNC_16484_(arg0, arg1)
		local registerVal2 = arg1:getModel(arg0, "image")
		if registerVal2 then
			return Engine.GetModelValue(registerVal2)
		end
		return ""
	end

	registerVal5.image = __FUNC_16484_
	registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.Unlock
	registerVal5[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
	local function __FUNC_1653E_(arg0, arg2)
		local registerVal2 = ItemIsBanned(nil, arg2, arg0)
		if registerVal2 == true then
			local registerVal3 = CoD.CACUtility.GetItemInfoFromElementModel(arg0, arg1:getModel())
			local registerVal4 = CoD.CACUtility.GetItemVotedBy(registerVal3)
			local registerVal7 = Engine.GetModelForController(arg0)
			local registerVal6 = Engine.CreateModel(registerVal7, "Pregame.itemVotedBy")
			Engine.SetModelValue(registerVal6, registerVal4)
			return Enum.VoteType.VOTE_TYPE_BAN
		end
		registerVal3 = ItemIsProtected(nil, arg2, arg0)
		if registerVal3 == true then
			registerVal4 = CoD.CACUtility.GetItemInfoFromElementModel(arg0, arg1:getModel())
			local registerVal5 = CoD.CACUtility.GetItemVotedBy(registerVal4)
			local registerVal8 = Engine.GetModelForController(arg0)
			registerVal7 = Engine.CreateModel(registerVal8, "Pregame.itemVotedBy")
			Engine.SetModelValue(registerVal7, registerVal5)
			return Enum.VoteType.VOTE_TYPE_PROTECT
		end
		return Enum.VoteType.VOTE_TYPE_INVALID
	end

	registerVal5.state = __FUNC_1653E_
	local function __FUNC_168BE_(arg0, arg1)
		local function __FUNC_1697F_(arg0)
			local registerVal2 = ItemIsBanned(nil, arg1, arg0)
			if registerVal2 then
			end
			registerVal2 = ItemIsProtected(nil, arg1, arg0)
			if true == false and registerVal2 then
			end
			registerVal2 = {}
			local registerVal3 = {}
			local registerVal4 = {}
			registerVal4.displayText = "MENU_BAN_CAPS"
			registerVal4.disabled = true
			registerVal3.models = registerVal4
			registerVal4 = {}
			local function __FUNC_16C35_(arg0, arg2, arg3, arg4, arg5)
				SendItemVote(arg0, arg1, arg3, Enum.VoteType.VOTE_TYPE_BAN)
			end

			registerVal4.action = __FUNC_16C35_
			registerVal3.properties = registerVal4
			registerVal4 = {}
			local registerVal5 = {}
			registerVal5.displayText = ""
			registerVal5.image = "uie_img_t7_menu_doublearrow"
			registerVal5.disabled = true
			registerVal4.models = registerVal5
			registerVal5 = {}
			registerVal5.selectIndex = true
			registerVal4.properties = registerVal5
			registerVal5 = {}
			local registerVal6 = {}
			registerVal6.displayText = "MENU_PROTECT_CAPS"
			local registerVal7 = ItemIsInRestrictionState(nil, arg1, arg0, Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_BANONLY)
			registerVal6.disabled = registerVal7
			registerVal5.models = registerVal6
			registerVal6 = {}
			local function __FUNC_16CDD_(arg0, arg2, arg3, arg4, arg5)
				SendItemVote(arg0, arg1, arg3, Enum.VoteType.VOTE_TYPE_PROTECT)
			end

			registerVal6.action = __FUNC_16CDD_
			registerVal5.properties = registerVal6
			registerVal2 = {registerVal3, registerVal4, registerVal5}
			return registerVal2
		end

		local function __FUNC_16D89_(arg0, arg1, arg2)
			local registerVal4 = Engine.GetGlobalModel()
			local registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot.Pregame.Update")
			if arg1.pregameUpdateSubscription then
				arg1:removeSubscription(arg1.pregameUpdateSubscription)
			end
			local function __FUNC_16EDC_()
				arg1:updateDataSource(false, false)
			end

			registerVal4 = arg1:subscribeToModel(registerVal3, __FUNC_16EDC_, false)
			arg1.pregameUpdateSubscription = registerVal4
		end

		local registerVal3 = DataSourceHelpers.ListSetup("PregameVoteButtons", __FUNC_1697F_, nil, nil, __FUNC_16D89_)
		DataSources.PregameVoteButtons = registerVal3
		return "PregameVoteButtons"
	end

	registerVal5.listDatasource = __FUNC_168BE_
	CoD.OverlayUtility.AddSystemOverlay("PregameVoteOptions", registerVal5)
	local registerVal3 = CoD.OverlayUtility.CreateOverlay(arg2, arg0, "PregameVoteOptions", arg2, arg1)
	registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.CreateModel(registerVal5, "lobbyRoot.Pregame.Update")
	local function __FUNC_16F36_()
		registerVal3:refreshData(arg2, arg1)
	end

	registerVal3:subscribeToModel(registerVal4, __FUNC_16F36_, false)
end

function ConfirmPregameVotePass(arg0, arg1, arg2)
	local registerVal5 = {}
	registerVal5.menuName = "SystemOverlay_Compact"
	registerVal5.title = "MENU_VOTE_FOREFIT_CAPS"
	registerVal5.description = "MENU_VOTE_FOREFIT_DESC"
	registerVal5.image = ""
	registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.Alert
	registerVal5[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
	local function __FUNC_1722E_()
		local function __FUNC_172F2_(arg0)
			local registerVal1 = {}
			local registerVal2 = {}
			local registerVal3 = {}
			registerVal3.displayText = "MENU_VOTE_FORFEIT_CANCEL_CAPS"
			registerVal2.models = registerVal3
			registerVal3 = {}
			local function __FUNC_17400_(arg0, arg1, arg2, arg3, arg4)
				GoBack(arg0, arg2)
			end

			registerVal3.action = __FUNC_17400_
			registerVal2.properties = registerVal3
			registerVal3 = {}
			local registerVal4 = {}
			registerVal4.displayText = "MENU_VOTE_FORFEIT_CONFIRM_CAPS"
			registerVal3.models = registerVal4
			registerVal4 = {}
			local function __FUNC_1744C_(arg0, arg1, arg2, arg3, arg4)
				Engine.SendItemVote(arg2, 0.000000, Enum.VoteType.VOTE_TYPE_INVALID)
				GoBack(arg4, arg2)
			end

			registerVal4.action = __FUNC_1744C_
			registerVal3.properties = registerVal4
			registerVal1 = {registerVal2, registerVal3}
			return registerVal1
		end

		local registerVal1 = DataSourceHelpers.ListSetup("PregamePassConfirmButtons", __FUNC_172F2_, true, nil)
		DataSources.PregamePassConfirmButtons = registerVal1
		return "PregamePassConfirmButtons"
	end

	registerVal5.listDatasource = __FUNC_1722E_
	CoD.OverlayUtility.AddSystemOverlay("PregamePassConfirm", registerVal5)
	CoD.OverlayUtility.CreateOverlay(arg2, arg0, "PregamePassConfirm")
end

function ShowCACContentWarning(arg0, arg1, arg2)
	local registerVal5 = {}
	registerVal5.menuName = "SystemOverlay_Pregame"
	registerVal5.openMethod = CoD.OverlayUtility.OpenMethods.Overlay
	local function __FUNC_17729_(arg0)
		return CoD.OverlayUtility.OverlayTypes.GenericMessage
	end

	registerVal5.categoryType = __FUNC_17729_
	registerVal5.frameWidget = "CoD.Pregame_RestrictedContentWarning"
	CoD.OverlayUtility.AddSystemOverlay("PregameCACWarning", registerVal5)
	CoD.OverlayUtility.CreateOverlay(arg2, arg0, "PregameCACWarning", arg2)
end

function ShowStreakContentWarning(arg0, arg1, arg2)
	local registerVal5 = {}
	registerVal5.menuName = "SystemOverlay_Pregame"
	registerVal5.title = "MENU_STREAK_BANNED_CAPS"
	registerVal5.description = "MENU_CAC_CONTENT_BANNED_DESC"
	registerVal5.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
	registerVal5.openMethod = CoD.OverlayUtility.OpenMethods.Overlay
	registerVal5.frameWidget = "CoD.Pregame_RestrictedContentWarning"
	CoD.OverlayUtility.AddSystemOverlay("PregameStreakWarning", registerVal5)
	CoD.OverlayUtility.CreateOverlay(arg2, arg0, "PregameStreakWarning")
end

function SetInitLobbyMenu(arg0, arg1)
	CoD.LobbyBase.SetInitLobbyMenu(arg0, arg1)
end

function LobbyToggleNetwork(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetMaxControllerCount()
	for index4=1.000000, (registerVal5 - 1.000000), 1.000000 do
		LobbyRemoveLocalClientFromLobby(arg0, index4)
	end
	if arg3 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		local registerVal4 = IsOrbis()
		if registerVal4 then
			registerVal4 = Engine.DisplayNpAvailabilityErrors(arg2)
			if registerVal4 then
				return 
			else
				registerVal4 = Engine.DisplayUpsellAndContentWarnings(arg2)
				if not registerVal4 then
					return 
				end
			end
		end
		registerVal4 = CoD.LobbyBase.ForceOffline()
		if registerVal4 == true then
			CoD.OverlayUtility.CreateOverlay(arg2, arg0, "UpdateNeeded")
			return 
		end
		registerVal4 = Engine.IsDemonwareFetchingDone(arg2)
		if not registerVal4 then
			Engine.LiveConnectEnableDemonwareConnect()
			CoD.OverlayUtility.CreateOverlay(arg2, arg0, "ConnectingToDemonware")
			return 
		end
	end
	registerVal4 = {}
	registerVal4.controller = arg2
	registerVal4.networkMode = arg3
	Engine.LobbyVM_CallFunc("NetworkModeChanged", registerVal4)
	registerVal5 = arg0:getParent()
	arg0:close()
	local registerVal8 = Engine.GetGlobalModel()
	local registerVal7 = Engine.CreateModel(registerVal8, "lobbyRoot.spinnerActive")
	Engine.SetModelValue(registerVal7, true)
end

function OpenLobbyToggleNetworkConfirmation(arg0, arg1, arg2, arg3, arg4)
	local registerVal8 = Engine.GetLobbyNetworkMode()
	if arg2 ~= 0.000000 then
		LuaUtils.UI_ShowWarningMessageDialog(arg2, "MENU_PRIMARY_CLIENT_ONLY")
		return 
	end
	if registerVal8 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
		local registerVal9 = Engine.CheckNetConnection()
		if not registerVal9 then
			if CoD.isPC then
				LuaUtils.UI_ShowErrorMessageDialog(arg2, "PLATFORM_STEAM_OFFLINE")
			else
				LuaUtils.UI_ShowErrorMessageDialog(arg2, "XBOXLIVE_NETCONNECTION")
			end
			return 
		end
		registerVal9 = IsOrbis()
		if registerVal9 then
			registerVal9 = Engine.IsSignedIntoPSN(arg2)
			if not registerVal9 then
				Engine.DisplayNpError(arg2, "-2141913082")
				return 
			else
				registerVal9 = Engine.DisplayNpAvailabilityErrors(arg2)
				if registerVal9 then
					return 
				else
					registerVal9 = Engine.DisplayUpsellAndContentWarnings(arg2)
					if not registerVal9 then
						return 
					end
				end
			end
		end
		registerVal9 = IsDurango()
		registerVal9 = Engine.HasMPPrivileges(arg2)
		if registerVal9 and not registerVal9 then
			Engine.PrivilegeForceCheck(arg2, 254.000000, true)
			return 
		end
		registerVal9 = Engine.SteamVacBanned(Engine.GetPrimaryController())
		if CoD.isPC and registerVal9 then
			CoD.LobbyBase.FailedDWConnection = true
			local registerVal10 = Engine.GetPrimaryController()
			LuaUtils.UI_ShowErrorMessageDialog(registerVal10, "PLATFORM_VACBANNED")
			return 
		end
		registerVal9 = Engine.IsPlayerQueued(arg2)
		if registerVal9 then
			CoD.OverlayUtility.CreateOverlay(arg2, arg0, "LoginQueue")
			return 
		end
		registerVal9 = Engine.IsSignedInToLive(arg2)
		if registerVal9 == false then
			registerVal9 = IsOrbis()
			if registerVal9 then
				registerVal9 = Engine.DisplayNpAvailabilityErrors(arg2)
				if not registerVal9 then
					CoD.OverlayUtility.CreateOverlay(arg2, arg0, "LobbyPlayNetworkModePopup", Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE)
				else
					registerVal9 = IsDurango()
					if registerVal9 then
						registerVal9 = Engine.HasMPPrivileges(arg2)
						CoD.OverlayUtility.CreateOverlay(arg2, arg0, "LobbyPlayNetworkModePopup", Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE)
						if registerVal9 and CoD.isPC then
							registerVal9 = Engine.IsDemonwareFetchingDone(arg2)
							if not registerVal9 then
								Engine.LiveConnectEnableDemonwareConnect()
								CoD.OverlayUtility.CreateOverlay(arg2, arg0, "ConnectingToDemonware")
								return 
							else
								CoD.OverlayUtility.CreateOverlay(arg2, arg0, "LobbyPlayNetworkModePopup", Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE)
							else
								registerVal9 = Engine.IsDemonwareFetchingDone(arg2)
								if not registerVal9 then
									Engine.LiveConnectEnableDemonwareConnect()
									registerVal10 = Engine.GetModelForController(arg2)
									registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.anticheat")
									local registerVal11 = Engine.GetModel(registerVal9, "reputation")
									Engine.SetModelValue(registerVal11, 0.000000)
									CoD.OverlayUtility.CreateOverlay(arg2, arg0, "ConnectingToDemonware")
									return 
								else
									CoD.OverlayUtility.CreateOverlay(arg2, arg0, "LobbyPlayNetworkModePopup", Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE)
								else
									if registerVal8 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
										registerVal9 = CheckNavRestrictions(arg0, arg1, arg2, arg4)
										if registerVal9 then
											return 
										end
										CoD.OverlayUtility.CreateOverlay(arg2, arg0, "LobbyPlayNetworkModePopup", Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN)
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

function LobbyNoAction(arg0, arg1, arg2, arg3, arg4)
end

function OpenMPFirstTimeFlow(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "heroSelectionTutorial")
	Engine.SetModelValue(registerVal5, true)
	if arg3 == "goBackFirst" then
		registerVal6 = GoBack(arg0, arg2)
	end
	registerVal6.openOverlayAfterSpinner = "WelcomeMenu"
	registerVal6.openOverlayAfterSpinnerController = arg2
	NavigateToLobby_FirstTimeFlowMP(arg0, arg1, arg2, registerVal6)
end

function OpenCPFirstTimeFlow(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "firstTimeFlowCPConfirm")
	Engine.SetModelValue(registerVal5, false)
	arg4.openOverlayAfterSpinner = "CPWelcomeMenu"
	arg4.openOverlayAfterSpinnerController = arg2
	NavigateToLobby_FirstTimeFlowCP(arg0, arg1, arg2, arg4)
end

function FirstTimeSetup_SetOverview(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "firstTimeFlowState")
	Engine.SetModelValue(registerVal1, CoD.CCUtility.FirstTimeFlowState.Overview)
end

function FirstTimeSetup_SetChangedCharacter(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "firstTimeFlowState")
	Engine.SetModelValue(registerVal1, CoD.CCUtility.FirstTimeFlowState.SelectionChanged)
end

function FirstTimeSetup_SetComplete(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "firstTimeFlowState")
	Engine.SetModelValue(registerVal1, CoD.CCUtility.FirstTimeFlowState.Complete)
end

function FirstTimeSetup_SetNone(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "firstTimeFlowState")
	Engine.SetModelValue(registerVal1, CoD.CCUtility.FirstTimeFlowState.None)
end

function ShowReportPlayerDialog(arg0, arg1, arg2, arg3)
	local registerVal6 = Engine.GetPlayerInfo(arg3.controller, arg3.xuid)
	if arg1 or registerVal6.info.gamertag == "" then
	end
	local registerVal8 = {}
	registerVal8.controller = arg3.controller
	registerVal8.xuid = arg3.xuid
	registerVal8.gamertag = arg3.gamertag
	registerVal8.clantag = registerVal6.info.clantag
	registerVal8.emblemBacking = registerVal6.info.emblemBacking
	CoD.OverlayUtility.CreateOverlay(arg3.controller, arg0, "ReportPlayer", arg3.controller, arg1, registerVal8)
end

function CheckIfFeatureIsBanned(arg0, arg1)
	local registerVal2 = Engine.IsDedicatedServer()
	if registerVal2 then
		return false
	end
	registerVal2, registerVal3 = Engine.IsFeatureBanned(arg0, arg1)
	if registerVal2 then
		return true
	end
	return false
end

function GetFeatureBanInfo(arg0, arg1)
	local registerVal2 = Engine.IsDedicatedServer()
	if registerVal2 then
		return ""
	end
	registerVal2 = Engine.IsFeaturePermaBanned(arg0, arg1)
	local registerVal3 = LuaUtils.GetBanMessageForFeature(arg0, arg1, registerVal2)
	if not registerVal2 then
		local registerVal6 = Engine.GetModelForController(arg0)
		local registerVal5 = Engine.GetModel(registerVal6, "lobbyRoot.anticheat")
		registerVal6 = Engine.GetModel(registerVal5, "featureBans")
		local registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal6, ("feature_" .. arg1 .. "_end")))
		local registerVal8 = Engine.SystemTimeUInt64()
		local registerVal9 = Engine.GetTimeRemainingString((registerVal7 - registerVal8))
	end
	return string.format("%s

%s", registerVal3, registerVal9)
end

function PopAnticheatMessageAndGoForward_MP(arg0, arg1, arg2, arg3)
	local registerVal4 = GoBack(arg0, arg2)
	Engine.PopAnticheatMessage(arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.MP)
	local registerVal5 = {}
	registerVal5.targetName = "MPLobbyMain"
	registerVal5.mode = Enum.eModes.MODE_MULTIPLAYER
	registerVal5.firstTimeFlowAction = OpenMPFirstTimeFlow
	NavigateCheckForFirstTime(registerVal4, arg1, arg2, registerVal5, registerVal4)
end

function PopAnticheatMessageAndGoForward_ZM(arg0, arg1, arg2, arg3)
	local registerVal4 = GoBack(arg0, arg2)
	Engine.PopAnticheatMessage(arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.ZM)
	NavigateToLobby_SelectionList(registerVal4, arg1, arg2, "ZMLobbyOnline", registerVal4)
end

function PopAnticheatMessageAndGoForward_Paintshop(arg0, arg1, arg2, arg3)
	local registerVal4 = GoBack(arg0, arg2)
	Engine.PopAnticheatMessage(arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.UGC)
	OpenPaintshop(registerVal4, arg1, arg2, "", registerVal4)
end

function PopAnticheatMessageAndGoForward_EmblemEditorFromEmblemSelect(arg0, arg1, arg2, arg3)
	local registerVal4 = GoBack(arg0, arg2)
	Engine.PopAnticheatMessage(arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.UGC)
	OpenEmblemEditor(arg1, registerVal4, arg2, nil, "EmblemSelect")
end

function PopAnticheatMessageAndGoForward_EmblemEditorFromPaintjobSelect(arg0, arg1, arg2, arg3)
	local registerVal4 = GoBack(arg0, arg2)
	Engine.PopAnticheatMessage(arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.UGC)
	OpenEmblemEditor(arg1, registerVal4, arg2, nil, "PaintjobSelect")
end

function PopAnticheatMessageAndGoForward_Loot(arg0, arg1, arg2, arg3)
	local registerVal4 = GoBack(arg0, arg2)
	Engine.PopAnticheatMessage(arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.LOOT)
	OpenBlackMarket(registerVal4, nil, arg2)
end

function PopAnticheatMessageAndGoForward_Arena(arg0, arg1, arg2, arg3)
	local registerVal4 = GoBack(arg0, arg2)
	Engine.PopAnticheatMessage(arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.ARENA)
	NavigateToLobby_SelectionList(registerVal4, arg1, arg2, "MPLobbyOnlineArena", registerVal4)
end

function GetAnticheatMessageForwardFunction(arg0, arg1, arg2)
	if arg0 == LuaEnums.ANTICHEAT_MESSAGE_GROUPS.MP then
		return PopAnticheatMessageAndGoForward_MP
	else
		if arg0 == LuaEnums.ANTICHEAT_MESSAGE_GROUPS.ZM then
			return PopAnticheatMessageAndGoForward_ZM
		else
			if arg0 == LuaEnums.ANTICHEAT_MESSAGE_GROUPS.UGC then
				if arg1 == "EmblemEditor" then
					if arg2 == "EmblemSelect" then
						return PopAnticheatMessageAndGoForward_EmblemEditorFromEmblemSelect
					else
						return PopAnticheatMessageAndGoForward_EmblemEditorFromPaintjobSelect
						if arg2 == "PaintjobSelect" and arg1 == "Paintshop" then
							return PopAnticheatMessageAndGoForward_Paintshop
						else
							if arg0 == LuaEnums.ANTICHEAT_MESSAGE_GROUPS.LOOT then
								return PopAnticheatMessageAndGoForward_Loot
							else
								if arg0 == LuaEnums.ANTICHEAT_MESSAGE_GROUPS.ARENA then
									return PopAnticheatMessageAndGoForward_Arena
								end
							end
						end
					end
				end
			end
		end
	end
end

function DisplayAnticheatMessage(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.IsDedicatedServer()
	if registerVal5 then
		return 
	end
	registerVal5 = GetAnticheatMessageForwardFunction(arg2, arg3, arg4)
	local registerVal7 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.anticheat")
	registerVal7 = Engine.GetModel(registerVal6, "message")
	local registerVal8 = Engine.GetModelValue(Engine.GetModel(registerVal7, "string"))
	local registerVal9 = Engine.GetModelValue(Engine.GetModel(registerVal7, "url"))
	CoD.OverlayUtility.CreateOverlay(arg1, arg0, "AnticheatMessage", registerVal8, registerVal9, registerVal5)
end

function OpenAnticheatPolicyInBrowser(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.IsDedicatedServer()
	if registerVal4 then
		return 
	end
	local registerVal5 = Engine.GetModelForController(arg2)
	registerVal4 = Engine.GetModel(registerVal5, "lobbyRoot.anticheat")
	registerVal5 = Engine.GetModel(registerVal4, "message")
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal5, "url"))
	Engine.OpenAnticheatPolicyInBrowser(arg2, registerVal6)
end

function NavigateCheckForFirstTime(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CheckNavRestrictions(arg0, arg1, arg2, arg4)
	if registerVal5 then
		return 
	end
	if arg3.targetName == "MPLobbyMain" then
		registerVal5 = Engine.PushAnticheatMessageToUI(arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.MP)
		if registerVal5 then
			DisplayAnticheatMessage(arg0, arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.MP, "", "")
			return 
		end
		for index5=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
			local registerVal9 = CheckIfFeatureIsBanned(index5, LuaEnums.FEATURE_BAN.LIVE_MP)
			if registerVal9 then
				LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(index5, LuaEnums.FEATURE_BAN.LIVE_MP))
				return 
			end
		end
		registerVal5 = Engine.GetUsedControllerCount()
		if 1.000000 < registerVal5 then
			for index6=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
				local registerVal10 = CheckIfFeatureIsBanned(index6, LuaEnums.FEATURE_BAN.MP_SPLIT_SCREEN)
				if registerVal10 then
					LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(index6, LuaEnums.FEATURE_BAN.MP_SPLIT_SCREEN))
					return 
				end
			end
		end
	end
	if arg3.targetName == "CPLobbyOnline" then
		for index5=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
			registerVal9 = CheckIfFeatureIsBanned(index5, LuaEnums.FEATURE_BAN.LIVE_CP)
			if registerVal9 then
				LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(index5, LuaEnums.FEATURE_BAN.LIVE_CP))
				return 
			end
		end
		registerVal5 = Engine.GetUsedControllerCount()
		if 1.000000 < registerVal5 then
			for index6=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
				registerVal10 = CheckIfFeatureIsBanned(index6, LuaEnums.FEATURE_BAN.CP_SPLIT_SCREEN)
				if registerVal10 then
					LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(index6, LuaEnums.FEATURE_BAN.CP_SPLIT_SCREEN))
					return 
				end
			end
		end
	end
	registerVal5 = IsFirstTimeSetup(arg2, arg3.mode)
	if registerVal5 then
		arg3.firstTimeFlowAction(arg0, arg1, arg2, arg3.targetName, arg4)
	else
		NavigateToLobby_SelectionList(arg0, arg1, arg2, arg3.targetName, arg4)
	end
end

function ShouldShowNightmares(arg0)
	return true
end

function OpenChooseCharacterFromFirstTimeFlow(arg0, arg1, arg2, arg3, arg4)
	CoD.CCUtility.customizationMode = Enum.eModes.MODE_MULTIPLAYER
	local registerVal5 = CoD.LobbyBase.OpenChooseCharacterLoadout(arg4, arg2, LuaEnums.CHOOSE_CHARACTER_OPENED_FROM.FIRST_TIME)
	local registerVal6 = Engine.GetMostRecentPlayedMode(arg2)
	registerVal5.previousMode = registerVal6
end

function SetCharacterModeToSessionMode(arg0, arg1, arg2, arg3)
	CoD.CCUtility.customizationMode = arg3
end

function SetCharacterModeToCurrentSessionMode(arg0, arg1, arg2)
	local registerVal4 = Engine.CurrentSessionMode()
	CoD.CCUtility.customizationMode = registerVal4
end

function SetFirstTimeSetupComplete_MP(arg0, arg1, arg2, arg3, arg4)
	Engine.SetFirstTimeComplete(arg2, Enum.eModes.MODE_MULTIPLAYER, true)
	FirstTimeSetup_SetNone(arg2)
end

function OpenFindMatch(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CheckNavRestrictions(arg0, arg1, arg2, arg4)
	if registerVal5 then
		return 
	end
	CoD.LobbyBase.OpenFindMatch(arg4, arg2)
end

function OpenCompetitivePlaylist(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenCompetitivePlaylist(arg4, arg2)
end

function OpenFreerunMapSelection(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenFreerunMapSelection(arg4, arg2)
end

function OpenMPPublicLobbyLeaderboard(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenMPPublicLobbyLeaderboard(arg4, arg2)
end

function OpenMPCustomLobbyLeaderboard(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenMPCustomLobbyLeaderboard(arg4, arg2)
end

function OpenFreerunLeaderboards(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenFreerunLeaderboards(arg4, arg2)
end

function OpenArenaMasterLeaderboards(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenArenaMasterLeaderboards(arg4, arg2)
end

function OpenDOALeaderboards(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenDOALeaderboards(arg4, arg2)
end

function OpenSetupGameMP(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenSetupGame(arg4, arg2, "GameSettingsFlyoutMP")
end

function OpenBonusModesFlyout(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenSetupGame(arg4, arg2, "BonusModesFlyout")
end

function OpenChangeMapZM(arg0, arg1, arg2, arg3, arg4)
	CoD.perController[arg2].choosingZMPlaylist = false
	CoD.LobbyBase.ZMOpenChangeMap(arg4, arg2, CoD.LobbyBase.MapSelect.SELECT, nil)
end

function OpenSetupGame(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenSetupGame(arg4, arg2, "GameSettingsFlyout")
end

function OpenBubbleGumPacksMenu(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenBubbleGumBuffs(arg4, arg2)
end

function OpenMegaChewFactorymenu(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenMegaChewFactory(arg4, arg2)
end

function OpenGobbleGumCookbookMenu(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenGobbleGumCookbook(arg4, arg2)
end

function OpenWeaponBuildKits(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenWeaponBuildKits(arg4, arg2)
end

function OpenChangeMap(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenChangeMap(arg0, arg2)
end

function OpenChangeGameMode(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenChangeGameMode(arg0, arg2)
end

function OpenEditGameRules(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenEditGameRules(arg0, arg2)
end

function OpenBotSettings(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenBotSettings(arg0, arg2)
end

function OpenServerSettings(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenServerSettings(arg0, arg2)
end

function OpenOptions(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenOptions(arg4, arg2)
end

function OpenZMFindMatch(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CheckNavRestrictions(arg0, arg1, arg2, arg4)
	if registerVal5 then
		return 
	end
	CoD.perController[arg2].choosingZMPlaylist = true
	CoD.LobbyBase.OpenFindMatch(arg4, arg2, "ZMMapSelection")
end

function OpenZMMapSelectLaunch(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = {}
	registerVal5.controller = arg2
	local function __FUNC_1CA05_(arg0)
		Engine.SetPlaylistID(150.000000)
		Engine.RunPlaylistRules(Engine.GetPrimaryController())
		local registerVal2 = Engine.GetPrimaryController()
		CoD.perController[registerVal2].choosingZMPlaylist = false
		Dvar.zm_private_rankedmatch:set(true)
		local registerVal3 = Engine.GetPrimaryController()
		CoD.LobbyBase.ZMOpenChangeMap(arg4, registerVal3, CoD.LobbyBase.MapSelect.LAUNCH, arg0)
	end

	registerVal5.actionFunc = __FUNC_1CA05_
	local registerVal6 = Engine.GetUsedControllerCount()
	registerVal6 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_ALL)
	local registerVal7 = Engine.GetUsedControllerCount()
	if 1.000000 < registerVal6 and registerVal6 == registerVal7 then
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "LobbyLocalClientWarning", registerVal5)
		return 
	end
	registerVal6 = Engine.GetLobbyClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	registerVal6 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_GAME, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_ALL)
	if registerVal6 == 0.000000 or 1.000000 < registerVal6 then
		LuaUtils.UI_ShowErrorMessageDialog(arg2, "MENU_TOO_MANY_CLIENTS_FOR_SOLO_GAME")
		return 
	end
	Engine.SetPlaylistID(150.000000)
	Engine.RunPlaylistRules(arg2)
	CoD.perController[arg2].choosingZMPlaylist = false
	Dvar.zm_private_rankedmatch:set(true)
	CoD.LobbyBase.ZMOpenChangeMap(arg4, arg2, CoD.LobbyBase.MapSelect.LAUNCH, arg3)
end

function OpenZMMapSelectSelect(arg0, arg1, arg2, arg3, arg4)
	CoD.perController[arg2].choosingZMPlaylist = false
	CoD.LobbyBase.ZMOpenChangeMap(arg4, arg2, CoD.LobbyBase.MapSelect.SELECT, arg3)
end

function ProcessZMMapSelectListAction(arg0, arg1, arg2, arg3)
	if arg1.mapId ~= nil then
		SetMap(arg2, arg1.mapId, false)
		arg0.mapSelected = true
	end
	GoBack(arg0, arg2)
end

function OpenMissionSelect(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.GetLobbyNetworkMode()
	if registerVal5 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
		local registerVal7 = Engine.GetGlobalModel()
		local registerVal6 = Engine.CreateModel(registerVal7, "cpLobby")
		Engine.SetModelValue(registerVal6, "lan")
	else
		registerVal7 = Engine.GetGlobalModel()
		registerVal6 = Engine.CreateModel(registerVal7, "cpLobby")
		Engine.SetModelValue(registerVal6, "custom")
	end
	Engine.SetDvar("ui_blocksaves", "1")
	arg4:openPopup("CPMissionSelect", arg2)
end

function OpenPublicGameSelect(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CheckNavRestrictions(arg0, arg1, arg2, arg4)
	if registerVal5 then
		return 
	end
	Engine.SetDvar("ui_blocksaves", "1")
	arg4:openPopup("CPPublicGameSelect", arg2)
end

function OpenMissionOverview(arg0, arg1, arg2, arg3, arg4)
	arg4:openPopup("CPMissionOverviewFrontend", arg2)
end

function OpenDifficultySelect(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = arg4:openPopup("CPSelectDifficulty", arg2)
	registerVal5.disableConfirmSelection = arg3
end

function OpenCAC(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenCAC(arg4, arg2)
end

function OpenServerBrowser(arg0, arg1, arg2, arg3, arg4)
	OpenPopup(arg4, "LobbyServerBrowserOnline", arg2)
end

function OpenServerBrowserFilters(arg0, arg1, arg2, arg3, arg4)
	OpenPopup(arg4, "ServerBrowserFilters", arg2)
end

function JoinServerBrowser(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel()
	if registerVal4 then
		local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal4, "serverIndex"))
		local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal4, "connectAddr"))
		local registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal4, "name"))
		if registerVal5 and registerVal7 then
			Engine.SteamServerBrowser_AddFavoriteServer(registerVal5, true)
		end
		if registerVal6 then
			Engine.Exec(arg2, ("connect " .. registerVal6))
		end
		GoBack(arg0, arg2)
	end
end

function OpenFindLANGame(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.CheckNetConnection()
	if not registerVal5 then
		LuaUtils.UI_ShowErrorMessageDialog(arg2, "XBOXLIVE_NETCONNECTION")
		return 
	end
	local registerVal6 = Engine.GetLobbyLocalClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if 2.000000 < registerVal6 then
		registerVal6 = {}
		registerVal6.controller = arg2
		registerVal6.navToMenu = nil
		registerVal6.popupName = "LobbyServerBrowserOverlay"
		registerVal6.openFromMenu = arg4
		CoD.OverlayUtility.CreateOverlay(arg2, arg4, "LobbyLocalClientWarning", registerVal6)
		return 
	end
	OpenPopup(arg4, "LobbyServerBrowserOverlay", arg2)
end

function OpenStore(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = DisableStore()
	if not registerVal5 then
		registerVal5 = LobbyData:GetCurrentMenuTarget()
		LUI.CoDMetrics.StoreEntry(arg4, arg2, arg3, registerVal5)
		local registerVal6 = Engine.GetModelForController(arg2)
		local registerVal7 = Engine.CreateModel(registerVal6, "StoreRoot")
		local registerVal9 = Engine.CreateModel(registerVal7, "actionSource", true)
		Engine.SetModelValue(registerVal9, arg3)
		registerVal9 = Engine.CreateModel(registerVal7, "storeSource", true)
		Engine.SetModelValue(registerVal9, registerVal5.name)
		OpenOverlay(arg4, "Store", arg2)
	else
		if CoD.isPC then
			OpenSteamStore(arg0, arg1, arg2, arg3, arg4)
		end
	end
end

function SetFocusToCorrectDLCPack(arg0, arg1)
	if arg0.productList and arg0.productList.itemStencil then
		local registerVal5 = {}
		registerVal5.productImage = CoD.DLCImages[CoD.DLCFocus]
		local registerVal3 = arg0.productList:findItem(registerVal5, nil, true, 0.000000)
	end
end

function OpenBO4Store(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = DisableStore()
	if not registerVal5 then
		CoD.DLCFocus = 0.000000
		registerVal5 = OpenOverlay(arg4, "Store_BO4", arg2)
		local registerVal6 = LobbyData:GetCurrentMenuTarget()
		LUI.CoDMetrics.StoreEntry(arg4, arg2, arg3, registerVal6)
		local registerVal7 = Engine.GetModelForController(arg2)
		local registerVal8 = Engine.CreateModel(registerVal7, "StoreRoot")
		local registerVal10 = Engine.CreateModel(registerVal8, "actionSource", true)
		Engine.SetModelValue(registerVal10, arg3)
		registerVal10 = Engine.CreateModel(registerVal8, "storeSource", true)
		Engine.SetModelValue(registerVal10, registerVal6.name)
	end
end

function OpenDLCStore(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = DisableStore()
	if not registerVal5 then
		CoD.DLCFocus = 0.000000
		registerVal5 = IsPurchaseExperimentActive(arg2, arg4)
		if registerVal5 then
			registerVal5 = arg1:getModel()
			if not registerVal5 then
				if arg4.selectionList and arg4.selectionList.activeWidget then
					local registerVal6 = arg4.selectionList.activeWidget:getModel()
				else
					if arg4.MapList and arg4.MapList.activeWidget then
						registerVal6 = arg4.MapList.activeWidget:getModel()
					else
						if arg4.mapList and arg4.mapList.activeWidget then
							registerVal6 = arg4.mapList.activeWidget:getModel()
						end
					end
				end
			end
			if registerVal6 then
				registerVal6 = Engine.GetModel(registerVal6, "dlcIndex")
				if registerVal6 then
					local registerVal7 = Engine.GetModelValue(registerVal6)
					if registerVal7 == CoD.CONTENT_DLC0_INDEX then
					end
					CoD.DLCFocus = CoD.DLCBits.CONTENT_DLC0ZM
				else
					if arg4.selectionList and arg4.selectionList.activeWidget then
					end
				end
			end
		end
		registerVal5 = OpenOverlay(arg4, "Store_DLC", arg2)
		registerVal6 = LobbyData:GetCurrentMenuTarget()
		LUI.CoDMetrics.StoreEntry(arg4, arg2, arg3, registerVal6)
		registerVal7 = Engine.GetModelForController(arg2)
		local registerVal8 = Engine.CreateModel(registerVal7, "StoreRoot")
		local registerVal10 = Engine.CreateModel(registerVal8, "actionSource", true)
		Engine.SetModelValue(registerVal10, arg3)
		registerVal10 = Engine.CreateModel(registerVal8, "storeSource", true)
		Engine.SetModelValue(registerVal10, registerVal6.name)
		local registerVal9 = IsPurchaseExperimentActive(arg2, arg4)
		if registerVal9 then
			SetFocusToCorrectDLCPack(registerVal5.StoreNonFeaturedFrame, arg2)
		end
	end
end

function MegaChewOpenCodPointsStore(arg0, arg1, arg2, arg3, arg4)
	if CoD.NotEnoughLD then
		OpenCodPointsStore(arg0, arg1, arg2, "NotEnoughLiquidDivinum", arg4)
	else
		OpenCodPointsStore(arg0, arg1, arg2, arg3, arg4)
	end
end

function OpenCodPointsStore(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = DisableStore()
	if arg1 or CoD.isPC then
		OpenOverlay(arg4, "Store_CodPoints", arg2)
		if arg3 == "menuName" then
		end
		registerVal5 = LobbyData:GetCurrentMenuTarget()
		LUI.CoDMetrics.StoreEntry(arg4, arg2, arg4.menuName, registerVal5)
		local registerVal6 = Engine.GetModelForController(arg2)
		local registerVal7 = Engine.CreateModel(registerVal6, "StoreRoot")
		local registerVal9 = Engine.CreateModel(registerVal7, "actionSource", true)
		Engine.SetModelValue(registerVal9, arg4.menuName)
		registerVal9 = Engine.CreateModel(registerVal7, "storeSource", true)
		Engine.SetModelValue(registerVal9, registerVal5.name)
	end
end

function OpenSteamStore(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = DisableSteamStore()
	if not registerVal5 then
		registerVal5 = type(arg3)
		registerVal5 = math.floor(arg3)
		if registerVal5 == "number" and arg3 == registerVal5 then
			Engine.SteamStore(arg2, arg3)
		else
			Engine.SteamStore(arg2)
		end
	end
end

function OpenScorestreaks(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenScorestreaks(arg4, arg2)
end

function OpenEditCodcasterSettings(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenEditCodcasterSettings(arg4, arg2)
end

function OpenTest(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenTest(arg4, arg2)
end

function OpenBarracks(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenBarracks(arg4, arg2)
end

function OpenGenders(arg0, arg1, arg2)
	CoD.LobbyBase.OpenGenders(arg2, arg1)
end

function OpenQuit(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenQuit(arg4, arg2)
end

function LobbyMapVoteSelectNext(arg0, arg1)
	CoD.LobbyBase.LobbyMapVoteSelect(arg0, arg1, Enum.LobbyMapVote.LOBBY_MAPVOTE_NEXT)
end

function LobbyMapVoteSelectPrevious(arg0, arg1)
	CoD.LobbyBase.LobbyMapVoteSelect(arg0, arg1, Enum.LobbyMapVote.LOBBY_MAPVOTE_PREVIOUS)
end

function LobbyMapVoteSelectRandom(arg0, arg1)
	CoD.LobbyBase.LobbyMapVoteSelect(arg0, arg1, Enum.LobbyMapVote.LOBBY_MAPVOTE_RANDOM)
end

function ShowManagePartyPopup(arg0, arg1, arg2, arg3, arg4)
	CoD.perController[arg3].Social_Party = arg1
	CoD.perController[arg3].Social_Party_Action = 0.000000
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, "SocialMainMenu.managePartyButtonText")
	if registerVal5 then
		if arg4 == "PROMOTE" then
			CoD.perController[arg3].Social_Party_Action = 1.000000
			Engine.SetModelValue(registerVal5, Engine.Localize("MENU_MANAGE_PARTY_PROMOTE_BUTTON"))
		else
			if arg4 == "KICK" then
				CoD.perController[arg3].Social_Party_Action = 2.000000
				Engine.SetModelValue(registerVal5, Engine.Localize("MENU_MANAGE_PARTY_KICK_BUTTON"))
			else
				return 
			end
		end
		SetState(arg1, "Hidden")
		OpenPopup(arg0, "Social_Party_ManagePartyPopup", arg3)
	end
end

function ManagePartyAction(arg0, arg1, arg2, arg3)
	local registerVal4 = arg2:getModel(arg3, "xuid")
	if not registerVal4 then
		return 
	end
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if CoD.perController[arg3].Social_Party_Action == 1.000000 then
		if Engine.StartPrivateLobbyMigrateTo then
			Engine.StartPrivateLobbyMigrateTo(arg3, registerVal5)
		end
		local registerVal6 = GoBack(arg1, arg3)
		GoBackToMenu(registerVal6, arg3, "Lobby")
	else
		registerVal6 = Engine.IsLeader(arg3, Enum.LobbyType.LOBBY_TYPE_PRIVATE)
		if CoD.perController[arg3].Social_Party_Action == 2.000000 and registerVal6 then
			Engine.LobbyDisconnectClient(arg3, Enum.LobbyType.LOBBY_TYPE_PRIVATE, registerVal5, Enum.LobbyDisconnectClient.LOBBY_DISCONNECT_CLIENT_KICK)
		end
	end
end

function PromoteToLeader(arg0, arg1, arg2, arg3, arg4)
	Engine.GiveLeadership(arg3.controller, Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg3.xuid)
	arg4:goBack(arg2)
end

function DisconnectClient(arg0, arg1, arg2, arg3, arg4)
	Engine.LobbyDisconnectClient(arg3.controller, Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg3.xuid, Enum.LobbyDisconnectClient.LOBBY_DISCONNECT_CLIENT_KICK)
	arg4:goBack(arg2)
end

function MuteLobbyPlayerLAN(arg0, arg1, arg2)
	local registerVal4 = arg0:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "xuid")
	if registerVal3 then
		registerVal4 = Engine.LobbyIsPlayerInLobby(Enum.LobbyType.LOBBY_TYPE_PRIVATE, registerVal3)
		if registerVal4 then
			Engine.MutePlayer(arg1, Enum.LobbyType.LOBBY_TYPE_PRIVATE, registerVal3)
		end
		registerVal4 = Engine.LobbyIsPlayerInLobby(Enum.LobbyType.LOBBY_TYPE_GAME, registerVal3)
		if registerVal4 then
			Engine.MutePlayer(arg1, Enum.LobbyType.LOBBY_TYPE_GAME, registerVal3)
		end
		UpdateAllMenuButtonPrompts(arg2, arg1)
	end
end

function UnmuteLobbyPlayerLAN(arg0, arg1, arg2)
	local registerVal4 = arg0:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "xuid")
	if registerVal3 then
		registerVal4 = Engine.LobbyIsPlayerInLobby(Enum.LobbyType.LOBBY_TYPE_PRIVATE, registerVal3)
		if registerVal4 then
			Engine.UnMutePlayer(arg1, Enum.LobbyType.LOBBY_TYPE_PRIVATE, registerVal3)
		end
		registerVal4 = Engine.LobbyIsPlayerInLobby(Enum.LobbyType.LOBBY_TYPE_GAME, registerVal3)
		if registerVal4 then
			Engine.UnMutePlayer(arg1, Enum.LobbyType.LOBBY_TYPE_GAME, registerVal3)
		end
		UpdateAllMenuButtonPrompts(arg2, arg1)
	end
end

function MutePlayer(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.LobbyIsPlayerInLobby(Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg3.xuid)
	if registerVal5 then
		Engine.MutePlayer(arg3.controller, Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg3.xuid)
	end
	registerVal5 = Engine.LobbyIsPlayerInLobby(Enum.LobbyType.LOBBY_TYPE_GAME, arg3.xuid)
	if registerVal5 then
		Engine.MutePlayer(arg3.controller, Enum.LobbyType.LOBBY_TYPE_GAME, arg3.xuid)
	end
	arg4:goBack(arg2)
end

function UnMutePlayer(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.LobbyIsPlayerInLobby(Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg3.xuid)
	if registerVal5 then
		Engine.UnMutePlayer(arg3.controller, Enum.LobbyType.LOBBY_TYPE_PRIVATE, arg3.xuid)
	end
	registerVal5 = Engine.LobbyIsPlayerInLobby(Enum.LobbyType.LOBBY_TYPE_GAME, arg3.xuid)
	if registerVal5 then
		Engine.UnMutePlayer(arg3.controller, Enum.LobbyType.LOBBY_TYPE_GAME, arg3.xuid)
	end
	arg4:goBack(arg2)
end

function ShowSocialPartyWidget(arg0)
	if CoD.perController[arg0].Social_Party then
		CoD.perController[arg0].Social_Party:setState("DefaultState")
	end
end

function LobbyPartyPrivacy(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, "PartyPrivacy")
	registerVal6 = Engine.GetModel(registerVal5, "privacy")
	local registerVal7 = Engine.GetModelValue(registerVal6)
	if arg3 == "left" then
	else
		if arg3 == "right" then
		end
	end
	Engine.SetModelValue(registerVal6, ((registerVal7 + 1.000000) % Enum.PartyPrivacy.PARTY_PRIVACY_COUNT))
end

function LobbyPartyPrivacyAccept(arg0, arg1, arg2)
	local registerVal4 = arg1.Slider.activeWidget:getModel(arg2, "action")
	local registerVal5 = arg1.Slider.activeWidget:getModel(arg2, "param")
	if registerVal4 then
		local registerVal8 = Engine.GetModelValue(registerVal4)
		if registerVal5 then
			registerVal8 = Engine.GetModelValue(registerVal5)
		else
		end
	end
	if arg1.Slider.activeWidget.action then
		arg1.Slider.activeWidget.action(arg0, arg1.Slider.activeWidget, arg2, arg1.Slider.activeWidget.actionParam, arg1.Slider.activeWidget.gridInfoTable.parentGrid.menu)
	end
	Engine.Exec(arg2, "updategamerprofile")
end

function LobbyPartyPrivacyCancel(arg0, arg1, arg2)
	local registerVal4 = arg1.Slider.activeWidget:getModel(arg2, "action")
	local registerVal5 = arg1.Slider.activeWidget:getModel(arg2, "param")
	local registerVal6 = Engine.GetModelPath(arg1)
	local registerVal7 = Engine.GetModelPath(arg1.Slider)
	registerVal7 = Engine.GetModelPath(arg1.Slider.activeWidget)
	if registerVal4 then
		local registerVal10 = Engine.GetModelValue(registerVal4)
		if registerVal5 then
			registerVal10 = Engine.GetModelValue(registerVal5)
		else
			registerVal10 = arg1:getModel(arg2, "currentSelection")
		end
	end
	if arg1.Slider.activeWidget.revertAction then
		arg1.Slider.activeWidget.revertAction(arg1, arg1.Slider.activeWidget, arg2, arg1.Slider.activeWidget.actionParam, arg1.Slider.activeWidget.gridInfoTable.parentGrid.menu)
	end
end

function LobbyTeamSelectionLB(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel(arg2, "xuid")
	if registerVal4 == nil then
		local registerVal5 = Engine.GetXUID64(arg2)
	else
		registerVal5 = Engine.GetModelValue(registerVal4)
	end
	if registerVal5 == nil then
		return 
	end
	CoD.LobbyBase.LobbyTeamSelection(arg0, arg2, 0.000000, registerVal5)
end

function LobbyTeamSelectionRB(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel(arg2, "xuid")
	if registerVal4 == nil then
		local registerVal5 = Engine.GetXUID64(arg2)
	else
		registerVal5 = Engine.GetModelValue(registerVal4)
	end
	if registerVal5 == nil then
		return 
	end
	CoD.LobbyBase.LobbyTeamSelection(arg0, arg2, 1.000000, registerVal5)
end

function LobbyLANLaunchGame(arg0, arg1, arg2)
	Engine.SetDvar("skipto", "")
	Engine.SetDvar("sv_saveGameSkipto", "")
	CoD.LobbyBase.LaunchGame(arg0, arg2, Enum.LobbyType.LOBBY_TYPE_GAME)
end

function LobbyLANServerBrowserSetMainModeFilter(arg0, arg1)
	CoD.LobbyBase.LobbyLANServerBrowserSetMainModeFilter(arg0, arg1)
end

function SetTMode(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = CoD.SafeGetModelValue(registerVal3, "itemIndex")
	if registerVal3 and registerVal4 then
		Engine.SetDvar("r_tacScan_Layout", registerVal4)
		CoD.perController[arg2].startMenu_equippedIndex = registerVal4
		arg0.selectionList:updateDataSource()
	end
end

local function __FUNC_210BD_()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "MapVote.timerActive")
	Engine.SetModelValue(registerVal0, 1.000000)
end

local function __FUNC_211A3_(arg0, arg1, arg2)
	local registerVal3 = CheckNavRestrictions(arg0, arg1, arg2, arg0)
	if registerVal3 then
		return 
	end
	__FUNC_210BD_()
	Engine.SetDvar("skipto", "")
	Engine.SetDvar("sv_saveGameSkipto", "")
	CoD.LobbyBase.LaunchGame(arg0, arg2, Enum.LobbyType.LOBBY_TYPE_GAME)
end

LobbyOnlineCustomLaunchGame_SelectionList = __FUNC_211A3_
function LobbyOnlineCustomLaunchGame(arg0, arg1)
	CoD.LobbyBase.LaunchGame(arg0, arg1, Enum.LobbyType.LOBBY_TYPE_GAME)
end

function OpenTheaterSelectFilm(arg0, arg1, arg2, arg3, arg4)
	CoD.FileshareUtility.SetFileshareMode(arg2, Enum.FileshareMode.FILESHARE_MODE_USER)
	CoD.FileshareUtility.SetCurrentUser(Engine.GetXUID64(arg2))
	CoD.FileshareUtility.SetDirty()
	CoD.LobbyBase.OpenTheaterSelectFilm(arg4, arg2)
end

local function __FUNC_2161E_(arg0, arg1, arg2)
	__FUNC_210BD_()
	LobbyTheaterLaunchDemo(arg0, arg1, arg2)
end

LobbyTheaterStartFilm = __FUNC_2161E_
local function __FUNC_21684_(arg0, arg1, arg2)
	__FUNC_210BD_()
	LobbyTheaterLaunchDemo(arg0, arg1, arg2, "CreateHighlightReel")
end

LobbyTheaterCreateHighlightReel = __FUNC_21684_
local function __FUNC_2170D_(arg0, arg1, arg2)
	__FUNC_210BD_()
	LobbyTheaterLaunchDemo(arg0, arg1, arg2, "Shoutcast")
end

LobbyTheaterShoutcastFilm = __FUNC_2170D_
function GoBackAndDisplayModalDialog(arg0, arg1, arg2)
	local registerVal3 = GoBack(arg0, arg1)
	arg2(registerVal3, arg1)
end

function DisplayPlayGoJoinError(arg0, arg1)
	local registerVal8 = {}
	registerVal8 = {"MPUI_OK"}
	local function __FUNC_21895_(arg0)
		return true
	end

	arg0:OpenModalDialog(arg0, arg1, "", "MENU_CANNOT_JOIN_DURING_INSTALL", registerVal8, __FUNC_21895_)
end

function LobbyAcceptInvite(arg0, arg1, arg2)
	local registerVal4 = {}
	registerVal4.controller = arg1
	registerVal4.xuid = arg2.xuid
	registerVal4.joinType = Enum.JoinType.JOIN_TYPE_INVITE
	local registerVal5 = CoD.LobbyBase.ChunkAnyDownloading()
	if registerVal5 then
		DisplayPlayGoJoinError(arg0, arg1)
		return 
	end
	Engine.LobbyVM_CallFunc("Join", registerVal4)
end

function LobbyQuickJoin(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = LobbyData.GetLobbyNav()
	local registerVal7 = IsFirstTimeSetup(arg2, Enum.eModes.MODE_MULTIPLAYER)
	registerVal7 = arg1:getModel()
	local registerVal8 = Engine.GetModel(registerVal7, "activity")
	local registerVal9 = GetSessionModeFromPresenceActivity(Engine.GetModelValue(registerVal8))
	if registerVal6 == LobbyData.UITargets.UI_MODESELECT.id and registerVal7 and registerVal8 and registerVal9 == Enum.eModes.MODE_MULTIPLAYER then
		if arg4 == true then
			GoBackAndOpenOverlayOnParent(arg0, "MPIntroRequired", arg2)
		else
			OpenOverlay(arg0, "MPIntroRequired", arg2)
		end
		return 
	end
	registerVal8 = arg1:getModel(arg2, "joinable")
	if not registerVal8 then
		registerVal8 = arg1:getModel(arg2, "isJoinable")
	end
	registerVal9 = Engine.GetModelValue(registerVal8)
	if registerVal8 ~= nil and registerVal9 ~= nil then
		if registerVal9 ~= Enum.LobbyJoinable.LOBBY_JOINABLE_YES then
			if registerVal9 == Enum.LobbyJoinable.LOBBY_JOINABLE_YES_FRIENDS_ONLY and arg3 == Enum.JoinType.JOIN_TYPE_FRIEND then
			end
		end
	end
	registerVal9 = CoD.LobbyBase.ChunkAnyDownloading()
	if CoD.LobbyBase and registerVal9 then
		if arg4 == true then
			GoBackAndDisplayModalDialog(arg0, arg2, DisplayPlayGoJoinError)
		else
			registerVal9 = arg0:getParentMenu()
			DisplayPlayGoJoinError(registerVal9, arg2)
		end
	end
	if not false then
		return 
	end
	registerVal9 = arg1:getModel(arg2, "xuid")
	if registerVal9 == nil then
		return 
	end
	registerVal9 = Engine.GetModelValue(registerVal9)
	if registerVal9 == nil then
		return 
	end
	if nil ~= arg3 and 0.000000 <= arg3 and arg3 < Enum.JoinType.JOIN_TYPE_COUNT then
	end
	local registerVal12 = Engine.IsUserGuest(arg2)
	if CoD.isDurango and registerVal12 then
		registerVal12 = Engine.GetPrimaryController()
	end
	registerVal12 = {}
	registerVal12.controller = registerVal12
	registerVal12.xuid = registerVal9
	registerVal12.joinType = arg3
	registerVal12.platform = false
	local registerVal13 = GoBack(arg0, arg2)
	if nil ~= arg4 and true == arg4 and arg3 == Enum.JoinType.JOIN_TYPE_GROUPS then
		GoBack(registerVal13, arg2)
	end
	registerVal13 = Engine.IsInGame()
	if registerVal13 then
		registerVal13 = Engine.LobbyIsPlayerInLobby(Enum.LobbyType.LOBBY_TYPE_GAME, registerVal12.xuid)
		if not registerVal13 then
			registerVal13 = CoDShared.QuitGame(arg2)
			registerVal12.migrating = (not registerVal13)
			Engine.LobbyVM_CallFunc("InGameJoin", registerVal12)
		else
			Engine.LobbyVM_CallFunc("Join", registerVal12)
		end
	end
end

function LobbyJoinFromFriendsMenu(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal3, "friends")
	local registerVal5 = Engine.GetModel(registerVal4, "tab")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	if friends == registerVal6 then
	else
		if recent == registerVal6 then
		else
			if groups == registerVal6 then
			else
				if inbox == registerVal6 then
				else
				end
			end
		end
	end
	LobbyQuickJoin(arg0, arg1, arg2, Enum.JoinType.JOIN_TYPE_NORMAL, true)
end

function LobbyInviteFriend(arg0, arg1, arg2, arg3)
	if arg3 then
	else
		local registerVal6 = Engine.GetModelValue(arg1:getModel(arg2, "xuid"))
		registerVal6 = Engine.GetModelValue(arg1:getModel(arg2, "gamertag"))
	end
	if registerVal6 ~= nil then
		if CoD.isPC == true then
			CoD.invitePlayer(arg2, registerVal6)
		else
			CoD.invitePlayerByGamertag(arg2, registerVal6, registerVal6)
		end
	end
end

function LobbyInviteFriendGoBack(arg0, arg1, arg2, arg3)
	LobbyInviteFriend(arg0, arg1, arg2, arg3)
	GoBack(arg0, arg2)
end

function OnLoadToggleDebug(arg0, arg1)
	local registerVal2 = Dvar.ui_lobbyDebugVis:get()
	if registerVal2 then
		arg0.btnToggleDebug.buttoninternal0.Text0:setText(Engine.Localize("ON"))
	else
		arg0.btnToggleDebug.buttoninternal0.Text0:setText(Engine.Localize("OFF"))
	end
end

function LobbyToggleDebug(arg0, arg1)
	local registerVal4 = Dvar.ui_lobbyDebugVis:get()
	Dvar.ui_lobbyDebugVis:set((not registerVal4))
	local registerVal2 = Dvar.ui_lobbyDebugVis:get()
	if registerVal2 then
		arg0.btnToggleDebug.buttoninternal0.Text0:setText(Engine.Localize("ON"))
	else
		arg0.btnToggleDebug.buttoninternal0.Text0:setText(Engine.Localize("OFF"))
	end
end

function LobbyToggleMsgLevel(arg0, arg1)
	local registerVal2 = Dvar.ui_lobbyDebugMsgLevel:get()
	if 2.000000 < (registerVal2 + 1.000000) then
	end
	Dvar.ui_lobbyDebugMsgLevel:set(0.000000)
	if 0.000000 == 0.000000 then
		arg0.btnToggleMsgLevel.buttoninternal0.Text0:setText("PAUSED")
	else
		if 0.000000 == 1.000000 then
			arg0.btnToggleMsgLevel.buttoninternal0.Text0:setText("LIMITED")
		else
			arg0.btnToggleMsgLevel.buttoninternal0.Text0:setText("ALL")
		end
	end
end

function Lobby_SetMaxLocalPlayers(arg0)
	local registerVal2 = Engine.GetMaxLocalControllers()
	if registerVal2 < arg0 then
	end
	Dvar.lobby_maxLocalPlayers:set(registerVal2)
end

function LobbyAddLocalClient(arg0, arg1)
	local registerVal2 = Dvar.ui_execdemo_beta:get()
	if registerVal2 then
		return 
	end
	registerVal2 = AllowGuestSplitScreenOnline()
	registerVal2 = Engine.GetLobbyNetworkMode()
	if CoD.isPC and registerVal2 == false and registerVal2 ~= Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LAN then
		return 
	end
	registerVal2 = Engine.GetLobbyNetworkMode()
	if registerVal2 == Enum.LobbyNetworkMode.LOBBY_NETWORKMODE_LIVE then
		if CoD.isPS4 then
			registerVal2 = Engine.DisplayNpAvailabilityErrors(arg1)
			if registerVal2 then
				return 
			else
				registerVal2 = Engine.DisplayUpsellAndContentWarnings(arg1)
				if not registerVal2 then
					return 
				end
			end
		end
		registerVal2 = Engine.IsUserGuest(arg1)
		registerVal2 = Engine.HasMPPrivileges(arg1)
		registerVal2 = IsLuaCodeVersionAtLeast(21.000000)
		if CoD.isDurango and not registerVal2 and not registerVal2 and registerVal2 then
			registerVal2 = Engine.PrivilegeIsChecked(arg1, 254.000000)
			local registerVal3 = Engine.PrivilegeIsInDisplayInfoCache(arg1, 254.000000)
			if not arg1 or not registerVal3 then
				LuaUtils.UI_ShowErrorMessageDialog(arg1, "XBOXLIVE_MPNOTALLOWED")
				return 
			end
		end
	end
	registerVal3 = Engine.IsLobbyActive(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal3 then
	end
	registerVal3 = Dvar.lobby_maxLocalPlayers:get()
	local registerVal4 = Engine.GetLobbyLocalClientCount(Enum.LobbyType.LOBBY_TYPE_GAME)
	if registerVal4 < registerVal3 then
		registerVal4 = Engine.GetGlobalModel()
		registerVal3 = Engine.GetModel(registerVal4, "lobbyRoot.lobbyMainMode")
		registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal4 == Enum.LobbyMainMode.LOBBY_MAINMODE_MP then
		else
			if registerVal4 == Enum.LobbyMainMode.LOBBY_MAINMODE_ZM then
			else
				if registerVal4 == Enum.LobbyMainMode.LOBBY_MAINMODE_CP then
				end
			end
		end
		if 0.000000 <= LuaEnums.FEATURE_BAN.CP_SPLIT_SCREEN then
			for index6=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
				local registerVal10 = CheckIfFeatureIsBanned(index6, LuaEnums.FEATURE_BAN.CP_SPLIT_SCREEN)
				if registerVal10 then
					LuaUtils.UI_ShowErrorMessageDialog(arg1, GetFeatureBanInfo(index6, LuaEnums.FEATURE_BAN.CP_SPLIT_SCREEN))
					return 
				end
			end
		end
		CoD.LobbyBase.UnusedGamepadButton(arg0, arg1)
		local registerVal6 = Engine.GetUsedControllerCount()
		if registerVal6 == 3.000000 then
			Engine.ExecNow(nil, "canceldemonwareconnect")
			LuaUtils.UI_ShowWarningMessageDialog(arg1, "MENU_RESTRICTED_TO_LOCAL_GAMES")
		end
		registerVal6 = Engine.DvarInt(nil, "bot_maxAllies")
		local registerVal7 = Engine.DvarInt(nil, "bot_maxAxis")
		local registerVal8 = Engine.DvarInt(nil, "bot_maxFree")
		if CoD.GameSettingsUtility.MaxSplitscreenBots < (registerVal6 + registerVal7) then
			Engine.SetDvar("bot_maxAllies", (CoD.GameSettingsUtility.MaxSplitscreenBots / 2.000000))
			Engine.SetDvar("bot_maxAxis", (CoD.GameSettingsUtility.MaxSplitscreenBots / 2.000000))
		end
		if CoD.GameSettingsUtility.MaxSplitscreenBots < registerVal8 then
			Engine.SetDvar("bot_maxFree", CoD.GameSettingsUtility.MaxSplitscreenBots)
		end
		local registerVal11 = Engine.GetPrimaryController()
		CoD.perController[registerVal11].localClientChanged = true
		ForceLobbyButtonUpdate(arg1)
	end
end

function LobbyRemoveLocalClientFromLobby(arg0, arg1)
	local registerVal2 = Engine.GetPrimaryController()
	local registerVal3 = Engine.IsControllerBeingUsed(arg1)
	if arg1 or arg1 == registerVal2 then
		return 
	end
	CoD.LobbyBase.RemoveLocalPlayerFromTheLobby(arg0, arg1)
	local registerVal4 = Engine.GetPrimaryController()
	CoD.perController[registerVal4].localClientChanged = true
	ForceLobbyButtonUpdate(arg1)
	registerVal3 = Engine.GamepadsConnectedIsActive(registerVal2)
	if CoD.isPC and registerVal3 == false then
		CoD.PCUtil.GamepadsMapped(registerVal2)
	end
end

function LobbySplitscreenToggle(arg0, arg1)
	local registerVal3 = LuaUtils.LobbyProcessQueueEmpty()
	if not registerVal3 then
		return 
	end
	registerVal3 = Engine.IsControllerBeingUsed(1.000000)
	if registerVal3 == true then
		LobbyRemoveLocalClientFromLobby(arg0, 1.000000)
	else
		registerVal3 = CoD.LobbyBase.SplitscreenControllersAllowed()
		if not registerVal3 then
			return 
		end
		registerVal3 = Engine.GamepadsConnectedIsActive(1.000000)
		if registerVal3 == true then
			LobbyAddLocalClient(arg0, 1.000000)
		else
			registerVal3 = CoD.PCUtil.GamepadsMapped(1.000000)
			if registerVal3 then
				if arg0.login_splitscreen_player_timer then
					arg0.login_splitscreen_player_timer:close()
					arg0.login_splitscreen_player_timer = nil
				end
				arg0.login_splitscreen_player_count = 0.000000
				local function __FUNC_24121_()
					local registerVal0 = Engine.AreLocalFilesReady(1.000000)
					if registerVal0 == true then
						LobbyAddLocalClient(arg0, 1.000000)
						arg0.login_splitscreen_player_timer:close()
						arg0.login_splitscreen_player_timer = nil
					end
					if arg0.login_splitscreen_player_count and 5.000000 < arg0.login_splitscreen_player_count then
						arg0.login_splitscreen_player_timer:close()
						arg0.login_splitscreen_player_timer = nil
					end
				end

				registerVal3 = LUI.UITimer.newElementTimer(500.000000, false, __FUNC_24121_)
				arg0.login_splitscreen_player_timer = registerVal3
				arg0:addElement(arg0.login_splitscreen_player_timer)
			end
		end
	end
end

function GroupCreationChangePrivacy(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "value"))
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "groups.createGroup.privacy")
	Engine.SetModelValue(registerVal4, registerVal3)
	if registerVal3 == Enum.GroupPrivacy.GROUP_PRIVACY_PUBLIC then
		GroupChangeSetTooltip(arg0, arg2, "PUBLIC")
	else
		if registerVal3 == Enum.GroupPrivacy.GROUP_PRIVACY_PRIVATE then
			GroupChangeSetTooltip(arg0, arg2, "PRIVATE")
		end
	end
end

function GroupsVariableOptionsSet(arg0, arg1, arg2)
	local registerVal4 = arg1.Slider.activeWidget:getModel(arg2, "action")
	local registerVal5 = arg1.Slider.activeWidget:getModel(arg2, "param")
	if registerVal4 then
		local registerVal8 = Engine.GetModelValue(registerVal4)
		if registerVal5 then
			registerVal8 = Engine.GetModelValue(registerVal5)
		else
		end
	end
	if arg1.Slider.activeWidget.action then
		arg1.Slider.activeWidget.action(arg0, arg1.Slider.activeWidget, arg2, arg1.Slider.activeWidget.actionParam, arg1.Slider.activeWidget.gridInfoTable.parentGrid.menu)
	end
end

function GroupChangePrivacy(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "privacy"))
	if registerVal3 ~= arg1.value then
		MarkGroupDataDirty(arg2, "privacy", true)
		local registerVal6 = Engine.GetModel(CoD.perController[arg2].selectedGroup, "privacy")
		Engine.SetModelValue(registerVal6, arg1.value)
	end
end

function GroupChangeSearchParamGroupSize(arg0, arg1, arg2)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.CreateModel(registerVal5, "groups.searchGroupsGroupSize")
	Engine.SetModelValue(registerVal4, arg1.value)
end

function GroupChangeSearchParamGroupType(arg0, arg1, arg2)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.CreateModel(registerVal5, "groups.searchGroupsGroupType")
	Engine.SetModelValue(registerVal4, arg1.value)
end

function GroupChangeJoinApprovalType(arg0, arg1, arg2)
	local registerVal3 = Engine.GetSelectedGroupJoinApprovalType()
	if registerVal3 ~= arg1.value then
		MarkGroupDataDirty(arg2, "joinApprovalType", true)
		local registerVal6 = Engine.GetModel(CoD.perController[arg2].selectedGroup, "joinApprovalType")
		Engine.SetModelValue(registerVal6, arg1.value)
	end
end

function GroupChangeSetTooltip(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "groups.createGroup.tooltip_title")
	local registerVal5 = Engine.GetModelForController(arg1)
	registerVal4 = Engine.CreateModel(registerVal5, "groups.createGroup.tooltip_description")
	Engine.SetModelValue(registerVal3, Engine.LocalizeWithoutLocsMarkers(("GROUPS_CREATE_" .. arg2 .. "_DESC_TITLE")))
	Engine.SetModelValue(registerVal4, Engine.LocalizeWithoutLocsMarkers(("GROUPS_CREATE_" .. arg2 .. "_DESC")))
end

function GroupToggleFriendInvite(arg0, arg1, arg2)
	local registerVal3 = arg1:getParent()
	registerVal3 = registerVal3:getParent()
	local registerVal4 = arg1:getModel(arg2, "selected")
	local registerVal5 = arg1:getModel(arg2, "xuid")
	local registerVal7 = Engine.GetModelForController(arg2)
	local registerVal6 = Engine.GetModel(registerVal7, "groups.createGroup.friends_invited_count")
	registerVal7 = Engine.GetModelValue(registerVal6)
	if arg1 ~= nil and registerVal4 and registerVal5 then
		local registerVal8 = Engine.GetModelValue(registerVal4)
		Engine.SetModelValue(registerVal4, (not ))
		local registerVal9 = Engine.GetModelValue(registerVal5)
		if registerVal8 then
			Engine.SetModelValue(registerVal6, (registerVal7 - 1.000000))
			Engine.AddFriendToInitialGroupInvitesList(registerVal9, true)
		else
			Engine.SetModelValue(registerVal6, (registerVal7 + 1.000000))
			Engine.AddFriendToInitialGroupInvitesList(registerVal9, false)
		end
	end
end

function ClearInitialGroupsInviteList(arg0, arg1, arg2)
	Engine.ClearInitialGroupInviteList()
end

function SetSelectingGroupEmblem(arg0, arg1, arg2)
	CoD.perController[arg0].selectingGroupEmblem = arg1
	CoD.perController[arg0].selectingGroupEmblemForGroupCreation = arg2
end

function SetState(arg0, arg1)
	arg0:setState(arg1)
end

function PulseElementToStateAndBack(arg0, arg1)
	arg0:setState(arg1)
	arg0:setState(arg0.currentState)
end

function SetMenuState(arg0, arg1)
	arg0:setState(arg1)
end

function SetElementState(arg0, arg1, arg2, arg3)
	arg1:setState(arg3)
end

function SetElementStateWithNoTransitionClip(arg0, arg1, arg2, arg3)
	arg1:setState(arg3, true)
end

function SetElementStateByElementName(arg0, arg1, arg2, arg3)
	if arg0[arg1] then
		arg0[arg1]:setState(arg3)
	end
end

function SetElementPropertyByElementName(arg0, arg1, arg2, arg3)
	if arg0[arg1] then
		arg0[arg1][arg2] = arg3
	end
end

function SetElementDataSource(arg0, arg1, arg2)
	if arg0[arg1] then
		arg0[arg1]:setDataSource(arg2)
	end
end

function LockInput(arg0, arg1, arg2)
	if arg2 ~= nil then
		Engine.LockInput(arg1, arg2)
	end
end

function PrepareOpenMenuInSafehouse(arg0)
	if not CoD.isSafehouse then
		return 
	end
	CoD.perController[arg0].inSafehouseMenu = true
	Engine.LockInput(arg0, true)
	Engine.SetUIActive(arg0, true)
end

function PrepareCloseMenuInSafehouse(arg0)
	if not CoD.isSafehouse then
		return 
	end
	CoD.perController[arg0].inSafehouseMenu = nil
	Engine.LockInput(arg0, false)
	Engine.SetUIActive(arg0, false)
end

function SetupAutoHorizontalAlignArabicText(arg0)
	local function __FUNC_258F0_(arg0, arg1)
		local registerVal2 = IsCurrentLanguageReversed()
		if registerVal2 then
			if (arg1 & Enum.LUIAlignment.LUI_ALIGNMENT_LEFT) ~= 0.000000 then
			else
				if (((arg1 & Enum.LUIAlignment.LUI_ALIGNMENT_VERTICAL_MASK) | Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT) & Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT) ~= 0.000000 then
				end
			end
		end
		arg0.setAlignment(arg0, ((((arg1 & Enum.LUIAlignment.LUI_ALIGNMENT_VERTICAL_MASK) | Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT) & Enum.LUIAlignment.LUI_ALIGNMENT_VERTICAL_MASK) | Enum.LUIAlignment.LUI_ALIGNMENT_LEFT))
	end

	arg0.setAlignment = __FUNC_258F0_
	local registerVal2 = arg0:getAlignment()
	if arg0.setAlignment or not registerVal2 then
	end
	arg0:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
end

function ScaleWidgetToLabelCentered(arg0, arg1, arg2)
	if arg1 == nil then
		return 
	end
	local registerVal3, registerVal4, registerVal5, registerVal6 = arg0:getLocalLeftRight()
	local registerVal7, registerVal8, registerVal9, registerVal10 = arg1:getLocalLeftRight()
	local registerVal11 = arg1:getTextWidth()
	arg0:setLeftRight(registerVal3, registerVal4, (((registerVal6 + registerVal5) / 2.000000) - ((registerVal11 + (arg2 * 2.000000)) / 2.000000)), (((registerVal6 + registerVal5) / 2.000000) + ((registerVal11 + (arg2 * 2.000000)) / 2.000000)))
end

function ScaleWidgetToLargerLabelCentered(arg0, arg1, arg2, arg3)
	if arg1 == nil or arg2 == nil then
		return 
	end
	local registerVal4, registerVal5, registerVal6, registerVal7 = arg0:getLocalLeftRight()
	local registerVal9 = arg1:getTextWidth()
	local registerVal8 = math.max(registerVal9, arg2:getTextWidth())
	arg0:setLeftRight(registerVal4, registerVal5, (((registerVal7 + registerVal6) / 2.000000) - ((registerVal8 + (arg3 * 2.000000)) / 2.000000)), (((registerVal7 + registerVal6) / 2.000000) + ((registerVal8 + (arg3 * 2.000000)) / 2.000000)))
end

function ScaleWidgetToLabelCenteredWithMinimum(arg0, arg1, arg2, arg3)
	if arg1 == nil then
		return 
	end
	local registerVal4, registerVal5, registerVal6, registerVal7 = arg0:getLocalLeftRight()
	local registerVal8 = arg1:getTextWidth()
	local registerVal10 = math.max((registerVal8 + (arg2 * 2.000000)), arg3)
	arg0:setLeftRight(registerVal4, registerVal5, (((registerVal7 + registerVal6) / 2.000000) - (registerVal10 / 2.000000)), (((registerVal7 + registerVal6) / 2.000000) + (registerVal10 / 2.000000)))
end

function ScaleWidgetToLabelCenteredWrapped(arg0, arg1, arg2, arg3)
	if arg1 == nil then
		return 
	end
	local registerVal4, registerVal5, registerVal6, registerVal7 = arg0:getLocalLeftRight()
	local registerVal8, registerVal9, registerVal10, registerVal11 = arg1:getLocalLeftRight()
	if not arg0._originalWidth then
		if registerVal8 == 0.000000 and registerVal9 == 1.000000 then
			arg0._originalWidth = (((registerVal7 - registerVal6) + registerVal11) - registerVal10)
		else
			arg0._originalWidth = (registerVal11 - registerVal10)
		end
	end
	local registerVal12, registerVal13 = arg1:getTextWidthAndHeight(arg0._originalWidth)
	arg0:setLeftRight(registerVal4, registerVal5, (((registerVal7 + registerVal6) / 2.000000) - ((registerVal12 + (arg2 * 2.000000)) / 2.000000)), (((registerVal7 + registerVal6) / 2.000000) + ((registerVal12 + (arg2 * 2.000000)) / 2.000000)))
	local registerVal16, registerVal17, registerVal18, registerVal19 = arg0:getLocalTopBottom()
	arg0:setTopBottom(registerVal16, registerVal17, registerVal18, ((registerVal13 + registerVal18) + arg3))
end

function ScaleWidgetToLabelCore(arg0, arg1, arg2, arg3)
	if arg1 == nil then
		return 
	end
	local registerVal4, registerVal5, registerVal6, registerVal7 = arg0:getLocalLeftRight()
	local registerVal8 = arg1:getTextWidth()
	local registerVal9 = Engine.IsCurrentLanguageReversed()
	if registerVal9 and arg3 then
		if 0.000000 < registerVal8 then
			registerVal9, registerVal10, registerVal11, registerVal12 = arg1:getLocalLeftRight()
			arg0.savedWidth = ((registerVal8 + (2.000000 * registerVal11)) + arg2)
			if not arg0.widthOverridden then
				arg0:setLeftRight(registerVal4, registerVal5, (registerVal7 - arg0.savedWidth), registerVal7)
				if (registerVal9 + registerVal10) == 0.000000 then
					arg1:setLeftRight(registerVal9, registerVal10, registerVal11, (registerVal11 + registerVal8))
				else
					if registerVal9 == 0.000000 and registerVal10 == 1.000000 then
						arg1:setLeftRight(registerVal9, registerVal10, registerVal11, registerVal12)
					else
						arg0:setLeftRight(registerVal4, registerVal5, registerVal7, registerVal7)
					end
				end
			end
		end
		return 
	end
	registerVal9, registerVal10, registerVal11, registerVal12 = arg1:getLocalLeftRight()
	if 0.000000 < registerVal8 then
		arg0.savedWidth = ((registerVal8 + (2.000000 * registerVal11)) + arg2)
		if not arg0.widthOverridden then
			arg0:setLeftRight(registerVal4, registerVal5, registerVal6, (registerVal6 + arg0.savedWidth))
		else
			arg0:setLeftRight(registerVal4, registerVal5, registerVal6, registerVal6)
		end
	end
end

function SetStateFromText(arg0, arg1, arg2, arg3)
	local registerVal5 = arg1:getTextWidth()
	if arg1 and registerVal5 ~= 0.000000 then
	end
	arg0:setState(arg2)
end

function ScaleWidgetToLabel(arg0, arg1, arg2)
	ScaleWidgetToLabelCore(arg0, arg1, arg2, true)
end

function ScaleWidgetToLabelLeftJustify(arg0, arg1, arg2)
	ScaleWidgetToLabelCore(arg0, arg1, arg2, false)
end

function ScaleWidgetToLabelWithMinimum(arg0, arg1, arg2, arg3)
	ScaleWidgetToLabelCore(arg0, arg1, arg2, true, arg3)
end

function ScaleWidgetToLabelWrappedWithMinimum(arg0, arg1, arg2, arg3, arg4)
	if arg1 == nil then
		return 
	end
	local registerVal5, registerVal6, registerVal7, registerVal8 = arg0:getLocalLeftRight()
	local registerVal9, registerVal10, registerVal11, registerVal12 = arg1:getLocalLeftRight()
	if not arg0._originalWidth then
		arg0._originalWidth = (registerVal8 - registerVal7)
	end
	local registerVal13 = Engine.IsCurrentLanguageReversed()
	if not registerVal13 then
		arg1:setLeftRight(true, false, registerVal11, (registerVal11 + arg0._originalWidth))
	end
	registerVal13, registerVal14 = arg1:getTextWidthAndHeight(arg0._originalWidth)
	local registerVal15 = math.max(registerVal13, arg4)
	registerVal15 = Engine.IsCurrentLanguageReversed()
	if registerVal15 then
		if 0.000000 < registerVal15 then
			if arg0._originalWidth < ((registerVal15 + (2.000000 * registerVal11)) + arg2) then
			end
			arg0:setLeftRight(registerVal5, registerVal6, (((registerVal8 - ((arg0._originalWidth - (2.000000 * registerVal11)) - arg2)) - registerVal11) - arg2), registerVal8)
			if (registerVal9 + registerVal10) == 0.000000 then
				arg1:setLeftRight(registerVal9, registerVal10, registerVal11, (registerVal11 + ((arg0._originalWidth - (2.000000 * registerVal11)) - arg2)))
			else
				arg0:setLeftRight(registerVal5, registerVal6, registerVal8, registerVal8)
			else
				if arg0._originalWidth < ((arg0._originalWidth - (2.000000 * registerVal11)) - arg2) then
				end
				if 0.000000 < arg0._originalWidth then
					arg0.savedWidth = ((arg0._originalWidth + (2.000000 * registerVal11)) + arg2)
					arg0:setLeftRight(registerVal5, registerVal6, registerVal7, (registerVal7 + arg0.savedWidth))
				else
					arg0:setLeftRight(registerVal5, registerVal6, registerVal7, registerVal7)
				end
			end
		end
	end
	registerVal15, registerVal16, registerVal17, registerVal18 = arg0:getLocalTopBottom()
	arg0:setTopBottom(registerVal15, registerVal16, registerVal17, ((registerVal17 + registerVal14) + arg3))
end

function ScaleWidgetToLabelWrapped(arg0, arg1, arg2, arg3)
	ScaleWidgetToLabelWrappedWithMinimum(arg0, arg1, arg2, arg3, 0.000000)
end

function ScaleWidgetToLabelWrappedUp(arg0, arg1, arg2, arg3)
	if arg1 == nil then
		return 
	end
	local registerVal4, registerVal5, registerVal6, registerVal7 = arg0:getLocalLeftRight()
	local registerVal8, registerVal9, registerVal10, registerVal11 = arg1:getLocalLeftRight()
	if not arg0._originalWidth then
		arg0._originalWidth = (registerVal7 - registerVal6)
	end
	local registerVal12 = Engine.IsCurrentLanguageReversed()
	if not registerVal12 then
		arg1:setLeftRight(true, false, registerVal10, (registerVal10 + arg0._originalWidth))
	end
	registerVal12, registerVal13 = arg1:getTextWidthAndHeight(arg0._originalWidth)
	local registerVal14 = Engine.IsCurrentLanguageReversed()
	if registerVal14 then
		if 0.000000 < registerVal12 then
			if arg0._originalWidth < registerVal12 then
				arg0:setLeftRight(registerVal4, registerVal5, (registerVal7 - arg0._originalWidth), registerVal7)
			else
				arg0.savedWidth = ((arg0._originalWidth + (2.000000 * registerVal10)) + arg2)
				arg0:setLeftRight(registerVal4, registerVal5, (registerVal7 - arg0.savedWidth), registerVal7)
				if (registerVal8 + registerVal9) == 0.000000 then
					arg1:setLeftRight(registerVal8, registerVal9, registerVal10, (registerVal10 + arg0._originalWidth))
				else
					arg0:setLeftRight(registerVal4, registerVal5, registerVal7, registerVal7)
				end
			end
		end
		return 
	else
		if arg0._originalWidth < arg0._originalWidth then
			arg0:setLeftRight(registerVal4, registerVal5, registerVal6, (registerVal6 + arg0._originalWidth))
		else
			if 0.000000 < arg0._originalWidth then
				arg0.savedWidth = ((arg0._originalWidth + (2.000000 * registerVal10)) + arg2)
				arg0:setLeftRight(registerVal4, registerVal5, registerVal6, (registerVal6 + arg0.savedWidth))
			else
				arg0:setLeftRight(registerVal4, registerVal5, registerVal6, registerVal6)
			end
		end
	end
	registerVal14, registerVal15, registerVal16, registerVal17 = arg0:getLocalTopBottom()
	arg0:setTopBottom(registerVal14, registerVal15, ((registerVal17 - registerVal13) - arg3), registerVal17)
end

function ScaleWidgetToLabelWrappedLeftAlign(arg0, arg1, arg2, arg3)
	if not arg1 then
		return 
	end
	local registerVal4, registerVal5, registerVal6, registerVal7 = arg0:getLocalLeftRight()
	local registerVal8, registerVal9, registerVal10, registerVal11 = arg1:getLocalLeftRight()
	if not arg0._originalWidth then
		arg0._originalWidth = (registerVal7 - registerVal6)
	end
	local registerVal12, registerVal13 = arg1:getTextWidthAndHeight()
	local registerVal14 = Engine.IsCurrentLanguageReversed()
	if arg0._originalWidth < registerVal12 or registerVal14 then
	end
	if 0.000000 < arg0._originalWidth then
		arg0.savedWidth = ((arg0._originalWidth + (2.000000 * registerVal10)) + arg2)
		arg0:setLeftRight(true, false, 0.000000, arg0.savedWidth)
	else
		arg0:setLeftRight(registerVal4, registerVal5, registerVal6, registerVal6)
	end
	registerVal14, registerVal15, registerVal16, registerVal17 = arg0:getLocalTopBottom()
	arg0:setTopBottom(registerVal14, registerVal15, registerVal16, ((registerVal13 + registerVal16) + arg3))
end

function ScaleWidgetToLabelWrappedCenterAlign(arg0, arg1, arg2, arg3)
	if not arg1 then
		return 
	end
	local registerVal4, registerVal5, registerVal6, registerVal7 = arg0:getLocalLeftRight()
	local registerVal8, registerVal9, registerVal10, registerVal11 = arg1:getLocalLeftRight()
	if not arg0._originalWidth then
		arg0._originalWidth = (registerVal7 - registerVal6)
	end
	local registerVal12, registerVal13 = arg1:getTextWidthAndHeight(arg0._originalWidth)
	if arg0._originalWidth < registerVal12 then
	end
	if 0.000000 < arg0._originalWidth then
		arg0.savedWidth = ((arg0._originalWidth + (2.000000 * registerVal10)) + arg2)
		arg0:setLeftRight(false, false, (-arg0.savedWidth / 2.000000), (arg0.savedWidth / 2.000000))
	else
		arg0:setLeftRight(registerVal4, registerVal5, registerVal6, registerVal6)
	end
	local registerVal14, registerVal15, registerVal16, registerVal17 = arg0:getLocalTopBottom()
	arg0:setTopBottom(registerVal14, registerVal15, registerVal16, ((registerVal13 + registerVal16) + arg3))
end

function ScaleWidgetToLabelWrappedRightAlign(arg0, arg1, arg2, arg3)
	if not arg1 then
		return 
	end
	local registerVal4, registerVal5, registerVal6, registerVal7 = arg0:getLocalLeftRight()
	local registerVal8, registerVal9, registerVal10, registerVal11 = arg1:getLocalLeftRight()
	if not arg0._originalWidth then
		arg0._originalWidth = (registerVal7 - registerVal6)
	end
	local registerVal12, registerVal13 = arg1:getTextWidthAndHeight(arg0._originalWidth)
	if arg0._originalWidth < registerVal12 then
	end
	if 0.000000 < arg0._originalWidth then
		arg0.savedWidth = ((arg0._originalWidth + (2.000000 * registerVal10)) + arg2)
		arg0:setLeftRight(false, true, -arg0.savedWidth, 0.000000)
	else
		arg0:setLeftRight(registerVal4, registerVal5, registerVal6, registerVal6)
	end
	local registerVal14, registerVal15, registerVal16, registerVal17 = arg0:getLocalTopBottom()
	arg0:setTopBottom(registerVal14, registerVal15, registerVal16, ((registerVal13 + registerVal16) + arg3))
end

function UpdateWidgetHeightToMultilineText(arg0, arg1, arg2)
	local registerVal3, registerVal4 = arg1:getTextWidthAndHeight()
	arg0:setHeight((registerVal4 + (arg2 * 2.000000)))
end

function UpdateWidgetHeightToMultilineTextWithMinimum(arg0, arg1, arg2, arg3)
	local registerVal4, registerVal5 = arg1:getTextWidthAndHeight()
	arg0:setHeight(math.max((registerVal5 + (arg2 * 2.000000)), arg3))
end

function OverrideWidgetWidth(arg0, arg1)
	local registerVal2, registerVal3, registerVal4, registerVal5 = arg0:getLocalLeftRight()
	arg0.savedWidth = (registerVal5 - registerVal4)
	arg0.widthOverridden = true
	if registerVal3 == 0.500000 and registerVal2 == 0.500000 then
		arg0.savedCenter = ((registerVal4 + registerVal5) / 2.000000)
		arg0:setLeftRight(registerVal2, registerVal3, (arg0.savedCenter - (arg1 / 2.000000)), (arg0.savedCenter + (arg1 / 2.000000)))
	else
		arg0.savedCenter = nil
		arg0:setLeftRight(registerVal2, registerVal3, registerVal4, (registerVal4 + arg1))
	end
	local registerVal6 = arg0:getParent()
	if registerVal6 then
		registerVal6:setLayoutCached(false)
	end
end

function RestoreWidgetWidth(arg0)
	if arg0.savedWidth == nil then
		return 
	end
	arg0.widthOverridden = nil
	local registerVal1, registerVal2, registerVal3, registerVal4 = arg0:getLocalLeftRight()
	if arg0.savedCenter == nil then
		arg0:setLeftRight(registerVal1, registerVal2, registerVal3, (registerVal3 + arg0.savedWidth))
	else
		arg0:setLeftRight(registerVal1, registerVal2, (arg0.savedCenter - (arg0.savedWidth / 2.000000)), (arg0.savedCenter + (arg0.savedWidth / 2.000000)))
	end
end

function SetWidth(arg0, arg1)
	local registerVal2 = arg0:getWidth()
	arg0.savedWidth = registerVal2
	arg0:setWidth(arg1)
end

function ScaleToElementWidth(arg0, arg1)
	local registerVal2, registerVal3, registerVal4, registerVal5 = arg1:getLocalLeftRight()
	arg0:setWidth((registerVal5 - registerVal4))
end

function TrimLabelIfLanguageReversed(arg0, arg1)
	local registerVal2 = Engine.IsCurrentLanguageReversed()
	if registerVal2 then
		if arg1 == nil then
			return 
		end
		registerVal2, registerVal3, registerVal4, registerVal5 = arg1:getLocalLeftRight()
		local registerVal6 = arg1:getTextWidth()
		arg1:setLeftRight(registerVal2, registerVal3, registerVal4, ((registerVal4 + registerVal6) + 2.000000))
		return 
	end
end

function ScaleParentWidgetToLabel(arg0, arg1, arg2)
	local registerVal3 = arg0:getParent()
	if arg1 == nil or registerVal3 == nil then
		return 
	end
	if registerVal3._originalWidth == nil then
		local registerVal4, registerVal5, registerVal6, registerVal7 = registerVal3:getLocalLeftRight()
		registerVal3._originalWidth = (registerVal7 - registerVal6)
	end
	registerVal4 = Engine.IsCurrentLanguageReversed()
	if registerVal4 then
		registerVal4, registerVal5, registerVal6, registerVal7 = arg0:getLocalLeftRight()
		local registerVal8, registerVal9, registerVal10, registerVal11 = registerVal3:getLocalLeftRight()
		local registerVal12, registerVal13, registerVal14, registerVal15 = arg1:getLocalLeftRight()
		local registerVal16 = arg1:getTextWidth()
		registerVal3:setLeftRight(registerVal8, registerVal9, (((registerVal11 - registerVal16) - (2.000000 * (registerVal6 + registerVal14))) - arg2), registerVal11)
		if (registerVal12 + registerVal13) == 0.000000 then
			arg1:setLeftRight(registerVal12, registerVal13, registerVal14, ((registerVal14 + registerVal16) + 2.000000))
		end
		return 
	end
	registerVal4, registerVal5, registerVal6, registerVal7 = arg0:getLocalLeftRight()
	registerVal8, registerVal9, registerVal10, registerVal11 = registerVal3:getLocalLeftRight()
	registerVal12, registerVal13, registerVal14, registerVal15 = arg1:getLocalLeftRight()
	registerVal16 = arg1:getTextWidth()
	registerVal3:setLeftRight(registerVal8, registerVal9, registerVal10, (((registerVal10 + registerVal16) + (2.000000 * (registerVal6 + registerVal14))) + arg2))
end

function ScaleParentWidgetToElementLabel(arg0, arg1, arg2)
	if arg0[arg1] then
		ScaleParentWidgetToLabel(arg0, arg0[arg1], arg2)
	end
end

function RestoreParentToOriginalWidth(arg0)
	local registerVal1 = arg0:getParent()
	if registerVal1 and registerVal1._originalWidth ~= nil then
		local registerVal2, registerVal3, registerVal4, registerVal5 = registerVal1:getLocalLeftRight()
		registerVal1:setLeftRight(registerVal2, registerVal3, registerVal4, (registerVal4 + registerVal1._originalWidth))
	end
end

function ScaleWidgetToLabelRightAligned(arg0, arg1, arg2)
	if arg1 == nil then
		return 
	end
	local registerVal3 = Engine.IsCurrentLanguageReversed()
	if registerVal3 then
		registerVal3, registerVal4, registerVal5, registerVal6 = arg0:getLocalLeftRight()
		local registerVal7, registerVal8, registerVal9, registerVal10 = arg1:getLocalLeftRight()
		local registerVal11 = arg1:getTextWidth()
		if (registerVal7 + registerVal8) == 0.000000 then
			arg0:setLeftRight(registerVal3, registerVal4, (((registerVal6 - registerVal11) - (2.000000 * registerVal9)) - arg2), registerVal6)
		else
			if registerVal8 == 1.000000 then
				arg0:setLeftRight(registerVal3, registerVal4, (((registerVal6 - registerVal11) + (2.000000 * registerVal10)) - arg2), registerVal6)
				arg1:setLeftRight(registerVal7, registerVal8, ((registerVal10 - registerVal11) - arg2), registerVal10)
			else
				registerVal3, registerVal4, registerVal5, registerVal6 = arg0:getLocalLeftRight()
				registerVal7, registerVal8, registerVal9, registerVal10 = arg1:getLocalLeftRight()
				registerVal11 = arg1:getTextWidth()
				arg0:setLeftRight(registerVal3, registerVal4, (((registerVal6 - registerVal11) + (2.000000 * registerVal10)) - arg2), registerVal6)
			end
		end
	end
end

function ScaleWidgetToLabelRightAlignedNoReverse(arg0, arg1, arg2)
	if arg1 == nil then
		return 
	end
	local registerVal3, registerVal4, registerVal5, registerVal6 = arg0:getLocalLeftRight()
	local registerVal7, registerVal8, registerVal9, registerVal10 = arg1:getLocalLeftRight()
	local registerVal11 = arg1:getTextWidth()
	arg0:setLeftRight(registerVal3, registerVal4, (((registerVal6 - registerVal11) + (2.000000 * registerVal10)) - arg2), registerVal6)
end

function ScaleToFitImageElement(arg0, arg1, arg2)
	local registerVal4, registerVal5 = arg0[arg2]:getImageDimensions()
	if arg0[arg2] and 0.000000 < registerVal4 and 0.000000 < registerVal5 then
		local registerVal6, registerVal7, registerVal8 = arg0[arg2]:getLocalLeftRight()
		local registerVal9, registerVal10, registerVal11, registerVal12 = arg0[arg2]:getLocalTopBottom()
		local registerVal13, registerVal14, registerVal15, registerVal16 = arg1:getLocalLeftRight()
		local registerVal17, registerVal18, registerVal19, registerVal20 = arg1:getLocalTopBottom()
		local registerVal23 = math.floor(((((registerVal8 * 2.000000) + ((((registerVal20 + registerVal12) - registerVal11) * registerVal4) / registerVal5)) - 1.000000) / 2.000000))
		arg1:setLeftRight(true, false, registerVal15, (registerVal23 * 2.000000))
		arg1:setTopBottom(true, false, registerVal19, registerVal20)
	end
end

function CloseInGameMenu(arg0, arg1)
	CoD.InGameMenu.CloseAllInGameMenus(arg0, arg1)
end

function SetDOAGameMode(arg0, arg1, arg2)
	Engine.SetDvar("cp_queued_level", "")
	SetMap(arg2, "cp_doa_bo3", false)
	Engine.SetGametype("doa")
	Engine.SetDvar("ui_useloadingmovie", "1")
	Engine.SetDvar("skipto", "")
	Engine.SetDvar("sv_saveGameSkipto", "")
	Engine.SetDvar("ui_blocksaves", "1")
	local registerVal3 = IsLive()
	if not registerVal3 then
		Engine.SetLobbyUIScreen(LobbyData.UITargets.UI_DOALOBBYLANGAME.id)
	else
		Engine.SetLobbyUIScreen(LobbyData.UITargets.UI_DOALOBBYONLINE.id)
	end
end

function StartDOAGame(arg0, arg1, arg2)
	local registerVal3 = Engine.GetLobbyLocalClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if 4.000000 < registerVal3 then
		registerVal3 = {}
		registerVal3.controller = arg2
		registerVal3.maxLocalClients = 4.000000
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "LobbyLocalClientWarning", registerVal3)
		return 
	end
	SetDOAGameMode(arg0, arg1, arg2)
	CoD.LobbyBase.LaunchGame(arg0, arg2, Enum.LobbyType.LOBBY_TYPE_GAME)
end

function StartNewGame(arg0, arg1, arg2)
	local registerVal3 = CheckNavRestrictions(arg0, arg1, arg2, arg0)
	if registerVal3 then
		return 
	end
	registerVal3 = Engine.GetLobbyLocalClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if 2.000000 < registerVal3 then
		registerVal3 = {}
		registerVal3.controller = arg2
		registerVal3.maxLocalClients = 2.000000
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "LobbyLocalClientWarning", registerVal3)
		return 
	end
	Dvar.lobby_maxLocalPlayers:set(2.000000)
	Engine.SetDvar("cp_queued_level", "")
	registerVal3 = LuaUtils.GetDefaultMap(LobbyData.GetCurrentMenuTarget())
	SetMap(arg2, registerVal3, false)
	Engine.SetDvar("ui_useloadingmovie", "1")
	Engine.SetDvar("skipto", "")
	Engine.SetDvar("sv_saveGameSkipto", "")
	Engine.SetDvar("ui_blocksaves", "0")
	CoD.LobbyBase.LaunchGame(arg0, arg2, Enum.LobbyType.LOBBY_TYPE_GAME)
end

function ReplaySelectedMission(arg0, arg1, arg2)
	Engine.SetDvar("ui_useloadingmovie", "1")
	Engine.SetDvar("skipto", "")
	Engine.SetDvar("sv_saveGameSkipto", "")
	Engine.SetDvar("ui_blocksaves", "1")
	CoD.LobbyBase.LaunchGame(arg0, arg2, Enum.LobbyType.LOBBY_TYPE_GAME)
end

function ResumeFromCheckpoint(arg0, arg1, arg2)
	local registerVal3 = Engine.GetLobbyLocalClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if 2.000000 < registerVal3 then
		registerVal3 = {}
		registerVal3.controller = arg2
		registerVal3.maxLocalClients = 2.000000
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "LobbyLocalClientWarning", registerVal3)
		return 
	end
	Dvar.lobby_maxLocalPlayers:set(2.000000)
	Engine.SetDvar("cp_queued_level", "")
	registerVal3 = Engine.IsCampaignModeZombies()
	if registerVal3 then
		local registerVal5 = Engine.GetSavedMap()
		SetMap(arg2, registerVal5, false)
	else
		registerVal3 = Engine.GetSavedMapQueuedMap()
		if registerVal3 ~= "" then
			SetMap(arg2, registerVal3, true)
		else
			local registerVal6 = Engine.GetSavedMap()
			SetMap(arg2, registerVal6, false)
		end
	end
	registerVal3 = Engine.GetSavedMapSkipto()
	Engine.RestoreSavedWorldObject()
	Engine.SetDvar("ui_useloadingmovie", "1")
	Engine.SetDvar("skipto", registerVal3)
	Engine.SetDvar("sv_saveGameSkipto", registerVal3)
	Engine.SetDvar("ui_blocksaves", "0")
	CoD.LobbyBase.LaunchGame(arg0, arg2, Enum.LobbyType.LOBBY_TYPE_GAME)
end

function GotoSafehouse(arg0, arg1, arg2)
	local registerVal3 = Engine.GetLobbyLocalClientCount(Enum.LobbyType.LOBBY_TYPE_PRIVATE)
	if 2.000000 < registerVal3 then
		registerVal3 = {}
		registerVal3.controller = arg2
		registerVal3.maxLocalClients = 2.000000
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "LobbyLocalClientWarning", registerVal3)
		return 
	end
	Dvar.lobby_maxLocalPlayers:set(2.000000)
	registerVal3 = Engine.GetSavedMapQueuedMap()
	if registerVal3 ~= "" then
		SetMap(arg2, registerVal3, true)
	else
		local registerVal6 = Engine.GetSavedMap()
		SetMap(arg2, registerVal6, true)
	end
	Engine.RestoreSavedWorldObject()
	Engine.SetDvar("ui_useloadingmovie", "1")
	Engine.SetDvar("skipto", "")
	Engine.SetDvar("sv_saveGameSkipto", "")
	Engine.SetDvar("ui_blocksaves", "1")
	CoD.LobbyBase.LaunchGame(arg0, arg2, Enum.LobbyType.LOBBY_TYPE_GAME)
end

function SetLobbyServerBrowserFilterForE3(arg0, arg1, arg2)
	local registerVal4 = Dvar.ui_execdemo_cp:get()
	if registerVal4 == true then
	else
		registerVal4 = Dvar.ui_execdemo_e3:get()
		registerVal4 = Dvar.ui_execdemo_e3_host:get()
		if registerVal4 == true or registerVal4 == true then
		end
	end
	if Enum.LobbyMainMode.LOBBY_MAINMODE_MP == nil then
		return 
	end
	Engine.LobbyServerListSetMainModeFilter(Enum.LobbyMainMode.LOBBY_MAINMODE_MP)
	CoD.LobbyBase.LobbyLANServerBrowserFilterUpdateEvent(arg0, arg2)
end

function CloseAllInGameMenus(arg0, arg1)
	local registerVal2 = Dvar.ui_isSaving:get()
	if not registerVal2 then
		local registerVal4 = {}
		registerVal4.name = "close_all_ingame_menus"
		registerVal4.controller = arg1
		CoD.InGameMenu.CloseAllInGameMenus(arg0, registerVal4)
	end
end

function GoBackThroughAllAndClose(arg0, arg1)
	local registerVal2 = arg0:getParent()
	registerVal2, registerVal3 = CoD.Menu.GetNavigationForMenu(arg1, registerVal2.menuName)
	Close(registerVal2, arg1)
	return 
	local registerVal4 = GoBack(registerVal2, arg1)
end

function GoBackThroughAll(arg0, arg1)
	local registerVal2 = GoBack(arg0, arg1)
end

function LobbyGoBack(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.lobbyNav")
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal2 and registerVal3 == LobbyData.UITargets.UI_MODESELECT.id then
		registerVal3 = IsPC()
		if registerVal3 then
			CoD.LobbyBase.LobbyQuitOrLeaveParty(arg0, arg1)
			return true
		else
			DisableAllMenuInput(arg0, true)
		end
	end
	CoD.LobbyBase.LobbyGoBack(arg0, arg1)
	arg0:playSound("menu_go_back")
end

function DisplayPlayGoWarning(arg0, arg1)
	local registerVal9 = {}
	registerVal9 = {"MPUI_OK"}
	local function __FUNC_29BB5_(arg0)
		return true
	end

	local registerVal2 = CoD.OverlayUtility.CreateOverlay(arg1, arg0, "GenericModalDialog", "", "MENU_STILLDOWNLOADING", "t7_icon_connect_overlays_bkg", registerVal9, __FUNC_29BB5_)
	registerVal2.anyControllerAllowed = true
	registerVal2.unusedControllerAllowed = true
end

function LobbyBeginPlay(arg0, arg1)
	local registerVal2 = IsOrbis()
	registerVal2 = IsDurango()
	if not arg1 or registerVal2 then
		registerVal2 = Engine.IsMpStillDownloading()
		registerVal2 = Engine.IsZmStillDownloading()
		registerVal2 = Engine.IsCpStillDownloading()
		if not registerVal2 and not arg1 or registerVal2 then
			if not CoD.perController[arg1].hasShownPlaygoWarning then
				CoD.perController[arg1].hasShownPlaygoWarning = true
				DisplayPlayGoWarning(arg0, arg1)
				return false
			end
		end
	end
	CoD.LobbyBase.BeginPlay(arg0, arg1)
	return true
end

function SizeToSafeArea(arg0, arg1)
	arg0:sizeToSafeArea(arg1)
end

function PartyHostSetState(arg0, arg1, arg2)
	Engine.PartyHostSetUIState(arg2)
end

function GoBackMultiple(arg0, arg1, arg2)
	local registerVal4 = tonumber(arg2)
	if registerVal4 == nil then
		return 
	end
	local registerVal5 = GoBack(arg0, arg1)
	return registerVal5
end

function GoBack(arg0, arg1)
	if Rat and Rat.DisableGoBack then
		return 
	end
	local registerVal2 = arg0:getParent()
	registerVal2, registerVal3 = CoD.Menu.GetNavigationForMenu(arg1, registerVal2.menuName)
	registerVal2.previousMenuName = CoD.MenuNavigation[arg1][registerVal2][(registerVal3 - 1.000000)]
	CoD.MenuNavigation[arg1][registerVal2][registerVal3] = nil
	if registerVal2 and registerVal3 and #CoD.MenuNavigation[arg1][registerVal2] == 0.000000 then
		table.remove(CoD.MenuNavigation[arg1], registerVal2)
	else
	end
	registerVal2:saveState()
	return registerVal2:goBack(arg1)
end

function DelayGoBack(arg0, arg1)
	local function __FUNC_2A2F0_()
		GoBack(arg0, arg1)
	end

	local registerVal2 = LUI.UITimer.newElementTimer(0.000000, true, __FUNC_2A2F0_)
	arg0:addElement(registerVal2)
end

function GoBackToMenu(arg0, arg1, arg2)
	local registerVal3, registerVal4 = CoD.Menu.GetNavigationForMenuToMenu(arg1, arg0.menuName, arg2)
	local registerVal5, registerVal6 = CoD.Menu.GetNavigationForMenu(arg1, arg0.menuName)
	local registerVal7, registerVal8 = CoD.Menu.GetNavigationForMenu(arg1, arg2)
	if registerVal5 and registerVal6 and arg1 or not registerVal8 then
		return GoBack(arg0, arg1)
	end
	if arg0.menuName == arg2 then
		return 
	end
	if arg0.occludedMenu and arg0.occludedMenu.menuName == arg2 then
		arg0.previousMenuName = nil
		table.remove(CoD.MenuNavigation[arg1], registerVal5)
	else
		if registerVal3 and registerVal4 then
			arg0.previousMenuName = CoD.MenuNavigation[arg1][registerVal3][registerVal4]
			for index10=(registerVal4 + 1.000000), #CoD.MenuNavigation[arg1][registerVal3], 1.000000 do
				CoD.MenuNavigation[arg1][registerVal3][index10] = nil
			end
			if #CoD.MenuNavigation[arg1][registerVal3] == 0.000000 then
				table.remove(CoD.MenuNavigation[arg1], registerVal3)
			end
			table.remove(CoD.MenuNavigation[arg1], registerVal5)
			if registerVal5 ~= registerVal3 and arg0.occludedMenu then
				for index10=registerVal5, (registerVal7 + 1.000000), -1.000000 do
					if not arg0.occludedMenu then
						return arg0
					end
					local registerVal14 = GoBackToMenu(arg0, arg1, arg0.occludedMenu.menuName)
				end
				if registerVal14.menuName == arg2 then
					return registerVal14
				else
					return GoBackToMenu(registerVal14, arg1, arg2)
				end
			end
		end
	end
	arg0:saveState()
	return arg0:goBack(arg1)
end

function GoBackAndUpdateStateOnPreviousMenu(arg0, arg1)
	local registerVal2 = GoBack(arg0, arg1)
	local registerVal5 = {}
	registerVal5.name = "update_state"
	registerVal5.controller = arg1
	registerVal2:processEvent(registerVal5)
	return registerVal2
end

function GoBackAndUpdateNavigation(arg0, arg1, arg2)
	local registerVal3 = GoBack(arg0, arg2)
	if CoD.CACUtility.CustomClass_LastClassNum and registerVal3.menuName == "CustomClass" then
		registerVal3:navigateTo(CoD.CACUtility.CustomClass_LastSelection)
		local registerVal6 = {}
		registerVal6.name = "update_state"
		registerVal6.controller = arg2
		registerVal3:processEvent(registerVal6)
	end
	return registerVal3
end

function GoBackToCustomClassMenu(arg0, arg1)
	local registerVal2 = GoBackToMenu(arg0, arg1, "CustomClass")
	local registerVal5 = {}
	registerVal5.name = "update_state"
	registerVal5.controller = arg1
	registerVal2:processEvent(registerVal5)
	if registerVal2 and registerVal2.menuName == "CustomClass" then
		SetFocusToLoadoutWidgetAfterSetItem(registerVal2)
	end
end

function Close(arg0, arg1)
	local registerVal2 = arg0:getParent()
	registerVal2, registerVal3 = CoD.Menu.GetNavigationForMenu(arg1, registerVal2.menuName)
	registerVal2.previousMenuName = CoD.MenuNavigation[arg1][registerVal2][(registerVal3 - 1.000000)]
	CoD.MenuNavigation[arg1][registerVal2][registerVal3] = nil
	if registerVal2 and registerVal3 and #CoD.MenuNavigation[arg1][registerVal2] == 0.000000 then
		table.remove(CoD.MenuNavigation[arg1], registerVal2)
	end
	registerVal2:saveState()
	registerVal2:close()
end

function NavigateToLobby(arg0, arg1, arg2, arg3)
	CoD.LobbyBase.NavigateToLobby(arg0, arg1, arg2, arg3)
end

function NavigateToLobby_OccludedMenu(arg0, arg1, arg2, arg3, arg4)
	if arg0.occludedMenu ~= nil then
		NavigateToLobby(arg0.occludedMenu, arg3, false, arg2)
	end
end

function NavigateToLobby_SelectionList(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CheckNavRestrictions(arg0, arg1, arg2, arg4)
	if registerVal5 then
		return 
	end
	if arg3 == "MPLobbyMain" then
		registerVal5 = Engine.PushAnticheatMessageToUI(arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.MP)
		if registerVal5 then
			DisplayAnticheatMessage(arg0, arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.MP, "", "")
			return 
		end
		for index5=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
			local registerVal9 = CheckIfFeatureIsBanned(index5, LuaEnums.FEATURE_BAN.LIVE_MP)
			if registerVal9 then
				LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(index5, LuaEnums.FEATURE_BAN.LIVE_MP))
				return 
			end
		end
		registerVal5 = Engine.GetUsedControllerCount()
		if 1.000000 < registerVal5 then
			for index6=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
				local registerVal10 = CheckIfFeatureIsBanned(index6, LuaEnums.FEATURE_BAN.MP_SPLIT_SCREEN)
				if registerVal10 then
					LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(index6, LuaEnums.FEATURE_BAN.MP_SPLIT_SCREEN))
					return 
				end
			end
		end
	end
	if arg3 == "ZMLobbyOnline" then
		registerVal5 = Engine.PushAnticheatMessageToUI(arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.ZM)
		if registerVal5 then
			DisplayAnticheatMessage(arg0, arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.ZM, "", "")
			return 
		end
		for index5=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
			registerVal9 = CheckIfFeatureIsBanned(index5, LuaEnums.FEATURE_BAN.LIVE_ZM)
			if registerVal9 then
				LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(index5, LuaEnums.FEATURE_BAN.LIVE_ZM))
				return 
			end
		end
		registerVal5 = Engine.GetUsedControllerCount()
		if 1.000000 < registerVal5 then
			for index6=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
				registerVal10 = CheckIfFeatureIsBanned(index6, LuaEnums.FEATURE_BAN.ZM_SPLIT_SCREEN)
				if registerVal10 then
					LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(index6, LuaEnums.FEATURE_BAN.ZM_SPLIT_SCREEN))
					return 
				end
			end
		end
		local registerVal6 = Engine.StorageGetBuffer(arg2, Enum.StorageFileType.STORAGE_ZM_LOADOUTS)
		if registerVal6 and registerVal6.cacLoadouts then
			for index9=0.000000, (#registerVal6.cacLoadouts.variant - 1.000000), 1.000000 do
				registerVal6.cacLoadouts.variant[index9].variantIndex:set(index9)
			end
		end
	end
	if arg3 ~= "CPLobbyOnline" and arg3 == "CPDOALobbyOnline" or arg3 == "CP2LobbyOnline" then
		for index5=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
			registerVal9 = CheckIfFeatureIsBanned(index5, LuaEnums.FEATURE_BAN.LIVE_CP)
			if registerVal9 then
				LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(index5, LuaEnums.FEATURE_BAN.LIVE_CP))
				return 
			end
		end
		registerVal5 = Engine.GetUsedControllerCount()
		if 1.000000 < registerVal5 then
			for index6=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
				registerVal10 = CheckIfFeatureIsBanned(index6, LuaEnums.FEATURE_BAN.CP_SPLIT_SCREEN)
				if registerVal10 then
					LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(index6, LuaEnums.FEATURE_BAN.CP_SPLIT_SCREEN))
					return 
				end
			end
		end
	end
	if arg3 == "MPLobbyOnline" then
		for index5=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
			registerVal9 = CheckIfFeatureIsBanned(index5, LuaEnums.FEATURE_BAN.MP_PUBLIC_MATCH)
			if registerVal9 then
				LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(index5, LuaEnums.FEATURE_BAN.MP_PUBLIC_MATCH))
				return 
			end
		end
	end
	if arg3 == "MPLobbyOnlineArena" then
		registerVal5 = Engine.PushAnticheatMessageToUI(arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.ARENA)
		if registerVal5 then
			DisplayAnticheatMessage(arg0, arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.ARENA, "", "")
			return 
		end
		for index5=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
			registerVal9 = CheckIfFeatureIsBanned(index5, LuaEnums.FEATURE_BAN.ARENA_GAMEPLAY)
			if registerVal9 then
				LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(index5, LuaEnums.FEATURE_BAN.ARENA_GAMEPLAY))
				return 
			end
		end
	end
	registerVal5 = Engine.GetPlaylistID()
	registerVal6 = Engine.GetPlaylistMaxPartySize(registerVal5)
	local registerVal7 = Engine.GetLobbyClientCount(Enum.LobbyModule.LOBBY_MODULE_HOST, Enum.LobbyType.LOBBY_TYPE_PRIVATE, Enum.LobbyClientType.LOBBY_CLIENT_TYPE_ALL)
	if arg3 == "MPLobbyOnlineArenaGame" and registerVal6 < registerVal7 then
		LuaUtils.UI_ShowErrorMessageDialog(arg2, Engine.Localize("MENU_ARENA_TOO_MANY_PLAYERS", registerVal6))
		return 
	end
	if arg3 == "FRLobbyOnlineGame" then
		for index5=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
			registerVal9 = CheckIfFeatureIsBanned(index5, LuaEnums.FEATURE_BAN.FREERUN)
			if registerVal9 then
				LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(index5, LuaEnums.FEATURE_BAN.FREERUN))
				return 
			end
		end
	end
	if arg3 == "ZMLobbyOnlineCustomGame" then
		registerVal5 = Engine.GetProfileVarInt(arg2, "com_privategame_ranked_zm")
		if registerVal5 == 0.000000 then
		end
		Dvar.zm_private_rankedmatch:set(true)
		Engine.SetPlaylistID(150.000000)
		Engine.RunPlaylistRules(arg2)
	end
	registerVal5 = LobbyData:UITargetFromName(arg3)
	registerVal6 = Engine.DvarBool(nil, "arena_maintenance")
	if registerVal5.eGameModes == Enum.eGameModes.MODE_GAME_LEAGUE and registerVal6 == true then
		LuaUtils.UI_ShowErrorMessageDialog(arg2, "MENU_ARENA_MAINTENANCE_DESC", "MENU_ARENA_MAINTENANCE_CAPS")
		return 
	end
	registerVal6 = Engine.DvarBool(0.000000, "probation_public_enabled")
	registerVal7 = Engine.DvarBool(0.000000, "probation_league_enabled")
	if registerVal5.isGame then
		if registerVal5.eGameModes == Enum.eGameModes.MODE_GAME_MATCHMAKING_PLAYLIST or registerVal5.eGameModes == Enum.eGameModes.MODE_GAME_LEAGUE then
			Engine.ProbationCheckForProbation(arg2, registerVal5.eGameModes)
			local registerVal8 = Engine.LobbyClient_GetProbationTime(arg2, registerVal5.eGameModes)
			if 0.000000 < registerVal8 then
				registerVal9 = Engine.SecondsAsTime(registerVal8)
				if registerVal6 and registerVal5.eGameModes == Enum.eGameModes.MODE_GAME_MATCHMAKING_PLAYLIST then
					local registerVal12 = Engine.Localize("MENU_PROBATION_GIVEN_PUBLIC_MATCH", registerVal9)
					LuaUtils.UI_ShowErrorMessageDialog(arg2, registerVal12, "MENU_PROBATION_CAPS")
					return 
				else
					registerVal12 = Engine.Localize("MENU_PROBATION_GIVEN_ARENA_MATCH", registerVal9)
					LuaUtils.UI_ShowErrorMessageDialog(arg2, registerVal12, "MENU_PROBATION_CAPS")
					return 
					registerVal9 = Engine.LobbyHost_AnyClientInProbationForGameMode(registerVal5.eGameModes)
					if registerVal7 and registerVal5.eGameModes == Enum.eGameModes.MODE_GAME_LEAGUE and registerVal9 then
						if registerVal6 and registerVal5.eGameModes == Enum.eGameModes.MODE_GAME_MATCHMAKING_PLAYLIST then
							LuaUtils.UI_ShowErrorMessageDialog(arg2, "MENU_PROBATION_PARTY_PUBLIC_MATCH")
							return 
						else
							if registerVal7 and registerVal5.eGameModes == Enum.eGameModes.MODE_GAME_LEAGUE then
								LuaUtils.UI_ShowErrorMessageDialog(arg2, "MENU_PROBATION_PARTY_ARENA_MATCH")
								return 
							end
						end
					end
				end
			end
		end
	end
	UpdateDifficulty(arg0, arg3, arg2)
	NavigateToLobby(arg4, arg3, false, arg2)
end

function NavigateToLobby_FirstTimeFlowMP(arg0, arg1, arg2, arg3)
	local registerVal4 = IsLAN()
	if registerVal4 then
		NavigateToLobby_SelectionList(arg0, arg1, arg2, LobbyData.UITargets.UI_MPLOBBYLANGAME.name, arg3)
	else
		NavigateToLobby_SelectionList(arg0, arg1, arg2, LobbyData.UITargets.UI_MPLOBBYMAIN.name, arg3)
	end
end

function NavigateToLobby_FirstTimeFlowCP(arg0, arg1, arg2, arg3)
	local registerVal4 = IsLAN()
	if registerVal4 then
		NavigateToLobby_SelectionList(arg0, arg1, arg2, LobbyData.UITargets.UI_CPLOBBYLANGAME.name, arg3)
	else
		NavigateToLobby_SelectionList(arg0, arg1, arg2, LobbyData.UITargets.UI_CPLOBBYONLINE.name, arg3)
	end
end

function NavigateToLobby_SelectionListCampaignZombies(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = IsLAN()
	if registerVal5 then
		NavigateToLobby_SelectionList(arg0, arg1, arg2, LobbyData.UITargets.UI_CP2LOBBYLANGAME.name, arg4)
	else
		NavigateToLobby_SelectionList(arg0, arg1, arg2, LobbyData.UITargets.UI_CP2LOBBYONLINE.name, arg4)
	end
end

function NavigateToLobby_SelectionListDOA(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = IsLAN()
	if registerVal5 then
		NavigateToLobby_SelectionList(arg0, arg1, arg2, LobbyData.UITargets.UI_DOALOBBYLANGAME.name, arg4)
	else
		NavigateToLobby_SelectionList(arg0, arg1, arg2, LobbyData.UITargets.UI_DOALOBBYONLINE.name, arg4)
	end
end

function NavigateToMenu(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getParent()
	if not registerVal4 then
		return 
	end
	if not CoD.MenuNavigation then
		CoD.MenuNavigation = {}
	end
	if not CoD.MenuNavigation[arg3] then
		local registerVal5 = {}
		local registerVal6 = {}
		registerVal6 = {registerVal4.menuName}
		registerVal5 = {registerVal6}
		CoD.MenuNavigation[arg3] = registerVal5
	end
	registerVal4, registerVal5 = CoD.Menu.GetNavigationForMenu(arg3, registerVal4.menuName)
	if arg1 or not registerVal5 then
		local registerVal7 = {}
		local registerVal8 = {}
		registerVal8 = {registerVal4.menuName}
		registerVal7 = {registerVal8}
		CoD.MenuNavigation[arg3] = registerVal7
		registerVal6, registerVal7 = CoD.Menu.GetNavigationForMenu(arg3, registerVal4.menuName)
	end
	local registerVal9 = registerVal4:getParent()
	registerVal4:saveState()
	registerVal4:close()
	if registerVal4.checkGC then
		CheckGCCatchUp()
	end
	local registerVal10 = registerVal4:replaceMenu(arg1, arg3, nil, registerVal4.userData, registerVal4.menuName, registerVal4.occludedMenu, registerVal9)
	if registerVal6 and registerVal7 then
		if arg2 then
			table.insert(CoD.MenuNavigation[arg3][registerVal6], (registerVal7 + 1.000000), registerVal10.menuName)
		else
			CoD.MenuNavigation[arg3][registerVal6][registerVal7] = registerVal10.menuName
		end
	end
	return registerVal10
end

function NavigateToMenuNoDependency(arg0, arg1, arg2, arg3)
	NavigateToMenu(arg0, arg1, arg2, arg3)
end

function OpenPopup(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = arg0:getParent()
	if arg3 == "" then
	end
	if arg4 == "" then
	end
	registerVal6 = registerVal6:openPopup(arg1, arg2, nil, nil)
	if not CoD.MenuNavigation then
		CoD.MenuNavigation = {}
	end
	if not CoD.MenuNavigation[arg2] then
		CoD.MenuNavigation[arg2] = {}
	end
	local registerVal7, registerVal8 = CoD.Menu.GetNavigationForMenu(arg2, arg0.menuName)
	if registerVal7 and registerVal8 then
		local registerVal12 = {}
		registerVal12 = {registerVal6.menuName}
		table.insert(CoD.MenuNavigation[arg2], (registerVal7 + 1.000000), registerVal12)
	else
		local registerVal11 = {}
		registerVal11 = {registerVal6.menuName}
		table.insert(CoD.MenuNavigation[arg2], registerVal11)
	end
	return registerVal6
end

function OpenPopup_NoDependency(arg0, arg1, arg2)
	return OpenPopup(arg0, arg1, arg2)
end

function OpenPopupWithPriority(arg0, arg1, arg2, arg3)
	local registerVal4 = OpenPopup(arg0, arg1, arg2)
	registerVal4:setPriority(arg3)
end

function OpenOverlay(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = arg0:getParent()
	if arg3 == "" then
	end
	if arg4 == "" then
	end
	if registerVal6.occludedBy then
		if registerVal6.occludedBy.id ~= "Menu.MessageDialogBox" then
		end
	end
	if true then
		registerVal6.occludedBy:close()
	end
	local registerVal7 = registerVal6:openOverlay(arg1, arg2, nil, nil)
	if not CoD.MenuNavigation then
		CoD.MenuNavigation = {}
	end
	if not CoD.MenuNavigation[arg2] then
		CoD.MenuNavigation[arg2] = {}
	end
	local registerVal10 = {}
	registerVal10 = {registerVal7.menuName}
	table.insert(CoD.MenuNavigation[arg2], registerVal10)
	if true then
		LuaUtils.MessageDialogForceSubscriptionFire(true)
	end
	return registerVal7
end

function OpenOverlay_NoDependency(arg0, arg1, arg2, arg3, arg4)
	OpenOverlay(arg0, arg1, arg2, arg3, arg4)
end

function OpenSystemOverlay(arg0, arg1, arg2, arg3, arg4)
	CoD.OverlayUtility.CreateOverlay(arg2, arg1, arg3, arg2, arg4)
end

function OpenBlackMarketUnspentBundlePopupIfNeeded(arg0, arg1)
	local registerVal2 = IsBundleActive(arg1)
	registerVal2 = CoD.BlackMarketUtility.GetCurrentBundleCount(arg1)
	if not arg1 or 0.000000 >= registerVal2 then
	end
	if not true then
		local registerVal3 = IsHundredBundleActive(arg1)
		registerVal3 = CoD.BlackMarketUtility.GetCurrentHundredBundleCount(arg1)
		if not arg1 or 0.000000 >= registerVal3 then
		end
	end
	if not true then
		registerVal3 = IsRareBundle10for5Active(arg1)
		registerVal3 = CoD.BlackMarketUtility.GetCurrentRareBundle10for5Count(arg1)
		if not arg1 or 0.000000 >= registerVal3 then
		end
	end
	if not true then
		registerVal3 = IsRare20BundleActive(arg1)
		registerVal3 = CoD.BlackMarketUtility.GetCurrentRare20BundleCount(arg1)
		if not arg1 or 0.000000 >= registerVal3 then
		end
	end
	if not true then
		registerVal3 = IsRare20LDBundleActive(arg1)
		registerVal3 = CoD.BlackMarketUtility.GetCurrentRare20LDBundleCount(arg1)
		if not arg1 or 0.000000 >= registerVal3 then
		end
	end
	if true then
		registerVal3 = {}
		registerVal3.displayText = "MPUI_BM_RARE_DROP"
		registerVal3.image = "uie_t7_blackmarket_crate_bundle_open"
		registerVal3.itemCost = 0.000000
		registerVal3.itemCODPointCost = 0.000000
		registerVal3.supplyDropType = CoD.BlackMarketUtility.DropTypes.BUNDLE
		CoD.OverlayUtility.CreateOverlay(arg1, arg0, "PurchaseSupplyDropConfirmation", arg1, registerVal3)
	end
end

function OpenBlackMarketWeaponContractErrorPopupIfNeeded(arg0, arg1)
	local registerVal2 = Engine.AreStatsFetched(arg1)
	registerVal2 = Engine.IsLootReady(arg1)
	if registerVal2 and registerVal2 then
		registerVal2 = LuaUtils.IsWeaponContractNeeded(arg1)
		if not registerVal2 then
			registerVal2 = Engine.GetCryptokeysDue(arg1)
			if not registerVal2 then
			end
			if 0.000000 < 0.000000 then
				registerVal2 = CoD.OverlayUtility.CreateOverlay(arg1, arg0, "BMContractNotificationPopup", arg1, "MPUI_BM_INCENTIVE_ERROR_TITLE")
			end
		end
	end
end

function OpenBlackMarketExperimentPromoPopupIfNeeded(arg0, arg1)
	local registerVal2 = IsExperimentPromotionActive(arg1)
	registerVal2 = Engine.AreStatsFetched(arg1)
	registerVal2 = Engine.IsLootReady(arg1)
	registerVal2 = Engine.StorageGetBuffer(arg1, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal3 = registerVal2.extraBytes[2.000000]:get()
	local registerVal4 = Engine.DvarInt(nil, "loot_experimentpromo_index")
	if registerVal2 and registerVal2 and registerVal2 and registerVal3 < registerVal4 then
		registerVal3 = Engine.ExperimentsGetVariant(arg1, Engine.DvarString(nil, "loot_experimentpromo_name"))
		local registerVal9 = {}
		registerVal9.groupIndex = registerVal3
		registerVal9.statToMarkAsSeen = registerVal2.extraBytes[2.000000]
		CoD.OverlayUtility.CreateOverlay(arg1, arg0, "InitialExperimentPromoOverlay", arg1, registerVal9)
	end
end

function PerformOverlayBack(arg0, arg1, arg2, arg3)
	local registerVal4 = HasOverlayBackAction(arg3)
	if registerVal4 then
		arg3[CoD.OverlayUtility.GoBackPropertyName](arg0, arg1, arg2, arg3)
	end
end

function PerformOverlayContinue(arg0, arg1, arg2, arg3)
	local registerVal4 = HasOverlayContinueAction(arg3)
	if registerVal4 then
		arg3[CoD.OverlayUtility.ContinuePropertyName](arg0, arg1, arg2, arg3)
	end
end

function GoBackAndOpenStoreCodPointsOverlayOnParent(arg0, arg1, arg2)
	local registerVal3 = GoBack(arg0, arg2)
	OpenCodPointsStore(registerVal3, registerVal3, arg2, arg1, registerVal3)
end

function GoBackAndOpenStoreBO4OverlayOnParent(arg0, arg1, arg2)
	local registerVal3 = GoBack(arg0, arg2)
	OpenBO4Store(registerVal3, registerVal3, arg2, arg1, registerVal3)
end

function GoBackAndOpenStoreDLCOverlayOnParent(arg0, arg1, arg2)
	local registerVal3 = GoBack(arg0, arg2)
	OpenDLCStore(registerVal3, registerVal3, arg2, arg1, registerVal3)
end

function GoBackAndOpenOverlayOnParent(arg0, arg1, arg2)
	local registerVal3 = GoBack(arg0, arg2)
	OpenOverlay(registerVal3, arg1, arg2)
end

function GoBackAndOpenSystemOverlayOnParent(arg0, arg1, arg2, arg3)
	local registerVal4 = GoBack(arg0, arg1)
	OpenSystemOverlay(arg0, registerVal4, arg1, arg2, arg3)
end

function GoBackAndOpenPopupOnParent(arg0, arg1, arg2)
	local registerVal3 = GoBack(arg0, arg2)
	OpenPopup(registerVal3, arg1, arg2)
end

function GenericSmallPopupGoBack(arg0, arg1)
	if arg0.customGoBackAction then
		arg0.customGoBackAction(arg0, arg1)
	else
		GoBack(arg0, arg1)
	end
end

function OpenGenericSmallPopup(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	return CoD.OverlayUtility.CreateOverlay(arg1, arg0, "GenericPopup", CoD.OverlayUtility.GenericPopupSizes.Small, arg2, arg3, arg4, arg5, arg6, arg7)
end

function OpenGenericLargePopup(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	return CoD.OverlayUtility.CreateOverlay(arg1, arg0, "GenericPopup", CoD.OverlayUtility.GenericPopupSizes.Large, arg2, arg3, arg4, arg5, arg6, arg7)
end

function SendMenuResponse(arg0, arg1, arg2, arg3)
	Engine.SendMenuResponse(arg3, arg1, arg2)
end

function SendMenuResponseExpression(arg0, arg1, arg2)
	Engine.SendMenuResponse(arg0, arg1, arg2)
end

function SendOwnMenuResponse(arg0, arg1, arg2)
	Engine.SendMenuResponse(arg1, arg0.menuName, arg2)
end

function SendFrontendControllerZeroMenuResponse(arg0, arg1, arg2)
	if CoD.isFrontend then
	end
	Engine.SendMenuResponse(0.000000, arg1, arg2)
end

function ClearSavedState(arg0, arg1)
	arg0:clearSavedState()
end

function ClearMenuSavedState(arg0)
	arg0:clearSavedState()
end

function PlayClip(arg0, arg1, arg2)
	arg0:playClip(arg1)
end

function PlayClipOnElement(arg0, arg1, arg2)
	if arg0[arg1.elementName] then
		arg0[arg1.elementName]:playClip(arg1.clipName)
	end
end

function PlayClipOnListItemElement(arg0, arg1, arg2, arg3)
	arg1:playClip(arg3)
end

function SetFocusToElement(arg0, arg1, arg2)
	if arg0[arg1] then
		local registerVal5 = {}
		registerVal5.name = "gain_focus"
		registerVal5.controller = arg2
		arg0[arg1]:processEvent(registerVal5)
	end
end

function SetLoseFocusToElement(arg0, arg1, arg2)
	if arg0[arg1] then
		local registerVal5 = {}
		registerVal5.name = "lose_focus"
		registerVal5.controller = arg2
		arg0[arg1]:processEvent(registerVal5)
	end
end

function MakeElementFocusable(arg0, arg1, arg2)
	if arg0[arg1] then
		arg0[arg1]:makeFocusableWithoutResettingNavigation(arg0)
	end
end

function MakeElementNotFocusable(arg0, arg1, arg2)
	if arg0[arg1] then
		arg0[arg1]:makeNotFocusable(arg0)
	end
end

function MakeSiblingFocusable(arg0, arg1, arg2)
	local registerVal3 = arg0:getParent()
	if registerVal3[arg1] then
		registerVal3[arg1]:makeFocusableWithoutResettingNavigation(registerVal3)
	end
end

function MakeSiblingNotFocusable(arg0, arg1, arg2)
	local registerVal3 = arg0:getParent()
	if registerVal3[arg1] then
		registerVal3[arg1]:makeNotFocusable(registerVal3)
	end
end

function MakeFocusable(arg0)
	arg0:makeFocusableWithoutResettingNavigation()
end

function MakeNotFocusable(arg0)
	arg0:makeNotFocusable()
end

function DisableNavigation(arg0, arg1)
	arg0[arg1].m_disableNavigation = true
end

function EnableNavigation(arg0, arg1)
	arg0[arg1].m_disableNavigation = false
end

function DisableAllMenuInput(arg0, arg1)
	arg0.m_disableAllButtonActions = arg1
end

function ClearNavigationTable(arg0)
	arg0:clearNavigationTable()
end

function ModalSelectListOption(arg0, arg1, arg2)
	local registerVal3 = CoD.Menu.ModalDialogInfo.Callback(arg1.gridInfoTable.zeroBasedIndex)
	if CoD.Menu.ModalDialogInfo.Callback ~= nil and registerVal3 == true then
		GoBack(arg0, arg2)
	end
end

function ModalGoBack(arg0, arg1, arg2)
	if CoD.Menu.ModalDialogInfo.Callback ~= nil then
		CoD.Menu.ModalDialogInfo.Callback()
	end
	GoBack(arg0, arg2)
end

function SetResponseYes(arg0, arg1)
	GoBack(arg0, arg1)
	if arg0.modalCallback then
		arg0.modalCallback("yes")
	end
end

function SetResponseNo(arg0, arg1)
	GoBack(arg0, arg1)
	if arg0.modalCallback then
		arg0.modalCallback("no")
	end
end

function OpenOptionsMenu(arg0, arg1, arg2)
	local registerVal4 = arg0:getParent()
	registerVal4:saveState()
	registerVal4:openMenu("OptionsMenu", arg2)
	registerVal4:close()
end

function LoadSaveGameData(arg0, arg1)
	Engine.LoadSaveGame()
end

function RestartMission(arg0, arg1, arg2)
	local registerVal4 = arg0:getParent()
	CoD.OverlayUtility.CreateOverlay(arg2, registerVal4, "RestartMissionPopup")
end

function EndTrainingSim(arg0, arg1, arg2)
	Engine.SendMenuResponse(arg2, "StartMenu", "EndTrainingSim")
	StartMenuResumeGame(arg0, arg2)
	GoBack(arg0, arg2)
end

function CPSelectPublicGameGetRandomMap(arg0, arg1, arg2)
	local registerVal4 = Engine.IsCampaignModeZombies()
	local function __FUNC_2FC18_(arg0, arg1)
		if CoD.mapsTable[arg0].unique_id >= CoD.mapsTable[arg1].unique_id then
		end
		return true
	end

	local registerVal6, registerVal7, registerVal8 = LUI.IterateTableBySortedKeys(CoD.mapsTable, __FUNC_2FC18_, nil)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		if value10.campaign_mode ~= Enum.CampaignMode.CAMPAIGNMODE_DEFAULT or registerVal4 then
			if value10.campaign_mode == Enum.CampaignMode.CAMPAIGNMODE_ZOMBIES then
			else
			end
		end
		if true then
			if index9 == "cp_doa_bo3" then
			end
		end
		if value10.session_mode == Enum.eModes.MODE_CAMPAIGN and true and value10.dlc_pack ~= -1.000000 and value10.isSubLevel == false then
			local registerVal14 = {}
			local registerVal15 = {}
			registerVal15.mapId = index9
			registerVal14.properties = registerVal15
			table.insert({}, registerVal14)
		end
	end
	if {} ~= nil and 0.000000 < #registerVal6 then
		registerVal6 = math.random(1.000000, #registerVal8)
		return {}[registerVal6].properties.mapId
	else
		LobbyData.GetCurrentMenuTarget()
		return LuaUtils.GetDefaultMap(LobbyData.GetCurrentMenuTarget)
	end
end

function CPSelectPublicGame(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "lobbyRoot.cpPublicLobbySearchAll")
	Engine.SetModelValue(registerVal5, false)
	Engine.SetDvar("ui_useloadingmovie", "1")
	Engine.SetDvar("skipto", "")
	Engine.SetDvar("sv_saveGameSkipto", "")
	Engine.SetDvar("ui_blocksaves", "1")
	if arg3 == "specificMission" then
		local registerVal8 = Engine.GetGlobalModel()
		local registerVal7 = Engine.CreateModel(registerVal8, "cpLobby")
		Engine.SetModelValue(registerVal7, "public")
		GoBackAndOpenPopupOnParent(arg0, "CPMissionSelect", arg2)
		return 
	end
	if arg3 == "anyMission" then
		registerVal6 = CPSelectPublicGameGetRandomMap(arg0, arg1, arg2)
		arg1.mapId = registerVal6
	else
		registerVal6 = Engine.GetSavedMap()
		arg1.mapId = registerVal6
		if CoD.mapsTable[arg1.mapId] ~= nil and CoD.mapsTable[arg1.mapId].isSafeHouse then
			registerVal6 = Engine.GetSavedMapQueuedMap()
			arg1.mapId = registerVal6
		end
	end
	SetSelectedCPMission(arg0, arg1, arg2)
	Engine.SetPlaylistID(GetPlaylistIDForSelectedCPMission(arg0, arg1, arg2))
	if arg3 == "anyMission" then
		Engine.SetModelValue(registerVal5, true)
	end
	registerVal6 = Engine.GetModeName()
	registerVal7 = Engine.IsCampaignModeZombies()
	if registerVal7 then
	end
	if (registerVal6 .. "2") == "Invalid" then
		if LUI.DEV ~= nil then
			error("Invalid mode in matchmaking")
		else
			return 
		end
	end
	local registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.CreateModel(registerVal9, "lobbyRoot.lobbyNav")
	registerVal9 = Engine.GetModelValue(registerVal8)
	GoBack(arg0, arg2)
	NavigateToLobby(arg0, ((registerVal6 .. "2") .. "LobbyOnlinePublicGame"), false, arg2)
end

function RestartFromCheckpoint(arg0, arg1, arg2)
	local registerVal4 = arg0:getParent()
	CoD.OverlayUtility.CreateOverlay(arg2, registerVal4, "RestartCheckpointPopup")
end

function LaunchLevel(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "devName"))
	if registerVal3 ~= "" then
		Engine.Exec(arg2, ("devmap " .. registerVal3))
	end
end

function QuitGame(arg0, arg1, arg2)
	local registerVal4 = arg0:getParent()
	CoD.OverlayUtility.CreateOverlay(arg2, registerVal4, "QuitGamePopup")
end

function SaveAndQuitGame(arg0, arg1, arg2)
	local registerVal4 = arg0:getParent()
	CoD.OverlayUtility.CreateOverlay(arg2, registerVal4, "SaveAndQuitGamePopup")
end

function LaunchDOAJoin(arg0, arg1, arg2)
	local registerVal3 = CheckNavRestrictions(arg0, arg1, arg2, arg0)
	if registerVal3 then
		return 
	end
	CoD.LobbyBase.LaunchDOA(arg0, arg2, false)
end

function LaunchDOACreate(arg0, arg1, arg2)
	local registerVal3 = CheckNavRestrictions(arg0, arg1, arg2, arg0)
	if registerVal3 then
		return 
	end
	CoD.LobbyBase.LaunchDOA(arg0, arg2, true)
end

function LaunchSelectedCPMission(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModeName()
	local registerVal4 = Engine.IsCampaignModeZombies()
	if registerVal4 then
	end
	if (registerVal3 .. "2") == "Invalid" then
		if LUI.DEV ~= nil then
			error("Invalid mode in matchmaking")
		else
			return 
		end
	end
	local registerVal5 = Engine.GetGlobalModel()
	registerVal4 = Engine.GetModel(registerVal5, "cpLobby")
	registerVal5 = Engine.GetModelValue(registerVal4)
	local registerVal6 = Engine.GetLobbyNetworkMode()
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
	local registerVal9 = IsElementPropertyValue(arg1, "classified", true)
	if registerVal9 then
		local registerVal15 = {}
		registerVal15 = {"MPUI_YES", "MPUI_NO"}
		local function __FUNC_3108A_(arg1)
			if arg1 == 0.000000 then
				local registerVal1 = Engine.GetPlayerStats(arg2, CoD.STATS_LOCATION_NORMAL, Enum.eModes.MODE_CAMPAIGN)
				registerVal1.allMapsUnlocked:set(1.000000)
				arg0.MapList:updateDataSource()
			end
			return true
		end

		arg0:OpenModalDialog(arg0, arg2, "MENU_OUTOFORDER_PLAY", "MENU_OUTOFORDER_DESC", registerVal15, __FUNC_3108A_)
	else
		SetSelectedCPMission(arg0, arg1, arg2)
		if true then
			Engine.SetPlaylistID(GetPlaylistIDForSelectedCPMission(arg0, arg1, arg2))
		end
		local registerVal10 = Engine.GetGlobalModel()
		registerVal9 = Engine.CreateModel(registerVal10, "lobbyRoot.lobbyNav")
		registerVal10 = Engine.GetModelValue(registerVal9)
		if registerVal10 ~= LobbyData.UITargets.UI_CPLOBBYONLINECUSTOMGAME.id and registerVal10 ~= LobbyData.UITargets.UI_CP2LOBBYONLINECUSTOMGAME.id and registerVal10 ~= LobbyData.UITargets.UI_CPLOBBYLANCUSTOMGAME.id and registerVal10 ~= LobbyData.UITargets.UI_CP2LOBBYLANCUSTOMGAME.id then
			NavigateToLobby(arg0, ((registerVal3 .. "2") .. "LobbyLANCustomGame"), false, arg2)
		end
		GoBack(arg0, arg2)
	end
end

function RestartGame(arg0, arg1, arg2)
	local registerVal4 = arg0:getParent()
	CoD.OverlayUtility.CreateOverlay(arg2, registerVal4, "RestartGamePopup")
end

function OpenDailyChallengePopup(arg0, arg1, arg2)
	CoD.OverlayUtility.CreateOverlay(arg2, arg0, "InspectDailyChallengeOverlay", arg2)
end

function SetupServerTime(arg0, arg1)
	local registerVal2 = arg1:getParent()
	local registerVal3 = arg1:getParent()
	registerVal3 = registerVal3:getModel()
	registerVal2 = CoD.SafeGetModelValue(registerVal3, "time")
	if arg1 and registerVal2 and registerVal2 then
		arg1:setupServerTime((0.000000 - (registerVal2 * 1000.000000)))
	end
end

function ChooseClass(arg0, arg1, arg2)
	local registerVal4 = arg0:getParent()
	registerVal4:saveState()
	registerVal4:openMenu("ChooseClass_InGame", arg2)
	registerVal4:close()
end

function ChooseTeam(arg0, arg1, arg2)
	local registerVal4 = arg0:getParent()
	registerVal4:saveState()
	registerVal4 = registerVal4:openMenu("ChangeTeam", arg2)
	if registerVal4 then
		registerVal4.previousMenuId = registerVal4.id
	end
	registerVal4:close()
end

function QuitGame_MP(arg0, arg1, arg2)
	local registerVal4 = arg0:getParent()
	CoD.OverlayUtility.CreateOverlay(arg2, registerVal4, "EndGamePopup")
end

function SendClientScriptDebugMenuNotify(arg0, arg1, arg2)
	local registerVal5 = arg1:getModel(arg2, "name")
	local registerVal9 = Engine.GetModelValue(registerVal5)
	Engine.SendClientScriptNotify(arg2, "script_debug_menu", registerVal9, (arg1.gridInfoTable.zeroBasedIndex + 1.000000))
end

function SendClientScriptDebugMenuCloseMenuNotify(arg0, arg1, arg2)
	Engine.SendClientScriptNotify(arg2, "script_debug_menu", "close")
end

function ProcessPlayerCallout(arg0, arg1, arg2)
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(arg2, "arg1"))
	Engine.UpdateCalloutPlayerData(arg1, registerVal5, Engine.GetModelValue(Engine.GetModel(arg2, "arg2")))
	arg0:playClip("Side")
end

function SetMPScoreText(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.GetScriptNotifyData(arg3)
	local registerVal5 = Engine.GetIString(registerVal4[1.000000], "CS_LOCALIZED_STRINGS")
	local registerVal7 = Engine.IsDemoPlaying()
	if registerVal7 == false or CoD.isZombie == false then
		arg1:AddCenterScore(registerVal5, registerVal4[2.000000])
		registerVal7 = HasPerk(arg2, "specialty_combat_efficiency")
		if registerVal7 then
			if 0.000000 < registerVal4[3.000000] then
				arg1:AddCombatEfficiencyScore(arg0, registerVal4[3.000000], arg2)
			end
			if registerVal4[3.000000] < registerVal4[2.000000] then
				arg1:AddCombatEfficiencyScore(arg0, (registerVal4[2.000000] - registerVal4[3.000000]), arg2)
			end
		end
		if registerVal4[5.000000] ~= nil and registerVal4[5.000000] ~= 0.000000 then
			registerVal7 = Engine.Localize(registerVal5)
			arg1:AddScoreFeed(registerVal7, true)
		end
	end
end

function TryBootHUD(arg0, arg1)
	if not arg0.hasBooted then
		arg0:addElement(LUI.UITimer.new(arg1, "hud_boot", true, arg0))
	end
end

function SetHudHasBooted(arg0)
	arg0.hasBooted = true
end

function AddKillstreakReceivedNotification(arg0, arg1, arg2, arg3)
	local registerVal4 = IsCodCaster(arg2)
	if registerVal4 then
		registerVal4 = IsCodCasterProfileValueEqualTo(arg2, "shoutcaster_scorestreaks_notification", 1.000000)
		if not registerVal4 then
			return 
		end
		local registerVal5 = Engine.GetModelForController(arg2)
		registerVal4 = CoD.SafeGetModelValue(registerVal5, "CodCaster.showLoadout")
		if registerVal4 then
			return 
		end
	end
	if arg1.appendNotification ~= nil then
		registerVal4 = CoD.GetScriptNotifyData(arg3)
		local registerVal6 = Engine.Localize(Engine.GetItemName(registerVal4[1.000000]))
		local registerVal7 = Engine.ToUpper(Engine.Localize("MENU_KILLSTREAK_READY", registerVal6))
		local registerVal8 = Engine.Localize("MENU_ACTIVATE_KILLSTREAK_INSTR")
		local registerVal11 = {}
		registerVal11.title = registerVal7
		registerVal11.description = registerVal8
		registerVal11.type = "Killstreak"
		registerVal11.priority = 0.000000
		arg1:appendNotification(registerVal11)
	end
end

function AddHeroAbilityReceivedNotification(arg0, arg1, arg2, arg3)
	local registerVal4 = IsCodCaster(arg2)
	if registerVal4 then
		registerVal4 = IsCodCasterProfileValueEqualTo(arg2, "shoutcaster_specialist_notification", 1.000000)
		if not registerVal4 then
			return 
		end
		local registerVal5 = Engine.GetModelForController(arg2)
		registerVal4 = CoD.SafeGetModelValue(registerVal5, "CodCaster.showLoadout")
		if registerVal4 then
			return 
		end
	end
	if arg1.appendNotification ~= nil then
		registerVal4 = CoD.GetScriptNotifyData(arg3)
		local registerVal6 = Engine.GetItemName(registerVal4[1.000000])
		local registerVal7 = Engine.ToUpper(Engine.Localize(registerVal6))
		local registerVal8 = Engine.ToUpper(Engine.Localize("MENU_HERO_ABILITY_READY", registerVal7))
		local registerVal9 = Engine.Localize("MENU_ACTIVATE_HERO_ABILITY_INSTR")
		if registerVal6 == "WEAPON_GADGET_RESURRECT" then
			local registerVal10 = Engine.Localize("MENU_ACTIVATE_REJACK_INSTR")
		end
		registerVal10 = IsBlackMarketSpecialistAnyAbilityActive(arg2)
		if registerVal10 then
			local function __FUNC_326FD_()
				local registerVal2 = {}
				registerVal2.title = registerVal8
				registerVal2.description = registerVal10
				registerVal2.type = "Ability"
				registerVal2.priority = 1.000000
				arg1:appendNotification(registerVal2)
			end

			arg1:addElement(LUI.UITimer.newElementTimer(1500.000000, true, __FUNC_326FD_))
		else
			local registerVal12 = {}
			registerVal12.title = registerVal8
			registerVal12.description = registerVal10
			registerVal12.type = "Ability"
			registerVal12.priority = 1.000000
			arg1:appendNotification(registerVal12)
		end
	end
end

function AddZombieNotification(arg0, arg1, arg2)
	local registerVal3 = CoD.GetScriptNotifyData(arg2)
	local registerVal6 = {}
	registerVal6.clip = "TextandImageBasic"
	local registerVal7 = Engine.Localize(Engine.GetIString(registerVal3[1.000000], "CS_LOCALIZED_STRINGS"))
	registerVal6.title = registerVal7
	registerVal6.description = ""
	arg1:appendNotification(registerVal6)
end

function AddZombieBGBNotification(arg0, arg1, arg2)
	local registerVal3 = CoD.GetScriptNotifyData(arg2)
	local registerVal5 = Engine.GetItemName(registerVal3[1.000000])
	local registerVal6 = Engine.Localize(registerVal5)
	local registerVal7 = Engine.Localize((registerVal5 .. "_hint"))
	local registerVal8 = RegisterImage(GetItemImageFromIndex(registerVal3[1.000000]))
	local registerVal11 = {}
	registerVal11.clip = "TextandImageBGB"
	registerVal11.title = registerVal6
	registerVal11.description = registerVal7
	registerVal11.bgbImage = registerVal8
	arg1:appendNotification(registerVal11)
end

function AddZombieBGBTokenNotification(arg0, arg1, arg2, arg3)
	arg0:playSound("zmb_bgb_token")
	local registerVal6 = IsZMDoubleVialActive(arg2)
	if registerVal6 then
	end
	local registerVal8 = {}
	registerVal8.clip = "TextandImageBGBToken"
	local registerVal9 = Engine.Localize("ZMUI_BGB_TOKEN_AWARD_NOTIFICATION_TITLE")
	registerVal8.title = registerVal9
	registerVal9 = Engine.Localize("ZMUI_BGB_TOKEN_AWARD_NOTIFICATION_DESC")
	registerVal8.description = registerVal9
	registerVal9 = RegisterImage("uie_t7_icon_zm_double_vial_backer")
	registerVal8.bgbImage = registerVal9
	registerVal9 = Engine.Localize("MP_X2")
	registerVal8.bgbImageText = registerVal9
	arg1:appendNotification(registerVal8)
end

function AddZombieTimeAttackNotification(arg0, arg1, arg2)
	local registerVal3 = CoD.GetScriptNotifyData(arg2)
	local registerVal4 = Engine.Localize("DLC3_TIME_ATTACK")
	local registerVal6 = math.min(1.000000, math.max(registerVal3[2.000000], 4.000000))
	local registerVal10 = Engine.GetCurrentMap()
	local registerVal11 = Engine.TableLookup(nil, ("gamedata/tables/zm/" .. registerVal10 .. "_time_attacks.csv"), 0.000000, registerVal3[1.000000], ((2.000000 + registerVal6) - 1.000000))
	if not registerVal11 then
	end
	registerVal10 = tonumber(0.000000)
	local registerVal14 = Engine.TableLookup(nil, ("gamedata/tables/zm/" .. registerVal10 .. "_time_attacks.csv"), 0.000000, registerVal3[1.000000], 1.000000)
	if not registerVal14 then
	end
	local registerVal12 = Engine.Localize("CHALLENGE_UNLOCK_REWARD", 0.000000)
	registerVal14 = Engine.TableLookup(nil, ("gamedata/tables/zm/" .. registerVal10 .. "_time_attacks.csv"), 0.000000, registerVal3[1.000000], 6.000000)
	local registerVal15 = Engine.Localize("ZMUI_NEW_WEAPON_IN_LOC", registerVal14)
	local registerVal16 = Engine.Localize("DLC3_TIME_ATTACK_SUBTITLE", registerVal3[1.000000], NumberAsTimeNoMS((registerVal10 * 1000.000000)))
	local registerVal17 = RegisterImage("blacktransparent")
	local registerVal20 = {}
	registerVal20.clip = "TextandTimeAttack"
	registerVal20.title = registerVal4
	registerVal20.description = registerVal16
	registerVal20.bgbImage = registerVal17
	registerVal20.xpAward = registerVal12
	registerVal20.rewardText = registerVal15
	arg1:appendNotification(registerVal20)
end

function CreatePrematchTimer(arg0, arg1, arg2)
	local registerVal3 = CoD.GetScriptNotifyData(arg2)
	if registerVal3[1.000000] and not arg0.PrematchCountdown then
		local registerVal5 = CoD.PrematchCountdown.new(arg0, arg1)
		registerVal5:setupCountdown(registerVal3[1.000000], arg1)
		registerVal5:setLeftRight(false, false, -640.000000, 640.000000)
		registerVal5:setTopBottom(false, false, -360.000000, 360.000000)
		registerVal5:addElementBefore(arg0.WaypointBase)
		local registerVal8 = {}
		registerVal8.name = "update_state"
		registerVal8.controller = arg1
		registerVal8.menu = arg0
		registerVal5:processEvent(registerVal8)
		arg0.PrematchCountdown = registerVal5
		local function __FUNC_335FD_(arg0)
			if arg0.PrematchCountdown then
				arg0.PrematchCountdown:close()
			end
		end

		LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_335FD_)
	end
	if arg0.PrematchWaiting then
		arg0.PrematchWaiting:close()
		arg0.PrematchWaiting = nil
	end
	local registerVal7 = Engine.GetModelForController(arg1)
	local registerVal6 = Engine.CreateModel(registerVal7, "isInPrematchPeriod")
	Engine.SetModelValue(registerVal6, 1.000000)
end

function PrematchWaitingForPlayers(arg0, arg1)
	if not arg0.PrematchWaiting then
		local registerVal2 = CoD.Prematch_WaitingForPlayers.new(arg0, arg1)
		registerVal2:setLeftRight(false, false, -640.000000, 640.000000)
		registerVal2:setTopBottom(false, false, -360.000000, 360.000000)
		registerVal2:addElementBefore(arg0.WaypointBase)
		local registerVal5 = {}
		registerVal5.name = "update_state"
		registerVal5.controller = arg1
		registerVal5.menu = arg0
		registerVal2:processEvent(registerVal5)
		arg0.PrematchWaiting = registerVal2
		local function __FUNC_33990_(arg0)
			if arg0.PrematchCountdown then
				arg0.PrematchWaiting:close()
			end
		end

		LUI.OverrideFunction_CallOriginalSecond(arg0, "close", __FUNC_33990_)
	end
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "isInPrematchPeriod")
	Engine.SetModelValue(registerVal3, 1.000000)
end

function CreateRejackTimer(arg0, arg1, arg2)
	local registerVal3 = CoD.GetScriptNotifyData(arg2)
	local registerVal5 = CoD.Rejack.new(arg0, arg1)
	arg0.rejackWidget = registerVal5
	arg0:addElement(arg0.rejackWidget)
	arg0.rejackWidget.RejackInternal:startHeartBeatAnimation(arg1, registerVal3[1.000000])
end

function HandleScoreStreakDpadRight(arg0, arg1)
	local registerVal2 = arg0:isInFocus()
	registerVal2 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
	if registerVal2 and not registerVal2 then
		registerVal2 = arg0:hasClip("Focus")
		if not registerVal2 then
			Engine.SwitchToInventoryWeapon(arg1)
		else
			local registerVal4 = arg0:getModel()
			registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "rewardSlot"))
			if registerVal2 ~= nil then
				Engine.ActionSlotSelectWeapon(arg1, registerVal2)
			else
				Engine.SwitchToInventoryWeapon(arg1)
			end
		end
	end
end

function MakeRaidPurchase(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "name"))
	Engine.SendMenuResponse(arg2, "raid_purchase", registerVal3)
end

function CancelRaidPurchase(arg0, arg1, arg2)
	Engine.SendMenuResponse(arg2, "raid_purchase", "none")
end

function UpdateEnabledText(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "description")
	local registerVal4 = arg1:getModel(arg2, "enabledDescription")
	local registerVal5 = Engine.Localize(Engine.GetModelValue(registerVal4))
	Engine.SetModelValue(registerVal3, registerVal5)
end

function UpdateDisableReason(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelValue(arg1:getModel(arg2, "id"))
	local registerVal5 = arg0:getModel(arg2, ("disable_" .. registerVal4))
	local registerVal6 = arg1:getModel(arg2, "description")
	if registerVal5 ~= nil then
		local registerVal7 = Engine.Localize(Engine.GetModelValue(registerVal5))
		Engine.SetModelValue(registerVal6, registerVal7)
	else
		registerVal7 = arg1:getModel(arg2, "enabledDescription")
		local registerVal8 = Engine.Localize(Engine.GetModelValue(registerVal7))
		Engine.SetModelValue(registerVal6, registerVal8)
	end
end

function SelectNextItemIfPossible(arg0, arg1, arg2)
	local registerVal3 = GetListItem(arg0, arg1)
	return registerVal3:navigateItemRight()
end

function SelectNextItemIfPossibleAndNotDisabled(arg0, arg1, arg2)
	local registerVal3 = GetListItem(arg0, arg1)
	local registerVal4 = registerVal3:getItemAtOffset(0.000000, 1.000000)
	local registerVal5 = registerVal4:getModel(arg2, "disabled")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	if registerVal4 and registerVal6 == true then
		return false
	end
	return registerVal3:navigateItemRight()
end

function SelectPreviousItemIfPossible(arg0, arg1, arg2)
	local registerVal3 = GetListItem(arg0, arg1)
	if registerVal3.hCount and registerVal3.hCount == 1.000000 then
		return registerVal3:navigateItemUp()
	else
		return registerVal3:navigateItemLeft()
	end
end

function SelectPreviousItemIfPossibleAndNotDisabled(arg0, arg1, arg2)
	local registerVal3 = GetListItem(arg0, arg1)
	local registerVal4 = registerVal3:getItemAtOffset(0.000000, -1.000000)
	local registerVal5 = registerVal4:getModel(arg2, "disabled")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	if registerVal4 and registerVal6 == true then
		return false
	end
	return registerVal3:navigateItemLeft()
end

function SelectAboveItemIfPossible(arg0, arg1, arg2)
	local registerVal3 = GetListItem(arg0, arg1)
	return registerVal3:navigateItemUp()
end

function SelectBelowItemIfPossible(arg0, arg1, arg2)
	local registerVal3 = GetListItem(arg0, arg1)
	return registerVal3:navigateItemDown()
end

function SelectItemIfPossible(arg0, arg1, arg2, arg3)
	arg1:setActiveItem(arg3.element)
end

function SelectFirstItemIfPossible(arg0, arg1, arg2)
	arg1:getFirstSelectableItem(true)
end

function ListElementSelectFirstItemIfPossible(arg0, arg1)
	if arg0[arg1] then
		arg0[arg1]:getFirstSelectableItem(true)
	end
end

function ProcessListAction(arg0, arg1, arg2)
	if arg1.disabled then
		return 
	end
	local registerVal3 = arg1:getModel(arg2, "action")
	local registerVal4 = arg1:getModel(arg2, "param")
	if registerVal3 then
		local registerVal7 = Engine.GetModelValue(registerVal3)
		if registerVal4 then
			registerVal7 = Engine.GetModelValue(registerVal4)
		else
		end
	end
	if arg1.action then
		if arg1.gridInfoTable then
		else
			local registerVal8 = arg1:getParentMenu()
		end
		arg1.action(arg0, arg1, arg2, arg1.actionParam, registerVal8)
	end
end

function ProcessClassOptionAction(arg0, arg1, arg2, arg3)
	if arg1.disabled then
		return 
	end
	if arg3.actionButtonFn then
		arg3.actionButtonFn(arg0, arg1, arg2, arg1.actionParam, arg1.gridInfoTable.parentGrid.menu)
	end
end

function ProcessKeyboardCompleteAction(arg0, arg1, arg2, arg3)
	if arg1.disabled then
		return 
	end
	if arg3.keyboardCompleteFn then
		arg3.keyboardCompleteFn(arg0, arg1, arg2, arg3)
	end
end

function ProcessConfirmVariantNameAction(arg0, arg1, arg2, arg3)
	if arg1.disabled then
		return 
	end
	if arg3.confirmVariantNameFn then
		arg3.confirmVariantNameFn(arg0, arg1, arg2, arg3)
	end
end

function UpdateDataSource(arg0, arg1, arg2)
	arg1:updateDataSource()
end

function UpdateElementDataSource(arg0, arg1)
	if arg0[arg1] then
		arg0[arg1]:updateDataSource()
	end
end

function SetAsListVerticalCounter(arg0, arg1, arg2)
	if arg0[arg2] then
		arg0[arg2]:addCustomVerticalCounter(arg1)
	end
end

function SetAsListHorizontalCounter(arg0, arg1, arg2)
	if arg0[arg2] then
		arg0[arg2]:addCustomHorizontalCounter(arg1)
	end
end

function SetupTabs(arg0, arg1, arg2)
	local function __FUNC_34F6D_(arg0, arg2, arg3, arg4)
		local registerVal4 = PropertyIsTrue(arg1, "m_disableNavigation")
		if not registerVal4 then
			arg1:navigateItemLeft()
		end
	end

	arg0:AddButtonCallbackFunction(arg0, arg2, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_34F6D_, AlwaysFalse, false)
	local function __FUNC_3500B_(arg0, arg2, arg3, arg4)
		local registerVal4 = PropertyIsTrue(arg1, "m_disableNavigation")
		if not registerVal4 then
			arg1:navigateItemRight()
		end
	end

	arg0:AddButtonCallbackFunction(arg0, arg2, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_3500B_, AlwaysFalse, false)
end

function HideWidget(arg0)
	arg0:setAlpha(0.000000)
end

function ShowWidget(arg0)
	arg0:setAlpha(1.000000)
end

function HideElement(arg0, arg1)
	if arg0[arg1] then
		arg0[arg1]:setAlpha(0.000000)
	end
end

function ShowElement(arg0, arg1)
	if arg0[arg1] then
		arg0[arg1]:setAlpha(1.000000)
	end
end

function DisableWidget(arg0, arg1)
	arg0[arg1].m_disableNavigation = true
	arg0[arg1]:makeNotFocusable()
	arg0[arg1]:setAlpha(0.000000)
end

function SetBackFromCustomClass(arg0)
	CoD.CACUtility.FromCustomClass = true
end

function GetCustomClassModel(arg0)
	CoD.CACUtility.GetCustomClassModel(arg0, CoD.perController[arg0].classNum, CoD.perController[arg0].classModel)
end

function ResetCustomClassStartingFocus(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel()
	if not registerVal4 then
		return 
	end
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal4, "classNum"))
	if not arg1 or registerVal5 ~= CoD.CACUtility.CustomClass_LastClassNum then
		CoD.CACUtility.CustomClass_LastClassNum = 0.000000
		CoD.CACUtility.CustomClass_LastSelection = "primary"
		CoD.CACUtility.CustomClass_PerClassLastSelection = {}
	end
end

function SetSeenExtraClassSets(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	if registerVal1 then
		return registerVal1.extraBools[0.000000]:set(1.000000)
	end
end

function ChangeClass(arg0, arg1, arg2)
	arg0:saveState()
	arg0.menuResponseSent = true
	local registerVal4 = arg1:getModel(arg2, "classNum")
	local registerVal3 = Engine.GetModelValue(registerVal4, nil)
	local registerVal5 = arg1:getModel(arg2, "defaultClassName")
	registerVal4 = Engine.GetModelValue(registerVal5, nil)
	if registerVal4 ~= nil then
		local registerVal7 = string.lower(registerVal4)
		registerVal7 = Engine.GetClassIndexFromName(registerVal4)
	else
	end
	local registerVal8 = CanUseSharedLoadouts(arg2)
	local registerVal9 = Engine.GetModelForController(arg2)
	registerVal8 = Engine.GetModel(registerVal9, "ChooseClassCPClientMenu")
	registerVal9 = Engine.CreateModel(registerVal8, "selectedClientIndex")
	local registerVal10 = Engine.GetModelValue(registerVal9)
	local registerVal11 = Engine.GetModel(registerVal8, ("client" .. registerVal10))
	local registerVal12 = Engine.GetModelValue(Engine.GetModel(registerVal11, "xuid"))
	local registerVal13 = Engine.IsSharedLoadoutAvailableForClient(arg2, registerVal12)
	registerVal13 = Engine.GetLobbyClientNumByXUID(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME, registerVal12)
	local registerVal14 = Engine.CreateModel(registerVal8, "myClientIndex")
	local registerVal15 = Engine.GetModelValue(registerVal14)
	if registerVal8 and registerVal8 and registerVal9 and registerVal10 ~= nil and registerVal11 and registerVal13 and registerVal14 and registerVal10 ~= registerVal15 then
	end
	if CoD.isCampaign and false and CoD.perController[arg2].fieldOpsKitClassNum ~= (registerVal7 + 1.000000) then
		CoD.CACUtility.SetShowcaseWeaponToClassPrimary(arg2, registerVal7)
		SaveLoadout(arg0, arg2)
	end
	Engine.SendMenuResponse(arg2, "ChooseClass_InGame", (("custom" .. registerVal7) .. "," .. registerVal13))
	CoD.CACUtility.SetProfileLoadoutChoice(arg2, registerVal7)
	HUD_IngameMenuClosed()
	Engine.StreamSetCustomClass(arg2, registerVal3)
end

function ChangeClass_TrainingSim(arg0, arg1, arg2)
	arg0:saveState()
	arg0.menuResponseSent = true
	Engine.SendMenuResponse(arg2, "chooseClass_TrainingSim", "custom9")
	CoD.CACUtility.SetProfileLoadoutChoice(arg2, 9.000000)
	HUD_IngameMenuClosed()
	Engine.StreamSetCustomClass(arg2, 9.000000)
end

function CloseChangeClass_TrainingSim(arg0, arg1, arg2)
	CoD.CACUtility.ResetCPCustomClasses(arg2)
end

function UpdateParentClassView(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	CoD.perController[arg2].classModel = registerVal3
	local registerVal4 = arg0:getParent()
	if registerVal4 then
		registerVal4:setModel(registerVal3, arg2)
	end
end

function SetBubblegumPackIndex(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	CoD.perController[arg2].bgbPackIndex = arg1.bgbPackIndex
	CoD.perController[arg2].bubbleGumPackModel = registerVal3
	arg0:setModel(registerVal3, arg2)
end

function SetCustomClassNum(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	CoD.perController[arg2].classNum = arg1.classNum
	CoD.perController[arg2].classModel = registerVal3
	arg0:setModel(registerVal3, arg2)
end

function SetCustomParentClassNum(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	CoD.perController[arg2].classNum = arg1.classNum
	CoD.perController[arg2].classModel = registerVal3
	local registerVal4 = arg0:getParent()
	if registerVal4 then
		registerVal4:setModel(registerVal3, arg2)
	end
end

function SetCustomClassNum_TrainingSim(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg2)
	local registerVal3 = Engine.GetModel(registerVal4, "CustomClassList.class1")
	CoD.perController[arg2].classNum = 9.000000
	CoD.perController[arg2].classModel = registerVal3
	arg0:setModel(registerVal3, arg2)
end

function PrestigeWeapon(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "itemIndex")
	if registerVal3 then
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "PrestigeWeapon", arg2, registerVal3)
	end
end

function NavigateToLoadoutMenu(arg0, arg1)
	if arg0.currentActiveSlot then
		CoD.perController[arg1].weaponCategory = arg0.currentActiveSlot
		CoD.perController[arg1].weaponClassGroup = arg0.currentActiveSlot
		CoD.perController[arg1].CACSpecficModelValueFocusTable = nil
		CoD.perController[arg1].CACWildcardContextualMenu = nil
		CoD.perController[arg1].wildcardOverCapacityRefName = nil
		local registerVal4 = Engine.GetCustomClass(arg1, CoD.perController[arg1].classNum)
		local registerVal10, registerVal11, registerVal12 = CoD.CACUtility.GetCACSlotStatus(arg1, CoD.perController[arg1].classModel, arg0.currentActiveSlot)
		if registerVal10 == CoD.CACUtility.CACStatusAvailable.NOT_AVAILABLE then
			return 
		end
		if registerVal10 == CoD.CACUtility.CACStatusAvailable.REQUIRES_WILDCARD then
			local registerVal14, registerVal15, registerVal16 = ipairs(CoD.CACUtility.BonuscardSlotNameList)
			for index17,value18 in registerVal14, registerVal15, registerVal16 do
				local registerVal19 = CoD.CACUtility.ItemEquippedInSlot(value18, arg1, CoD.perController[arg1].classModel)
				if not registerVal19 then
				else
				end
			end
			registerVal14 = CoD.CACUtility.WildcardNeededForSlot(arg1, arg0.currentActiveSlot)
			if value18 then
				registerVal16 = {}
				registerVal16.ref = registerVal14
				CoD.perController[arg1].CACSpecficModelValueFocusTable = registerVal16
				CoD.perController[arg1].CACWildcardContextualMenu = true
				CoD.perController[arg1].weaponCategory = value18
				OpenPopup(arg0, "WildcardSelect", arg1)
			else
				registerVal15 = Engine.GetItemIndexFromReference(registerVal14)
				registerVal16 = IsProgressionEnabled(arg1)
				if registerVal16 then
					registerVal16 = Engine.IsItemLocked(arg1, registerVal15)
					registerVal16 = Engine.IsItemPurchased(arg1, registerVal15)
					if not arg1 or not registerVal16 then
						return 
					end
				end
				local registerVal17 = Engine.GetModelForController(arg1)
				registerVal16 = Engine.GetModel(registerVal17, "CACMenu.numWildcardItemsToRemove")
				Engine.SetModelValue(registerVal16, 1.000000)
				CoD.perController[arg1].wildcardOverCapacityRefName = registerVal14
				registerVal17 = OpenPopup(arg0, "WildcardCapacity", arg1)
				local registerVal18 = {}
				registerVal18.classNum = CoD.perController[arg1].classNum
				registerVal18.wildcardToReplace = registerVal14
				registerVal17.acceptData = registerVal18
			end
		end
		local registerVal13 = CoD.CACUtility.PrimaryGunfighterEquippedCount(CoD.perController[arg1].classModel)
		if arg0.currentActiveSlot == "primary" then
			CoD.perController[arg1].weaponSlot = "primary"
		else
			if arg0.currentActiveSlot == "primaryattachment1" then
				CoD.perController[arg1].weaponSlot = "primary"
				if registerVal4.primary then
					CoD.perController[arg1].attachmentType = "optic"
				else
					if arg0.currentActiveSlot ~= "primaryattachment2" and arg0.currentActiveSlot ~= "primaryattachment3" then
						if arg0.currentActiveSlot ~= "primaryattachment4" or 1.000000 > registerVal13 then
							if arg0.currentActiveSlot ~= "primaryattachment5" or 2.000000 > registerVal13 then
								if arg0.currentActiveSlot == "primaryattachment6" and 3.000000 <= registerVal13 then
									registerVal14 = IsPrimaryWeaponAttachmentAvailable(arg1)
									CoD.perController[arg1].weaponSlot = "primary"
									if registerVal14 and registerVal4.primary then
										CoD.perController[arg1].attachmentType = "attachment"
									end
								end
							end
						else
							if arg0.currentActiveSlot == "secondary" then
								CoD.perController[arg1].weaponSlot = "secondary"
								registerVal14 = CoD.CACUtility.IsBonusCardEquippedByName(registerVal4, "bonuscard_overkill")
								if registerVal14 == true then
									CoD.perController[arg1].weaponClassGroup = "primary"
								else
									if arg0.currentActiveSlot == "secondaryattachment1" then
										CoD.perController[arg1].weaponSlot = "secondary"
										if registerVal4.secondary then
											CoD.perController[arg1].attachmentType = "optic"
										else
											if arg0.currentActiveSlot ~= "secondaryattachment2" then
												registerVal14 = CoD.CACUtility.SearchForBonusCard("bonuscard_secondary_gunfighter", arg1)
												if arg0.currentActiveSlot == "secondaryattachment3" and registerVal14 ~= "" then
													registerVal14 = IsSecondaryWeaponAttachmentAvailable(arg1)
													CoD.perController[arg1].weaponSlot = "secondary"
													if registerVal14 and registerVal4.secondary then
														CoD.perController[arg1].attachmentType = "attachment"
													end
												else
													if arg0.currentActiveSlot == "primarygadget" then
														registerVal14 = CoD.CACUtility.IsBonusCardEquippedByName(registerVal4, "bonuscard_two_tacticals")
														if registerVal14 == true then
															CoD.perController[arg1].weaponClassGroup = "secondarygadget"
														else
															if arg0.currentActiveSlot ~= "primarygadgetattachment1" and arg0.currentActiveSlot == "primarygadgetattachment2" or arg0.currentActiveSlot == "primarygadgetattachment3" then
																ToggleGadgetMod(arg0, arg1, arg0.currentActiveSlot)
															else
																if arg0.currentActiveSlot == "secondarygadget" then
																else
																	if arg0.currentActiveSlot ~= "secondarygadgetattachment1" and arg0.currentActiveSlot == "secondarygadgetattachment2" or arg0.currentActiveSlot == "secondarygadgetattachment3" then
																		ToggleGadgetMod(arg0, arg1, arg0.currentActiveSlot)
																	else
																		if arg0.currentActiveSlot ~= "specialty1" then
																			registerVal14 = CoD.CACUtility.SearchForBonusCard("bonuscard_perk_1_greed", arg1)
																			if arg0.currentActiveSlot ~= "specialty4" or registerVal14 == "" then
																				if arg0.currentActiveSlot ~= "specialty2" then
																					registerVal14 = CoD.CACUtility.SearchForBonusCard("bonuscard_perk_2_greed", arg1)
																					if arg0.currentActiveSlot ~= "specialty5" or registerVal14 == "" then
																						if arg0.currentActiveSlot ~= "specialty3" then
																							registerVal14 = CoD.CACUtility.SearchForBonusCard("bonuscard_perk_3_greed", arg1)
																							if arg0.currentActiveSlot == "specialty6" and registerVal14 ~= "" then
																							end
																						end
																					end
																				end
																			end
																		else
																			if arg0.currentActiveSlot ~= "bonuscard1" and arg0.currentActiveSlot == "bonuscard2" or arg0.currentActiveSlot == "bonuscard3" then
																			else
																				if arg0.currentActiveSlot == "cybercom_tacrig1" or arg0.currentActiveSlot == "cybercom_tacrig2" then
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
		if "cac_loadout_edit_submenu" then
			Engine.PlaySound("cac_loadout_edit_submenu")
		end
		if "TacticalRigSelect" then
			if "TacticalRigSelect" == "WildcardSelect" then
				CheckGCCatchUp()
				OpenPopup(arg0, "TacticalRigSelect", arg1)
			else
				arg0.checkGC = true
				NavigateToMenu(arg0, "TacticalRigSelect", true, arg1)
			end
		end
	end
end

function NavigateToPersonalizeMenu(arg0, arg1)
	local registerVal4 = CoD.CACUtility.GetItemEquippedInSlot(arg0.currentActiveSlot, arg1, CoD.perController[arg1].classModel)
	local registerVal5 = CoD.CACUtility.GetItemRefEquippedInSlot(arg0.currentActiveSlot, arg1, CoD.perController[arg1].classModel)
	local registerVal8 = CoD.CACUtility.ItemEquippedInSlot("primary", arg1)
	if arg0.currentActiveSlot ~= "primary" or not registerVal8 then
		registerVal8 = CoD.CACUtility.ItemEquippedInSlot("secondary", arg1)
		if arg0.currentActiveSlot == "secondary" and registerVal8 then
		end
	else
		registerVal8 = LUI.startswith(arg0.currentActiveSlot, "primaryattachment")
		registerVal8 = LUI.startswith(arg0.currentActiveSlot, "secondaryattachment")
		if not arg1 or registerVal8 then
			registerVal8 = CoD.CACUtility.ItemEquippedInSlot(arg0.currentActiveSlot, arg1)
			registerVal8 = IsLive()
			if arg0.currentActiveSlot ~= "primaryattachment1" and arg0.currentActiveSlot ~= "secondaryattachment1" and registerVal8 and registerVal8 and registerVal5 ~= "dw" then
				registerVal8 = CoD.CACUtility.GetWeaponSlotForAttachmentSlot(arg0.currentActiveSlot)
				local registerVal9 = CoD.CACUtility.GetItemRefEquippedInSlot(registerVal8, arg1, CoD.perController[arg1].classModel)
				local registerVal10 = CoD.CACUtility.GetItemIndexEquippedInSlot(registerVal8, arg1, CoD.perController[arg1].classModel)
				local registerVal11 = CoD.CACUtility.GetItemIndexEquippedInSlot(arg0.currentActiveSlot, arg1, CoD.perController[arg1].classModel)
				local registerVal12 = Engine.GetItemAttachment(registerVal10, registerVal11)
				local registerVal13 = Engine.GetAttachmentCosmeticVariantCountForAttachment(registerVal9, registerVal12)
				if registerVal8 and registerVal13 and 0.000000 < registerVal13 then
					CoD.WC_Category.ACV.selectedAttachmentIndex = registerVal4
					CoD.WC_Category.ACV.selectedAttachment = registerVal5
				else
				else
					if arg0.currentActiveSlot == "primaryattachment1" or arg0.currentActiveSlot == "secondaryattachment1" then
						registerVal8 = CoD.CACUtility.AttachmentHasCustomReticle(registerVal5)
						if CoD.CACUtility.EmptyItemIndex < registerVal4 and registerVal8 then
							CoD.perController[arg1].customReticleAttachmentIndex = registerVal4
							CoD.perController[arg1].customReticleAttachment = registerVal5
						end
					end
				end
			end
		end
	end
	if "ReticleSelect" then
		CoD.perController[arg1].weaponCategory = arg0.currentActiveSlot
		NavigateToMenu(arg0, "ReticleSelect", true, arg1)
	end
end

function chooseClass_ClientChanged(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME)
	local registerVal7 = Engine.GetModelForController(arg2)
	local registerVal6 = Engine.GetModel(registerVal7, "ChooseClassCPClientMenu")
	registerVal7 = Engine.GetModel(registerVal6, "selectedClientIndex")
	local registerVal8 = Engine.GetModel(registerVal6, "numActiveClients")
	if registerVal6 and registerVal7 and registerVal8 then
		local registerVal9 = Engine.GetModelValue(registerVal8)
		local registerVal10 = Engine.GetModelValue(registerVal7)
		local registerVal11 = Engine.LobbyGetSessionClients(Enum.LobbyModule.LOBBY_MODULE_CLIENT, Enum.LobbyType.LOBBY_TYPE_GAME)
		local registerVal13 = Engine.GetXUID64(arg2)
		if (registerVal10 + arg3) < 1.000000 then
		else
			if registerVal9 < registerVal9 then
			end
		end
		local registerVal15 = Engine.GetModel(registerVal6, ("client" .. 1.000000))
		if registerVal15 then
			local registerVal16 = Engine.GetModelValue(Engine.GetModel(registerVal15, "xuid"))
			if registerVal16 == registerVal13 then
			else
				for index18=1.000000, #"xuid", 1.000000 do
					if registerVal11.sessionClients[index18].xuid == registerVal16 then
					else
					end
				end
				if registerVal11.sessionClients[index18] ~= nil then
					local registerVal18 = Engine.IsSharedLoadoutAvailableForClient(arg2, registerVal16)
				else
				end
			end
		end
		Engine.SetModelValue(registerVal7, 1.000000)
		registerVal15 = Engine.GetModel(registerVal6, ("client" .. 1.000000))
		arg0.chooseClassCPClientIngame0:setModel(registerVal15)
		CoD.CACUtility.ResetCPCustomClasses(arg2)
		arg0.classList.classList:updateDataSource(true)
		registerVal18 = {}
		registerVal18.name = "gain_focus"
		registerVal18.controller = arg2
		arg0.classList.classList:processEvent(registerVal18)
	end
end

function chooseClass_TabMPClassesListLeft(arg0, arg1)
	if not arg0.ClassSetTabWidget then
		return 
	end
	return arg0.ClassSetTabWidget.Internal.Tabs:navigateItemLeft()
end

function chooseClass_TabMPClassesListRight(arg0, arg1)
	if not arg0.ClassSetTabWidget then
		return 
	end
	return arg0.ClassSetTabWidget.Internal.Tabs:navigateItemRight()
end

function CAC_TabChanged(arg0, arg1, arg2)
	DataSources.Unlockables.setCurrentFilterItem(arg1.filter)
	arg0.weaponList:updateDataSource(true)
	local registerVal5 = arg0.weaponList:getItemAt(1.000000)
	if not arg0.performingSetup and registerVal5 then
		arg0.weaponList:setActiveItem(registerVal5, 0.000000, true, true)
	end
end

function Cybercore_TabChanged(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal3, "CybercoreUpgradeMenu")
	local registerVal5 = Engine.GetModel(registerVal4, "selectedCore")
	Engine.SetModelValue(registerVal5, arg1.itemRef)
	local registerVal7 = Engine.GetModel(registerVal4, "currentCybercoreName")
	Engine.SetModelValue(registerVal7, arg1.itemName)
	arg0.upgradeTree:updateTree(arg2)
	local registerVal8 = {}
	registerVal8.name = "update_state"
	registerVal8.controller = arg2
	arg0:processEvent(registerVal8)
end

function SetClassItem(arg0, arg1, arg2)
	local registerVal5 = arg1:getModel(arg2, "itemIndex")
	if registerVal5 then
		local registerVal7 = Engine.GetModelValue(registerVal5)
	end
	registerVal7 = arg1:getModel(arg2, "upgradeItemIndex")
	if registerVal7 then
		local registerVal9 = Engine.GetModelValue(registerVal7)
	end
	local registerVal10 = IsCACItemUpgraded(arg0, arg1, arg2)
	if registerVal10 then
	end
	local registerVal13 = arg0:getModel()
	registerVal10 = AttemptAttachItem(arg0, arg2, registerVal13, CoD.perController[arg2].classNum, CoD.perController[arg2].weaponCategory, registerVal9)
	if registerVal10 then
		if CoD.perController[arg2].weaponCategory == "primary" or CoD.perController[arg2].weaponCategory == "secondary" then
			CoD.CACUtility.ForceStreamAttachmentImages(arg2)
		end
		BreakWeaponVariantLink(arg2)
		arg0:playSound("equip_item")
		registerVal10 = GoBack(arg0, arg2)
		if registerVal10 then
			registerVal13 = {}
			registerVal13.name = "update_state"
			registerVal13.controller = arg2
			registerVal10:processEvent(registerVal13)
		end
		return registerVal10
	end
end

function SetClassWildcard(arg0, arg1, arg2)
	local registerVal7 = arg1:getModel(arg2, "itemIndex")
	if registerVal7 then
		local registerVal9 = Engine.GetModelValue(registerVal7)
	end
	registerVal9 = Engine.GetModel(CoD.perController[arg2].classModel, (CoD.perController[arg2].weaponCategory .. ".itemIndex"))
	local registerVal10 = Engine.GetModelValue(registerVal9)
	if registerVal9 and CoD.CACUtility.EmptyItemIndex < registerVal10 and registerVal10 == registerVal9 then
	end
	local registerVal13 = arg0:getModel()
	registerVal10 = AttemptAttachItem(arg0, arg2, registerVal13, CoD.perController[arg2].classNum, CoD.perController[arg2].weaponCategory, registerVal9)
	if not arg1 or registerVal10 then
		arg0:playSound("equip_item")
		registerVal10 = GoBack(arg0, arg2)
		if CoD.CACUtility.CustomClass_LastClassNum and registerVal10.menuName == "CustomClass" then
			registerVal10:navigateTo(CoD.CACUtility.CustomClass_LastSelection)
			registerVal13 = {}
			registerVal13.name = "update_state"
			registerVal13.controller = arg2
			registerVal10:processEvent(registerVal13)
		end
	end
end

function SetClassAttachment(arg0, arg1, arg2)
	local registerVal6 = arg1:getModel(arg2, "itemIndex")
	if registerVal6 then
		local registerVal8 = Engine.GetModelValue(registerVal6)
	end
	local registerVal12 = arg0:getModel()
	local registerVal9 = AttemptAttachItem(arg0, arg2, registerVal12, CoD.perController[arg2].classNum, CoD.perController[arg2].weaponCategory, registerVal8, true)
	BreakWeaponVariantLink(arg2)
	CoD.CACUtility.GetCustomClassModel(arg2, CoD.perController[arg2].classNum, CoD.perController[arg2].classModel)
	arg0:playSound("equip_item")
	registerVal9 = GoBack(arg0, arg2)
	if registerVal9 and registerVal9 then
		registerVal12 = {}
		registerVal12.name = "update_state"
		registerVal12.controller = arg2
		registerVal9:processEvent(registerVal12)
	end
end

function SetWeaponVariant(arg0, arg1, arg2)
	if CoD.perController[arg2].weaponCategory ~= "primary" then
	end
	local registerVal15 = Engine.GetMaxAllocation(arg2)
	local registerVal16 = Engine.GetModel(CoD.perController[arg2].classModel, "allocationSpent")
	if not true then
	end
	if registerVal16 then
		local registerVal27 = Engine.GetModelValue(registerVal16)
	end
	registerVal27 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].classModel, (CoD.perController[arg2].weaponCategory .. ".itemIndex")))
	if CoD.CACUtility.EmptyItemIndex < registerVal27 then
	end
	local registerVal28, registerVal29, registerVal30 = ipairs(CoD.CACUtility.SecondaryAttachmentSlotNameList)
	for index31,value32 in registerVal28, registerVal29, registerVal30 do
		local registerVal33 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].classModel, (value32 .. ".itemIndex")))
		if CoD.CACUtility.EmptyItemIndex < registerVal33 then
		end
	end
	if true then
		registerVal28 = CoD.CACUtility.PrimaryGunfighterEquippedCount(CoD.perController[arg2].classModel)
	else
		registerVal28 = CoD.CACUtility.IsBonusCardEquipped(CoD.CACUtility.bonuscards.secondary_gunfighter, CoD.perController[arg2].classModel)
		if registerVal28 then
		end
	end
	registerVal29 = CoD.CACUtility.GetItemEquippedInSlot((CoD.perController[arg2].weaponCategory .. "Camo"), arg2, CoD.perController[arg2].classModel)
	if arg1.weaponVariantInfo.camoIndex ~= registerVal29 then
		registerVal30 = Engine.GetWeaponOptionEntitlementString(arg1.weaponVariantInfo.camoIndex)
		if not registerVal30 then
		end
		local registerVal31 = CoD.StoreUtility.DoesInventoryItemExistsByName("")
		if registerVal31 then
			registerVal31 = Engine.GetWeaponOptionName(arg1.weaponVariantInfo.camoIndex)
			LUI.CoDMetrics.InventoryItemEquipped(arg2, registerVal31, arg1.weaponVariantInfo.camoIndex, "CamoVariantEquip")
		end
	end
	if true then
		local registerVal40 = math.max((arg1.weaponVariantInfo.wildcardNeededCount - 1.000000), 0.000000)
		local registerVal39 = math.min(registerVal40, CoD.CACUtility.maxPrimaryGunfighters)
	else
		registerVal40 = math.max(registerVal39, 0.000000)
		registerVal39 = math.min(registerVal40, CoD.CACUtility.maxSecondaryGunfighters)
	end
	registerVal39 = IsProgressionEnabled(arg2)
	if registerVal39 then
		if true then
			registerVal40, registerVal41, registerVal42 = ipairs(CoD.CACUtility.PrimaryGunfighterWildcards)
			if arg1.weaponVariantInfo.wildcardNeededFromVariantCount <= 0.000000 then
			else
				local registerVal45 = CoD.CACUtility.IsBonusCardEquipped(, CoD.perController[arg2].classModel)
				if registerVal45 then
				else
					registerVal45 = Engine.GetItemIndexFromReference()
					local registerVal46 = Engine.IsItemLocked(arg2, registerVal45)
					if not registerVal46 then
						local registerVal47 = Engine.IsItemPurchased(arg2, registerVal45)
					else
					end
					local registerVal50 = {}
					registerVal50.ref = 
					registerVal50.itemIndex = registerVal45
					registerVal50.isLocked = registerVal46
					registerVal50.isPurchasable = true
					table.insert({}, registerVal50)
				end
			end
		else
			if 0.000000 < registerVal39 and (0.000000 + 1.000000) < arg1.weaponVariantInfo.wildcardNeededFromVariantCount then
				registerVal39 = CoD.CACUtility.IsBonusCardEquipped("bonuscard_secondary_gunfighter", CoD.perController[arg2].classModel)
				if registerVal39 then
				else
					registerVal39 = Engine.GetItemIndexFromReference("bonuscard_secondary_gunfighter")
					registerVal40 = Engine.IsItemLocked(arg2, registerVal39)
					if not registerVal40 then
						registerVal41 = Engine.IsItemPurchased(arg2, registerVal39)
					else
					end
					local registerVal44 = {}
					registerVal44.ref = "bonuscard_secondary_gunfighter"
					registerVal44.itemIndex = registerVal39
					registerVal44.isLocked = registerVal40
					registerVal44.isPurchasable = true
					table.insert({}, registerVal44)
				else
					if true then
						registerVal40 = math.max((arg1.weaponVariantInfo.wildcardNeededFromVariantCount - 1.000000), 0.000000)
						registerVal39 = math.min(registerVal40, CoD.CACUtility.maxPrimaryGunfighters)
					else
						registerVal40 = math.max(registerVal39, 0.000000)
						registerVal39 = math.min(registerVal40, CoD.CACUtility.maxSecondaryGunfighters)
					end
					if 0.000000 < arg1.weaponVariantInfo.wildcardNeededFromVariantCount and 0.000000 < registerVal39 then
						if true then
							registerVal40, registerVal41, registerVal42 = ipairs(CoD.CACUtility.PrimaryGunfighterWildcards)
							if arg1.weaponVariantInfo.wildcardNeededFromVariantCount <= 0.000000 then
							else
								registerVal45 = CoD.CACUtility.IsBonusCardEquipped(registerVal44, CoD.perController[arg2].classModel)
								if registerVal45 then
								else
									registerVal45 = Engine.GetItemIndexFromReference(registerVal44)
									local registerVal48 = {}
									registerVal48.ref = registerVal44
									registerVal48.itemIndex = registerVal45
									registerVal48.isLocked = false
									table.insert({}, registerVal48)
								end
							else
								registerVal39 = CoD.CACUtility.IsBonusCardEquipped("bonuscard_secondary_gunfighter", CoD.perController[arg2].classModel)
								if registerVal39 then
								else
									registerVal39 = Engine.GetItemIndexFromReference("bonuscard_secondary_gunfighter")
									registerVal42 = {}
									registerVal42.ref = "bonuscard_secondary_gunfighter"
									registerVal42.itemIndex = registerVal39
									registerVal42.isLocked = false
									table.insert({}, registerVal42)
								else
								end
							end
						end
					end
				end
			end
		end
	end
	registerVal40, registerVal41, registerVal42 = ipairs({})
	for index43,value44 in registerVal40, registerVal41, registerVal42 do
		if value44.isLocked and (not arg1.dontRemoveAttachments) then
			for index45=#value44.isLocked, 2.000000, -1.000000 do
				if arg1.weaponVariantInfo.unlockedAttachmentsByIndex[index45] ~= CoD.CACUtility.EmptyItemIndex then
					arg1.weaponVariantInfo.unlockedAttachmentsByIndex[index45] = CoD.CACUtility.EmptyItemIndex
				else
				end
			end
		end
		if value44.isPurchasable then
		end
	end
	registerVal40, registerVal41, registerVal42 = ipairs(arg1.weaponVariantInfo.unlockedAttachmentsByIndex)
	for index43,value44 in registerVal40, registerVal41, registerVal42 do
		if CoD.CACUtility.EmptyItemIndex < value44 then
		end
	end
	table.remove({}, 1.000000)
	if 0.000000 < (registerVal39 - 1.000000) then
		registerVal42, registerVal43, registerVal44 = ipairs(CoD.CACUtility.BonuscardSlotNameList)
		for index45,value46 in registerVal42, registerVal43, registerVal44 do
			registerVal47 = CoD.CACUtility.ItemEquippedInSlot(value46, arg2, CoD.perController[arg2].classModel)
			if not registerVal47 then
			end
		end
		if (0.000000 + 1.000000) < (registerVal39 - 1.000000) then
		end
	end
	registerVal42 = IsCampaign()
	if not registerVal42 and registerVal15 < (((((registerVal27 - 1.000000) - (0.000000 + 1.000000)) - 1.000000) + ((1.000000 + (0.000000 + 1.000000)) + (arg1.weaponVariantInfo.wildcardNeededFromVariantCount - 1.000000))) + (((((1.000000 - 1.000000) - 1.000000) - 1.000000) - 1.000000) - arg1.weaponVariantInfo.wildcardNeededFromVariantCount)) then
	end
	if true then
		registerVal45, registerVal46, registerVal47 = ipairs({})
		for index48,value49 in registerVal45, registerVal46, registerVal47 do
			if value49.isPurchasable then
			else
			end
		end
		registerVal45 = CoD.OverlayUtility.CreateOverlay(arg2, arg0, "UnlockClassItem", arg2, value49.itemIndex, nil, true)
		registerVal46 = {}
		registerVal46.variantInfoElement = arg1
		registerVal45.acceptData = registerVal46
	else
		if true then
			CoD.perController[arg2].wildcardOverCapacityRefName = {}[1.000000].ref
			registerVal43 = Engine.GetModelForController(arg2)
			registerVal42 = Engine.GetModel(registerVal43, "CACMenu.numWildcardItemsToRemove")
			Engine.SetModelValue(registerVal42, ((registerVal39 - 1.000000) - (0.000000 + 1.000000)))
			registerVal43 = OpenPopup(arg0, "WildcardCapacity", arg2)
			registerVal44 = {}
			registerVal44.classNum = CoD.perController[arg2].classNum
			registerVal44.variantInfoElement = arg1
			registerVal44.wildcarUnlockedTable = {}
			registerVal43.acceptData = registerVal44
		else
			if true then
				registerVal44 = Engine.GetModelForController(arg2)
				registerVal43 = Engine.GetModel(registerVal44, "CACMenu.numItemsToRemove")
				Engine.SetModelValue(registerVal43, ((((((registerVal27 - 1.000000) - (0.000000 + 1.000000)) - 1.000000) + ((1.000000 + (0.000000 + 1.000000)) + (arg1.weaponVariantInfo.wildcardNeededFromVariantCount - 1.000000))) + (((((1.000000 - 1.000000) - 1.000000) - 1.000000) - 1.000000) - arg1.weaponVariantInfo.wildcardNeededFromVariantCount)) - registerVal15))
				registerVal44 = OpenPopup(arg0, "RemoveItemFromClass", arg2)
				registerVal45 = {}
				registerVal45.slotName = CoD.perController[arg2].weaponCategory
				registerVal45.weaponVariantInfo = arg1.weaponVariantInfo
				registerVal45.attachmentsByIndex = arg1.weaponVariantInfo.unlockedAttachmentsByIndex
				registerVal45.wildcarUnlockedTable = {}
				registerVal45.bonuscardGunfighterForSlot = "bonuscard_secondary_gunfighter"
				registerVal44.acceptData = registerVal45
			else
				AttachWeaponVariant(arg0, arg2, CoD.perController[arg2].weaponCategory, arg1.weaponVariantInfo, arg1.weaponVariantInfo.unlockedAttachmentsByIndex, {}, "bonuscard_secondary_gunfighter")
				GoBackToCustomClassMenu(arg0, arg2)
			end
		end
	end
end

function BreakWeaponVariantLink(arg0, arg1)
	if not arg1 then
	end
	local registerVal6 = CoD.CACUtility.GetBaseWeaponLoadoutSlotName(CoD.perController[arg0].weaponCategory)
	if registerVal6 == "primary" or registerVal6 == "secondary" then
		registerVal6 = CoD.GetClassItem(arg0, CoD.perController[arg0].classNum, (registerVal6 .. "gunsmithvariant"))
		if registerVal6 ~= CoD.CACUtility.EmptyItemIndex then
			local registerVal7 = CoD.CraftUtility.Gunsmith.GetVariantByIndex(arg0, (registerVal6 - 1.000000))
			local registerVal10 = Engine.Localize("MENU_WEAPON_VARIANT_LINK_BROKEN")
			CoD.OverlayUtility.ShowToast("BreakVariantLink", registerVal10, registerVal7.variantName, "uie_t7_mp_icon_header_gunsmith")
		end
		CoD.SetClassItem(arg0, CoD.perController[arg0].classNum, (registerVal6 .. "gunsmithvariant"), CoD.CACUtility.EmptyItemIndex)
	end
end

function UpdateShownCybercoreXmodel(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "baseItemIndex")
	local registerVal3 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	if registerVal2 then
		local registerVal5 = Engine.GetModelValue(registerVal2)
		local registerVal6 = CoD.CACUtility.GetCybercoreXModel(registerVal5, registerVal3)
		local registerVal9 = IsCybercoreAbilityAvailable(arg0, arg1)
		local registerVal10 = IsCybercoreAbilityPurchasable(arg0, arg1)
		local registerVal14 = CoD.GetLocalClientAdjustedNum(arg1)
		Engine.SendClientScriptNotify(arg1, ("CustomClass_update" .. registerVal14), "cybercore", registerVal6, "select01", nil, nil, registerVal9, registerVal10)
	end
end

function FocusClassItem(arg0, arg1, arg2)
	local registerVal6 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal7 = arg1:getModel(arg2, "itemIndex")
	if registerVal7 then
		local registerVal9 = Engine.GetModelValue(registerVal7)
	else
		if arg1.itemIndex then
		end
	end
	local registerVal13 = LUI.startswith(CoD.perController[arg2].weaponCategory, "primaryattachment")
	if registerVal13 then
	else
		registerVal13 = LUI.startswith(CoD.perController[arg2].weaponCategory, "secondaryattachment")
		if registerVal13 then
		else
			registerVal13 = LUI.startswith(CoD.perController[arg2].weaponCategory, "specialty")
			if registerVal13 then
				registerVal13 = CoD.CACUtility.GetPerkXModel(arg1.itemIndex, registerVal6)
			else
				registerVal13 = LUI.startswith(CoD.perController[arg2].weaponCategory, "bonuscard")
				if registerVal13 then
					registerVal13 = CoD.CACUtility.GetBonuscardXModel(arg1.itemIndex, registerVal6)
				else
					registerVal13 = LUI.startswith(CoD.perController[arg2].weaponCategory, "cybercore")
					if registerVal13 then
						registerVal13 = CoD.CACUtility.GetCybercoreXModel(arg1.itemIndex, registerVal6)
					else
						registerVal13 = LUI.startswith(CoD.perController[arg2].weaponCategory, "cybercom")
						if registerVal13 then
							registerVal13 = CoD.CACUtility.GetPerkXModel(arg1.itemIndex, registerVal6)
						end
					end
				end
			end
		end
	end
	registerVal13 = Engine.GetModel(CoD.perController[arg2].classModel, ("cybercom" .. ".itemIndex"))
	local registerVal14 = Engine.GetModel(CoD.perController[arg2].classModel, (CoD.perController[arg2].weaponCategory .. ".itemIndex"))
	if registerVal13 and registerVal14 and "cybercom" ~= "cybercore" then
		local registerVal15 = Engine.GetModelValue(registerVal13)
		local registerVal16 = Engine.GetAttachmentRef(registerVal15, arg1.itemIndex)
		local registerVal17 = Engine.GetModelValue(registerVal14)
		local registerVal18 = Engine.GetAttachmentRef(registerVal15, registerVal17)
		local registerVal19 = Engine.GetItemRef(registerVal15)
		local registerVal21 = CoD.gameMode:lower()
		local registerVal22, registerVal23, registerVal24 = ipairs(CoD.CACUtility.SecondaryAttachmentSlotNameList)
		for index25,value26 in registerVal22, registerVal23, registerVal24 do
			local registerVal27 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].classModel, (value26 .. ".itemIndex")))
			if CoD.CACUtility.EmptyItemIndex < registerVal27 then
				if registerVal27 ~= registerVal17 then
					local registerVal28 = Engine.GetAttachmentRef(registerVal15, registerVal27)
					local registerVal29 = {}
					registerVal29.index = registerVal27
					registerVal29.ref = registerVal28
					table.insert({}, registerVal29)
				else
				end
			end
		end
		registerVal22, registerVal23, registerVal24 = ipairs({})
		for index25,value26 in registerVal22, registerVal23, registerVal24 do
			registerVal29 = Engine.IsOptic(registerVal15, arg1.itemIndex)
			local registerVal30 = Engine.IsOptic(registerVal15, value26.index)
			if arg1 or not registerVal30 then
				local registerVal31 = Engine.AreAttachmentsCompatible(registerVal15, arg1.itemIndex, value26.index)
				if registerVal31 then
				end
			end
		end
		registerVal22 = CoD.CACUtility.GetACVariantsFromClassExcludeAttachment(arg2, CoD.perController[arg2].classModel, CoD.perController[arg2].weaponCategory, registerVal16)
		registerVal29 = CoD.GetLocalClientAdjustedNum(arg2)
		Engine.SendClientScriptNotify(arg2, ("CustomClass_focus" .. registerVal29), "cybercom", (((registerVal19 .. "_" .. registerVal21) .. "+" .. value26.ref) .. "+" .. registerVal16), registerVal16, "none", (registerVal22 .. (registerVal16 .. "," .. arg1.acvIndex)))
		if (((registerVal19 .. "_" .. registerVal21) .. "+" .. value26.ref) .. "+" .. registerVal16) and (((registerVal19 .. "_" .. registerVal21) .. "+" .. value26.ref) .. "+" .. registerVal16) ~= "" and registerVal14 ~= nil then
			registerVal15 = IsCACItemLocked(arg0, arg1, arg2)
			if not registerVal15 then
				registerVal15 = IsSelfModelValueTrue(arg1, arg2, "isBMClassified")
			else
			end
			registerVal16 = IsCACItemPurchased(arg1, arg2)
			registerVal22 = CoD.GetLocalClientAdjustedNum(arg2)
			Engine.SendClientScriptNotify(arg2, ("CustomClass_update" .. registerVal22), CoD.perController[arg2].weaponCategory, registerVal13, "select01", nil, nil, true, (not registerVal16))
		end
	end
end

function FocusWeapon(arg0, arg1, arg2)
	local registerVal5 = CoD.PrestigeUtility.GetPermanentUnlockMode()
	local registerVal6 = arg1:getModel(arg2, "itemIndex")
	if registerVal6 then
		local registerVal8 = Engine.GetModelValue(registerVal6)
		registerVal8 = Engine.GetItemRef(registerVal8, registerVal5)
		if CoD.perController[arg2].weaponCategory == "secondary" then
		end
		local registerVal10 = CoD.gameMode:lower()
		local registerVal12 = CoD.CACUtility.EmptyWeaponOptions()
		local registerVal13 = IsCACItemLocked(arg0, arg1, arg2)
		local registerVal14 = IsCACItemPurchased(arg1, arg2)
		registerVal14 = IsSelfModelValueTrue(arg1, arg2, "isBMClassified")
		if not registerVal14 and not registerVal14 then
			registerVal14 = IsSelfModelValueTrue(arg1, arg2, "isContractClassified")
		else
		end
		local registerVal19 = CoD.GetLocalClientAdjustedNum(arg2)
		Engine.SendClientScriptNotify(arg2, ("CustomClass_update" .. registerVal19), CoD.perController[arg2].weaponCategory, (registerVal8 .. "_" .. registerVal10), "select01", registerVal12, nil, (not registerVal13), true)
	end
end

function FocusWeaponVariant(arg0, arg1, arg2)
	local registerVal7 = Engine.GetModelForController(arg2)
	local registerVal6 = Engine.GetModel(registerVal7, "CACMenu.curWeaponVariantName")
	Engine.SetModelValue(registerVal6, arg1.weaponVariantInfo.variantName)
	registerVal7 = Engine.GetItemRef(arg1.weaponVariantInfo.weaponIndex)
	local registerVal8 = CoD.gameMode:lower()
	local registerVal10, registerVal11, registerVal12 = ipairs(arg1.weaponVariantInfo.attachmentsByIndex)
	for index13,value14 in registerVal10, registerVal11, registerVal12 do
		local registerVal15 = Engine.GetAttachmentRef(arg1.weaponVariantInfo.weaponIndex, value14)
	end
	registerVal10 = CoD.CACUtility.GetCameraNameForAttachments(((registerVal7 .. "_" .. registerVal8) .. "+" .. registerVal15))
	registerVal11 = CoD.CACUtility.GetWeaponOptionsFromVariantInfo(arg2, arg1.weaponVariantInfo)
	registerVal12 = CoD.CACUtility.GetAttachmentCosmeticVariantsFromVariantInfo(arg1.weaponVariantInfo)
	local registerVal16 = CoD.GetLocalClientAdjustedNum(arg2)
	Engine.SendClientScriptNotify(arg2, ("CustomClass_update" .. registerVal16), CoD.perController[arg2].weaponCategory, ((registerVal7 .. "_" .. registerVal8) .. "+" .. registerVal15), registerVal10, registerVal11, registerVal12)
end

function MarkCACPaintshopDataDirty(arg0, arg1)
	Engine.MarkPSDataDirty(arg1, false)
end

function MarkCACPaintshopDataDirtyForEdittingSpecialist(arg0)
	local registerVal1 = IsLuaCodeVersionAtLeast(20.000000)
	if registerVal1 then
		Engine.MarkPSDataDirty(arg0, false, CoD.CCUtility.Heroes.HeroIndexForEdits)
	else
		MarkCACPaintshopDataDirty(nil, arg0)
	end
end

function ClearLocalPSCharacter(arg0)
	local registerVal1 = IsLuaCodeVersionAtLeast(20.000000)
	if registerVal1 then
		Engine.ClearLocalPSCharacter(arg0)
	end
end

function RemoveItemFromClass(arg0, arg1, arg2)
	local registerVal3 = arg0:ShowRemovePrompt(arg2)
	if arg0.ShowRemovePrompt ~= nil and not registerVal3 then
		return 
	end
	local registerVal6 = RemoveItemFromClassSlot(arg0.currentActiveSlot, arg2)
	if arg0.currentActiveSlot and registerVal6 then
		BreakWeaponVariantLink(arg2, arg0.currentActiveSlot)
		CoD.CACUtility.GetCustomClassModel(arg2, CoD.perController[arg2].classNum, CoD.perController[arg2].classModel)
		arg0:playSound("unequip_item")
		local registerVal8 = {}
		registerVal8.name = "update_state"
		registerVal8.controller = arg2
		arg0:processEvent(registerVal8)
		registerVal8 = {}
		registerVal8.name = "update_button_prompts"
		registerVal8.controller = arg2
		arg0:processEvent(registerVal8)
	end
	registerVal6 = Engine.GetWeaponString(arg2, CoD.perController[arg2].classNum, "primary")
	local registerVal7 = Engine.GetWeaponString(arg2, CoD.perController[arg2].classNum, "secondary")
	if registerVal6 ~= "" then
		Engine.SendClientScriptNotify(arg2, "CustomClass_primary", "custom_removeattach", registerVal6)
	end
	if registerVal7 ~= "" then
		Engine.SendClientScriptNotify(arg2, "CustomClass_secondary", "custom_removeattach", registerVal7)
	end
	local registerVal9 = CoD.CACUtility.GetBaseWeaponLoadoutSlotName(arg0.currentActiveSlot)
	if registerVal9 then
		if registerVal9 == "primary" or registerVal9 == "secondary" then
			local registerVal10 = Engine.GetWeaponString(arg2, CoD.perController[arg2].classNum, registerVal9)
		else
		else
			local registerVal13 = CoD.GetLocalClientAdjustedNum(arg2)
			Engine.SendClientScriptNotify(arg2, ("CustomClass_remove" .. registerVal13))
		end
	end
	if registerVal10 and registerVal10 ~= "" then
		registerVal10 = CoD.CACUtility.GetWeaponOptionsFromClass(arg2, CoD.perController[arg2].classModel, registerVal9)
		local registerVal11 = CoD.CACUtility.GetAttachmentCosmeticVariantsFromClass(arg2, CoD.perController[arg2].classModel, registerVal9)
		local registerVal12 = CoD.CACUtility.GetCameraNameForAttachments(registerVal10)
		local registerVal16 = CoD.GetLocalClientAdjustedNum(arg2)
		Engine.SendClientScriptNotify(arg2, ("CustomClass_update" .. registerVal16), arg0.currentActiveSlot, registerVal10, registerVal12, registerVal10, registerVal11)
	else
		registerVal13 = CoD.GetLocalClientAdjustedNum(arg2)
		Engine.SendClientScriptNotify(arg2, ("CustomClass_remove" .. registerVal13))
	end
end

function RemoveOverflowItemFromClass(arg0, arg1, arg2)
	local registerVal7 = Engine.GetUsedAllocation(arg2, arg0.acceptData.classNum)
	local registerVal8 = arg1:getModel(arg2, "itemSlot")
	if registerVal8 then
		local registerVal9 = Engine.GetModelValue(registerVal8)
		RemoveItemFromClassSlot(registerVal9, arg2)
	end
	registerVal9 = Engine.GetUsedAllocation(arg2, arg0.acceptData.classNum)
	local registerVal11 = Engine.GetMaxAllocation(arg2)
	local registerVal12 = arg0.itemList.activeWidget:isLastItem()
	if registerVal12 then
		arg0.itemList.savedActiveIndex = (arg0.itemList.activeWidget.gridInfoTable.zeroBasedIndex - 1.000000)
	end
	registerVal12 = arg0.itemList:getDataSource()
	registerVal12 = registerVal12.getCount(arg0.itemList)
	if 1.000000 < registerVal12 then
		arg0.itemList:updateDataSource()
	end
	if registerVal9 < registerVal11 then
		AttemptAttachItem(arg0, arg2, CoD.perController[arg2].classModel, arg0.acceptData.classNum, arg0.acceptData.slotName, arg0.acceptData.itemIndex)
		BreakWeaponVariantLink(arg2)
		registerVal12 = GoBack(arg0, arg2)
		if registerVal12.id ~= "Menu.CustomClass" then
			local registerVal13 = GoBack(registerVal12, arg2)
		else
			local registerVal15 = LUI.startswith(arg0.acceptData.slotName, "primarygadgetattachment")
			if registerVal15 then
				registerVal15 = Engine.GetWeaponString(arg2, arg0.acceptData.classNum, "primarygadget")
			else
				registerVal15 = LUI.startswith(arg0.acceptData.slotName, "secondarygadgetattachment")
				if registerVal15 then
					registerVal15 = Engine.GetWeaponString(arg2, arg0.acceptData.classNum, "secondarygadget")
				end
			end
			if registerVal15 and registerVal15 ~= "" then
				local registerVal18 = CoD.GetLocalClientAdjustedNum(arg2)
				Engine.SendClientScriptNotify(arg2, ("CustomClass_update" .. registerVal18), arg0.acceptData.slotName, registerVal15, "select01")
			end
		end
		if registerVal13 then
			registerVal15 = {}
			registerVal15.name = "update_state"
			registerVal15.controller = arg2
			registerVal13:processEvent(registerVal15)
			SetFocusToLoadoutWidgetAfterSetItem(registerVal13)
		end
	end
end

function WeaponVariantRemoveItemFromClass(arg0, arg1, arg2)
	local registerVal4 = Engine.GetUsedAllocation(arg2, CoD.perController[arg2].classNum)
	local registerVal5 = arg1:getModel(arg2, "itemSlot")
	if registerVal5 then
		local registerVal6 = Engine.GetModelValue(registerVal5)
		RemoveItemFromClassSlot(registerVal6, arg2)
	end
	registerVal6 = Engine.GetUsedAllocation(arg2, CoD.perController[arg2].classNum)
	local registerVal8 = arg0.itemList.activeWidget:isLastItem()
	if registerVal8 then
		arg0.itemList.savedActiveIndex = (arg0.itemList.activeWidget.gridInfoTable.zeroBasedIndex - 1.000000)
	end
	registerVal8 = arg0.itemList:getDataSource()
	registerVal8 = registerVal8.getCount(arg0.itemList)
	if 1.000000 < registerVal8 then
		arg0.itemList:updateDataSource()
	end
	local registerVal9 = Engine.GetModelForController(arg2)
	registerVal8 = Engine.GetModel(registerVal9, "CACMenu.numItemsToRemove")
	registerVal9 = Engine.GetModelValue(registerVal8)
	Engine.SetModelValue(registerVal8, (registerVal9 - (registerVal4 - registerVal6)))
	if (registerVal9 - (registerVal4 - registerVal6)) <= 0.000000 then
		AttachWeaponVariant(arg0, arg2, arg0.acceptData.slotName, arg0.acceptData.weaponVariantInfo, arg0.acceptData.attachmentsByIndex, arg0.acceptData.wildcarUnlockedTable, arg0.acceptData.bonuscardGunfighterForSlot)
		local registerVal15 = GoBack(arg0, arg2)
		GoBackToCustomClassMenu(registerVal15, arg2)
		ClearSavedState(registerVal15, arg2)
	end
end

function RemoveOverflowWildcardFromClass(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "itemSlot")
	if registerVal3 then
		local registerVal5 = Engine.GetModelValue(registerVal3)
		RemoveItemFromClassSlot(registerVal5, arg2)
	end
	if arg0.acceptData.variantInfoElement then
		table.remove(arg0.acceptData.wildcarUnlockedTable, 1.000000)
		if 0.000000 < #arg0.acceptData.wildcarUnlockedTable then
			CoD.perController[arg2].wildcardOverCapacityRefName = arg0.acceptData.wildcarUnlockedTable[1.000000].ref
			arg0.updateWildcardToReplaceInfo(arg0, arg2)
		else
			local registerVal9 = Engine.GetItemIndexFromReference(arg0.acceptData.wildcardToReplace)
		end
	end
	AttemptAttachItem(arg0, arg2, CoD.perController[arg2].classModel, arg0.acceptData.classNum, registerVal5, registerVal9)
	arg0.selectionList:updateDataSource()
	local registerVal10 = Engine.GetModelForController(arg2)
	registerVal9 = Engine.GetModel(registerVal10, "CACMenu.numWildcardItemsToRemove")
	registerVal10 = Engine.GetModelValue(registerVal9)
	Engine.SetModelValue(registerVal9, (registerVal10 - 1.000000))
	if (registerVal10 - 1.000000) <= 0.000000 then
		if arg0.acceptData.variantInfoElement then
			local registerVal11 = GoBack(arg0, arg2)
			arg0.acceptData.variantInfoElement.dontRemoveAttachments = true
			SetWeaponVariant(registerVal11, arg0.acceptData.variantInfoElement, arg2)
			arg0.acceptData.variantInfoElement.dontRemoveAttachments = nil
		else
			GoBackToCustomClassMenu(arg0, arg2)
		end
	end
end

function SetWeaponOptionClassItem(arg0, arg1, arg2)
	local registerVal6 = CoD.CACUtility.GetBaseWeaponLoadoutSlotName(CoD.perController[arg2].weaponCategory)
	local registerVal7 = arg1:getModel(arg2, "weaponOptionTypeName")
	local registerVal8 = arg1:getModel(arg2, "weaponOptionSubIndex")
	local registerVal9 = arg1:getModel(arg2, "weaponOptionType")
	if registerVal7 and registerVal8 and registerVal9 then
		local registerVal10 = Engine.GetModelValue(registerVal7)
		local registerVal11 = Engine.GetModelValue(registerVal8)
		local registerVal12 = Engine.GetModelValue(registerVal9)
		if registerVal12 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_PAINTJOB then
			local registerVal13 = Engine.GetModelValue(arg1:getModel(arg2, "paintjobIndex"))
			local registerVal14 = Engine.GetModelValue(arg1:getModel(arg2, "paintjobSlot"))
			CoD.SetClassItem(arg2, CoD.perController[arg2].classNum, (registerVal6 .. registerVal10 .. "slot"), registerVal14)
			CoD.SetClassItem(arg2, CoD.perController[arg2].classNum, (registerVal6 .. registerVal10 .. "index"), registerVal13)
		else
			registerVal13 = CoD.GetClassItem(arg2, CoD.perController[arg2].classNum, (registerVal6 .. registerVal10))
			registerVal14 = Engine.GetModelValue(arg1:getModel(arg2, "entitlementString"))
			local registerVal15 = CoD.StoreUtility.DoesInventoryItemExistsByName(registerVal14)
			if registerVal12 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_CAMO and registerVal11 ~= registerVal13 and registerVal15 then
				registerVal15 = Engine.GetModelValue(arg1:getModel(arg2, "name"))
				LUI.CoDMetrics.InventoryItemEquipped(arg2, registerVal15, registerVal11, "CamoCAC")
			end
			CoD.SetClassItem(arg2, CoD.perController[arg2].classNum, (registerVal6 .. registerVal10), registerVal11)
		end
		if CoD.perController[arg2].weaponCategory == "primary" or CoD.perController[arg2].weaponCategory == "secondary" then
			CoD.CACUtility.UpdateWeaponOptions(arg2, CoD.perController[arg2].classModel)
		end
	end
end

function SetAttachmentVariantClassItem(arg0, arg1, arg2)
	if CoD.perController[arg2].weaponCategory then
		CoD.SetClassItem(arg2, CoD.perController[arg2].classNum, (CoD.perController[arg2].weaponCategory .. "cosmeticvariant"), arg1.variantIndex)
		CoD.CACUtility.UpdateAttachmentCosmeticVariants(arg2, CoD.perController[arg2].classModel)
		CoD.CACUtility.GetCustomClassModel(arg2, CoD.perController[arg2].classNum, CoD.perController[arg2].classModel)
	end
end

function UpdateAllocationBar(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "allocationSpent")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal3 and 0.000000 <= registerVal4 then
		local registerVal6 = Engine.GetMaxAllocation(arg2)
		for index5=1.000000, registerVal6, 1.000000 do
			if arg1[("AllocationBar" .. (index5 - 1.000000))] ~= nil then
				if index5 <= registerVal4 then
					arg1[("AllocationBar" .. (index5 - 1.000000))]:playClip("PointSpent")
				else
					arg1[("AllocationBar" .. (index5 - 1.000000))]:playClip("DefaultClip")
				end
			end
		end
	end
end

function BubblegumPackOptionsRename(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel(arg2, "bgbPackIndex")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		Engine.Exec(arg2, ("ui_keyboard_new " .. Enum.KeyboardType.KEYBOARD_TYPE_BUBBLEGUM_PACK))
	end
end

function BubblegumPackOptionsCopy(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel(arg2, "bgbPackIndex")
	local registerVal4 = arg1:getModel(arg2, "bgbPackIndex")
	if registerVal3 == registerVal4 then
		return 
	end
	local registerVal5 = Engine.GetModelValue(registerVal3)
	local registerVal6 = Engine.GetModelValue(registerVal4)
	if registerVal3 and registerVal4 and registerVal5 and registerVal6 then
		Engine.ExecNow(arg2, ("copybubblegumpack " .. registerVal5 .. " " .. registerVal6))
		GoBack(arg0, arg2)
		ClearSavedState(arg0, arg2)
		GoBack(arg0.occludedMenu, arg2)
		ClearSavedState(arg0.occludedMenu, arg2)
	end
end

function ClassOptionsCopyLoadout(arg0, arg1, arg2)
	local registerVal3 = IsCurrentClassSelectedClass(arg0, arg1)
	if registerVal3 == true then
		return 
	end
	local registerVal4 = arg0:getModel(arg2, "classNum")
	if not registerVal4 then
		local registerVal5 = Engine.GetModel(CoD.perController[arg2].classModel, "classNum")
	end
	registerVal5 = arg1:getModel(arg2, "classNum")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal7 = Engine.GetModelValue(registerVal5)
	if registerVal5 and registerVal5 and registerVal6 and registerVal7 then
		Engine.ExecNow(arg2, ("copyClass " .. registerVal6 .. " " .. registerVal7))
		CoD.CACUtility.UpdateAllClasses(arg2)
		local registerVal8 = GoBack(arg0, arg2)
		ClearSavedState(arg0, arg2)
		GoBack(registerVal8, arg2)
		ClearSavedState(registerVal8, arg2)
	end
end

function ClassOptionsCopyClassSet(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "classSetId")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal5 = Engine.GetCurrentClassSetIndex(arg2)
		if registerVal4 == registerVal5 then
			return 
		end
		Engine.CopyToClassSet(arg2, registerVal5)
		Engine.CopyFromClassSetToClassSet(arg2, registerVal5, registerVal4)
		local registerVal6 = GoBack(arg0, arg2)
		ClearSavedState(arg0, arg2)
		local registerVal7 = GoBack(registerVal6, arg2)
		ClearSavedState(registerVal7, arg2)
		local registerVal9 = {}
		registerVal9.name = "class_set_name_change"
		registerVal9.controller = arg2
		registerVal7:dispatchEventToChildren(registerVal9)
	end
end

function ClassOptionsResetToDefault(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel(arg2, "classNum")
	if not registerVal3 then
		local registerVal4 = Engine.GetModel(CoD.perController[arg2].classModel, "classNum")
	end
	registerVal4 = arg1:getModel(arg2, "customClassName")
	local registerVal5 = arg1:getModel(arg2, "index")
	if registerVal4 and registerVal4 and registerVal5 then
		local registerVal6 = Engine.GetModelValue(registerVal4)
		local registerVal7 = Engine.GetModelValue(registerVal4)
		local registerVal8 = Engine.GetModelValue(registerVal5)
		local registerVal9 = CoD.CACUtility.GetDefaultLoadoutNameFromIndex(registerVal8)
		local registerVal10 = IsArenaMode()
		if registerVal10 then
			registerVal10 = CoD.CACUtility.GetDefaultArenaLoadoutNameFromIndex(registerVal8)
		end
		Engine.ExecNow(arg2, ("uiEquipDefaultClass " .. registerVal6 .. " " .. registerVal10))
		registerVal10 = CoD.CACUtility.GetLoadoutNameFromIndex(arg2, registerVal6)
		registerVal10:set(registerVal7)
		CoD.CACUtility.UpdateAllClasses(arg2)
	end
	registerVal6 = GoBack(arg0, arg2)
	ClearSavedState(arg0, arg2)
	registerVal7 = GoBack(registerVal6, arg2)
	ClearSavedState(registerVal6, arg2)
	if registerVal7 then
		registerVal10 = {}
		registerVal10.name = "update_state"
		registerVal10.controller = arg2
		registerVal7:processEvent(registerVal10)
	end
end

function ClassOptionsClearLoadout(arg0, arg1, arg2)
	for index5=1.000000, #CoD.CACUtility.clearLoadoutSlotOrder, 1.000000 do
		local registerVal10 = Engine.GetModel(CoD.perController[arg2].classModel, CoD.CACUtility.clearLoadoutSlotOrder[index5])
		local registerVal11 = Engine.GetModelValue(Engine.GetModel(registerVal10, "itemIndex"))
		if registerVal10 and CoD.CACUtility.EmptyItemIndex < registerVal11 then
			CoD.SetClassItem(arg2, CoD.perController[arg2].classNum, CoD.CACUtility.clearLoadoutSlotOrder[index5], CoD.CACUtility.EmptyItemIndex)
		end
	end
	CoD.SetClassItem(arg2, CoD.perController[arg2].classNum, "primarypaintjobslot", Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT)
	CoD.SetClassItem(arg2, CoD.perController[arg2].classNum, "primarypaintjobindex", Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX)
	CoD.SetClassItem(arg2, CoD.perController[arg2].classNum, "secondarypaintjobslot", Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT)
	CoD.SetClassItem(arg2, CoD.perController[arg2].classNum, "secondarypaintjobindex", Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX)
	CoD.CACUtility.GetCustomClassModel(arg2, CoD.perController[arg2].classNum, CoD.perController[arg2].classModel)
	if arg0.occludedMenu then
		local registerVal8 = {}
		registerVal8.name = "update_state"
		registerVal8.controller = arg2
		arg0.occludedMenu:processEvent(registerVal8)
	end
end

function ClassOptionsSetHintText(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	registerVal3 = arg1:getModel(arg2, "description")
	if arg1 and registerVal3 and registerVal3 then
		local registerVal5 = Engine.CreateModel(CoD.perController[arg2].classModel, "customClassOptionsHintText")
		Engine.SetModelValue(registerVal5, Engine.GetModelValue(arg1:getModel(arg2, "description")))
	end
end

function OpenBuyExtraSlotsPackDialog(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "skuID")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal5 = CoD.StoreUtility.GetInventoryItemValueBySkuId(registerVal4, CoD.StoreUtility.InventoryItems.costColumn)
		local registerVal6 = CoD.StoreUtility.GetInventoryItemValueBySkuId(registerVal4, CoD.StoreUtility.InventoryItems.productDescColumn)
		local registerVal7 = {}
		registerVal7.displayText = "MENU_MEDIA_STORAGE_PACK"
		local registerVal8 = tonumber(registerVal5)
		registerVal7.itemCODPointCost = registerVal8
		registerVal7.productDesc = registerVal6
		registerVal7.purchaseSource = "Store"
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "PurchaseExtraSlotsConfirmation", arg2, registerVal7)
	end
end

function OpenBuyInventoryItemDialog(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel(arg2, "skuId")
	if not registerVal4 then
		return 
	end
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal5 == "99003" then
		local registerVal6 = CoD.StoreUtility.GetInventoryItemValueBySkuId(registerVal5, CoD.StoreUtility.InventoryItems.costColumn)
		local registerVal7 = CoD.StoreUtility.GetInventoryItemValueBySkuId(registerVal5, CoD.StoreUtility.InventoryItems.productDescColumn)
		local registerVal8 = {}
		registerVal8.displayText = "MENU_MEDIA_STORAGE_PACK"
		local registerVal9 = tonumber(registerVal6)
		registerVal8.itemCODPointCost = registerVal9
		registerVal8.productDesc = registerVal7
		registerVal8.purchaseSource = "Store"
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "PurchaseExtraSlotsConfirmation", arg2, registerVal8)
	else
		registerVal7 = CoD.StoreUtility.GetInventoryItemValueBySkuId(registerVal5, CoD.StoreUtility.InventoryItems.costColumn)
		registerVal8 = CoD.StoreUtility.GetInventoryItemValueBySkuId(registerVal5, CoD.StoreUtility.InventoryItems.nameContextualColumn)
		if registerVal8 == "" then
			registerVal9 = CoD.StoreUtility.GetInventoryItemValueBySkuId(registerVal5, CoD.StoreUtility.InventoryItems.titleColumn)
		end
		registerVal9 = CoD.StoreUtility.GetInventoryItemValueBySkuId(registerVal5, CoD.StoreUtility.InventoryItems.productImageColumn)
		if registerVal9 == "t7_store_product_cwl" and CoD.isPS4 then
		end
		local registerVal10 = CoD.StoreUtility.GetInventoryItemValueBySkuId(registerVal5, CoD.StoreUtility.InventoryItems.categoryColumn)
		local registerVal11 = CoD.StoreUtility.GetInventoryItemValueBySkuId(registerVal5, CoD.StoreUtility.InventoryItems.productDescColumn)
		local registerVal12 = CoD.StoreUtility.GetInventoryItemValueBySkuId(registerVal5, CoD.StoreUtility.InventoryItems.purchaseConfirmationColumn)
		local registerVal13 = CoD.StoreUtility.GetInventoryItemValueBySkuId(registerVal5, CoD.StoreUtility.InventoryItems.descColumn)
		local registerVal14 = {}
		registerVal14.skuId = registerVal5
		registerVal14.displayText = registerVal12
		registerVal14.itemName = registerVal9
		local registerVal15 = tonumber(registerVal7)
		registerVal14.itemCODPointCost = registerVal15
		registerVal14.image = "t7_store_product_cwl_ps4"
		registerVal14.category = registerVal10
		registerVal14.productDesc = registerVal11
		registerVal14.purchaseSource = arg3
		registerVal14.outfitDesc = registerVal13
		if true then
			CoD.OverlayUtility.CreateOverlay(arg2, arg0, "PurchaseOutfitItemConfirmation", arg2, registerVal14)
		else
			CoD.OverlayUtility.CreateOverlay(arg2, arg0, "PurchaseInventoryItemConfirmation", arg2, registerVal14)
		end
	end
end

function PurchaseItem(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModel(registerVal3, "itemIndex")
		local registerVal5 = Engine.GetModelValue(registerVal4)
		Engine.PurchaseItem(arg2, registerVal5)
		local registerVal9 = CoD.GetLocalClientAdjustedNum(arg2)
		Engine.SendClientScriptNotify(arg2, ("CustomClass_update" .. registerVal9), "purchased")
	end
end

function SetUnlockConfirmationInfo(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "itemIndex")
	if registerVal2 then
		SetConfirmationInfoInternal(arg0, arg1, registerVal2)
	end
end

function SetUpgradeConfirmationInfo(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "upgradeItemIndex")
	if registerVal2 then
		SetConfirmationInfoInternal(arg0, arg1, registerVal2)
	end
end

function OpenUnlockClassItemDialog(arg0, arg1, arg2)
	local registerVal8 = Engine.GetModelValue(arg1:getModel(arg2, "itemIndex"))
	CoD.OverlayUtility.CreateOverlay(arg2, arg0, "UnlockClassItem", arg2, registerVal8, nil)
end

function OpenUpgradeClassItemDialog(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "upgradeItemIndex")
	if registerVal3 then
		local registerVal9 = Engine.GetModelValue(arg1:getModel(arg2, "itemIndex"))
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "UnlockClassItem", arg2, registerVal9, Engine.GetModelValue(registerVal3))
	end
end

function UnlockItem(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "itemIndex")
	local registerVal4 = arg1:getModel(arg2, "upgradeItemIndex")
	if registerVal4 then
		local registerVal6 = Engine.GetModelValue(registerVal4)
	end
	if registerVal3 then
		registerVal6 = Engine.GetModelValue(registerVal3)
		if registerVal6 ~= nil then
			Engine.PurchaseItem(arg2, registerVal6)
			if CoD.perController[arg2].weaponCategory then
				CoD.CACUtility.UpgradeEquippedCACItems(arg2, CoD.perController[arg2].weaponCategory, registerVal6, registerVal6)
			else
				Engine.PurchaseItem(arg2, registerVal6)
			end
		end
		local registerVal10 = CoD.GetLocalClientAdjustedNum(arg2)
		Engine.SendClientScriptNotify(arg2, ("CustomClass_update" .. registerVal10), "purchased")
	end
	SaveLoadout(arg0, arg2)
	UploadStats(arg0, arg2)
end

function UnlockAndEquipItem(arg0, arg1, arg2)
	UnlockItem(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelValue(arg1:getModel(arg2, "itemIndex"))
	if CoD.perController[arg2].weaponCategory == "specialist" then
		local registerVal7 = CoD.CCUtility.GetHeroEquippedSlot(arg2, registerVal4)
		SelectHero(arg0, arg1, arg2)
		Engine.SetHeroLoadoutItem(arg2, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, registerVal7)
	else
		local registerVal5 = LUI.startswith(CoD.perController[arg2].weaponCategory, "killstreak")
		if registerVal5 then
			EquipScorestreak(arg0, arg1, arg2)
		else
			registerVal5 = SetClassItem(arg0, arg1, arg2)
			local registerVal6 = LUI.startswith(CoD.perController[arg2].weaponCategory, "bonuscard")
			registerVal6 = IsCACContextualWildcardOpen(arg2)
			if registerVal6 and not registerVal6 then
				arg1.itemIndex = registerVal4
				FocusClassItem(registerVal5, arg1, arg2)
			end
			return registerVal5
		end
	end
end

function UnlockAndEquipHeroForMPFirstTimeSetup(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = arg1:getModel(arg2, "itemIndex")
	if registerVal6 then
		local registerVal7 = Engine.GetModelValue(registerVal6)
	end
	if not registerVal7 then
	end
	if arg3.previousMenu then
	end
	local registerVal10 = CoD.CCUtility.GetHeroEquippedSlot(arg2, arg1.itemIndex)
	if registerVal10 then
		SelectHero(arg0, arg1, arg2)
		Engine.SetHeroLoadoutItem(arg2, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, registerVal10)
		Engine.SetFirstSelectedHeroLoadout(arg2, Enum.CACType.CAC_TYPE_MP_PUBLIC, CoD.CCUtility.Heroes.HeroIndexForEdits, registerVal10)
		Engine.SetHeroForCACType(arg2, CoD.CCUtility.customizationMode, Enum.CACType.CAC_TYPE_MP_CUSTOM, CoD.CCUtility.Heroes.HeroIndexForEdits)
		Engine.SetHeroLoadoutItemForCACType(arg2, CoD.CCUtility.customizationMode, Enum.CACType.CAC_TYPE_MP_CUSTOM, CoD.CCUtility.Heroes.HeroIndexForEdits, registerVal10)
		Engine.SetFirstSelectedHeroLoadout(arg2, Enum.CACType.CAC_TYPE_MP_CUSTOM, CoD.CCUtility.Heroes.HeroIndexForEdits, registerVal10)
		Engine.SetHeroForCACType(arg2, CoD.CCUtility.customizationMode, Enum.CACType.CAC_TYPE_MP_ARENA, CoD.CCUtility.Heroes.HeroIndexForEdits)
		Engine.SetHeroLoadoutItemForCACType(arg2, CoD.CCUtility.customizationMode, Enum.CACType.CAC_TYPE_MP_ARENA, CoD.CCUtility.Heroes.HeroIndexForEdits, registerVal10)
		Engine.SetFirstSelectedHeroLoadout(arg2, Enum.CACType.CAC_TYPE_MP_ARENA, CoD.CCUtility.Heroes.HeroIndexForEdits, registerVal10)
		SetFirstTimeSetupComplete_MP(arg0, arg1, arg2, "", arg4)
		SendClientScriptMenuChangeNotify(arg2, arg3.previousMenu, false)
		local registerVal11 = IsCACHaveTokens(arg2)
		if not registerVal11 then
			Engine.ExecNow(arg2, "statWriteMode mp unlocks 1")
		end
		Engine.PurchaseItem(arg2, arg1.itemIndex, CoD.CCUtility.customizationMode)
		SaveLoadout(arg0, arg2)
	end
end

function TryPurchaseCybercoreAbility(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if registerVal3 then
		local function __FUNC_426CF_(arg3)
			local registerVal2 = Engine.CreateModel(registerVal3, "itemIndex")
			Engine.SetModelValue(registerVal2, arg3)
			SetUnlockConfirmationInfo(arg1, arg2)
			local registerVal1 = IsCACHaveTokens(arg2)
			if not registerVal1 then
				OpenPopup(arg0, "OutOfUnlockTokens", arg2)
			else
				OpenUnlockClassItemDialog(arg0, arg1, arg2)
			end
		end

		local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal3, "prereqItemIndex"))
		local registerVal6 = Engine.IsItemPurchased(arg2, registerVal5)
		if registerVal5 == -1.000000 or registerVal6 then
			registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal3, "baseItemIndex"))
			local registerVal7 = Engine.IsItemPurchased(arg2, registerVal6)
			if not registerVal7 then
				__FUNC_426CF_(registerVal6)
			else
				registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal3, "upgradeItemIndex"))
				local registerVal8 = Engine.IsItemPurchased(arg2, registerVal7)
				if registerVal7 and not registerVal8 then
					__FUNC_426CF_(registerVal7)
				end
			end
		end
	end
end

function UpdateCybercoreTree(arg0, arg1, arg2)
	if arg0.upgradeTree then
		arg0.upgradeTree:updateTree(arg2)
	end
end

function SetCACWeaponAsOld(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "itemIndex")
	if CoD.PrestigeUtility.isInPermanentUnlockMenu then
		return 
	end
	local registerVal4 = Engine.GetModelValue(registerVal3)
	Engine.SetItemAsOld(arg2, registerVal4)
	local registerVal6 = arg0.weaponCategoryList.Tabs.grid:getItemAt((arg0.weaponCategoryList.Tabs.grid.savedActiveIndex + 1.000000))
	local registerVal7 = registerVal6:getModel(arg2, "breadcrumbCount")
	if registerVal3 and CoD.CACUtility.EmptyItemIndex < registerVal4 and arg0.weaponCategoryList and arg0.weaponCategoryList.Tabs.grid and registerVal6 and registerVal7 then
		local registerVal8 = Engine.WeaponGroupNewItemCount(arg2, registerVal6.filter)
		Engine.SetModelValue(registerVal7, registerVal8)
	end
end

function SetCACItemAsOld(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "itemIndex")
	if CoD.PrestigeUtility.isInPermanentUnlockMenu then
		return 
	end
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal2 and CoD.CACUtility.EmptyItemIndex < registerVal3 then
		Engine.SetItemAsOld(arg1, registerVal3)
	end
end

function SetCACAttachmentAsOld(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "itemIndex")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal2 and CoD.CACUtility.EmptyItemIndex < registerVal3 then
		Engine.SetAttachmentAsOld(arg1, arg0.weaponIndex, registerVal3)
	end
end

function SetSpecialistAsOld(arg0, arg1, arg2)
	if CoD.PrestigeUtility.isInPermanentUnlockMenu then
		return 
	end
	local registerVal3 = IsProgressionEnabled(arg2)
	registerVal3 = Engine.CurrentSessionMode()
	if registerVal3 and arg1.heroIndex then
		for index5=0.000000, (Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_COUNT - 1.000000), 1.000000 do
			local registerVal9 = Engine.GetLoadoutItemIndexForHero(registerVal3, arg1.heroIndex, index5)
			local registerVal10 = Engine.IsItemNew(arg2, registerVal9)
			if CoD.CACUtility.EmptyItemIndex < registerVal9 and registerVal10 then
				Engine.SetItemAsOld(arg2, registerVal9)
				local registerVal12 = {}
				registerVal12.name = "update_state"
				registerVal12.menu = arg0
				arg0:processEvent(registerVal12)
			end
		end
	end
end

function SetWeaponOptionAsOld(arg0, arg1, arg2)
	local registerVal5 = CoD.SafeGetModelValue(CoD.perController[arg2].classModel, (CoD.perController[arg2].weaponCategory .. ".itemIndex"))
	local registerVal7 = arg1:getModel()
	local registerVal6 = CoD.SafeGetModelValue(registerVal7, "weaponOptionType")
	if registerVal6 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE then
		registerVal7 = CoD.CACUtility.GetBaseWeaponLoadoutSlotName(CoD.perController[arg2].weaponCategory)
		local registerVal8 = CoD.SafeGetModelValue(CoD.perController[arg2].classModel, (registerVal7 .. ".itemIndex"))
		local registerVal9 = Engine.GetItemAttachment(registerVal8, registerVal5)
	end
	SetWeaponOptionAsOldInternal(arg0, arg1, arg2, registerVal9)
end

function SetCACACVAsOld(arg0, arg1)
	if CoD.WC_Category.ACV.selectedAttachmentWeaponIndex and arg0.attachmentTableIndex and arg0.variantIndex then
		local registerVal3 = Engine.CurrentSessionMode()
		SetACVASOldInternal(arg1, CoD.WC_Category.ACV.selectedAttachmentWeaponIndex, arg0.attachmentTableIndex, arg0.variantIndex, registerVal3)
	end
end

function DisableProgressionCP(arg0)
	CoD.perController[arg0].everythingUnlocked = true
	if CoD.perController[arg0].restrictedItemIndices == nil then
		CoD.perController[arg0].restrictedItemIndices = {}
	end
end

function EnableProgressionCP(arg0)
	CoD.perController[arg0].everythingUnlocked = nil
	if CoD.perController[arg0].restrictedItemIndices ~= nil then
		local registerVal1, registerVal2, registerVal3 = ipairs(CoD.perController[arg0].restrictedItemIndices)
		for index4,value5 in registerVal1, registerVal2, registerVal3 do
			Engine.SetItemRestrictionState(value5, Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_NONE)
		end
		CoD.perController[arg0].restrictedItemIndices = nil
	end
end

function CopyLoadoutFromClassSet(arg0)
	local registerVal1 = IsClassSetsAvailableForCurrentGameMode()
	if registerVal1 then
		registerVal1 = Engine.GetCurrentClassSetIndex(arg0)
		Engine.CopyFromClassSet(arg0, registerVal1)
	end
end

function CopyLoadoutToClassSet(arg0)
	local registerVal1 = IsClassSetsAvailableForCurrentGameMode()
	if registerVal1 then
		registerVal1 = Engine.GetCurrentClassSetIndex(arg0)
		Engine.CopyToClassSet(arg0, registerVal1)
	end
end

function IncrementClassSetAndUpdateElementDataSource(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.GetCurrentClassSetIndex(arg1)
	local registerVal6 = Engine.GetNumberOfClassSetsOwned(arg1)
	if registerVal6 <= (registerVal5 + 1.000000) then
	end
	if (registerVal6 - 1.000000) ~= registerVal5 then
		Engine.CopyToClassSet(arg1, registerVal5)
		Engine.SetCurrentClassSetIndex(arg1, (registerVal6 - 1.000000))
		Engine.CopyFromClassSet(arg1, (registerVal6 - 1.000000))
		CoD.CACUtility.ForceStreamAttachmentImages(arg1)
		local registerVal10 = Engine.GetModelForController(arg1)
		local registerVal9 = Engine.CreateModel(registerVal10, "currentClassSetIndex")
		Engine.SetModelValue(registerVal9, (registerVal6 - 1.000000))
		chooseClass_TabMPClassesListRight(arg2, arg1)
		UpdateElementDataSource(arg0[arg3], arg4)
	end
end

function DecrementClassSetAndUpdateElementDataSource(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.GetCurrentClassSetIndex(arg1)
	if (registerVal5 - 1.000000) < 0.000000 then
	end
	if 0.000000 ~= registerVal5 then
		Engine.CopyToClassSet(arg1, registerVal5)
		Engine.SetCurrentClassSetIndex(arg1, 0.000000)
		Engine.CopyFromClassSet(arg1, 0.000000)
		CoD.CACUtility.ForceStreamAttachmentImages(arg1)
		local registerVal9 = Engine.GetModelForController(arg1)
		local registerVal8 = Engine.CreateModel(registerVal9, "currentClassSetIndex")
		Engine.SetModelValue(registerVal8, 0.000000)
		chooseClass_TabMPClassesListLeft(arg2, arg1)
		UpdateElementDataSource(arg0[arg3], arg4)
	end
end

function SetChooseClassMenuToExtraSlotPromptState(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetModelForController(arg1)
	local registerVal5 = Engine.GetModel(registerVal6, "currentClassSetIndex")
	if not registerVal5 then
		return 
	end
	DisableNavigation(arg0[arg3], arg4)
	registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal7 = Engine.GetNumberOfClassSetsOwned(arg1)
	if (registerVal6 + 1.000000) == registerVal7 then
		Engine.SetModelValue(registerVal5, (registerVal6 + 1.000000))
		chooseClass_TabMPClassesListRight(arg2, arg1)
		arg2:setState("ExtraSlots")
	end
end

function SetChooseClassMenuFromExtraSlotPromptState(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetModelForController(arg1)
	local registerVal5 = Engine.GetModel(registerVal6, "currentClassSetIndex")
	if not registerVal5 then
		return 
	end
	EnableNavigation(arg0[arg3], arg4)
	registerVal6 = Engine.GetModelValue(registerVal5)
	if (registerVal6 - 1.000000) == 0.000000 then
		Engine.SetModelValue(registerVal5, (registerVal6 - 1.000000))
		chooseClass_TabMPClassesListLeft(arg2, arg1)
		arg2:setState("DefaultState")
	end
end

function OpenPurchaseExtraSlotsOverlay(arg0, arg1, arg2)
	local registerVal3 = CoD.StoreUtility.GetInventoryItemValueByItemName(CoD.StoreUtility.ExtraSlotsProductDesc, CoD.StoreUtility.InventoryItems.costColumn)
	local registerVal9 = {}
	local registerVal10 = tonumber(registerVal3)
	registerVal9.itemCODPointCost = registerVal10
	registerVal9.displayText = "MENU_MEDIA_STORAGE_PACK"
	registerVal9.productDesc = CoD.StoreUtility.ExtraSlotsProductDesc
	registerVal9.purchaseSource = "CAC"
	OpenSystemOverlay(arg0, arg2, arg1, "PurchaseExtraSlotsConfirmation", registerVal9)
end

function OpenGobbleGumRecipe(arg0, arg1, arg2)
	local registerVal3 = CoD.BubbleGumBuffUtility.GetGobbleGumRecipeInfoModel(arg2)
	if arg1 then
		local registerVal7 = Engine.CreateModel(registerVal3, "recipeIndex")
		Engine.SetModelValue(registerVal7, arg1.recipeIndex)
		OpenOverlay(arg0, "GobbleGumRecipe", arg2)
	end
end

function CookGobbleGumRecipe(arg0, arg1)
	CoD.BubbleGumBuffUtility.CookGobbleGumRecipe(arg0, arg1)
end

function SetHintText(arg0, arg1, arg2)
	if arg1 then
		if arg1.hintText then
		else
			local registerVal4 = arg1:getModel()
			local registerVal5 = Engine.GetModel(registerVal4, "hintText")
			if registerVal4 and registerVal5 then
				local registerVal6 = Engine.GetModelValue(registerVal5)
			end
		end
	end
	if registerVal6 == nil then
		DataSources.PerController.clearHintText(arg2)
	else
		DataSources.PerController.setHintText(arg2, registerVal6)
	end
end

function SetHintTextToString(arg0, arg1)
	if arg1 == nil or arg1 == "" then
		DataSources.PerController.clearHintText(arg0)
	else
		DataSources.PerController.setHintText(arg0, arg1)
	end
end

function PDV_DataVaultOpened(arg0, arg1)
	Engine.SendMenuResponse(arg1, "PersonalDataVaultMenu", "mainCam")
	PrepareOpenMenuInSafehouse(arg1)
	CoD.perController[arg1].InspectingDataVault = true
end

function PDV_DataVaultClosed(arg0, arg1)
	Engine.SendMenuResponse(arg1, "PersonalDataVaultMenu", "closed")
	PrepareCloseMenuInSafehouse(arg1)
	CoD.perController[arg1].InspectingDataVault = false
	local function __FUNC_44F79_()
		Close(arg0, arg1)
	end

	arg0:addElement(LUI.UITimer.newElementTimer(0.000000, true, __FUNC_44F79_))
end

function PDV_ChangeCollectibleArea(arg0, arg1, arg2)
	local registerVal6 = CoD.GetLocalClientAdjustedNum(arg2)
	Engine.SendClientScriptNotify(arg2, ("collectibles_slot_change" .. registerVal6), arg1.collectibleSize)
	CoD.perController[arg2].inspectingCollectibleSize = arg1.collectibleSize
end

function PDV_ClearCollectible(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "collectibleSlot")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		Engine.ClearBunkCollectible(arg2, registerVal4)
		local registerVal8 = CoD.GetLocalClientAdjustedNum(arg2)
		Engine.SendClientScriptNotify(arg2, ("collectible_update" .. registerVal8), "unequip", registerVal4)
	end
end

function PDV_ClearPreviewCollectible(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "collectibleSlot")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal8 = CoD.GetLocalClientAdjustedNum(arg2)
		Engine.SendClientScriptNotify(arg2, ("collectible_update" .. registerVal8), "clear_preview_collectible", registerVal4)
	end
end

function PDV_ChangeFocusCollectibleSlot(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "collectibleSlot")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal6 = Engine.GetAssetList(CoD.mapsTable[CoD.perController[arg2].placeCollectibleMapName].collectibles)
	local registerVal7, registerVal8, registerVal9 = ipairs(registerVal6)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		if value11.name == CoD.perController[arg2].placeCollectibleName then
			if value11.uiModelWithStand ~= nil then
			end
			local registerVal16 = CoD.GetLocalClientAdjustedNum(arg2)
			Engine.SendClientScriptNotify(arg2, ("collectible_update" .. registerVal16), "focus_change", registerVal4, value11.uiModelWithStand)
		end
	end
end

function PDV_SelectCollectibleSlot(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "collectibleSlot")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = Engine.SetBunkCollectible(arg2, registerVal4, CoD.perController[arg2].placeCollectibleMapName, CoD.perController[arg2].placeCollectibleName)
	if registerVal5 ~= Enum.bunkCollectibleSlots_e.BUNK_INVALID_SLOT then
		local registerVal9 = CoD.GetLocalClientAdjustedNum(arg2)
		Engine.SendClientScriptNotify(arg2, ("collectible_update" .. registerVal9), "unequip", registerVal5)
	end
	local registerVal7 = Engine.GetAssetList(CoD.mapsTable[CoD.perController[arg2].placeCollectibleMapName].collectibles)
	local registerVal8, registerVal9, registerVal10 = ipairs(registerVal7)
	for index11,value12 in registerVal8, registerVal9, registerVal10 do
		if value12.name == CoD.perController[arg2].placeCollectibleName then
			if value12.uiModelWithStand ~= nil then
			end
			local registerVal17 = CoD.GetLocalClientAdjustedNum(arg2)
			Engine.SendClientScriptNotify(arg2, ("collectible_update" .. registerVal17), "equip", registerVal4, value12.uiModelWithStand)
		end
	end
end

function MRV_SelectReplayMission(arg0, arg1, arg2)
	local registerVal4 = arg0:getModel()
	local registerVal3 = Engine.GetModel(registerVal4, "selectedMission")
	if arg1 ~= nil and arg1.mapId == nil or CoD.mapsTable[arg1.mapId] == nil then
		return 
	end
	local registerVal6 = Engine.GetModel(registerVal3, "mapName")
	Engine.SetModelValue(registerVal6, CoD.mapsTable[arg1.mapId].mapName)
	registerVal6 = Engine.GetModel(registerVal3, "mapNameCaps")
	Engine.SetModelValue(registerVal6, CoD.mapsTable[arg1.mapId].mapNameCaps)
	registerVal6 = Engine.GetModel(registerVal3, "previewImage")
	Engine.SetModelValue(registerVal6, CoD.mapsTable[arg1.mapId].previewImage)
	registerVal6 = Engine.GetModel(registerVal3, "mapLocation")
	Engine.SetModelValue(registerVal6, CoD.mapsTable[arg1.mapId].mapLocation)
	registerVal6 = Engine.GetModel(registerVal3, "mapDescription")
	Engine.SetModelValue(registerVal6, CoD.mapsTable[arg1.mapId].mapDescription)
	local registerVal7 = Engine.GetAssetList(CoD.mapsTable[arg1.mapId].collectibles)
	if CoD.mapsTable[arg1.mapId].collectibles and registerVal7 ~= nil then
		for index8=0.000000, (#0.000000 - 1.000000), 1.000000 do
			local registerVal12 = Engine.ClientHasCollectible(arg2, arg1.mapId, index8)
			if registerVal12 then
			end
		end
	end
	registerVal7 = Engine.GetPlayerStats(arg2)
	local registerVal10 = Engine.GetModel(registerVal3, "collectiblesFound")
	Engine.SetModelValue(registerVal10, (0.000000 + 1.000000))
	registerVal10 = Engine.GetModel(registerVal3, "collectiblesTotal")
	Engine.SetModelValue(registerVal10, #0.000000)
	registerVal10 = Engine.GetModel(registerVal3, "highestScore")
	Engine.SetModelValue(registerVal10, registerVal7.PlayerStatsByMap[CoD.mapsTable[arg1.mapId].rootMapName].highestStats.SCORE:get())
	local registerVal9 = registerVal7.PlayerStatsByMap[CoD.mapsTable[arg1.mapId].rootMapName].highestStats.HIGHEST_DIFFICULTY:get()
	local registerVal11 = Engine.GetModel(registerVal3, "completionDifficulty")
	Engine.SetModelValue(registerVal11, registerVal9)
end

function MRV_ClickReplayMission(arg0, arg1, arg2, arg3)
	if arg2 ~= nil and arg2.mapId == nil or CoD.mapsTable[arg2.mapId] == nil then
		return 
	end
	local registerVal4 = IsElementPropertyValue(arg2, "classified", true)
	if registerVal4 then
		local registerVal10 = {}
		registerVal10 = {"MPUI_YES", "MPUI_NO"}
		local function __FUNC_4656E_(arg1)
			if arg1 == 0.000000 then
				local registerVal1 = Engine.GetPlayerStats(arg3, CoD.STATS_LOCATION_NORMAL, Enum.eModes.MODE_CAMPAIGN)
				registerVal1.allMapsUnlocked:set(1.000000)
				arg0.MapList:updateDataSource()
			end
			return true
		end

		arg1:OpenModalDialog(arg0, arg3, "MENU_OUTOFORDER_PLAY", "", registerVal10, __FUNC_4656E_)
	else
		local registerVal5 = Engine.GetGlobalModel()
		registerVal4 = Engine.GetModel(registerVal5, "nextMap")
		if registerVal4 ~= nil then
			Engine.SetModelValue(registerVal4, arg2.mapId)
			SendMenuResponseExpression(arg3, "MissionRecordVaultMenu", arg2.mapId)
			Engine.SetDvar("ui_blocksaves", "1")
			LockInput(arg0, arg3, false)
			SendMenuResponse(arg0, "MissionRecordVaultMenu", "closed", arg3)
		end
	end
end

function MRV_SelectAccolade(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if arg1 == nil or registerVal3 == nil then
		return 
	end
	local registerVal5 = arg0:getModel()
	local registerVal4 = Engine.GetModel(registerVal5, "selectedAccolade")
	registerVal5 = {}
	registerVal5 = {"challengeName", "challengeDetails", "challengeProgressQuantity", "rewardImage", "rewardName", "completed", "centerText", "challengeWidget"}
	for index6=1.000000, #"challengeDetails", 1.000000 do
		local registerVal10 = Engine.GetModel(registerVal3, registerVal5[index6])
		if registerVal10 then
			local registerVal11 = Engine.GetModelValue(registerVal10)
		end
		if registerVal11 == nil then
			local registerVal12 = Engine.GetModel(registerVal4, registerVal5[index6])
			Engine.SetModelValue(registerVal12, "")
		else
			registerVal12 = Engine.GetModel(registerVal4, registerVal5[index6])
			Engine.SetModelValue(registerVal12, registerVal11)
		end
	end
end

function ClearSavedHeroForEdits(arg0)
	CoD.CCUtility.SetEdittingHero(arg0, nil)
end

function RefreshCharacterCustomization(arg0, arg1, arg2)
	local registerVal6 = CoD.GetLocalClientAdjustedNum(arg2)
	local registerVal7 = Engine.GetLocalClientNum(arg2)
	Engine.SendClientScriptNotify(arg2, (CoD.CCUtility.Heroes.heroUpdateEvent .. registerVal6), "refresh", registerVal7, CoD.CCUtility.customizationMode)
end

function SelectGender(arg0, arg1, arg2)
	if arg1.gender then
		Engine.SetGender(arg2, arg1.gender)
		RefreshCharacterCustomization(arg0, arg1, arg2)
	end
end

function SelectHead(arg0, arg1, arg2)
	if arg1.headIndex then
		Engine.SetHead(arg2, CoD.CCUtility.customizationMode, arg1.headIndex)
		RefreshCharacterCustomization(arg0, arg1, arg2)
	end
end

function HeadHighlighted(arg0, arg1, arg2)
	local registerVal6 = CoD.GetLocalClientAdjustedNum(arg2)
	Engine.SendClientScriptNotify(arg2, (CoD.CCUtility.Heroes.heroUpdateEvent .. registerVal6), "changeHead", arg1.headIndex, CoD.CCUtility.customizationMode)
end

function UpdateDifficulty(arg0, arg1, arg2)
	local registerVal3 = Engine.GetProfileVarInt(arg2, "g_gameskill")
	if not registerVal3 then
	end
	if arg1 == LobbyData.UITargets.UI_CPLOBBYONLINE.name then
		local registerVal4 = GetCPDifficulty(arg2, "g_gameskill_online_cp")
	else
		if arg1 == LobbyData.UITargets.UI_CPLOBBYLANGAME.name then
			registerVal4 = GetCPDifficulty(arg2, "g_gameskill_offline_cp")
		else
			if arg1 == LobbyData.UITargets.UI_CP2LOBBYONLINE.name then
				registerVal4 = GetCPDifficulty(arg2, "g_gameskill_online_cpzm")
			else
				if arg1 == LobbyData.UITargets.UI_CP2LOBBYLANGAME.name then
					registerVal4 = GetCPDifficulty(arg2, "g_gameskill_offline_cpzm")
				else
					return 
				end
			end
		end
	end
	Engine.SetProfileVar(arg2, "g_gameskill", (registerVal4 or arg2))
	Engine.Exec(arg2, "updategamerprofile")
end

function SetDifficulty(arg0, arg1, arg2)
	if arg1.difficulty then
		local registerVal4 = Engine.GetMaxControllerCount()
		for index3=0.000000, (registerVal4 - 1.000000), 1.000000 do
			Engine.SetProfileVar(index3, "g_gameskill", arg1.difficulty)
			local registerVal7 = Engine.IsCampaignModeZombies()
			registerVal7 = IsLive()
			if registerVal7 and not registerVal7 then
				SetCPDifficulty(index3, "g_gameskill_offline_cpzm", arg1.difficulty)
			else
				registerVal7 = Engine.IsCampaignModeZombies()
				if registerVal7 then
					SetCPDifficulty(index3, "g_gameskill_online_cpzm", arg1.difficulty)
				else
					registerVal7 = IsLive()
					if not registerVal7 then
						SetCPDifficulty(index3, "g_gameskill_offline_cp", arg1.difficulty)
					else
						SetCPDifficulty(index3, "g_gameskill_online_cp", arg1.difficulty)
					end
				end
			end
			Engine.Exec(index3, "updategamerprofile")
			local registerVal8 = Engine.GetGlobalModel()
			registerVal7 = Engine.CreateModel(registerVal8, "CampaignSettings")
			local registerVal9 = Engine.CreateModel(registerVal7, "difficulty")
			local registerVal12 = Engine.GetProfileVarInt(index3, "g_gameskill")
			Engine.SetModelValue(registerVal9, Engine.Localize(CoD.DIFFICULTY[registerVal12]))
			registerVal9 = Engine.CreateModel(registerVal7, "difficultyIcon")
			local registerVal11 = Engine.GetProfileVarInt(index3, "g_gameskill")
			Engine.SetModelValue(registerVal9, CoD.DIFFICULTY_ICON[registerVal11])
			Engine.SendMenuResponse(index3, "difficulty", arg1.difficulty)
		end
	end
end

function SetSelectedCPMission(arg0, arg1, arg2)
	if arg1.mapId ~= nil then
		local registerVal4 = Engine.IsCampaignModeZombies()
		if registerVal4 == true then
			registerVal4 = string.gsub(arg1.mapId, "_nightmares", "")
			SetMap(arg2, registerVal4, false)
		else
			SetMap(arg2, registerVal4, true)
		end
	end
end

function SetFirstTimeSetupComplete(arg0, arg1, arg2)
	Engine.SetFirstTimeComplete(arg2, Enum.eModes.MODE_CAMPAIGN, true)
end

function GetPlaylistIDForSelectedCPMission(arg0, arg1, arg2)
	local registerVal5 = Engine.GetPlaylistCategories()
	local registerVal6, registerVal7, registerVal8 = ipairs(registerVal5)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		local registerVal11 = Engine.IsCampaignModeZombies()
		if arg1 or value10.ref ~= "cp_nightmares_public" then
			registerVal11 = Engine.IsCampaignModeZombies()
		else
			local registerVal12, registerVal13, registerVal14 = ipairs(value10.playlists)
			for index15,value16 in registerVal12, registerVal13, registerVal14 do
				local registerVal17 = string.find(value16.name, arg1.mapId)
				if registerVal17 ~= nil then
					return value16.index
				end
			end
		end
	end
	local registerVal4 = Engine.CurrentSessionMode()
	if registerVal4 == Enum.eModes.MODE_CAMPAIGN then
		registerVal4 = Engine.IsCampaignModeZombies()
		if registerVal4 then
		else
		end
	end
	return 200.000000
end

function SelectHero(arg0, arg1, arg2)
	if CoD.CCUtility.Heroes.HeroIndexForEdits then
		local registerVal4 = Engine.GetHeroSelectSoundAlias(CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits)
		if registerVal4 ~= "" then
		end
		Engine.SetHero(arg2, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits)
		local registerVal6 = Engine.InLobbyParty(Enum.LobbyType.LOBBY_TYPE_GAME)
		if registerVal6 == true then
		end
		if Engine.SendClientHeartbeat then
			Engine.SendClientHeartbeat(arg2, Enum.LobbyType.LOBBY_TYPE_GAME)
		end
	end
	registerVal6 = {}
	registerVal6.name = "gamepad_button"
	registerVal6.down = true
	registerVal6.button = "primary"
	registerVal6.isRepeated = false
	registerVal6.controller = arg2
	arg1:dispatchEventToChildren(registerVal6)
	local registerVal7 = CoD.GetLocalClientAdjustedNum(arg2)
	local registerVal8 = Engine.GetLocalClientNum(arg2)
	Engine.SendClientScriptNotify(arg2, (CoD.CCUtility.Heroes.heroUpdateEvent .. registerVal7), "refresh", registerVal8, CoD.CCUtility.customizationMode, registerVal4)
	ClearSavedHeroForEdits(arg2)
end

function NavigateToNextHeroCard(arg0, arg1, arg2, arg3)
	local registerVal4 = FirstTimeSetup_Overview(arg3)
	if registerVal4 then
		FirstTimeSetup_SetChangedCharacter(arg3)
		registerVal4 = SelectNextItemIfPossibleAndNotDisabled(arg1, arg2, arg3)
		registerVal4 = IsSelfInState(arg2, "DefaultState")
		registerVal4 = IsSelfInState(arg2, "Locked")
		if registerVal4 and not registerVal4 and not registerVal4 then
			SetHeroCardStateToDefault(arg0, arg1, arg2, arg3)
		else
			registerVal4 = FirstTimeSetup_ChangedCharacter(arg3)
			if registerVal4 then
				registerVal4 = SelectNextItemIfPossibleAndNotDisabled(arg1, arg2, arg3)
				registerVal4 = IsSelfInState(arg2, "DefaultState")
				registerVal4 = IsSelfInState(arg2, "Locked")
				SetHeroCardStateToDefault(arg0, arg1, arg2, arg3)
				registerVal4 = SelectNextItemIfPossible(arg1, arg2, arg3)
				registerVal4 = IsSelfInState(arg2, "DefaultState")
				registerVal4 = IsSelfInState(arg2, "Locked")
				if registerVal4 and not registerVal4 and not registerVal4 and registerVal4 and not registerVal4 and not registerVal4 then
					SetHeroCardStateToDefault(arg0, arg1, arg2, arg3)
				end
			end
		end
	end
end

function NavigateToPreviousHeroCard(arg0, arg1, arg2, arg3)
	local registerVal4 = FirstTimeSetup_Overview(arg3)
	if registerVal4 then
		FirstTimeSetup_SetChangedCharacter(arg3)
		registerVal4 = SelectPreviousItemIfPossibleAndNotDisabled(arg1, arg2, arg3)
		if registerVal4 and arg2.currentState == "Flipped" then
			SetHeroCardStateToDefault(arg0, arg1, arg2, arg3)
		else
			registerVal4 = FirstTimeSetup_ChangedCharacter(arg3)
			if registerVal4 then
				registerVal4 = SelectPreviousItemIfPossibleAndNotDisabled(arg1, arg2, arg3)
				SetHeroCardStateToDefault(arg0, arg1, arg2, arg3)
				registerVal4 = SelectPreviousItemIfPossible(arg1, arg2, arg3)
				if registerVal4 and arg2.currentState == "Flipped" and registerVal4 and arg2.currentState == "Flipped" then
					SetHeroCardStateToDefault(arg0, arg1, arg2, arg3)
				end
			end
		end
	end
end

function MarkSpecialistTransmissionOld(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "isNew")
	registerVal3 = DataSources.StorageGlobal.getModel(arg2)
	registerVal4 = CoD.SafeGetModelValue(registerVal3, "stats_mp")
	local registerVal5 = Engine.StorageGetBuffer(arg2, registerVal4)
	local registerVal7 = CoD.CCUtility.GetTransmissionNewStatPath(arg1.heroIndex, arg1.transmissionIndex)
	local registerVal6 = LUI.getTableFromPath(registerVal7, registerVal5)
	if registerVal3 == true and registerVal4 and registerVal6 then
		registerVal6:set(1.000000)
		registerVal6 = arg1:getModel(arg2, "isNew")
		if registerVal6 then
			Engine.SetModelValue(registerVal6, false)
		end
		registerVal7 = arg0:getModel(arg2, "newTransmissions")
		if registerVal7 then
			local registerVal12 = Engine.GetModelValue(registerVal7)
			Engine.SetModelValue(registerVal7, math.max(0.000000, (registerVal12 - 1.000000)))
		end
	end
end

function PlaySpecialistTransmission(arg0, arg1)
	StopSpecialistTransmission(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "playingSound")
	local registerVal4 = arg0:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "alias")
	registerVal4 = Engine.GetModelValue(registerVal2)
	if registerVal2 and not registerVal4 and registerVal3 and registerVal3 ~= "" then
		Engine.SetModelValue(registerVal2, true)
		registerVal4 = Engine.GetSoundPlaybackTime(registerVal3)
		if not registerVal4 then
		end
		local function __FUNC_48D8C_()
			Engine.SetModelValue(registerVal2, false)
			arg0.soundTimer = nil
		end

		local registerVal5 = LUI.UITimer.newElementTimer(5000.000000, true, __FUNC_48D8C_)
		arg0.soundTimer = registerVal5
		arg0:addElement(arg0.soundTimer)
		Engine.PlaySound(registerVal3)
	end
end

function StopSpecialistTransmission(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "playingSound")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal2 and registerVal3 then
		if arg0.soundTimer then
			arg0.soundTimer:close()
			arg0.soundTimer = nil
		end
		StopSoundFromElementModel(arg1, arg0, "alias")
		Engine.SetModelValue(registerVal2, false)
	end
end

function SetEdittingHeroFromStats(arg0)
	CoD.CCUtility.SetEdittingHero(arg0, Engine.GetEquippedHero(arg0, CoD.CCUtility.customizationMode))
end

function UpdateEditingHero(arg0, arg1)
	if arg0.heroIndex then
		CoD.CCUtility.SetEdittingHero(arg1, arg0.heroIndex)
		local registerVal5 = CoD.GetLocalClientAdjustedNum(arg1)
		Engine.SendClientScriptNotify(arg1, (CoD.CCUtility.Heroes.heroUpdateEvent .. registerVal5), "changeHero", CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.customizationMode)
		NotifyScriptCharacterLoadoutChange(arg1, Engine.GetLoadoutTypeForHero(arg1, arg0.heroIndex))
	end
end

function HeroLoadoutPreviewChange(arg0, arg1)
	if not arg0.disabled then
		NotifyScriptCharacterLoadoutChange(arg1, arg0.equippedSlot)
	end
end

function HeroLoadoutChanged(arg0, arg1, arg2)
	if not arg1.disabled then
		Engine.SetHeroLoadoutItem(arg2, CoD.CCUtility.customizationMode, arg1.heroIndex, arg1.equippedSlot)
		SaveLoadout(arg0, arg2)
	end
end

function BeginEdittingHeroOption(arg0, arg1, arg2)
	if arg0.updateMode then
		local registerVal3 = arg1:getModel(arg2, "colorListDatasource")
		if registerVal3 then
			local registerVal5 = Engine.GetModelValue(registerVal3)
		end
		if registerVal5 == "" then
		end
		arg0.updateMode(CoD.CCUtility.PersonalizeHeroData.Modes.EdittingOption, nil, arg1, true)
	end
end

function BeginChoosingGestureOption(arg0, arg1)
	if arg0.updateMode then
		arg0.updateMode(CoD.CCUtility.TauntsData.Modes.EdittingGesture, nil, arg1.gestureType)
	end
end

function CancelChoosingGestureOption(arg0)
	if arg0.updateMode then
		arg0.updateMode(CoD.CCUtility.TauntsData.Modes.ExploringTaunts, false)
	end
end

function GestureItemSelected(arg0, arg1, arg2)
	Engine.SelectGesture(arg2, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.TauntsData.EdittingTauntOrGestureType, arg1.index)
	if arg0.updateMode then
		arg0.updateMode(CoD.CCUtility.TauntsData.Modes.ExploringTaunts, true)
	end
end

function PreviewGesture(arg0, arg1)
	PreviewGesture_Internal(arg0, arg1.xanim)
end

function BeginChoosingTauntOption(arg0, arg1)
	if arg0.updateMode then
		arg0.updateMode(CoD.CCUtility.TauntsData.Modes.EdittingTaunt, nil, arg1.tauntType)
	end
end

function CancelChoosingTauntOption(arg0)
	if arg0.updateMode then
		arg0.updateMode(CoD.CCUtility.TauntsData.Modes.ExploringTaunts, false)
	end
end

function TauntItemSelected(arg0, arg1, arg2)
	Engine.SelectTaunt(arg2, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.TauntsData.EdittingTauntOrGestureType, arg1.index)
	if arg0.updateMode then
		arg0.updateMode(CoD.CCUtility.TauntsData.Modes.ExploringTaunts, true)
	end
end

function PreviewTaunt(arg0, arg1)
	PreviewTaunt_Internal(arg0, arg1.xanim)
end

function HeroOptionHighlighted(arg0, arg1, arg2)
	if CoD.CCUtility.PersonalizeHeroData.EdittingElement then
		if CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex then
			if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
			else
				if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET then
				end
			end
			if "changeHelmetAccentColor" then
				local registerVal7 = CoD.GetLocalClientAdjustedNum(arg2)
				Engine.SendClientScriptNotify(arg2, (CoD.CCUtility.Heroes.heroUpdateEvent .. registerVal7), "changeHelmetAccentColor", (CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex - 1.000000), (arg1.optionIndex - 1.000000), CoD.CCUtility.customizationMode)
			else
				local registerVal4 = IsSelfModelValueTrue(arg1, arg2, "isLocked")
				if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
				else
					if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET then
					end
				end
				if "changeHelmet" then
					local registerVal8 = CoD.GetLocalClientAdjustedNum(arg2)
					Engine.SendClientScriptNotify(arg2, (CoD.CCUtility.Heroes.heroUpdateEvent .. registerVal8), "changeHelmet", (arg1.optionIndex - 1.000000), CoD.CCUtility.customizationMode, (not registerVal4))
				end
			end
		end
	end
end

function HeroOptionSelected(arg0, arg1, arg2)
	if arg0.updateMode then
		if CoD.CCUtility.PersonalizeHeroData.EdittingElement then
			CoD.CopyModelValue(arg2, arg1, "name", CoD.CCUtility.PersonalizeHeroData.EdittingElement, "currentSelectionName")
			CoD.CopyModelValue(arg2, arg1, "image", CoD.CCUtility.PersonalizeHeroData.EdittingElement, "image")
			CoD.CopyModelValue(arg2, arg1, "color", CoD.CCUtility.PersonalizeHeroData.EdittingElement, "color")
			if CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex then
				if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
				else
					if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET then
					end
				end
				Engine.SetHeroItem(arg2, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.PersonalizeHeroData.EdittingArea, CoD.CCUtility.Heroes.selectionTable.selectedHelmet, (CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex - 1.000000), (arg1.optionIndex - 1.000000))
				Engine.InvalidateCharacterItemRender(CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.PersonalizeHeroData.EdittingArea, CoD.CCUtility.Heroes.selectionTable.selectedHelmet)
				Engine.InvalidateCharacterItemRender(CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.PersonalizeHeroData.EdittingArea, CoD.CCUtility.Heroes.selectionTable.selectedHelmet)
				if CoD.CCUtility.Heroes.selectionTable.helmetColors and CoD.CCUtility.Heroes.selectionTable.helmetColors[CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex] ~= (arg1.optionIndex - 1.000000) and CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
					Engine.InvalidateCharacterItemRender(CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET)
				else
					if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
					else
						if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET then
						end
					end
					Engine.SetHeroItem(arg2, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.PersonalizeHeroData.EdittingArea, (arg1.optionIndex - 1.000000))
					if CoD.CCUtility.Heroes.selectionTable.selectedHelmet ~= (arg1.optionIndex - 1.000000) and CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
						Engine.InvalidateCharacterItemRender(CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET)
					end
				end
			end
		end
		local registerVal6 = {}
		registerVal6.customizationArea = CoD.CCUtility.PersonalizeHeroData.EdittingArea
		registerVal6.colorRow = false
		arg0.updateMode(CoD.CCUtility.PersonalizeHeroData.Modes.ExploringOptions, registerVal6)
	end
end

function HeroBlackjackActivateContract(arg0, arg1, arg2)
	local registerVal3 = Engine.StorageGetBuffer(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal4 = Engine.ConsumableGet(arg2, "blackjack", "awarded")
	local registerVal5 = Engine.ConsumableGet(arg2, "blackjack", "consumed")
	if registerVal3 and registerVal3.TenthSpecialistContract and registerVal4 <= registerVal5 then
		registerVal4 = registerVal3.blackjack_contract_count:get()
		registerVal3.blackjack_contract_count:set(math.max(0.000000, (registerVal4 - 1.000000)))
		registerVal3.TenthSpecialistContract.active:set(1.000000)
		registerVal3.TenthSpecialistContract.special_card_earned:set(0.000000)
		local registerVal9 = Dvar.tu11_blackjack_contract_time:get()
		if not registerVal9 then
		end
		Engine.ConsumableIncrement(arg2, "blackjack", "awarded", 3600.000000)
		Engine.PlaySound("mpl_bm_specialist_coin_place")
		registerVal5 = arg0:getModel(arg2, "contractsRemaining")
		if registerVal5 then
			Engine.SetModelValue(registerVal5, registerVal3.blackjack_contract_count:get())
		end
		local registerVal6 = Engine.ConsumableGet(arg2, "blackjack", "awarded")
		local registerVal7 = Engine.ConsumableGet(arg2, "blackjack", "consumed")
		registerVal7 = arg0:getModel(arg2, "isActivated")
		if registerVal7 then
			if 0.000000 >= (registerVal6 - registerVal7) then
			end
			Engine.SetModelValue(registerVal7, true)
		end
		local registerVal8 = arg0:getModel(arg2, "activeTimeRemaining")
		if registerVal8 then
			Engine.SetModelValue(registerVal8, ((registerVal6 - registerVal7) * 1000.000000))
		end
	end
	UploadStats(arg0, arg2)
end

function HeroBlackjackOptionSelected(arg0, arg1)
	local registerVal2 = CoD.CCUtility.GetBlackjackHeroIndex()
	local registerVal5 = arg0:getModel()
	local registerVal4 = CoD.SafeGetModelValue(registerVal5, "equippedSlot")
	if registerVal2 and registerVal4 then
		Engine.SetHeroItem(arg1, CoD.CCUtility.customizationMode, registerVal2, Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET, registerVal4)
	end
	if registerVal4 == Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_GADGET then
	end
	local registerVal6 = Engine.GetItemIndexFromReference("blackjack_cards", CoD.CCUtility.customizationMode)
	if registerVal6 ~= -1.000000 then
		CoD.CCUtility.PersonalizeHeroData.SetHeroShowcaseWeapon(arg1, registerVal6)
	end
	local registerVal7 = Engine.StorageGetBuffer(arg1, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal8 = Engine.GetEquippedHero(arg1, Enum.eModes.MODE_MULTIPLAYER)
	if registerVal7 and registerVal7.TenthSpecialistContract and registerVal8 ~= registerVal2 then
		LuaUtils.SetLastSelectedSpecialist(arg1, registerVal8)
	end
	UploadStats(arg0, arg1)
end

function HeroColorsSelected(arg0, arg1, arg2)
	if arg0.updateMode then
		if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
		else
			if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET then
			end
		end
		local registerVal4, registerVal5, registerVal6 = pairs(CoD.CCUtility.PersonalizeHeroData.CurrentColors)
		for index7,value8 in registerVal4, registerVal5, registerVal6 do
			Engine.SetHeroItem(arg2, CoD.CCUtility.customizationMode, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.PersonalizeHeroData.EdittingArea, CoD.CCUtility.Heroes.selectionTable.selectedHelmet, index7, value8)
		end
		registerVal6 = {}
		registerVal6.customizationArea = CoD.CCUtility.PersonalizeHeroData.EdittingArea
		registerVal6.colorRow = true
		arg0.updateMode(CoD.CCUtility.PersonalizeHeroData.Modes.ExploringOptions, registerVal6)
	end
end

function HeroColorSectionHighlighted(arg0, arg1, arg2)
	if CoD.CCUtility.PersonalizeHeroData.EdittingElement and arg1.colorTableIndex then
		CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex = arg1.colorTableIndex
		CoD.CCUtility.PersonalizeHeroData.CurrentColors[(arg1.colorTableIndex - 1.000000)] = (arg1.optionIndex - 1.000000)
		if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
		else
			if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET then
			end
		end
		local registerVal5 = CoD.CCUtility.PersonalizeHeroData.EdittingElement:getModel(arg2, "currentSelectionName")
		if CoD.CCUtility.Heroes.heroCustomizationTable.helmets[(CoD.CCUtility.Heroes.selectionTable.selectedHelmet + 1.000000)].accents and CoD.CCUtility.Heroes.heroCustomizationTable.helmets[(CoD.CCUtility.Heroes.selectionTable.selectedHelmet + 1.000000)].accents[arg1.colorTableIndex][arg1.optionIndex] and CoD.CCUtility.Heroes.heroCustomizationTable.helmets[(CoD.CCUtility.Heroes.selectionTable.selectedHelmet + 1.000000)].accents[arg1.colorTableIndex][arg1.optionIndex].name and registerVal5 then
			Engine.SetModelValue(registerVal5, CoD.CCUtility.Heroes.heroCustomizationTable.helmets[(CoD.CCUtility.Heroes.selectionTable.selectedHelmet + 1.000000)].accents[arg1.colorTableIndex][arg1.optionIndex].name)
		end
		HeroOptionHighlighted(arg0, arg1, arg2)
	end
end

function CancelHeroOptionSelection(arg0, arg1)
	if CoD.CCUtility.PersonalizeHeroData.EdittingElement then
		if CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex then
			if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
			else
				if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET then
				end
			end
			if "changeHelmetAccentColor" and CoD.CCUtility.Heroes.selectionTable.helmetColors[CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex] then
				local registerVal7 = CoD.GetLocalClientAdjustedNum(arg1)
				Engine.SendClientScriptNotify(arg1, (CoD.CCUtility.Heroes.heroUpdateEvent .. registerVal7), "changeHelmetAccentColor", (CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex - 1.000000), CoD.CCUtility.Heroes.selectionTable.helmetColors[CoD.CCUtility.PersonalizeHeroData.EdittingAreaItemIndex])
			else
				if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_BODY then
				else
					if CoD.CCUtility.PersonalizeHeroData.EdittingArea == Enum.CharacterItemType.CHARACTER_ITEM_TYPE_HELMET then
					end
				end
				if "changeHelmet" and CoD.CCUtility.Heroes.selectionTable.selectedHelmet then
					registerVal7 = CoD.GetLocalClientAdjustedNum(arg1)
					Engine.SendClientScriptNotify(arg1, (CoD.CCUtility.Heroes.heroUpdateEvent .. registerVal7), "changeHelmet", CoD.CCUtility.Heroes.selectionTable.selectedHelmet, CoD.CCUtility.customizationMode)
				end
			end
		end
	end
	if arg0.updateMode then
		arg0.updateMode(CoD.CCUtility.PersonalizeHeroData.Modes.ExploringOptions)
	end
end

function HeroShowcaseWeaponSelected(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = Engine.GetModel(registerVal3, "itemIndex")
	if arg0.updateMode and registerVal3 and registerVal4 then
		local registerVal5 = Engine.GetModelValue(registerVal4)
		CoD.CCUtility.PersonalizeHeroData.SetHeroShowcaseWeapon(arg2, registerVal5)
		local registerVal6 = Engine.GetItemRef(registerVal5)
		local registerVal8 = CoD.gameMode:lower()
		local registerVal10 = CoD.GetLocalClientAdjustedNum(arg2)
		Engine.SendClientScriptNotify(arg2, (CoD.CCUtility.Heroes.heroUpdateEvent .. registerVal10), "changeShowcaseWeapon", (registerVal6 .. "_" .. registerVal8), "", "", CoD.CCUtility.customizationMode)
	end
end

function HeroShowcaseWeaponVariantSelected(arg0, arg1, arg2)
	if arg0.updateMode then
		local registerVal10 = CoD.CCUtility.PersonalizeHeroData.IsDualWieldWeapon(arg1.weaponVariantInfo.weaponIndex, arg1.weaponVariantInfo.attachmentsByIndex)
		if registerVal10 then
			registerVal10 = CoD.CCUtility.PersonalizeHeroData.GetDualWieldVersionOfWeapon(arg2, arg1.weaponVariantInfo.weaponIndex)
		end
		CoD.CCUtility.PersonalizeHeroData.SetHeroShowcaseWeapon(arg2, registerVal10, arg1.weaponVariantInfo.variantNameBig, arg1.weaponVariantInfo.attachmentsByIndex, arg1.weaponVariantInfo.attachmentVariant, arg1.weaponVariantInfo.camoIndex, arg1.weaponVariantInfo.paintjobSlot, arg1.weaponVariantInfo.paintjobIndex)
		registerVal10 = CoD.CCUtility.PersonalizeHeroData.GetHeroShowcaseWeaponName(registerVal10, arg1.weaponVariantInfo.attachmentsByIndex)
		local registerVal11 = CoD.CACUtility.GetAttachmentCosmeticVariantsFromVariantInfo(arg1.weaponVariantInfo)
		local registerVal12 = CoD.CCUtility.PersonalizeHeroData.GetHeroShowcaseWeaponRenderOptions(arg1.weaponVariantInfo.camoIndex, arg1.weaponVariantInfo.paintjobSlot, arg1.weaponVariantInfo.paintjobIndex)
		local registerVal16 = CoD.GetLocalClientAdjustedNum(arg2)
		Engine.SendClientScriptNotify(arg2, (CoD.CCUtility.Heroes.heroUpdateEvent .. registerVal16), "changeShowcaseWeapon", registerVal10, registerVal11, registerVal12, CoD.CCUtility.customizationMode)
	end
end

function SetHeroItemOptionAsOld(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "optionIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal3 and registerVal4 and CoD.CCUtility.Heroes.HeroIndexForEdits and CoD.CCUtility.PersonalizeHeroData.EdittingArea then
		Engine.SetCharacterCustomizationItemAsOld(arg2, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.PersonalizeHeroData.EdittingArea, registerVal4)
		local registerVal8 = CoD.CCUtility.PersonalizeHeroData.EdittingElement:getModel(arg2, "breadcrumbCount")
		if registerVal8 then
			local registerVal9 = Engine.CharacterCustomizationNewItemCount(arg2, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.PersonalizeHeroData.EdittingArea)
			Engine.SetModelValue(registerVal8, registerVal9.total)
		end
		local registerVal10 = arg0.categoryTabs.Tabs.grid:getItemAt((arg0.categoryTabs.Tabs.grid.savedActiveIndex + 1.000000))
		local registerVal11 = Engine.CharacterCustomizationNewItemCount(arg2, CoD.CCUtility.Heroes.HeroIndexForEdits, CoD.CCUtility.PersonalizeHeroData.EdittingArea)
		local registerVal12 = registerVal10:getModel(arg2, "breadcrumbCount")
		if registerVal10 and registerVal12 then
			if registerVal10.filterName == "loot" then
			else
			end
			Engine.SetModelValue(registerVal12, registerVal11.standard)
		end
	end
end

function SetHeroTauntAsOld(arg0, arg1, arg2)
	if arg1.index and arg1.tauntType then
		Engine.SetTauntAsOld(arg2, Enum.eModes.MODE_MULTIPLAYER, CoD.CCUtility.Heroes.HeroIndexForEdits, arg1.tauntType, arg1.index)
	end
end

function SetHeroGestureAsOld(arg0, arg1, arg2)
	if arg1.index and arg1.gestureType then
		Engine.SetGestureAsOld(arg2, Enum.eModes.MODE_MULTIPLAYER, CoD.CCUtility.Heroes.HeroIndexForEdits, arg1.gestureType, arg1.index)
	end
end

function WC_SetChoosingCategory(arg0, arg1, arg2)
	local registerVal5 = {}
	registerVal5.name = "update_selection_mode"
	registerVal5.mode = CoD.WC_Category.Modes.SELECTING_CATEGORY
	arg0:processEvent(registerVal5)
end

function WC_SetSelectingItem(arg0, arg1, arg2)
	local registerVal5 = {}
	registerVal5.name = "update_selection_mode"
	registerVal5.mode = CoD.WC_Category.Modes.SELECTING_ITEM
	registerVal5.element = arg1
	arg0:processEvent(registerVal5)
end

function WC_SelectingCustomization(arg0, arg1, arg2)
	local registerVal5 = {}
	registerVal5.name = "update_selection_mode"
	registerVal5.mode = CoD.WC_Category.Modes.SELECTING_CATEGORY
	arg0:dispatchEventToParent(registerVal5)
end

function WC_WeaponCustomizationGainFocus(arg0, arg1, arg2)
	local registerVal5 = Engine.GetModelValue(arg1:getModel(arg2, "type"))
	if registerVal5 ~= CoD.CACUtility.primaryWeaponPrestigeSlot and registerVal5 ~= CoD.CACUtility.secondaryWeaponPrestigeSlot then
		local registerVal9 = CoD.GetLocalClientAdjustedNum(arg2)
		Engine.SendClientScriptNotify(arg2, ("cam_customization_focus" .. registerVal9), CoD.perController[arg2].weaponCategory, arg1.xcamNotetrack)
	end
end

function WC_WeaponOptionGainFocus(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "weaponOptionTypeName")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal5 = arg1:getModel(arg2, "itemIndex")
		local registerVal6 = arg1:getModel(arg2, "weaponOptionType")
		local registerVal7 = Engine.GetModelValue(registerVal6)
		local registerVal8 = Engine.GetModelValue(arg1:getModel(arg2, "paintjobIndex"))
		local registerVal9 = Engine.GetModelValue(arg1:getModel(arg2, "paintjobSlot"))
		if registerVal7 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_PAINTJOB and registerVal9 ~= Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT and registerVal8 ~= Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX then
			Engine.SetupPaintjobData(arg2, registerVal9, registerVal8)
		end
		if registerVal5 then
			registerVal8 = Engine.GetModelValue(registerVal5)
			registerVal9 = IsItemWeaponOptionLocked(arg0, arg1, arg2)
			if registerVal7 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_INVALID then
				CoD.CACUtility.UpdateWeaponPrestigeAttachment(arg2, registerVal4, registerVal8)
			else
				local registerVal13 = CoD.GetLocalClientAdjustedNum(arg2)
				Engine.SendClientScriptNotify(arg2, ("cam_customization_wo" .. registerVal13), registerVal4, registerVal8, registerVal9)
			end
		end
	end
end

function WC_VariantGainFocus(arg0, arg1, arg2)
	local registerVal6 = CoD.GetLocalClientAdjustedNum(arg2)
	Engine.SendClientScriptNotify(arg2, ("cam_customization_acv" .. registerVal6), arg1.attachmentRef, arg1.variantIndex)
end

function WC_VariantSelectionCancel(arg0, arg1, arg2)
	local registerVal6 = CoD.CACUtility.IsAttachmentRefWeaponOption(CoD.WC_Category.ACV.selectedAttachment)
	if registerVal6 then
		if CoD.WC_Category.ACV.selectedAttachment == CoD.CACUtility.weaponOptionGroupNames[Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_PAINTJOB] then
			registerVal6 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].classModel, (CoD.perController[arg2].weaponCategory .. "paintjobIndex.itemIndex")))
			local registerVal7 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].classModel, (CoD.perController[arg2].weaponCategory .. "paintjobSlot.itemIndex")))
			if registerVal7 ~= Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT and registerVal6 ~= Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX then
				Engine.SetupPaintjobData(arg2, registerVal7, registerVal6)
			else
				if registerVal7 == Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT and registerVal6 == Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX then
					Engine.ClearPaintjobLayerData()
				end
			end
			local registerVal11 = CoD.GetLocalClientAdjustedNum(arg2)
			Engine.SendClientScriptNotify(arg2, ("cam_customization_wo" .. registerVal11), CoD.WC_Category.ACV.selectedAttachment, 1.000000)
		else
			registerVal7 = Engine.GetModel(CoD.perController[arg2].classModel, ((CoD.perController[arg2].weaponCategory .. CoD.WC_Category.ACV.selectedAttachment) .. ".itemIndex"))
			if registerVal7 then
				local registerVal8 = Engine.GetModelValue(registerVal7)
				local registerVal12 = CoD.GetLocalClientAdjustedNum(arg2)
				Engine.SendClientScriptNotify(arg2, ("cam_customization_wo" .. registerVal12), CoD.WC_Category.ACV.selectedAttachment, registerVal8)
			else
				if CoD.WC_Category.ACV.selectedAttachment == CoD.CACUtility.primaryWeaponPrestigeSlot or CoD.WC_Category.ACV.selectedAttachment == CoD.CACUtility.secondaryWeaponPrestigeSlot then
					registerVal6 = CoD.SafeGetModelValue(CoD.perController[arg2].classModel, (CoD.perController[arg2].weaponCategory .. CoD.WC_Category.ACV.selectedAttachment .. ".itemIndex"))
					if not registerVal6 then
					end
					CoD.CACUtility.UpdateWeaponPrestigeAttachment(arg2, CoD.WC_Category.ACV.selectedAttachment, CoD.CACUtility.EmptyItemIndex)
				else
					registerVal6 = CoD.CACUtility.GetLoadoutSlotForAttachmentName(CoD.perController[arg2].classModel, CoD.perController[arg2].weaponCategory, CoD.WC_Category.ACV.selectedAttachment)
					registerVal7 = Engine.GetModel(CoD.perController[arg2].classModel, (registerVal6 .. "cosmeticvariant.itemIndex"))
					if registerVal6 and registerVal7 then
						registerVal8 = Engine.GetModelValue(registerVal7)
						registerVal12 = CoD.GetLocalClientAdjustedNum(arg2)
						Engine.SendClientScriptNotify(arg2, ("cam_customization_acv" .. registerVal12), CoD.WC_Category.ACV.selectedAttachment, registerVal8)
					end
				end
			end
		end
	end
end

function OpenChooseShowcaseWeapon(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetModelForController(arg2)
	local registerVal5 = Engine.CreateModel(registerVal6, "ShowcaseWeapon.Mode")
	Engine.SetModelValue(registerVal5, Enum.ShowcaseWeaponMode.SHOWCASEWEAPON_WEAPONLIST)
	CoD.CraftUtility.Gunsmith.ParseDDL(arg2, Enum.StorageFileType.STORAGE_GUNSMITH)
	CoD.CraftUtility.Paintjobs.ParseDDL(arg2, Enum.StorageFileType.STORAGE_PAINTJOBS)
	NavigateToMenu(arg0, "ChooseShowcaseWeapon", true, arg2)
end

function RedeemCode(arg0, arg1, arg2)
	Engine.ShowRedeemCode(arg2)
end

function ShowPsStoreIcon(arg0)
	Store_UpdatePSStoreIconCount(arg0, 1.000000)
	Engine.ShowPsStoreIcon()
end

function HidePsStoreIcon(arg0)
	Store_UpdatePSStoreIconCount(arg0, -1.000000)
	if CoD.perController[arg0].psStoreIconCount ~= nil and CoD.perController[arg0].psStoreIconCount == 0.000000 then
		Engine.HidePsStoreIcon()
		if CoD.perController[arg0].selectedStoreCategory ~= "OUTFITS" then
			CoD.perController[arg0].selectedStoreCategory = nil
		end
		CoD.perController[arg0].forceFocusCategory = nil
	end
end

function UpdateGlobalDataSource(arg0, arg1)
	if DataSources[arg1] then
		DataSources[arg1].getModel(arg0)
	end
end

function SetSelectedStoreCategory(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "category")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal3 and CoD.perController[arg2].selectedStoreCategory ~= registerVal4 then
		CoD.perController[arg2].selectedStoreCategory = registerVal4
		local registerVal6 = Engine.OwnSeasonPass(arg2)
		if arg1 or registerVal4 ~= "MAPPACKS" then
			registerVal6 = Engine.OwnSeasonPass(arg2)
			registerVal6 = Engine.HasEntitlementByOwnership(arg2, "zmbundle")
			if not arg1 or registerVal6 then
				if registerVal4 == "ZOMBIES" then
				end
			end
		end
		if registerVal4 ~= "EXTRASLOTS" and registerVal4 ~= "ESPORTS" and registerVal4 == "OUTFITS" or registerVal4 == "EXTRAPACKS" then
			Engine.HidePsStoreIcon()
		else
			Engine.ShowPsStoreIcon()
		end
		Engine.SetStoreCategoryFetchParamaeters(arg2, registerVal4, true)
	end
end

function PurchaseProduct(arg0, arg1, arg2)
	local registerVal4 = IsDurango()
	if registerVal4 then
		registerVal4 = arg1:getModel(arg2, "productID")
		if registerVal4 then
			local registerVal5 = Engine.GetModelValue(registerVal4)
			if registerVal5 ~= "dc41534d-1a0c-49fd-b1bb-9cbe094b876c" and CoD.perController[arg2].selectedStoreCategory ~= "FEATURED" and CoD.perController[arg2].selectedStoreCategory == "BO2" or CoD.perController[arg2].selectedStoreCategory == "ZOMBIES" then
				Engine.ShowProductDetailsByID(arg2, CoD.perController[arg2].selectedStoreCategory, registerVal5)
			else
				Engine.PurchaseProductByID(arg2, CoD.perController[arg2].selectedStoreCategory, registerVal5)
			else
				registerVal4 = IsOrbis()
				if registerVal4 then
					registerVal4 = arg1:getModel(arg2, "serviceLabel")
					if registerVal4 then
						registerVal5 = Engine.GetModelValue(registerVal4)
						local registerVal6 = Dvar.live_store_show_details:exists()
						registerVal6 = Dvar.live_store_show_details:get()
						if arg1 or not registerVal6 then
							if CoD.perController[arg2].selectedStoreCategory ~= "FEATURED" and CoD.perController[arg2].selectedStoreCategory ~= "MAPPACKS" and CoD.perController[arg2].selectedStoreCategory == "STRONGHOLD" or CoD.perController[arg2].selectedStoreCategory == "ZOMBIES" then
								registerVal6 = arg1:getModel(arg2, "productID")
								local registerVal7 = Engine.GetModelValue(registerVal6)
								Engine.ShowProductDetailsByID(arg2, CoD.perController[arg2].selectedStoreCategory, registerVal7, registerVal5)
								registerVal6 = arg1:getModel(arg2, "skuID")
								registerVal7 = Engine.GetModelValue(registerVal6)
								Engine.PurchaseProductByID(arg2, CoD.perController[arg2].selectedStoreCategory, registerVal7, registerVal5)
								registerVal4 = IsPC()
								if registerVal6 and registerVal6 and registerVal4 then
									registerVal4 = Engine.IsUserGuest(arg2)
									if registerVal4 then
										LuaUtils.UI_ShowErrorMessageDialog(arg2, "MENU_GUEST_CONTENT_RESTRICTED")
										return 
									end
									registerVal4 = arg1:getModel(arg2, "skuID")
									registerVal5 = arg1:getModel(arg2, "serviceLabel")
									if registerVal4 and registerVal5 then
										registerVal6 = Engine.GetModelValue(registerVal4)
										registerVal7 = Engine.GetModelValue(registerVal5)
										Engine.PurchaseProductByID(arg2, CoD.perController[arg2].selectedStoreCategory, registerVal6, registerVal7)
										CoD.OverlayUtility.CreateOverlay(arg2, arg0, "ProcessingCoDPointsPurchasePC")
									end
								end
							end
						end
					end
				end
			end
		end
	end

function RecordStoreOnItemGainFocus(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.milliseconds()
	arg1.onGainFocusTime = registerVal4
end

function RecordStoreOnItemLoseFocus(arg0, arg1, arg2, arg3)
	local registerVal7 = Dvar.store_item_viewed_timer:get()
	if arg1.onGainFocusTime ~= nil then
		local registerVal8 = Engine.milliseconds()
	end
	if registerVal7 and (registerVal8 - arg1.onGainFocusTime) < registerVal7 then
		return 
	end
	registerVal8 = arg1:getModel(arg2, "productID")
	if registerVal8 then
		local registerVal9 = Engine.GetModelValue(registerVal8)
		LUI.CoDMetrics.StoreItemViewed(arg0, arg2, registerVal9, (registerVal8 - arg1.onGainFocusTime))
	end
end

function RecordStoreLastFocusedItemViewed(arg0, arg1, arg2, arg3)
	RecordStoreOnItemLoseFocus(arg0, arg1, arg2, arg3)
end

function OpenStoreNonFeatureFrameVOD(arg0, arg1, arg2)
	if arg0.rightPane.frameWidget.framedWidget and arg0.rightPane.frameWidget.framedWidget.storeMovie then
		arg0.rightPane.frameWidget.framedWidget.storeMovie:setupMoviePlayback("")
	end
	local registerVal5 = arg1:getModel()
	local registerVal4 = CoD.SafeGetModelValue(registerVal5, "videoHighResRef")
	local registerVal7 = DataSources.VoDViewer.getModel(arg2)
	local registerVal6 = Engine.GetModel(registerVal7, "stream")
	Engine.SetModelValue(registerVal6, registerVal4)
	registerVal5 = OpenPopup(arg0, "VoDViewer", arg2)
	local function __FUNC_50897_(arg0)
		if arg0.rightPane.frameWidget.framedWidget.storeMovie then
			local registerVal2 = arg1:getModel()
			local registerVal1 = CoD.SafeGetModelValue(registerVal2, "videoLowResRef")
			arg0.rightPane.frameWidget.framedWidget.storeMovie:setupMoviePlayback(registerVal1, false, true)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "close", __FUNC_50897_)
end

function StoreFeatureFrameWidgetGainFocus(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = CoD.SafeGetModelValue(registerVal3, "videoLowResRef")
	if arg1.frameWidget and arg1.frameWidget.framedWidget and registerVal4 and registerVal4 ~= "" then
		if arg0.playMovieDelayTimer then
			arg0.playMovieDelayTimer:close()
			arg0.playMovieDelayTimer = nil
		end
		local function __FUNC_50C1B_(arg0, arg1)
			local registerVal2 = arg0:isInFocus()
			arg0.frameWidget:changeFrameWidget("CoD.StoreFeaturePreviewMovieWidget")
			arg0.frameWidgetName = "StoreFeaturePreviewMovieWidget"
			if registerVal2 and arg0.frameWidget.framedWidget.storeMovie then
				arg0.frameWidget.framedWidget.storeMovie:setupMoviePlayback(registerVal4, false, true)
			end
		end

		arg1:registerEventHandler("play_movie_delay", __FUNC_50C1B_)
		local registerVal7 = {}
		registerVal7.name = "play_movie_delay"
		registerVal7.controller = arg2
		local registerVal5 = LUI.UITimer.new(2000.000000, registerVal7, true)
		arg0.playMovieDelayTimer = registerVal5
		arg0:addElement(arg0.playMovieDelayTimer)
		local function __FUNC_50DCA_(arg0, arg1)
			local registerVal2 = arg0:isInFocus()
			if registerVal2 and arg0.frameWidget.framedWidget.storeMovie then
				arg0.frameWidget.framedWidget.storeMovie:setupMoviePlayback("")
				local function __FUNC_50F64_()
					arg0.frameWidget.framedWidget.storeMovie:setupMoviePlayback(registerVal4, false, true)
				end

				arg0:addElement(LUI.UITimer.newElementTimer(1.000000, true, __FUNC_50F64_))
			end
		end

		arg1:registerEventHandler("finished_movie_playback", __FUNC_50DCA_)
	end
end

function StoreFeatureFrameWidgetLoseFocus(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if arg1.frameWidget and arg1.frameWidget.framedWidget then
		if arg1.frameWidget.framedWidget.storeMovie then
			arg1.frameWidget.framedWidget.storeMovie:setupMoviePlayback("")
		end
		arg1.frameWidget:changeFrameWidget("CoD.StoreFeaturePreviewImageWidget")
		arg1.frameWidgetName = "StoreFeaturePreviewImageWidget"
	end
end

function StoreVideoProductFrameWidgetGainFocus(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = CoD.SafeGetModelValue(registerVal3, "videoLowResRef")
	if arg1.frameWidget and arg1.frameWidget.framedWidget and registerVal4 ~= "" then
		if arg0.playMovieDelayTimer then
			arg0.playMovieDelayTimer:close()
			arg0.playMovieDelayTimer = nil
		end
		local function __FUNC_5146A_(arg0, arg1)
			local registerVal2 = arg0:isInFocus()
			arg0.frameWidget:changeFrameWidget("CoD.StoreVideoProductButtonMovieWidget")
			arg0.frameWidgetName = "StoreVideoProductButtonMovieWidget"
			if registerVal2 and arg0.frameWidget.framedWidget.storeMovie then
				arg0.frameWidget.framedWidget.storeMovie:setupMoviePlayback(registerVal4)
			end
		end

		arg1:registerEventHandler("play_movie_delay", __FUNC_5146A_)
		local registerVal7 = {}
		registerVal7.name = "play_movie_delay"
		registerVal7.controller = arg2
		local registerVal5 = LUI.UITimer.new(2000.000000, registerVal7, true)
		arg0.playMovieDelayTimer = registerVal5
		arg1:addElement(arg0.playMovieDelayTimer)
	end
end

function StoreVideoProductFrameWidgetLoseFocus(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if arg1.frameWidget and arg1.frameWidget.framedWidget then
		if arg1.frameWidget.framedWidget.storeMovie then
			arg1.frameWidget.framedWidget.storeMovie:setupMoviePlayback("")
		end
		arg1.frameWidget:changeFrameWidget("CoD.StoreVideoProductButtonImageWidget")
		arg1.frameWidgetName = "StoreVideoProductButtonImageWidget"
	end
end

function OpenStoreFeatureFrameVOD(arg0, arg1, arg2)
	if arg1.frameWidget.framedWidget and arg1.frameWidget.framedWidget.storeMovie then
		arg1.frameWidget.framedWidget.storeMovie:setupMoviePlayback("")
	end
	local registerVal5 = arg1:getModel()
	local registerVal4 = CoD.SafeGetModelValue(registerVal5, "videoHighResRef")
	local registerVal7 = DataSources.VoDViewer.getModel(arg2)
	local registerVal6 = Engine.GetModel(registerVal7, "stream")
	Engine.SetModelValue(registerVal6, registerVal4)
	registerVal5 = OpenPopup(arg0, "VoDViewer", arg2)
	local function __FUNC_51ADC_(arg0)
		if arg1.frameWidget.framedWidget.storeMovie then
			local registerVal2 = arg1:getModel()
			local registerVal1 = CoD.SafeGetModelValue(registerVal2, "videoLowResRef")
			arg1.frameWidget.framedWidget.storeMovie:setupMoviePlayback(registerVal1, false, true)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "close", __FUNC_51ADC_)
end

function EmblemEditor_HandleBackInBrowseMode(arg0, arg1, arg2, arg3)
	Engine.ExecNow(arg2, "emblemEndEdit")
	local registerVal4 = GoBack(arg0, arg2)
	local registerVal5 = IsPaintshop(arg2)
	if registerVal5 then
		CoD.SetCustomization(arg2, Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_LEFT, "type")
		ForceNotifyModel(arg2, "Paintshop.UpdateDataSource")
	else
		CoD.SetCustomization(arg2, Enum.CustomizationType.CUSTOMIZATION_TYPE_EMBLEM, "type")
		local registerVal6 = registerVal4.tabList.Tabs.grid:getFirstSelectableItem()
		if registerVal4.tabList.Tabs.grid and arg3 and registerVal6 then
			registerVal4.tabList.Tabs.grid:setActiveItem(registerVal6)
		end
		ForceNotifyModel(arg2, "Emblem.UpdateDataSource")
	end
	CoD.perController[arg2].selectEmblemGroupIndex = nil
	CoD.perController[arg2].selectedLayerIndex = nil
	CoD.perController[arg2].selectedLayerIconID = nil
	CoD.perController[arg2].selectedLayerMaterialID = nil
	CoD.SetEditorProperties(arg2, Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_NONE, "editorMode")
	CoD.SetEditorProperties(arg2, Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE, "colorMode")
	CoD.SetEditorProperties(arg2, CoD.emblem.CLIPBOARDSTATE.EMPTY, "isClipboardEmpty")
	Engine.CommitProfileChanges(arg2)
	registerVal5 = CoD.GetCustomization(arg2, "type")
	Engine.ExecNow(arg2, ("emblemSetGridSize " .. registerVal5 .. " 0"))
end

function EmblemEditor_SetEditMode(arg0)
	CoD.SetEditorProperties(arg0, Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_EDIT, "editorMode")
end

function EmblemEditor_LayerGainFocus(arg0, arg1, arg2, arg3)
	local registerVal4 = arg2:getModel(arg3, "layerIndex")
	local registerVal5 = arg2:getModel(arg3, "layerNumberString")
	local registerVal6 = Engine.GetModelValue(registerVal4)
	CoD.Menu.SetButtonLabel(arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "PLATFORM_EMBLEM_EDIT_DONE")
	CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "")
	local registerVal7 = Engine.GetSelectedLayerIconID(arg3, registerVal6)
	CoD.perController[arg3].selectedLayerIndex = registerVal6
	CoD.perController[arg3].selectedLayerIconID = registerVal7
	local registerVal9 = Engine.GetSelectedLayerMaterialID(arg3, registerVal6)
	CoD.perController[arg3].selectedLayerMaterialID = registerVal9
	local registerVal8 = CoD.GetCustomization(arg3, "type")
	EmblemEditor_SetLayerAndGroupCount(arg3, registerVal8)
	Engine.ExecNow(arg3, ("emblemSelect " .. registerVal6 .. " " .. registerVal8))
	registerVal9 = CoD.IsLayerEmpty(arg3, CoD.perController[arg3].selectedLayerIndex)
	if registerVal9 == true then
		CoD.Menu.SetButtonLabel(arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_EMBLEM_CHOOSE_DECAL")
	else
		CoD.Menu.SetButtonLabel(arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_EMBLEM_EDIT_LAYER")
	end
	registerVal9 = Engine.GetLinkedLayerCount(arg3, registerVal8)
	CoD.SetEditorProperties(arg3, registerVal9, "linkedLayerCount")
	CoD.SetEditorProperties(arg3, registerVal7, "selectedDecalID")
	Engine.ForceNotifyModelSubscriptions(registerVal5)
	if CoD.isPC then
		local registerVal10 = IsLayerEmpty(arg1, arg2, arg3)
		if registerVal10 then
			arg1.actionsListPC:hide()
			arg1.m_layerEmpty = true
		else
			registerVal10 = Engine.LastInput_Gamepad()
			if not registerVal10 then
				arg1.actionsListPC:show()
			end
			arg1.m_layerEmpty = nil
		end
	end
end

function EmblemEditor_InsertDecalPressed(arg0, arg1, arg2)
	local registerVal3 = CoD.GetCustomization(arg2, "type")
	Engine.ExecNow(arg2, ("emblemCopyLayer " .. CoD.perController[arg2].selectedLayerIndex))
	Engine.ExecNow(arg2, ("emblemInsertLayer " .. registerVal3 .. " " .. CoD.perController[arg2].selectedLayerIndex))
	Engine.ExecNow(arg2, ("emblemClearLayerByIndex " .. CoD.perController[arg2].selectedLayerIndex .. " " .. registerVal3))
	CoD.SetEditorProperties(arg2, CoD.emblem.ADDDECAL.INSERT, "addDecalMode")
end

function EmblemEditor_SetEditLayerTitle(arg0, arg1)
	local registerVal2 = IsPaintshop(arg1)
	if registerVal2 then
		arg0.PaintshopFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(CoD.Paintshop.View[CoD.perController[arg1].viewIndex].edit_side_ref))
	else
		arg0.EmblemEditorFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_EMBLEM_EDIT_LAYER_TITLE"))
	end
end

function EmblemEditor_EditSelectedLayer(arg0, arg1, arg2)
	Engine.ExecNow(arg2, ("emblemCopyLayer " .. CoD.perController[arg2].selectedLayerIndex))
	CoD.SetEditorProperties(arg2, CoD.emblem.CLIPBOARDSTATE.EMPTY, "isClipboardEmpty")
	EmblemEditor_SetEditLayerTitle(arg0, arg2)
	CoD.SwapFocusableElements(arg2, arg0.layerCarousel, arg0.emblemDrawWidget)
	EmblemEditor_SetEditMode(arg2)
	local registerVal4 = Engine.GetSelectedLayerColor(arg2)
	local registerVal5 = Engine.GetSelectedLayerColor1(arg2)
	local registerVal8 = Engine.GetModelForController(arg2)
	local registerVal7 = Engine.GetModel(registerVal8, "Emblem.EmblemSelectedLayerProperties.opacity0")
	Engine.SetModelValue(registerVal7, math.floor((registerVal4.alpha * 100.000000)))
	registerVal8 = Engine.GetModelForController(arg2)
	registerVal7 = Engine.GetModel(registerVal8, "Emblem.EmblemSelectedLayerProperties.opacity1")
	Engine.SetModelValue(registerVal7, math.floor((registerVal5.alpha * 100.000000)))
	Engine.ExecNow(arg2, "emblemBeginEdit")
	registerVal7 = Engine.GetSelectedLayerMaterialID(arg2, CoD.perController[arg2].selectedLayerIndex)
	CoD.perController[arg2].selectedLayerMaterialID = registerVal7
	EmblemEditor_SetScaleMode(arg2, Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FIXED)
	EmblemEditor_SetMaterialScaleMode(arg2, Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FIXED)
end

function EmblemEditor_MoveLayer(arg0, arg1, arg2, arg3)
	local registerVal5 = arg0.layerCarousel.activeWidget:getModel(arg2, "layerIndex")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal7 = CoD.GetCustomization(arg2, "type")
	if arg0.layerCarousel.activeWidget ~= nil then
		if arg3 == "left" then
			Engine.ExecNow(arg2, ("emblemMoveLayerRelative -1 " .. registerVal7))
			local registerVal9 = arg0.layerCarousel:getItemAtPosition(1.000000, arg0.layerCarousel.activeWidget.gridInfoTable.zeroBasedIndex, true)
			DataSources.EmblemLayerList.swapItemInfo(arg2, arg0.layerCarousel, registerVal9, arg0.layerCarousel.activeWidget)
			EmblemEditor_SetupDrawEmblem(arg2, arg0.layerCarousel.activeWidget, registerVal9)
			arg0.layerCarousel:setActiveItem(registerVal9)
			EmblemEditor_SetSelectedLayerIndex(arg2, registerVal9)
			arg0.layerCarousel.activeWidget.arrows:setState("DefaultState")
			registerVal9.arrows:setState("LeftButtonPressed")
			registerVal9 = Engine.GetUsedLayerCount(arg2, registerVal7, CoD.perController[arg2].totalLayers)
			local registerVal10 = arg0.layerCarousel.activeWidget:getModel(arg2, "groupLayerCount")
			local registerVal11 = Engine.GetModelValue(registerVal10)
			Engine.ExecNow(arg2, ("emblemMoveLayerRelative 1 " .. registerVal7))
			local registerVal12 = arg0.layerCarousel:getItemAtPosition(1.000000, (arg0.layerCarousel.activeWidget.gridInfoTable.zeroBasedIndex + 2.000000), true)
			DataSources.EmblemLayerList.swapItemInfo(arg2, arg0.layerCarousel, arg0.layerCarousel.activeWidget, registerVal12)
			EmblemEditor_SetupDrawEmblem(arg2, arg0.layerCarousel.activeWidget, registerVal12)
			arg0.layerCarousel:setActiveItem(registerVal12)
			EmblemEditor_SetSelectedLayerIndex(arg2, registerVal12)
			arg0.layerCarousel.activeWidget.arrows:setState("DefaultState")
			if 0.000000 < registerVal6 and registerVal9 ~= nil and 1.000000 < registerVal6 and arg3 == "right" and (registerVal6 + registerVal11) < registerVal9 and registerVal12 ~= nil and (registerVal6 + 2.000000) < registerVal9 then
				registerVal12.arrows:setState("RightButtonPressed")
			end
		end
	end
end

function EmblemEditor_CopyLayerToClipboard(arg0, arg1, arg2)
	Engine.ExecNow(arg2, ("emblemCopyLayer " .. CoD.perController[arg2].selectedLayerIndex))
	CoD.SetEditorProperties(arg2, CoD.emblem.CLIPBOARDSTATE.FULL, "isClipboardEmpty")
	arg0.clipboard:setState("Visible")
end

function EmblemEditor_UpdateLayerData(arg0, arg1)
	local registerVal3 = arg0.layerCarousel.activeWidget:getModel(arg1, "layerIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	arg0.layerCarousel:updateDataSource(true)
	local registerVal7 = {}
	registerVal7.layerIndex = registerVal4
	local registerVal5 = arg0.layerCarousel:findItem(registerVal7, nil, false, nil)
	if registerVal5 then
		local registerVal8 = {}
		registerVal8.name = "gain_focus"
		registerVal8.controller = arg1
		registerVal8.selectIndex = registerVal5.gridInfoTable.zeroBasedIndex
		registerVal8.overrideScrollTime = 0.000000
		arg0.layerCarousel:processEvent(registerVal8)
	end
end

function EmblemEditor_InsertLayer(arg0, arg1, arg2)
	local registerVal3 = CoD.GetCustomization(arg2, "type")
	Engine.ExecNow(arg2, ("emblemInsertLayer " .. registerVal3 .. " " .. CoD.perController[arg2].selectedLayerIndex))
end

function EmblemEditor_HandleBackInEditMode(arg0, arg1, arg2)
	Engine.ExecNow(arg2, "emblemEndEdit")
	local registerVal3 = IsPaintshop(arg2)
	if registerVal3 == true then
		local registerVal4 = Engine.Localize("MENU_PAINTSHOP_CAPS")
		arg0.PaintshopFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(registerVal4)
	else
		arg0.EmblemEditorFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_EMBLEM_EDITOR_CAPS"))
	end
	SetBrowseMode(arg2)
	CoD.SwapFocusableElements(arg2, arg0.emblemDrawWidget, arg0.layerCarousel)
end

function EmblemEditor_SetupEditorBasedOnMode(arg0, arg1, arg2)
	local registerVal3 = IsEditMode(arg2)
	if registerVal3 then
		local registerVal5 = {}
		registerVal5.layerIndex = CoD.perController[arg2].selectedLayerIndex
		registerVal3 = arg0.layerCarousel:findItem(registerVal5, nil, true, 0.000000)
		EmblemEditor_EditSelectedLayer(arg0, registerVal3, arg2)
	else
		CoD.SwapFocusableElements(arg2, arg0.emblemDrawWidget, arg0.layerCarousel)
	end
end

function EmblemEditor_FlipIcon(arg0, arg1, arg2)
	Engine.ExecNow(arg2, "emblemToggleFlip")
end

function EmblemEditor_ToggleOutline(arg0, arg1, arg2)
	Engine.ExecNow(arg2, "emblemToggleOutline")
end

function EmblemEditor_EndEdit(arg0, arg1, arg2)
	Engine.ExecNow(arg2, "emblemEndEdit")
end

function EmblemEditor_BeginEdit(arg0, arg1, arg2)
	Engine.ExecNow(arg2, "emblemBeginEdit")
end

function EmblemEditor_CutLayer(arg0, arg1, arg2)
	local registerVal3 = CoD.GetCustomization(arg2, "type")
	Engine.ExecNow(arg2, ("emblemCutLayer " .. registerVal3))
	CoD.SetEditorProperties(arg2, CoD.emblem.CLIPBOARDSTATE.FULL, "isClipboardEmpty")
	arg0.clipboard:setState("Visible")
end

function EmblemEditor_HandleKeyboardComplete(arg0, arg1, arg2, arg3)
	if not CoD.perController[arg2].selectedEmblemModel then
		return 
	end
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_EMBLEMS then
		local registerVal6 = Engine.GetModel(CoD.perController[arg2].selectedEmblemModel, "emblemTextEntry")
		if registerVal6 then
			Engine.SetModelValue(registerVal6, arg3.input)
		end
		registerVal6 = arg0:getModel(arg2, "inputText")
		if registerVal6 then
			Engine.SetModelValue(registerVal6, arg3.input)
		end
	end
end

function EmblemEditor_OpenSavePopup(arg0, arg1, arg2, arg3)
	CoD.OverlayUtility.CreateOverlay(arg2, arg0, "EmblemSave", CoD.perController[arg2].selectedEmblemModel)
end

function EmblemEditor_SaveEmblem(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(arg3, "emblemTextEntry"))
	local registerVal5 = Engine.GetModel(arg3, "emblemName")
	local registerVal6 = MediaManagerGetQuotaForCategory(arg2, "emblem")
	Engine.SetModelValue(registerVal5, registerVal4)
	EmblemEditor_RecordComScoreEvent(arg0, arg2, registerVal6.categorySlotsUsed, registerVal6.categoryQuota)
	if CoD.perController[arg2].selectedEmblemTabStorageType == Enum.StorageFileType.STORAGE_EMBLEMS then
		CoD.CraftUtility.Emblems.UploadEmblem(arg2, arg3)
		CoD.CraftUtility.Emblems.ParseDDL(arg2, Enum.StorageFileType.STORAGE_EMBLEMS)
	else
		local registerVal8 = IsPreBuiltEmblemTab(arg2)
		if registerVal8 then
			CoD.CraftUtility.Emblems.ParseDDL(arg2, Enum.StorageFileType.STORAGE_EMBLEMS)
			CoD.CraftUtility.Emblems.Copy(arg2, arg3, Enum.StorageFileType.STORAGE_EMBLEMS)
		end
	end
	registerVal8 = GoBack(arg0, arg2)
	EmblemEditor_HandleBackInBrowseMode(registerVal8, arg1, arg2, true)
	ClearSavedState(registerVal8, arg2)
end

function EmblemEditor_DiscardChanges(arg0, arg1, arg2, arg3)
	local registerVal4 = GoBack(arg0, arg2)
	EmblemEditor_HandleBackInBrowseMode(registerVal4, arg1, arg2)
	ClearSavedState(registerVal4, arg2)
end

function EmblemEditor_NoChangesAction(arg0, arg1, arg2, arg3)
	local registerVal4 = GoBack(arg0, arg2)
	EmblemEditor_HandleBackInBrowseMode(registerVal4, arg1, arg2)
end

function EmblemEditor_SaveChangesBack(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetModel(arg3, "emblemIndex")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal7 = CoD.CraftUtility.Emblems.IsEmblemIndexOccupied(registerVal6)
	if registerVal5 and registerVal7 then
	end
	if not true then
		registerVal6 = Engine.GetModel(arg3, "emblemTextEntry")
		Engine.SetModelValue(registerVal6, "Emblem")
	end
end

function EmblemEditor_ToggleScaleMode(arg0, arg1, arg2)
	local registerVal3 = Engine.GetEmblemScaleMode(arg2)
	if registerVal3 == Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FIXED then
	else
	end
	CoD.SetEditorProperties(arg2, Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FIXED, "scaleMode")
	Engine.ExecNow(arg2, ("emblemSetScaleMode " .. Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FIXED))
end

function EmblemEditor_LinkUnlinkLayers(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = Engine.GetModel(registerVal3, "layerIndex")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	local registerVal6 = CoD.GetCustomization(arg2, "type")
	local registerVal7 = Engine.GetModel(registerVal3, "isLinked")
	local registerVal8 = Engine.GetModel(registerVal3, "groupIndex")
	if registerVal4 and registerVal7 then
		local registerVal9 = Engine.GetModelValue(registerVal7)
		if registerVal9 == true then
			Engine.ExecNow(arg2, ("unlinkLayers " .. registerVal6))
			Engine.SetModelValue(registerVal7, false)
		else
			Engine.ExecNow(arg2, ("linkLayers " .. registerVal6))
			Engine.SetModelValue(registerVal7, true)
		end
		local registerVal10 = Engine.GetSelectedLayerData(arg2, registerVal5, registerVal6)
		Engine.SetModelValue(registerVal8, registerVal10.groupIndex)
		local registerVal11 = Engine.GetLinkedLayerCount(arg2, registerVal6)
		CoD.SetEditorProperties(arg2, registerVal11, "linkedLayerCount")
	end
end

function EmblemEditor_GroupUngroupLayers(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = Engine.GetModel(registerVal3, "layerIndex")
	if registerVal4 then
		local registerVal5 = Engine.GetModelValue(registerVal4)
		local registerVal6 = CoD.GetCustomization(arg2, "type")
		local registerVal7 = Engine.GetModel(registerVal3, "isLinked")
		local registerVal8 = Engine.GetModel(registerVal3, "isGrouped")
		local registerVal9 = Engine.GetModel(registerVal3, "groupIndex")
		local registerVal10 = Engine.GetModelValue(registerVal7)
		local registerVal11 = Engine.GetModelValue(registerVal8)
		local registerVal12 = Engine.GetSelectedLayerData(arg2, registerVal5, registerVal6)
		local registerVal13 = CoD.GetEditorProperties(arg2, "linkedLayerCount")
		if registerVal7 and registerVal8 and registerVal10 == true then
			if registerVal11 == true then
				Engine.ExecNow(arg2, ("ungroupLayers " .. registerVal6))
				Engine.SetModelValue(registerVal8, false)
				Engine.SetModelValue(registerVal9, registerVal12.groupIndex)
				arg0.layerCarousel:updateDataSource()
			else
				local registerVal14 = IsGroupSlotAvailable(arg2)
				if 2.000000 <= registerVal13 and registerVal14 then
					Engine.ExecNow(arg2, ("groupLayers " .. registerVal6))
					Engine.SetModelValue(registerVal8, true)
					Engine.SetModelValue(registerVal9, registerVal12.groupIndex)
					CoD.perController[arg2].selectEmblemGroupIndex = registerVal12.groupIndex
					arg0.layerCarousel:updateDataSource()
					CoD.perController[arg2].selectEmblemGroupIndex = nil
				end
			end
		end
		registerVal10 = Engine.GetLinkedLayerCount(arg2, registerVal6)
		CoD.SetEditorProperties(arg2, registerVal10, "linkedLayerCount")
	end
end

function EmblemEditor_SaveSelectedGroup(arg0, arg1, arg2, arg3)
end

function Emblems_SetIconOld(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "iconID")
	Engine.SetEmblemIconOld(arg2, registerVal3)
	registerVal4 = LUI.getTableFromPath("tabList.Tabs.grid.activeWidget", arg0)
	local registerVal5 = registerVal4:getModel(arg2, "breadcrumbCount")
	if registerVal3 and registerVal4 and registerVal5 then
		local registerVal10 = Engine.GetModelValue(registerVal5)
		Engine.SetModelValue(registerVal5, math.max(0.000000, (registerVal10 - 1.000000)))
	end
end

function Emblems_SetEmblemOld(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "emblemIndex")
	if registerVal3 then
		if CoD.perController[arg2].selectedEmblemTabStorageType == Enum.StorageFileType.STORAGE_EMBLEMS_LOOT then
			registerVal4 = CoD.BlackMarketUtility.GetLootEmblemSortIndexFromEmblemId(registerVal3)
		end
		registerVal4 = CoD.CraftUtility.Emblems.GetEmblemBreadcrumbRoot(arg2, registerVal4, CoD.perController[arg2].selectedEmblemTabStorageType)
		registerVal4:set(1.000000)
		local registerVal5 = LUI.getTableFromPath("tabList.Tabs.grid.activeWidget", arg0)
		local registerVal6 = registerVal5:getModel(arg2, "breadcrumbCount")
		if registerVal4 and registerVal5 and registerVal6 then
			local registerVal11 = Engine.GetModelValue(registerVal6)
			Engine.SetModelValue(registerVal6, math.max(0.000000, (registerVal11 - 1.000000)))
		end
	end
end

function Emblems_SetMaterialOld(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "materialID")
	registerVal4 = CoD.CraftUtility.Emblems.GetEmblemMaterialBreadcrumbRoot(arg2, registerVal3)
	registerVal4:set(1.000000)
	local registerVal5 = LUI.getTableFromPath("materialSwatch.tabList.Tabs.grid.activeWidget", arg0)
	local registerVal6 = registerVal5:getModel(arg2, "breadcrumbCount")
	if registerVal3 and registerVal4 and registerVal5 and registerVal6 then
		local registerVal11 = Engine.GetModelValue(registerVal6)
		Engine.SetModelValue(registerVal6, math.max(0.000000, (registerVal11 - 1.000000)))
	end
end

function EmblemChooseIcon_SelectionRejected(arg0, arg1, arg2)
	local registerVal3 = CoD.GetEditorProperties(arg2, "addDecalMode")
	if CoD.perController[arg2].selectedLayerIconID == CoD.emblem.INVALID_ID then
		local registerVal4 = CoD.GetCustomization(arg2, "type")
		Engine.ExecNow(arg2, ("emblemClear " .. registerVal4))
	else
		if registerVal3 == CoD.emblem.ADDDECAL.INSERT then
			registerVal4 = CoD.GetCustomization(arg2, "type")
			Engine.ExecNow(arg2, ("emblemCutLayer " .. registerVal4))
		else
			Engine.ExecNow(arg2, ("emblemSetSelectedLayerIconId " .. CoD.perController[arg2].selectedLayerIconID))
		end
	end
	CoD.SetEditorProperties(arg2, CoD.emblem.ADDDECAL.REPLACE, "addDecalMode")
	SetBrowseMode(arg2)
end

function EmblemChooseIcon_SelectionAccepted(arg0, arg1, arg2)
	local registerVal3 = CoD.GetEditorProperties(arg2, "addDecalMode")
	if registerVal3 == CoD.emblem.ADDDECAL.INSERT and (CoD.perController[arg2].selectedLayerIndex + 1.000000) < CoD.perController[arg2].totalLayers then
		local registerVal5 = CoD.GetCustomization(arg2, "type")
	end
	CoD.SetEditorProperties(arg2, CoD.emblem.ADDDECAL.REPLACE, "addDecalMode")
end

function EmblemChooseIcon_SelectionChanged(arg0, arg1, arg2)
	local registerVal3 = IsSelfModelValueTrue(arg1, arg2, "isBMClassified")
	if registerVal3 then
		Engine.ExecNow(arg2, ("emblemSetSelectedLayerIconId " .. -2.000000))
	else
		registerVal3 = arg1:getModel(arg2, "iconID")
		local registerVal4 = Engine.GetModelValue(registerVal3)
		Engine.ExecNow(arg2, ("emblemSetSelectedLayerIconId " .. registerVal4))
		CoD.SetEditorProperties(arg2, registerVal4, "selectedDecalID")
	end
end

function EmblemChooseIcon_TabChanged(arg0, arg1, arg2)
	CoD.perController[arg2].selectedDecalCategory = arg1.tabCategory
	arg0.emblemIconList:updateDataSource()
end

function EmblemChooseIcon_SetPreviewDecalCamera(arg0, arg1, arg2)
	CoD.CraftUtility.DisplayWeaponInPaintshop(arg2, ("paintshop_preview_" .. CoD.Paintshop.View[CoD.perController[arg2].viewIndex].view_name))
end

function EmblemChooseIcon_RevertPreviewDecalCamera(arg0, arg1, arg2)
	CoD.CraftUtility.DisplayWeaponInPaintshop(arg2, CoD.Paintshop.View[CoD.perController[arg2].viewIndex].view_name)
end

function EmblemChooseMaterial_TabChanged(arg0, arg1, arg2)
	CoD.perController[arg2].selectedMaterialCategory = arg1.filter
	arg0.materialSwatch:updateDataSource()
end

function EmblemChooseMaterial_SelectionChanged(arg0, arg1, arg2)
	local registerVal3 = IsSelfModelValueTrue(arg1, arg2, "isBMClassified")
	if registerVal3 then
		return true
	end
	registerVal3 = arg1:getModel(arg2, "materialID")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		Engine.ExecNow(arg2, ("emblemSetSelectedDecalMaterialId " .. registerVal4))
	end
end

function EmblemChooseMaterial_UpdateMaterialAngleByStep(arg0, arg1, arg2, arg3)
	Engine.ExecNow(arg3, ("emblemUpdateMaterialAngle " .. arg2))
end

function EmblemChooseMaterial_ToggleScaleMode(arg0, arg1, arg2)
	local registerVal3 = Engine.GetLayerMaterialScaleMode(arg2)
	if registerVal3 == Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FIXED then
	else
	end
	CoD.SetEditorProperties(arg2, Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FIXED, "materialScaleMode")
	Engine.ExecNow(arg2, ("setMaterialScaleMode " .. Enum.CustomizationScaleType.CUSTOMIZATION_SCALE_TYPE_FIXED))
end

function EmblemChooseColor_ToggleBlend(arg0, arg1, arg2)
	local registerVal3 = CoD.GetCustomization(arg2, "type")
	Engine.ExecNow(arg2, ("emblemToggleColorBlend " .. registerVal3))
end

function EmblemChooseColor_ClearSelectedLayerMaterial(arg0, arg1, arg2)
	Engine.ExecNow(arg2, "emblemClearSelectedLayerMaterialId")
end

function EmblemChooseColor_SelectionChanged(arg0, arg1, arg2)
	local registerVal3 = CoD.GetEditorProperties(arg2, "isGradientMode")
	local registerVal4 = CoD.GetEditorProperties(arg2, "colorNum")
	local registerVal5 = arg1:getModel(arg2, "color")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal7 = CoD.NormalizeColor(registerVal6)
	if registerVal3 == 0.000000 then
		Engine.ExecNow(arg2, ("emblemSetLayerColor " .. Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_NONE .. " " .. registerVal7[1.000000] .. " " .. registerVal7[2.000000] .. " " .. registerVal7[3.000000]))
		Engine.ExecNow(arg2, "emblemClearGradient")
	else
		if registerVal3 == 1.000000 then
			if registerVal4 == Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_0 then
				Engine.ExecNow(arg2, ("emblemSetLayerColor " .. registerVal4 .. " " .. registerVal7[1.000000] .. " " .. registerVal7[2.000000] .. " " .. registerVal7[3.000000]))
				local registerVal8 = PropertyIsTrue(arg0, "isColor1NoColor")
				Engine.ExecNow(arg2, ("emblemSetLayerColor " .. Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_1 .. " " .. registerVal7[1.000000] .. " " .. registerVal7[2.000000] .. " " .. registerVal7[3.000000]))
				Engine.ExecNow(arg2, ("emblemSetLayerColor " .. registerVal4 .. " " .. registerVal7[1.000000] .. " " .. registerVal7[2.000000] .. " " .. registerVal7[3.000000]))
				registerVal8 = PropertyIsTrue(arg0, "isColor0NoColor")
				if registerVal8 and registerVal4 == Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_1 and registerVal8 then
					Engine.ExecNow(arg2, ("emblemSetLayerColor " .. Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_0 .. " " .. registerVal7[1.000000] .. " " .. registerVal7[2.000000] .. " " .. registerVal7[3.000000]))
				end
			end
		end
	end
end

function EmblemChooseColor_SelectNoColor(arg0, arg1, arg2)
	local registerVal3 = DataSources.EmblemSelectedLayerNoColor.getModel(arg2)
	if registerVal3 ~= nil then
		local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "color"))
		local registerVal5 = CoD.NormalizeColor(registerVal4)
		local registerVal8 = Engine.GetModelForController(arg2)
		local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal8, "Emblem.EmblemSelectedLayerProperties.opacity0"))
		arg0.opacity0 = (registerVal6 / 100.000000)
		registerVal8 = Engine.GetModelForController(arg2)
		registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal8, "Emblem.EmblemSelectedLayerProperties.opacity1"))
		arg0.opacity1 = (registerVal6 / 100.000000)
		registerVal6 = CoD.GetEditorProperties(arg2, "colorNum")
		Engine.ExecNow(arg2, ("emblemSetLayerColor " .. registerVal6 .. " " .. registerVal5[1.000000] .. " " .. registerVal5[2.000000] .. " " .. registerVal5[3.000000]))
		Engine.ExecNow(arg2, ("emblemLayerUpdateOpacity " .. registerVal6 .. " -1.0"))
	end
end

function EmblemChooseColor_NoColorLoseFocus(arg0, arg1, arg2)
	local registerVal3 = CoD.GetEditorProperties(arg2, "colorNum")
	local registerVal4 = arg0.lastSavedColor:isInFocus()
	if not arg1 or CoD.isPC then
		local registerVal5 = PropertyIsTrue(arg0, "isColor0NoColor")
		if not registerVal5 and registerVal3 == Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_0 then
			if arg0.opacity0 ~= nil and arg0.opacity0 ~= 0.000000 then
				Engine.ExecNow(arg2, ("emblemLayerUpdateOpacity " .. registerVal3 .. " " .. arg0.opacity0))
			else
				Engine.ExecNow(arg2, ("emblemLayerUpdateOpacity " .. registerVal3 .. " 1.0"))
			else
				registerVal5 = PropertyIsTrue(arg0, "isColor1NoColor")
				if not registerVal5 and registerVal3 == Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_1 then
					if arg0.opacity1 ~= nil and arg0.opacity1 ~= 0.000000 then
						Engine.ExecNow(arg2, ("emblemLayerUpdateOpacity " .. registerVal3 .. " " .. arg0.opacity1))
					else
						Engine.ExecNow(arg2, ("emblemLayerUpdateOpacity " .. registerVal3 .. " 1.0"))
					end
				end
			end
		end
	end
end

function EmblemChooseColor_ToggleColorMode(arg0, arg1, arg2)
	local registerVal3 = CoD.GetEditorProperties(arg2, "colorMode")
	local registerVal4 = CoD.GetEditorProperties(arg2, "isGradientMode")
	local registerVal5 = CoD.GetSelectedColor(arg2)
	if registerVal5 ~= nil then
		local registerVal8 = EmblemChooseColor_GetColorMixerElement(arg0, arg2)
		EmblemChooseColor_SetShaderParams(arg2, registerVal8, registerVal5)
	end
	if registerVal3 == Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_MIXER then
		arg0:updateMode(Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_SOLID, registerVal4)
		CoD.SetEditorProperties(arg2, Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_SOLID, "colorMode")
	else
		if registerVal3 == Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_SOLID then
			CoD.SetNoColorDataModel(arg2)
			local registerVal6 = CoD.GetEditorProperties(arg2, "isColor0NoColor")
			local registerVal7 = CoD.GetEditorProperties(arg2, "isColor1NoColor")
			registerVal8 = CoD.GetEditorProperties(arg2, "colorNum")
			if registerVal6 == 1.000000 and registerVal8 == Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_0 then
				Engine.ExecNow(arg2, ("emblemSetLayerColor " .. registerVal8 .. " 1 1 1"))
				Engine.ExecNow(arg2, ("emblemLayerUpdateOpacity " .. registerVal8 .. " 1.0"))
			else
				if registerVal7 == 1.000000 and registerVal8 == Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_1 then
					Engine.ExecNow(arg2, ("emblemSetLayerColor " .. registerVal8 .. " 1 1 1"))
					Engine.ExecNow(arg2, ("emblemLayerUpdateOpacity " .. registerVal8 .. " 1.0"))
				end
			end
			EmblemChooseColor_SetupSelectedLayerColorModel(arg2)
			arg0:updateMode(Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_MIXER, registerVal4)
			CoD.SetEditorProperties(arg2, Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_MIXER, "colorMode")
		end
	end
	EmblemChooseColor_SetupSelectedLayerColorModel(arg2)
end

function EmblemChooseColor_ToggleGradientMode(arg0, arg1, arg2)
	local registerVal3 = CoD.GetEditorProperties(arg2, "isGradientMode")
	local registerVal4 = CoD.GetEditorProperties(arg2, "colorMode")
	arg0.colorGradientContainer:setState("DefaultState")
	if registerVal3 == 1.000000 then
		CoD.SetEditorProperties(arg2, 0.000000, "isGradientMode")
		CoD.SetNoColorDataModel(arg2)
		local registerVal5 = CoD.GetEditorProperties(arg2, "isColor0NoColor")
		if registerVal5 ~= nil and registerVal5 == 1.000000 then
			Engine.ExecNow(arg2, ("emblemSetLayerColor " .. Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_0 .. " 1 1 1"))
			local registerVal6 = CoD.GetEditorProperties(arg2, "colorNum")
			Engine.ExecNow(arg2, ("emblemLayerUpdateOpacity " .. registerVal6 .. " 1.0"))
		end
		EmblemChooseColor_SetupSelectedLayerColorModel(arg2)
		CoD.SetEditorProperties(arg2, Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_NONE, "colorNum")
		CoD.SetEditorProperties(arg2, Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_SOLID, "colorMode")
		arg0:updateMode(Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_SOLID, 0.000000)
	else
		if registerVal3 == 0.000000 then
			CoD.SetEditorProperties(arg2, 1.000000, "isGradientMode")
			Engine.ExecNow(arg2, ("emblemLayerUpdateOpacity " .. Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_1 .. " -1"))
			if registerVal4 == Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_MIXER then
				arg0:updateMode(Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_MIXER, 1.000000)
			else
				arg0:updateMode(Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_SOLID, 1.000000)
			end
		end
	end
	EmblemChooseColor_SetupSelectedLayerColorModel(arg2)
	registerVal5 = EmblemChooseColor_GetGradientSliderElement(arg0, arg2)
	EmblemGradient_UpdateGradientFillByStep(registerVal5, registerVal5, 0.000000, arg2)
end

function EmblemChooseColor_DecrementColorComponent(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel(arg2, arg3)
	EmblemChooseColor_ModifyColorModelValue(registerVal4, -1.000000)
	EmblemChooseColor_SetBarProperties(arg0, arg1, registerVal4, arg2)
end

function EmblemChooseColor_IncrementColorComponent(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel(arg2, arg3)
	EmblemChooseColor_ModifyColorModelValue(registerVal4, 1.000000)
	EmblemChooseColor_SetBarProperties(arg0, arg1, registerVal4, arg2)
end

function EmblemChooseColor_SetColorComponent(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = arg1:getModel(arg2, arg3)
	EmblemChooseColor_SetColorModelValue(registerVal5, arg4)
	EmblemChooseColor_SetBarProperties(arg0, arg1, registerVal5, arg2)
end

function EmblemChooseColor_UpdateOpacityByStep(arg0, arg1, arg2, arg3)
	local registerVal4 = IsSelectedColorEmpty(arg1, arg3)
	if not registerVal4 then
		local registerVal5 = CoD.GetEditorProperties(arg3, "colorNum")
		Engine.ExecNow(arg3, ("emblemLayerUpdateOpacity " .. registerVal5 .. " " .. arg2))
		CoD.SetNoColorDataModel(arg3)
		local registerVal6 = EmblemChooseColor_GetGradientSliderElement(arg0, arg3)
		EmblemGradient_UpdateGradientFillByStep(registerVal6, registerVal6, 0.000000, arg3)
	end
end

function EmblemChooseColor_SetOpacity(arg0, arg1, arg2, arg3, arg4)
	if arg2 == Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_0 then
		local registerVal6 = CoD.GetEditorProperties(arg4, "isColor0NoColor")
		if registerVal6 ~= 1.000000 then
		end
	else
		if arg2 == Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_1 then
			registerVal6 = CoD.GetEditorProperties(arg4, "isColor1NoColor")
			if registerVal6 ~= 1.000000 then
			end
		end
	end
	if not true then
		Engine.ExecNow(arg4, ("emblemLayerSetOpacity " .. arg2 .. " " .. arg3))
		CoD.SetNoColorDataModel(arg4)
		registerVal6 = EmblemChooseColor_GetGradientSliderElement(arg0, arg4)
		EmblemGradient_UpdateGradientFillByStep(registerVal6, registerVal6, 0.000000, arg4)
	end
end

function EmblemChooseColor_UpdateBothColorOpacity(arg0, arg1, arg2, arg3)
	local registerVal6 = Engine.GetModelForController(arg3)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal6, "Emblem.EmblemSelectedLayerProperties.max_opacity"))
	if (registerVal4 + arg2) <= 100.000000 then
		Engine.ExecNow(arg3, ("emblemLayerUpdateOpacity " .. Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_NONE .. " " .. arg2))
	end
end

function EmblemGradient_Color0GainFocus(arg0, arg1, arg2)
	local registerVal3 = CoD.GetEditorProperties(arg2, "colorMode")
	if registerVal3 == Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE then
		CoD.SetEditorProperties(arg2, Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_0, "colorNum")
	end
end

function EmblemGradient_Color1GainFocus(arg0, arg1, arg2)
	local registerVal3 = CoD.GetEditorProperties(arg2, "colorMode")
	if registerVal3 == Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE then
		CoD.SetEditorProperties(arg2, Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_1, "colorNum")
	end
end

function EmblemGradient_ColorGradientSliderGainFocus(arg0, arg1, arg2)
	local registerVal3 = CoD.GetEditorProperties(arg2, "colorMode")
	if registerVal3 == Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE then
		CoD.SetEditorProperties(arg2, Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_GRADIENT, "colorNum")
	end
end

function EmblemGradient_ShowSwatchContainer(arg0, arg1, arg2)
	local registerVal3 = CoD.GetEditorProperties(arg2, "isColor0NoColor")
	local registerVal4 = CoD.GetEditorProperties(arg2, "isColor1NoColor")
	local registerVal5 = CoD.GetEditorProperties(arg2, "colorNum")
	local registerVal6 = arg0.colorGradientContainer.gradientColor0:isInFocus()
	if registerVal6 then
		arg0.colorGradientContainer:setState("Color0State")
	else
		registerVal6 = arg0.colorGradientContainer.gradientColor1:isInFocus()
		if registerVal6 then
			arg0.colorGradientContainer:setState("Color1State")
		end
	end
	CoD.SetEditorProperties(arg2, Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_SOLID, "colorMode")
	EmblemGradient_SetupSwatchLastSavedColor(arg0, arg1, arg2)
	CoD.SwapFocusableElements(arg2, arg0.colorGradientContainer, arg0.colorGradientSwatchContainer)
	if registerVal3 == 1.000000 and registerVal5 == Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_0 then
		CoD.SwapFocusableElements(arg2, arg0.colorGradientSwatchContainer.lastSavedColor, arg0.colorGradientSwatchContainer.noColor)
		arg0.colorGradientSwatchContainer.lastSavedColor.m_focusable = true
	else
		if registerVal4 == 1.000000 and registerVal5 == Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_1 then
			CoD.SwapFocusableElements(arg2, arg0.colorGradientSwatchContainer.lastSavedColor, arg0.colorGradientSwatchContainer.noColor)
			arg0.colorGradientSwatchContainer.lastSavedColor.m_focusable = true
		end
	end
	arg0.colorGradientContainer:hide()
	arg0.colorGradientSwatchContainer:show()
end

function EmblemGradient_BackFromColorPicker(arg0, arg1, arg2)
	EmblemChooseColor_SetupSelectedLayerColorModel(arg2)
	if arg0.colorGradientSwatchContainer.m_focusable then
		CoD.SwapFocusableElements(arg2, arg0.colorGradientSwatchContainer, arg0.colorGradientContainer)
		arg0.colorGradientContainer:show()
		arg0.colorGradientSwatchContainer:hide()
	else
		if arg0.colorGradientMixerContainer.m_focusable then
			CoD.SwapFocusableElements(arg2, arg0.colorGradientMixerContainer, arg0.colorGradientContainer)
			arg0.colorGradientContainer:show()
			arg0.colorGradientMixerContainer:hide()
		end
	end
	CoD.SetEditorProperties(arg2, Enum.CustomizationColorMode.CUSTOMIZATION_COLOR_MODE_NONE, "colorMode")
	local registerVal3 = CoD.GetEditorProperties(arg2, "colorNum")
	arg0.colorGradientContainer:setState("DefaultState")
	if registerVal3 == Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_1 then
		CoD.SwapFocusableElements(arg2, arg0.colorGradientContainer.gradientColor0, arg0.colorGradientContainer.gradientColor1)
		arg0.colorGradientContainer.gradientColor0.m_focusable = true
	end
	local registerVal4 = EmblemChooseColor_GetGradientSliderElement(arg0, arg2)
	EmblemGradient_UpdateGradientFillByStep(registerVal4, registerVal4, 0.000000, arg2)
end

function EmblemGradient_UpdateAngleByStep(arg0, arg1, arg2, arg3)
	Engine.ExecNow(arg3, ("emblemUpdateGradientAngle " .. arg2))
end

function EmblemGradient_SetAngle(arg0, arg1, arg2, arg3)
	Engine.ExecNow(arg3, ("emblemSetGradientAngle " .. arg2))
end

function EmblemGradient_ToggleGradientType(arg0, arg1, arg2)
	Engine.ExecNow(arg2, "emblemToggleGradientType")
end

function EmblemGradient_UpdateGradientFillByStep(arg0, arg1, arg2, arg3)
	Engine.ExecNow(arg3, ("emblemUpdateGradientFill " .. arg2))
	EmblemGradient_UpdateGradientVisuals(arg3, arg1)
end

function EmblemGradient_SetGradientFill(arg0, arg1, arg2, arg3)
	Engine.ExecNow(arg3, ("emblemSetGradientFill " .. arg2))
	EmblemGradient_UpdateGradientVisuals(arg3, arg1)
end

function EmblemGradient_BackFromGradientPicker(arg0, arg1, arg2)
	local registerVal3 = CoD.GetEditorProperties(arg2, "isColor0NoColor")
	local registerVal4 = CoD.GetEditorProperties(arg2, "isColor1NoColor")
	if registerVal3 == 1.000000 and registerVal4 == 1.000000 then
		Engine.ExecNow(arg2, ("emblemSetLayerColor " .. Enum.CustomizationColorNum.CUSTOMIZATION_COLOR_NONE .. " 1 1 1"))
	end
end

function EmblemSelect_TabChanged(arg0, arg1, arg2)
	CoD.CraftUtility.Emblems.CachedEmblems = {}
	CoD.CraftUtility.Emblems.CachedEmblemIndexMapping = {}
	CoD.perController[arg2].selectedEmblemTabStorageType = arg1.storageType
	CoD.CraftUtility.Emblems.ParseDDL(arg2, CoD.perController[arg2].selectedEmblemTabStorageType)
	arg0.emblemList:updateDataSource()
	local registerVal3 = arg0.emblemList:getFirstSelectableItem()
	arg0.emblemList:setActiveItem(registerVal3)
	ForceNotifyModel(arg2, "Emblem.UpdateDataSource")
end

function UpdateSlotCountText(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.CraftUtility.GetUsedSlotsByFileType(arg2, arg3)
	local registerVal5 = CoD.CraftUtility.GetTotalAllowedSlotsByFileType(arg2, arg3)
	Engine.Localize("MENU_EMBLEM_LAYERS_USED_FRACTION", registerVal4, registerVal5)
	return arg1:setText(Engine.Localize)
end

function UploadPublicProfile(arg0, arg1)
	if CoD.perController[arg1].uploadProfile == true then
		CoD.perController[arg1].uploadProfile = false
		Engine.ExecNow(arg1, "uploadprofile")
	end
end

function BlackMarketSetAsEmblem(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	CoD.perController[arg2].selectedEmblemModel = registerVal4
	local registerVal3 = arg1:getModel(arg2, "emblem")
	registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5, registerVal6, registerVal7 = CoD.BlackMarketUtility.GetLootEmblemIndexParams(arg2, registerVal4)
	Engine.SetupEmblemData(registerVal5, registerVal6, registerVal7)
	local registerVal8 = IsLive()
	if registerVal8 then
		Engine.ExecNow(registerVal5, "emblemsetprofile")
		CoD.perController[registerVal5].uploadProfile = true
	else
		Engine.SetProfileVar(registerVal5, "default_emblem_index", registerVal6)
		Engine.ExecNow(registerVal5, "invalidateEmblemComponent")
	end
	ForceNotifyControllerModel(registerVal5, "identityBadge.xuid")
end

function BlackMarketSetCallingCard(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = Engine.GetModel(registerVal4, "image")
	if registerVal3 ~= nil then
		registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal5 = CoD.BlackMarketUtility.GetLootCallingCardIndex(arg2, registerVal4)
		if not registerVal5 then
			return 
		end
		SetEmblemBackground_Internal(arg2, registerVal5)
	end
	ForceNotifyControllerModel(arg2, "identityBadge.xuid")
end

function BlackMarketSetTaunt(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "emblem")
	local registerVal5, registerVal6 = CoD.CCUtility.GetHeroDisplayNameAndIndexForTaunt(Enum.eModes.MODE_MULTIPLAYER, registerVal3)
	local registerVal7, registerVal8 = CoD.CCUtility.GetTypeIndexAndIndexForTaunt(Enum.eModes.MODE_MULTIPLAYER, registerVal3, registerVal3)
	if registerVal3 and registerVal8 then
		Engine.SelectTaunt(arg2, Enum.eModes.MODE_MULTIPLAYER, registerVal6, registerVal7, registerVal8)
		local registerVal9 = CoD.BlackMarketUtility.GetItemTypeStringForLootItem(registerVal3, "taunt")
		local registerVal10 = CoD.BlackMarketUtility.GetImageForLootItem(registerVal3, "taunt")
		local registerVal13 = Engine.Localize("MPUI_EQUIPPED_CAPS")
		CoD.OverlayUtility.ShowToast("BlackMarketEquipped", registerVal13, registerVal9, registerVal10)
	end
end

function BlackMarketSetGesture(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "emblem")
	registerVal4, registerVal5 = CoD.BlackMarketUtility.SplitIdIntoTwoValues(registerVal3)
	local registerVal6, registerVal7 = CoD.CCUtility.GetHeroDisplayNameAndIndex(Enum.eModes.MODE_MULTIPLAYER, registerVal5)
	local registerVal8, registerVal9 = CoD.CCUtility.GetTypeIndexAndIndexForGesture(Enum.eModes.MODE_MULTIPLAYER, registerVal5, registerVal4)
	if registerVal3 and registerVal9 then
		Engine.SelectGesture(arg2, Enum.eModes.MODE_MULTIPLAYER, registerVal7, registerVal8, registerVal9)
		local registerVal10 = CoD.BlackMarketUtility.GetItemTypeStringForLootItem(registerVal3, "gesture")
		local registerVal11 = CoD.BlackMarketUtility.GetImageForLootItem(registerVal3, "gesture")
		local registerVal14 = Engine.Localize("MPUI_EQUIPPED_CAPS")
		CoD.OverlayUtility.ShowToast("BlackMarketEquipped", registerVal14, registerVal10, registerVal11)
	end
end

function BlackMarketSetSpecialistTheme(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "emblem")
	registerVal4, registerVal5 = CoD.BlackMarketUtility.SplitIdIntoTwoValues(registerVal3)
	local registerVal6, registerVal7 = CoD.CCUtility.GetHeroDisplayNameAndIndex(Enum.eModes.MODE_MULTIPLAYER, registerVal5)
	local registerVal8 = CoD.BlackMarketUtility.GetSpecialistThemeType(registerVal4)
	local registerVal9 = CoD.BlackMarketUtility.GetSpecialistOutfitIndexForId(registerVal4, registerVal5)
	if registerVal3 and registerVal9 then
		Engine.SetHeroItem(arg2, Enum.eModes.MODE_MULTIPLAYER, registerVal7, registerVal8, registerVal9)
		local registerVal10 = CoD.BlackMarketUtility.GetItemTypeStringForLootItem(registerVal3, "specialist_outfit")
		local registerVal11 = CoD.BlackMarketUtility.GetImageForLootItem(registerVal3, "specialist_outfit")
		local registerVal14 = Engine.Localize("MPUI_EQUIPPED_CAPS")
		CoD.OverlayUtility.ShowToast("BlackMarketEquipped", registerVal14, registerVal10, registerVal11)
	end
end

function BlackMarketResultsOnClose(arg0, arg1, arg2)
	local registerVal3 = IsLive()
	if not registerVal3 then
		Engine.CommitProfileChanges(arg2)
	else
		UploadPublicProfile(arg0, arg2)
	end
	CoD.perController[arg2].selectedEmblemModel = nil
end

function CommitProfileChanges(arg0)
	Engine.CommitProfileChanges(arg0)
end

function EmblemSelect_Back(arg0, arg1, arg2)
	local registerVal3 = IsLive()
	if not registerVal3 then
		Engine.CommitProfileChanges(arg2)
	else
		UploadPublicProfile(arg0, arg2)
	end
	CoD.perController[arg2].selectedEmblemModel = nil
	CoD.CraftUtility.Emblems.CachedEmblems = {}
	CoD.CraftUtility.Emblems.CachedEmblemIndexMapping = {}
	ClearSavedState(arg0, arg2)
	local registerVal5 = Engine.GetGlobalModel()
	Engine.ForceNotifyModelSubscriptions(Engine.CreateModel(registerVal5, "emblemBreadcrumbChanged"))
end

function EmblemSelect_SetAsEmblem(arg0, arg1, arg2)
	local registerVal3 = IsLive()
	if registerVal3 then
		registerVal3 = SelectingGroupEmblem(arg2)
		if registerVal3 then
			registerVal3 = SelectingGroupEmblemForGroupCreation(arg2)
			if registerVal3 then
				Engine.SetGroupEmblemForGroupCreation(arg2)
			else
				MarkGroupDataDirty(arg2, "emblem", true)
				Engine.SetGroupEmblem(arg2)
			end
			GoBack(arg0, arg2)
			return 
		else
			Engine.ExecNow(arg2, "emblemsetprofile")
			CoD.perController[arg2].uploadProfile = true
		else
			registerVal3 = arg1:getModel(arg2, "emblemIndex")
			local registerVal4 = Engine.GetModelValue(registerVal3)
			Engine.SetProfileVar(arg2, "default_emblem_index", registerVal4)
			Engine.ExecNow(arg2, "invalidateEmblemComponent")
		end
	end
end

function EmblemSelect_GainFocus(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	CoD.perController[arg2].selectedEmblemModel = registerVal4
	local registerVal3 = arg1:getModel(arg2, "emblemIndex")
	registerVal4 = Engine.GetModelValue(registerVal3)
	Engine.SetupEmblemData(arg2, registerVal4, CoD.perController[arg2].selectedEmblemTabStorageType)
end

function EmblemSelect_ChooseEmblem(arg0, arg1, arg2)
	CoD.perController[arg2].totalLayers = Enum.CustomizationTypeLayerCount.CUSTOMIZATION_TYPE_EMBLEM_MAX_LAYERS
	CoD.perController[arg2].totalGroups = Enum.CustomizationTypeGroupCount.CUSTOMIZATION_TYPE_MAX_GROUPS
	CoD.SetEditorProperties(arg2, Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_BROWSE, "editorMode")
	CoD.SetCustomization(arg2, Enum.CustomizationType.CUSTOMIZATION_TYPE_EMBLEM, "type")
	Engine.SetupEmblemEditBuffer(arg2, Enum.CustomizationType.CUSTOMIZATION_TYPE_EMBLEM, 0.000000)
end

function EmblemSelect_RenameEmblem(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "emblemIndex"))
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal3, "emblemName"))
	CoD.CraftUtility.Emblems.RenameEmblem(arg2, registerVal4, registerVal5)
end

function EmblemSelect_HandleRenameKeyboardComplete(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	if not registerVal4 then
		return 
	end
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_EMBLEMS then
		local registerVal6 = Engine.GetModel(registerVal4, "emblemName")
	end
	if registerVal6 then
		Engine.SetModelValue(registerVal6, arg3.input)
	end
end

function EmblemSelect_ClearEmblem(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedEmblemModel, "emblemIndex"))
	CoD.CraftUtility.Emblems.ClearEmblem(arg2, registerVal4)
	Engine.UploadEmblemData(arg2, registerVal4)
	CoD.CraftUtility.Emblems.ParseDDL(arg2, Enum.StorageFileType.STORAGE_EMBLEMS)
	local registerVal6 = IsMediaManager()
	if registerVal6 == true then
		registerVal6 = GoBackMultiple(arg0, arg2, 1.000000)
		MediaManagerMarkDirty(arg2)
	else
		registerVal6 = GoBackMultiple(arg0, arg2, 2.000000)
	end
	if registerVal6.emblemList ~= nil then
		registerVal6.emblemList:updateDataSource(true)
		registerVal6 = registerVal6.emblemList:getFirstSelectableItem()
		registerVal6.emblemList:setActiveItem(registerVal6)
		ForceNotifyModel(arg2, "Emblem.UpdateDataSource")
	end
end

function EmblemSelect_CopyEmblem(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = arg4:getModel()
	local registerVal6 = CoD.CraftUtility.Emblems.Copy(arg2, registerVal5, CoD.perController[arg2].selectedEmblemTabStorageType)
	if registerVal6 then
		CoD.CraftUtility.Emblems.ParseDDL(arg2, Enum.StorageFileType.STORAGE_EMBLEMS)
		local registerVal7 = GoBack(arg4, arg2)
		registerVal7.emblemList:updateDataSource(true)
		local registerVal10 = {}
		registerVal10.emblemIndex = registerVal6
		local registerVal8 = registerVal7.emblemList:findItem(registerVal10)
		if registerVal8 then
			registerVal7.emblemList:setActiveItem(registerVal8)
		end
		ForceNotifyModel(arg2, "Emblem.UpdateDataSource")
	end
end

function PaintshopWeaponList_TabChanged(arg0, arg1, arg2)
	DataSources.CraftWeaponList.setCurrentFilterItem(arg1.filter)
	arg0.weaponList:updateDataSource(true)
	local registerVal3 = arg0.weaponList:getFirstSelectableItem()
	arg0.weaponList:setActiveItem(registerVal3)
	CoD.SetCustomization(arg2, (arg0.tabList.Tabs.grid.activeWidget.gridInfoTable.zeroBasedIndex + 1.000000), "category_index")
end

function PaintshopWeaponList_Back(arg0, arg1, arg2)
	CoD.perController[arg2].selectedpaintjobModel = nil
	CoD.perController[arg2].paintshopWeaponListIndex = nil
	CoD.CraftUtility.Paintjobs.CachedPaintjobs = {}
end

function PaintshopWeaponList_GainFocus(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "itemIndex"))
	CoD.SetCustomization(arg2, registerVal3, "weapon_index")
	CoD.SetCustomization(arg2, (arg0.tabList.Tabs.grid.activeWidget.gridInfoTable.zeroBasedIndex + 1.000000), "category_index")
	CoD.CraftUtility.Gunsmith.DisplayBaseWeapon(arg0, arg1, arg2)
end

function PaintshopWeaponList_PressBackOnPaintjobsSelector(arg0, arg1, arg2)
	CoD.CraftUtility.Gunsmith.DisplayBaseWeapon(arg0, arg1, arg2)
	arg0:updateMode(Enum.PaintshopMode.PAINTSHOPMODE_WEAPONLIST, arg1)
	local registerVal3 = arg0.paintjobSelector.paintjobsList:getFirstSelectableItem()
	arg0.paintjobSelector.paintjobsList:setActiveItem(registerVal3)
end

function PaintshopWeaponList_ChooseWeapon(arg0, arg1, arg2)
	arg0:updateMode(Enum.PaintshopMode.PAINTSHOPMODE_PAINTJOBS, arg1)
	CoD.perController[arg2].paintshopWeaponListIndex = (arg0.weaponList.activeWidget.gridInfoTable.zeroBasedIndex + 1.000000)
	arg0.paintjobSelector.paintjobsList:updateDataSource(true)
	local registerVal3 = arg0.paintjobSelector.paintjobsList:getFirstSelectableItem()
	arg0.paintjobSelector.paintjobsList:setActiveItem(registerVal3)
end

function FeaturedCardsActionButtonHandler(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = arg0:getParentMenu()
	local registerVal9 = FeaturedCards_IsEnabled(arg1, arg2)
	if registerVal9 == false then
		return 
	end
	if arg0.LeftContainer.FEFeaturedCardsContainer.CardsList.activeWidget ~= nil then
		local registerVal10 = arg0.LeftContainer.FEFeaturedCardsContainer.CardsList.activeWidget:getModel()
	end
	if registerVal10 then
		registerVal10 = CoD.SafeGetModelValue(registerVal10, "action")
		registerVal10 = CoD.SafeGetModelValue(registerVal10, "isExperimentPromo")
	end
	if registerVal10 == "openwelcome" then
		OpenOverlay(registerVal5, "WelcomeMenu", arg2)
	else
		registerVal10 = LUI.startswith(registerVal10, "store")
		if registerVal10 ~= nil and registerVal10 then
			LUI.CoDMetrics.CRMMessageInteraction(arg0, arg2, "crm_featured")
			if CoD.isPC then
				OpenSteamStore(arg0, arg1, arg2, "FeaturedWidget", registerVal5)
			else
				CoD.StoreUtility.SetupFocusCategory(arg2, registerVal10)
				OpenStore(arg0, arg1, arg2, "FeaturedWidget", registerVal5)
			else
				if registerVal10 == "opengroups" then
					OpenGroups(arg0, arg1, arg2, arg3, registerVal5)
				else
					if registerVal10 == "opencrm" then
						LUI.CoDMetrics.CRMMessageInteraction(arg0, arg2, "crm_featured")
						local registerVal11 = CoD.SafeGetModelValue(registerVal10, "index")
						local registerVal12 = Engine.GetMarketingMessage(arg2, "crm_featured", registerVal11)
						if registerVal10 and registerVal11 and registerVal12 and registerVal12.action == "popup_video" and registerVal12.popup_image then
							local registerVal15 = DataSources.VoDViewer.getModel(arg2)
							local registerVal14 = Engine.GetModel(registerVal15, "stream")
							Engine.SetModelValue(registerVal14, registerVal12.popup_image)
							OpenPopup(registerVal5, "VoDViewer", arg2)
						end
						if not true then
							OpenCRMFeaturedPopup(arg0, arg1, arg2, "Featured", registerVal5)
						else
							if registerVal10 == "openmotd" then
								OpenMOTDPopup(arg0, arg1, arg2, "FeaturedWidget", registerVal5)
							else
								if registerVal10 == "liveevent" then
									if CoD.isPC then
										registerVal10 = DataSources.LiveEventViewer.getModel(arg2)
										registerVal11 = CoD.SafeGetModelValue(registerVal10, "stream")
										if registerVal11 and registerVal11 ~= "" then
											Engine.OpenURL(("http://www.twitch.tv/" .. registerVal11))
										else
											OpenPopup(registerVal5, "LiveEventViewer", arg2)
										else
											if registerVal10 == "blackmarket" then
												if registerVal10 then
													registerVal11 = Engine.GetPrimaryController()
													registerVal10 = Engine.ExperimentsGetVariant(registerVal11, "chris_variable_discount")
													LUI.CoDMetrics.ExperimentPromoFeatureCardEvent(arg2, registerVal10)
												else
													LUI.CoDMetrics.CRMMessageInteraction(arg0, arg2, "crm_featured")
												end
												registerVal12 = Engine.GetGlobalModel()
												registerVal11 = Engine.CreateModel(registerVal12, "blackmarketOpenSource")
												Engine.SetModelValue(registerVal11, Engine.GetCurrentMode())
												Engine.SwitchMode(arg2, "mp")
												OpenBlackMarket(arg0, nil, arg2)
											else
												if registerVal10 == "drmonty" then
													LUI.CoDMetrics.CRMMessageInteraction(arg0, arg2, "crm_featured")
													CoD.perController[arg2].cameFromFeaturedCard = true
													registerVal12 = Engine.GetGlobalModel()
													registerVal11 = Engine.CreateModel(registerVal12, "megachewOpenSource")
													Engine.SetModelValue(registerVal11, Engine.GetCurrentMode())
													Engine.SwitchMode(arg2, "zm")
													OpenMegaChewFactorymenu(arg0, arg1, arg2, arg3, registerVal5)
												else
													if registerVal10 == "contracts" then
														registerVal12 = Engine.GetGlobalModel()
														registerVal11 = Engine.CreateModel(registerVal12, "contractsOpenSource")
														Engine.SetModelValue(registerVal11, Engine.GetCurrentMode())
														Engine.SwitchMode(arg2, "mp")
														LuaUtils.CycleContracts()
														OpenOverlay(arg0, "BM_Contracts", arg2)
													else
														if registerVal10 == "promo" then
															registerVal12 = Engine.GetGlobalModel()
															registerVal11 = Engine.CreateModel(registerVal12, "promoOpenSource")
															Engine.SetModelValue(registerVal11, Engine.GetCurrentMode())
															Engine.SwitchMode(arg2, "mp")
															OpenOverlay(arg0, "ZMHD_Community_Theme", arg2, "", "")
														else
															if registerVal10 == "open_daily_challenge" then
																registerVal12 = Engine.GetGlobalModel()
																registerVal11 = Engine.CreateModel(registerVal12, "dailyChallengeOpenSource")
																Engine.SetModelValue(registerVal11, Engine.GetCurrentMode())
																Engine.SwitchMode(arg2, "zm")
																CoD.OverlayUtility.CreateOverlay(arg2, arg0, "InspectDailyChallengeOverlay", arg2)
															else
																if registerVal10 == "open_cookbook" then
																	registerVal12 = Engine.GetGlobalModel()
																	registerVal11 = Engine.CreateModel(registerVal12, "cookbookRecipeOpenSource")
																	Engine.SetModelValue(registerVal11, Engine.GetCurrentMode())
																	Engine.SwitchMode(arg2, "zm")
																	OpenGobbleGumCookbookMenu(arg0, arg1, arg2, arg3, registerVal5)
																else
																	if registerVal10 == "open_zmhd_thermometer" then
																		OpenOverlay(arg0, "ZMHD_Community_Theme", arg2)
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

function FeaturedCardsResetTimer(arg0, arg1, arg2, arg3, arg4)
	if arg0.LeftContainer.FEFeaturedCardsContainer.CarouselTimer ~= nil then
		arg0.LeftContainer.FEFeaturedCardsContainer.CarouselTimer:reset()
	end
end

function FeaturedCardsGetNextCard(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "FeaturedCardsRoot", false)
	registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal5, "CardSequence"))
	local registerVal8 = Engine.GetModel(registerVal5, "CardSequence")
	Engine.SetModelValue(registerVal8, (registerVal6 + 1.000000))
end

function FeaturedCardsGetPreviousCard(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "FeaturedCardsRoot", false)
	registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal5, "CardSequence"))
	local registerVal8 = Engine.GetModel(registerVal5, "CardSequence")
	Engine.SetModelValue(registerVal8, (registerVal6 - 1.000000))
end

function FeaturedCardsUpdateCRMMessage(arg0, arg1, arg2, arg3, arg4)
	Engine.UpdateFeaturedCardsCRMMessage(arg2)
end

function FileshareGetSlots(arg0, arg1, arg2)
	Engine.FileshareStartup(arg2)
end

function OpenMyShowcase(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetXUID64(arg2)
	{}.xuid = registerVal6
	Engine.ExecNow(arg2, "fileshareResetSummaryFiles")
	OpenPlayerShowcase(arg0, arg1, arg2, {}, arg4)
end

function OpenShowcase(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.FileshareUtility.GetCurrentCategory()
	local registerVal6 = CoD.FileshareUtility.GetSelectedItemProperty("fileId")
	FileshareSetShowcasePublishMode(arg2, false)
	if registerVal5 == "paintjob" then
		OpenShowcasePaintjobs(arg0, arg1, arg2, registerVal6, arg4)
	else
		if registerVal5 == "variant" then
			OpenShowcaseVariants(arg0, arg1, arg2, registerVal6, arg4)
		else
			if registerVal5 == "emblem" then
				OpenShowcaseEmblems(arg0, arg1, arg2, registerVal6, arg4)
			else
				if registerVal5 == "customgame" then
					OpenShowcaseCustomGames(arg0, arg1, arg2, registerVal6, arg4)
				else
					if registerVal5 == "screenshot" then
						OpenShowcaseScreenshots(arg0, arg1, arg2, registerVal6, arg4)
					else
						if registerVal5 == "recentgames" then
							OpenShowcaseRecentGames(arg0, arg1, arg2, registerVal6, arg4)
						else
							if registerVal5 == "clip_private" then
								OpenShowcaseLocalClips(arg0, arg1, arg2, registerVal6, arg4)
							else
								if registerVal5 == "clip" then
									OpenShowcaseClips(arg0, arg1, arg2, registerVal6, arg4)
								end
							end
						end
					end
				end
			end
		end
	end
end

function OpenPlayerShowcaseOnParent(arg0, arg1, arg2, arg3, arg4)
	CoD.FileshareUtility.SetCurrentUser(arg3.xuid)
	CoD.FileshareUtility.SetFileshareMode(arg2, Enum.FileshareMode.FILESHARE_MODE_USER)
	FileshareSetShowcasePublishMode(arg2, false)
	CoD.ShowcaseOtherPlayerStats = true
	GoBackAndOpenOverlayOnParent(arg0, "MyShowcase", arg2)
end

function OpenPlayerShowcase(arg0, arg1, arg2, arg3, arg4)
	CoD.FileshareUtility.InitModels()
	CoD.FileshareUtility.SetCurrentUser(arg3.xuid)
	CoD.FileshareUtility.SetFileshareMode(arg2, Enum.FileshareMode.FILESHARE_MODE_USER)
	FileshareSetShowcasePublishMode(arg2, false)
	CoD.ShowcaseOtherPlayerStats = false
	OpenOverlay(arg0, "MyShowcase", arg2)
end

function OpenShowcasePaintjobs(arg0, arg1, arg2, arg3, arg4)
	CoD.FileshareUtility.SetPreviousCategory("paintjob")
	CoD.FileshareUtility.SetCurrentCategory("paintjob")
	CoD.FileshareUtility.SetCurrentFilter("", "")
	local registerVal6 = FileshareIsCurrentUserContext(arg2)
	if registerVal6 then
	end
	CoD.FileshareUtility.SetShowCreateButton(true)
	OpenOverlay(arg0, "MyShowcase_Paintjobs", arg2)
end

function OpenShowcaseVariants(arg0, arg1, arg2, arg3, arg4)
	CoD.FileshareUtility.SetPreviousCategory("variant")
	CoD.FileshareUtility.SetCurrentCategory("variant")
	CoD.FileshareUtility.SetCurrentFilter("", "")
	local registerVal6 = FileshareIsCurrentUserContext(arg2)
	if registerVal6 then
	end
	CoD.FileshareUtility.SetShowCreateButton(true)
	OpenOverlay(arg0, "MyShowcase_Variants", arg2)
end

function OpenShowcaseEmblems(arg0, arg1, arg2, arg3, arg4)
	CoD.FileshareUtility.SetPreviousCategory("emblem")
	CoD.FileshareUtility.SetCurrentCategory("emblem")
	CoD.FileshareUtility.SetCurrentFilter("", "")
	local registerVal6 = FileshareIsCurrentUserContext(arg2)
	if registerVal6 then
	end
	CoD.FileshareUtility.SetShowCreateButton(true)
	OpenOverlay(arg0, "MyShowcase_Emblems", arg2)
end

function OpenLocalClipPublishPrompt(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.LobbyGetDemoInformation()
	local registerVal7 = CoD.FileshareUtility.GetSelectedItemProperty("fileId")
	if arg1 or registerVal5.fileID ~= registerVal7 then
		LuaUtils.UI_ShowErrorMessageDialog(arg2, "MENU_FILESHARE_PUBLISH_ONLY_AFTER_DOWNLOADING")
		return 
	end
	local registerVal6 = CoD.FileshareUtility.GetSelectedItemProperty("fileName")
	registerVal7 = CoD.FileshareUtility.GetSelectedItemProperty("fileDescription")
	CoD.FileshareUtility.OpenPublishPrompt(arg0, arg2, "clip", registerVal6, registerVal7, PublishClip)
end

function GetShowcaseManagerCategoryList()
	return CoD.FileshareUtility.ShowcaseManagerTabs
end

function GetShowcaseManagerCategoryCount()
	return #CoD.FileshareUtility.ShowcaseManagerTabs
end

function OpenShowcaseManager(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.FileshareUtility.GetCurrentCategory()
	CoD.FileshareUtility.SetPreviousCategory(registerVal5)
	CoD.FileshareUtility.SetCurrentFilter("", "")
	CoD.FileshareUtility.SetShowCreateButton(FileshareCanBuyMoreSlots(arg2))
	OpenOverlay(arg0, "Fileshare_ShowcaseManager", arg2)
end

function OpenLocalScreenshots(arg0, arg1)
	CoD.FileshareUtility.SetCurrentCategory("screenshot_private")
	local registerVal3 = CoD.FileshareUtility.GetPreviousCategory()
	if registerVal3 ~= "screenshot_private" then
		CoD.FileshareUtility.SetDirty()
	end
	CoD.FileshareUtility.ProcessUIIndex(arg1, "screenshot_private", 0.000000)
	local registerVal4 = Engine.GetXUID64(arg1)
	Engine.ExecNow(arg1, "fileshareResetSummaryFiles")
	CoD.FileshareUtility.SetCurrentUser(registerVal4)
	CoD.FileshareUtility.SetFileshareMode(arg1, Enum.FileshareMode.FILESHARE_MODE_USER)
	CoD.FileshareUtility.FetchContentForUser(arg1, registerVal4)
	FileshareSetShowcasePublishMode(arg1, false)
	CoD.FileshareUtility.SetPreviousCategory("screenshot_private")
	CoD.FileshareUtility.SetCurrentFilter("", "")
	CoD.FileshareUtility.SetShowCreateButton(false)
	CoD.FileshareUtility.SetShowFileDetails(false)
	CoD.FileshareUtility.SetShowPublishNewDetails(false)
	CoD.FileshareUtility.SetShowCreateButton(false)
	CoD.FileshareUtility.SetForceRefreshThumbnails(true)
	OpenOverlay(arg0, "LocalScreenshots", arg1)
	CoD.FileshareUtility.SetForceRefreshThumbnails(false)
end

function OpenLocalScreenshotsPublishPrompt(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.FileshareUtility.GetSelectedItemProperty("fileId")
	local registerVal6 = Engine.IsScreenshotReady(Enum.ScreenshotViewType.UI_SCREENSHOT_TYPE_SCREENSHOT, registerVal5)
	registerVal6 = Engine.IsScreenshotReady(Enum.ScreenshotViewType.UI_SCREENSHOT_TYPE_THUMBNAIL, registerVal5)
	if registerVal6 == false or registerVal6 == false then
		LuaUtils.UI_ShowErrorMessageDialog(arg2, "MENU_UPLOAD_FAIL_DUE_TO_SCREENSHOT_DOWNLOAD")
		return 
	end
	registerVal6 = CoD.FileshareUtility.GetSelectedItemProperty("fileName")
	local registerVal7 = CoD.FileshareUtility.GetSelectedItemProperty("fileDescription")
	CoD.FileshareUtility.OpenPublishPrompt(arg0, arg2, "screenshot", registerVal6, registerVal7, PublishScreenshot)
end

function FileshareCloseShowcaseManager(arg0, arg1, arg2)
	CoD.FileshareUtility.SetInShowcaseManager(arg2, false)
end

function OpenMediaCommunity(arg0, arg1, arg2, arg3, arg4, arg5)
	CoD.FileshareUtility.InitModels()
	CoD.FileshareUtility.SetCurrentCommunityDataType(arg5)
	CoD.FileshareUtility.SetFileshareMode(arg2, Enum.FileshareMode.FILESHARE_MODE_COMMUNITY)
	OpenOverlay(arg0, "Community", arg2)
end

function FilesharePublishedTabChanged(arg0, arg1, arg2)
	if arg1.fileshareCategory ~= nil then
		CoD.FileshareUtility.SetCurrentCategory(arg1.fileshareCategory)
	else
		CoD.FileshareUtility.SetCurrentCategory("")
	end
	if arg1.fileshareKey ~= nil and arg1.fileshareVal ~= nil then
		CoD.FileshareUtility.SetCurrentFilter(arg1.fileshareKey, arg1.fileshareVal)
	else
		CoD.FileshareUtility.SetCurrentFilter("", "")
	end
	CoD.FileshareUtility.SetShowFileDetails(false)
	CoD.FileshareUtility.SetDirty()
end

function FileshareShowcaseManagerTabChanged(arg0, arg1, arg2)
	if arg1.fileshareCategory ~= nil then
		CoD.FileshareUtility.SetCurrentCategory(arg1.fileshareCategory)
	else
		CoD.FileshareUtility.SetCurrentCategory("")
	end
	CoD.FileshareUtility.SetCurrentFilter("", "")
	CoD.FileshareUtility.SetShowFileDetails(false)
	CoD.FileshareUtility.SetShowPublishNewDetails(false)
	CoD.FileshareUtility.SetDirty()
end

function FileshareSetSelectedItemAttachTimer(arg0, arg1, arg2, arg3)
	local function __FUNC_623A9_()
		CoD.FileshareUtility.ProcessUIIndex(arg1, arg2, arg3)
	end

	local registerVal4 = LUI.UITimer.newElementTimer(300.000000, true, __FUNC_623A9_, arg0)
	arg0.processUIIndexTimer = registerVal4
	arg0:addElement(registerVal4)
end

function FileshareItemLoseFocus(arg0)
	if arg0.processUIIndexTimer then
		arg0.processUIIndexTimer:close()
		arg0.processUIIndexTimer = nil
	end
end

function FileshareSetSelectedItem(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel()
	if registerVal4 == nil then
		CoD.CraftUtility.Fileshare.ClearDisplay(arg2)
		return 
	end
	CoD.FileshareUtility.SetSelectedItem(registerVal4)
	local registerVal5 = CoD.FileshareUtility.GetSelectedItemProperty("fileId")
	local registerVal6 = CoD.FileshareUtility.GetSelectedItemProperty("isPublishNew")
	local registerVal7 = CoD.FileshareUtility.GetCurrentCategory()
	if arg3 ~= "true" then
	end
	local registerVal11 = Engine.GetGlobalModel()
	local registerVal10 = Engine.CreateModel(registerVal11, "FileshareRoot.SelectedFileID")
	Engine.SetModelValue(registerVal10, registerVal5)
	if registerVal6 == true or registerVal5 == 0.000000 then
		CoD.FileshareUtility.SetShowPublishNewDetails(true)
		CoD.CraftUtility.Fileshare.ClearDisplay(arg2)
		return 
	end
	FileshareSetSelectedItemAttachTimer(arg1, arg2, registerVal7, arg1.gridInfoTable.zeroBasedIndex)
	registerVal10 = FileshareIsCheckingPageFetchThreshold(arg2)
	registerVal10 = Engine.FileshareIsUIIndexBeyondThreshold(arg1.gridInfoTable.zeroBasedIndex)
	if arg1.gridInfoTable and registerVal10 and registerVal10 then
		CoD.FileshareUtility.ProcessUIIndex(arg2, registerVal7, arg1.gridInfoTable.zeroBasedIndex)
	end
	local registerVal9 = Engine.GetFileshareWeaponIndex(arg2, registerVal5)
	if registerVal7 ~= "recent" and registerVal7 == "favorites" or registerVal7 == "featured" then
		registerVal10 = CoD.SafeGetModelValue(registerVal4, "fileCategory")
	end
	if registerVal10 == "paintjob" then
		CoD.CraftUtility.Fileshare.DisplayWeaponWithPaintjob(arg2, registerVal9, registerVal5, true)
	else
		if registerVal10 == "variant" then
			CoD.CraftUtility.Fileshare.DisplayWeaponVariants(arg2, registerVal9, registerVal5, true)
		end
	end
	registerVal10 = CoD.FileshareUtility.ShouldSetPreviewIconSizeShort(registerVal10)
	if registerVal10 then
		FileshareSetPreviewIconSizeShort()
	else
		FileshareSetPreviewIconSizeNormal()
	end
end

function FileshareSetSelectedItemCategoryName(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if not registerVal3 then
		return 
	end
	local registerVal4 = Engine.GetModel(registerVal3, "fileCategory")
	if registerVal4 then
		local registerVal5 = Engine.GetModelValue(registerVal4)
		CoD.FileshareUtility.SetCurrentItemCategoryName(registerVal5)
	end
end

function FileshareShowcasePublishSetSelectedItem(arg0, arg1, arg2)
	local registerVal3 = CoD.FileshareUtility.GetInShowcaseManager()
	if registerVal3 then
		return 
	end
	registerVal3 = CoD.FileshareUtility.GetCurrentCategory()
	if registerVal3 == "paintjob" then
		local registerVal5 = arg1:getModel()
		CoD.perController[arg2].selectedpaintjobModel = registerVal5
		CoD.perController[arg2].viewIndex = 1.000000
		CoD.CraftUtility.Fileshare.DisplayWeaponWithPaintjobUsingModel(arg2, arg1:getModel())
	else
		if registerVal3 == "variant" then
			registerVal5 = arg1:getModel()
			CoD.perController[arg2].gunsmithVariantModel = registerVal5
			CoD.CraftUtility.Fileshare.DisplayWeaponWithVariant(arg2, CoD.perController[arg2].gunsmithVariantModel)
		else
			if registerVal3 == "emblem" then
				registerVal5 = arg1:getModel()
				CoD.perController[arg2].selectedEmblemModel = registerVal5
				local registerVal4 = arg1:getModel(arg2, "emblemIndex")
				registerVal5 = Engine.GetModelValue(registerVal4)
				Engine.SetupEmblemData(arg2, registerVal5, CoD.perController[arg2].selectedEmblemTabStorageType)
			end
		end
	end
end

function FileshareSetShowFileDetails(arg0, arg1)
	CoD.FileshareUtility.SetShowFileDetails(arg1)
end

function FileshareSetShowPublishNewDetails(arg0, arg1)
	CoD.FileshareUtility.SetShowPublishNewDetails(arg1)
end

function FileshareShowcasePublishSelectedItem(arg0, arg1, arg2)
	local registerVal3 = CoD.FileshareUtility.GetCurrentCategory()
	if registerVal3 == "screenshot" then
		CoD.FileshareUtility.SetCurrentCategory("screenshot_private")
	end
	if "screenshot_private" == "paintjob" then
		local registerVal5 = arg1:getModel()
		CoD.perController[arg2].selectedpaintjobModel = registerVal5
		CoD.CraftUtility.OpenPublishPromptPaintjob(arg0, arg1, arg2, nil, arg0)
	else
		if "screenshot_private" == "variant" then
			registerVal5 = arg1:getModel()
			CoD.perController[arg2].gunsmithVariantModel = registerVal5
			CoD.CraftUtility.OpenPublishPromptGunsmith(arg0, arg1, arg2, nil, arg0)
		else
			if "screenshot_private" == "emblem" then
				registerVal5 = arg1:getModel()
				CoD.perController[arg2].selectedEmblemModel = registerVal5
				CoD.CraftUtility.OpenPublishPromptEmblem(arg0, arg1, arg2, nil, arg0)
			else
				if "screenshot_private" == "customgame" then
					registerVal5 = Engine.GetGlobalModel()
					local registerVal4 = Engine.CreateModel(registerVal5, "CustomGamesRoot")
					local registerVal6 = arg1:getModel()
					registerVal5 = Engine.GetModel(registerVal6, "gameType")
					local registerVal7 = Engine.CreateModel(registerVal4, "gameType")
					Engine.SetModelValue(registerVal7, Engine.GetModelValue(registerVal5))
					SetSelectedCustomGame(arg1, arg2)
					OpenCustomGamePublishPrompt(arg0, arg1, arg2, nil, arg0)
				else
					if "screenshot_private" == "screenshot_private" then
						OpenLocalScreenshotsPublishPrompt(arg0, arg1, arg2, nil, nil)
					else
						if "screenshot_private" == "clip_private" then
							OpenLocalClipPublishPrompt(arg0, arg1, arg2, nil, nil)
						end
					end
				end
			end
		end
	end
end

function FileshareSetDirty(arg0)
	CoD.FileshareUtility.SetDirty()
end

function FileshareCategorySelectorItemSelected(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = Engine.GetModel(registerVal4, "category")
	registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = CoD.FileshareUtility.GetCurrentCommunityDataType()
	local registerVal8 = arg1:getModel()
	local registerVal7 = Engine.GetModel(registerVal8, "communityDataType")
	registerVal8 = CoD.FileshareUtility.GetCurrentCommunityDataType()
	local registerVal9 = Engine.GetModelValue(registerVal7)
	if registerVal7 and registerVal9 ~= nil and registerVal9 ~= "" and registerVal8 ~= registerVal9 then
		CoD.FileshareUtility.SetCurrentCommunityDataType(registerVal9)
	end
	FileshareCategorySelectorCategoryChanged(arg2, registerVal4, registerVal9, true)
end

function FileshareCategorySelectorSetToCategory(arg0, arg1, arg2)
	FileshareCategorySelectorCategoryChanged(arg0, arg1, nil, arg2)
end

function FileshareHandleKeyboardComplete(arg0, arg1, arg2, arg3)
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_FILESHARE_PUBLISH_NAME then
		CoD.FileshareUtility.SetPublishName(arg3.input)
	else
		if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_FILESHARE_PUBLISH_DESCRIPTION then
			CoD.FileshareUtility.SetPublishDescription(arg3.input)
		else
			if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_FILESHARE_PUBLISH_TAGS then
				CoD.FileshareUtility.SetPublishTags(arg3.input)
			else
				if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_FILESHARE_DOWNLOAD_NAME then
					CoD.FileshareUtility.SetDownloadFileName(arg3.input)
				end
			end
		end
	end
end

function FileshareEnterDownloadName(arg0, arg1, arg2)
	ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_FILESHARE_DOWNLOAD_NAME")
end

function FileshareEnterPublishName(arg0, arg1, arg2)
	ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_FILESHARE_PUBLISH_NAME")
end

function FileshareEnterPublishDescription(arg0, arg1, arg2)
	ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_FILESHARE_PUBLISH_DESCRIPTION")
end

function FileshareEnterPublishTags(arg0, arg1, arg2)
	ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_FILESHARE_PUBLISH_TAGS")
end

function FileshareRestoreToPreviousCategory(arg0)
	local registerVal1 = FileshareShowcaseIsPublishMode(nil, arg0)
	if registerVal1 then
		return 
	end
	registerVal1 = CoD.FileshareUtility.GetPreviousCategory()
	if registerVal1 then
		CoD.FileshareUtility.SetCurrentCategory(registerVal1)
	end
end

function FileshareDeleteCurrentItem(arg0, arg1, arg2, arg3, arg4)
	CoD.FileshareUtility.Delete(arg0, arg1, arg2, arg3, arg4, true)
end

function FileshareDeleteDone(arg0, arg1, arg2, arg3, arg4)
	CoD.FileshareUtility.DeleteDone(arg0, arg1, arg2, arg3, arg4)
end

function FileshareSetPreviewIconSizeNormal()
	local registerVal0 = CoD.FileshareUtility.GetRootModel()
	local registerVal1 = Engine.CreateModel(registerVal0, "isNormalSize", false)
	local registerVal2 = Engine.CreateModel(registerVal0, "listVerticalCount", false)
	Engine.SetModelValue(registerVal1, true)
	Engine.SetModelValue(registerVal2, 2.000000)
end

function FileshareSetPreviewIconSizeShort()
	local registerVal0 = CoD.FileshareUtility.GetRootModel()
	local registerVal1 = Engine.CreateModel(registerVal0, "isNormalSize", false)
	local registerVal2 = Engine.CreateModel(registerVal0, "listVerticalCount", false)
	Engine.SetModelValue(registerVal1, false)
	Engine.SetModelValue(registerVal2, 3.000000)
end

function FileshareSummaryFileUpdate(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "fileshareRoot", false)
	registerVal2 = Engine.CreateModel(registerVal1, "summaryFileUpdated", false)
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 == nil then
		return 
	end
	local registerVal4 = CoD.FileshareUtility.GetIsFullscreenMode(arg0)
	if registerVal4 == true then
		registerVal4 = CoD.FileshareUtility.GetSelectedItemRootModel()
		local registerVal5 = Engine.GetModelValue(Engine.CreateModel(registerVal4, "fileId"))
		if registerVal5 == registerVal3 then
			local registerVal6 = Engine.CreateModel(registerVal4, "renderFileId")
			Engine.SetModelValue(registerVal6, registerVal3)
			local registerVal7 = Engine.CreateModel(registerVal4, "showDetailsViewSpinner")
			Engine.SetModelValue(registerVal7, 0.000000)
			local registerVal8 = Engine.GetModelValue(Engine.CreateModel(registerVal4, "fileId"))
			local registerVal9 = Engine.GetModelValue(Engine.CreateModel(registerVal4, "fileCategory"))
			local registerVal10 = Engine.GetFileshareWeaponIndex(arg0, registerVal8)
			if registerVal9 == "paintjob" then
				CoD.CraftUtility.Fileshare.DisplayWeaponWithPaintjob(arg0, registerVal10, registerVal8, true)
			else
				if registerVal9 == "variant" then
					CoD.CraftUtility.Fileshare.DisplayWeaponVariants(arg0, registerVal10, registerVal8, true)
				else
					for index4=1.000000, 12.000000, 1.000000 do
						registerVal9 = FileshareIsCommunityMode(nil, arg0)
						if registerVal9 == true then
						end
						registerVal9 = Engine.CreateModel(registerVal1, ("fileshareData_community_" .. index4), false)
						registerVal10 = Engine.CreateModel(registerVal9, "fileID", false)
						local registerVal11 = Engine.CreateModel(registerVal9, "renderFileId", false)
						local registerVal12 = Engine.GetModelValue(registerVal10)
						if registerVal12 == registerVal3 then
							Engine.SetModelValue(registerVal11, registerVal3)
						else
						end
					end
				end
			end
		end
	end
end

function FileshareSetCommunityKicker(arg0)
	SetHeadingKickerText(Engine.Localize(CoD.FileshareUtility.GetCurrentCommunityMenuKicker()))
end

function FileshareSetCurrentCategory(arg0, arg1)
	CoD.FileshareUtility.SetCurrentCategory(arg1)
end

function FileshareSetShowCreateButton(arg0, arg1)
	CoD.FileshareUtility.SetShowCreateButton(arg1)
end

function FileshareDownloadSummary(arg0, arg1, arg2)
	local registerVal3 = Engine.CurrentSessionMode()
	if registerVal3 == Enum.eModes.MODE_INVALID then
		return 
	end
	registerVal3 = arg1:getModel()
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "fileId"))
		local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal3, "fileSummarySize"))
		local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal3, "isPooled"))
		if registerVal6 then
		end
		Engine.FileshareDownloadSummary(arg2, registerVal4, registerVal5, Enum.fileShareLocation.FILESHARE_LOCATION_POOLEDSTORAGE)
	end
end

function FileshareAbortSummaryDownload(arg0, arg1, arg2)
end

function FileshareHandleDownloadSummary(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	if registerVal4 then
		CoD.FileshareUtility.SetupFileShareSummary(registerVal4, arg3)
	end
end

function FileshareDownloadScreenshot(arg0, arg1)
	if arg1 == nil then
	end
	local registerVal2 = DataSources.FileshareSelectedItem.getModel()
	if registerVal2 then
		local registerVal3 = CoD.SafeGetModelValue(registerVal2, "fileId")
		if not registerVal3 then
			registerVal3 = Engine.DefaultID64Value()
		end
		if registerVal3 ~= CoD.currentScreenshot then
			FileshareDestroyScreenshot(arg0)
			local registerVal4 = CoD.SafeGetModelValue(registerVal2, "fileSize")
			if not registerVal4 then
			end
			local registerVal5 = Engine.DefaultID64Value()
			if registerVal3 ~= registerVal5 then
				Engine.DownloadScreenshot(arg0, registerVal3, 0.000000, 1000.000000)
				CoD.currentScreenshot = registerVal3
			end
		end
	end
end

function FileshareDestroyScreenshot(arg0)
	if CoD.currentScreenshot then
		Engine.DestroyScreenshot(arg0)
		CoD.currentScreenshot = nil
	end
end

function FileshareBookmarkRecentGame(arg0)
	local registerVal1 = CoD.GetPlayerStats(arg0)
	local registerVal3 = registerVal1.AfterActionReportStats.demoFileID:get()
	if registerVal3 ~= nil and registerVal3 ~= "0" then
		Engine.BookmarkRecentGame(arg0, registerVal3)
		local registerVal6 = Engine.ToUpper(Engine.Localize("MENU_NOTICE"))
		local registerVal7 = Engine.Localize("MENU_GAME_BOOKMARKED")
		CoD.OverlayUtility.ShowToast("RecentGameBookmarked", registerVal6, registerVal7, "uie_bookmark")
	end
end

function SetFileshareShowcaseKickerText(arg0)
	local registerVal1 = Engine.GetXUID64(arg0)
	local registerVal2 = Engine.ToUpper(Engine.Localize("MENU_SHOWCASE"))
	local registerVal3 = FileshareGetShowcasePublishMode(arg0)
	if registerVal3 == true then
		Engine.ToUpper(Engine.Localize("MENU_PUBLISH"))
	end
	registerVal3 = CoD.FileshareUtility.GetCurrentUser()
	if registerVal1 == registerVal3 then
		registerVal3 = Engine.ToUpper(Engine.Localize("MENU_MEDIA_MYSHOWCASE"))
	end
	registerVal3 = CoD.FileshareUtility.GetIsGroupsMode(arg0)
	if registerVal3 then
		registerVal3 = Engine.ToUpper(Engine.Localize("GROUPS_GROUP_HEADQUARTERS_CAPS"))
	end
	SetHeadingKickerText(registerVal3)
end

function SetIsInFileshare(arg0, arg1)
	if arg1 and arg1 == "true" then
	end
	CoD.perController[arg0].inFileshare = true
end

function FileshareSetIsInFullscreenView(arg0, arg1)
	CoD.FileshareUtility.SetIsFullscreenMode(arg0, arg1)
end

function FileshareSetShowcasePublishMode(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "FileshareRoot", false)
	registerVal3 = Engine.CreateModel(registerVal2, "PublishMode", false)
	if arg1 == true then
	end
	Engine.SetModelValue(registerVal3, 1.000000)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "SelectedCustomGame")
	local registerVal7 = Engine.CreateModel(registerVal5, "secondaryListSelected")
	Engine.SetModelValue(registerVal7, false)
end

function FileshareGetShowcasePublishMode(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "FileshareRoot", false)
	registerVal2 = Engine.CreateModel(registerVal1, "PublishMode", false)
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function FileshareToggleDetailsHiddenMode(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "FileshareRoot", false)
	registerVal2 = Engine.CreateModel(registerVal1, "DetailsHiddenMode", false)
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if not registerVal3 then
	end
	Engine.SetModelValue(registerVal2, Negate(0.000000))
end

function FileshareResetDetailsHiddenMode(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "FileshareRoot", false)
	registerVal2 = Engine.CreateModel(registerVal1, "DetailsHiddenMode", false)
	Engine.SetModelValue(registerVal2, 0.000000)
end

function FileshareGetDetailsHiddenMode(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "FileshareRoot", false)
	registerVal2 = Engine.CreateModel(registerVal1, "DetailsHiddenMode", false)
	local registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 ~= 1.000000 then
	end
	return true
end

function FileshareRecordSaveEvent(arg0)
	local registerVal1 = CoD.FileshareUtility.GetCurrentCategory()
	local registerVal2 = Engine.FileshareGetQuota(arg0, registerVal1)
	if not registerVal2 then
		return 
	end
	if registerVal1 == "screenshot_private" then
		LUI.CoDMetrics.ScreenshotEvent(arg0, "save", registerVal1, registerVal2.categorySlotsUsed, registerVal2.categoryQuota)
	else
		if registerVal1 == "clip_private" then
			LUI.CoDMetrics.ClipsEvent(arg0, "save", registerVal1, registerVal2.categorySlotsUsed, registerVal2.categoryQuota)
		end
	end
end

function FileshareRecordPublishEvent(arg0)
	local registerVal1 = CoD.FileshareUtility.GetCurrentCategory()
	if registerVal1 == "screenshot_private" then
	else
		if "screenshot" == "clip_private" then
		end
	end
	local registerVal2 = Engine.FileshareGetQuota(arg0, "clip")
	if not registerVal2 then
		return 
	end
	LUI.CoDMetrics.FileshareEvent(arg0, "publish", "clip", registerVal2.categorySlotsUsed, registerVal2.categoryQuota)
end

function FileshareMoveToNextItem(arg0, arg1, arg2, arg3)
	local registerVal4 = FileshareDetailsViewCanMoveToNext(arg2)
	if registerVal4 then
		registerVal4 = CoD.FileshareUtility.GetSelectedItemProperty("codeIndex")
		FileshareUpdateDetailsViewModel(arg0, arg1, arg2, (registerVal4 + 1.000000))
	end
end

function FileshareMoveToPreviousItem(arg0, arg1, arg2)
	local registerVal3 = FileshareDetailsViewCanMoveToPrevious(arg2)
	if registerVal3 then
		registerVal3 = CoD.FileshareUtility.GetSelectedItemProperty("codeIndex")
		FileshareUpdateDetailsViewModel(arg0, arg1, arg2, (registerVal3 - 1.000000))
	end
end

function FileshareShowErrorToast(arg0, arg1, arg2)
	CoD.FileshareUtility.ShowSimpleToast(arg2, CoD.FileshareUtility.ToastTypes.ERROR)
end

function FileshareLikeVoteSuccessHandler(arg0, arg1, arg2)
	CoD.FileshareUtility.ShowToast(arg1, CoD.FileshareUtility.ToastTypes.LIKE)
end

function FileshareDisikeVoteSuccessHandler(arg0, arg1, arg2)
	CoD.FileshareUtility.ShowToast(arg1, CoD.FileshareUtility.ToastTypes.DISLIKE)
end

function FileshareShowPublishSuccessToast(arg0, arg1, arg2)
	CoD.FileshareUtility.ShowToast(arg2, CoD.FileshareUtility.ToastTypes.PUBLISH)
end

function FileshareShowUploadSuccessToast(arg0, arg1, arg2)
	CoD.FileshareUtility.ShowToast(arg2, CoD.FileshareUtility.ToastTypes.UPLOAD)
end

function FileshareShowDeleteSuccessToast(arg0, arg1, arg2)
	CoD.FileshareUtility.ShowToast(arg2, CoD.FileshareUtility.ToastTypes.DELETE)
end

function FileshareShowDownloadSuccessToast(arg0, arg1, arg2)
	CoD.FileshareUtility.ShowToast(arg2, CoD.FileshareUtility.ToastTypes.DOWNLOAD)
end

function FileshareShowReadonlyToast(arg0, arg1, arg2)
	CoD.FileshareUtility.ShowSimpleToast(arg2, CoD.FileshareUtility.ToastTypes.READONLY)
end

function CloseLocalScreenshots(arg0)
	FileshareDestroyScreenshot(arg0)
	CoD.perController[arg0].combatRecordProfileSnapshot = false
	CombatRecordProfileSnapshotDownloadScreenshot(arg0)
end

function GetMediaManagerCategoryList()
	return CoD.FileshareUtility.MediaManagerTabs
end

function GetMediaManagerCategoryCount()
	return #CoD.FileshareUtility.MediaManagerTabs
end

function SetIsMediaManager(arg0, arg1, arg2, arg3, arg4)
	if arg3 then
		if arg3 == "true" then
		end
		local registerVal7 = Engine.GetGlobalModel()
		local registerVal6 = Engine.CreateModel(registerVal7, "MediaManager", false)
		local registerVal8 = Engine.CreateModel(registerVal6, "isMediaManager", false)
		Engine.SetModelValue(registerVal8, 1.000000)
	end
end

function MediaManagerMarkDirty(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "MediaManager", false)
	registerVal2 = Engine.CreateModel(registerVal1, "dirty", false)
	ForceNotifyGlobalModel(arg0, "MediaManager.dirty")
	MediaManagerUpdateSlotsUsed(arg0, CoD.perController[arg0].selectedMediaManagerTab)
end

function MediaManagerClearPaintjob(arg0, arg1, arg2, arg3, arg4)
	CoD.CraftUtility.PaintjobClear(arg0, arg1, arg2, arg3, arg4)
end

function MediaManagerClearVariant(arg0, arg1, arg2, arg3, arg4)
	CoD.CraftUtility.GunsmithClear(arg0, arg1, arg2, arg3, arg4)
end

function MediaManagerClearEmblem(arg0, arg1, arg2, arg3, arg4)
	CoD.CraftUtility.EmblemClear(arg0, arg1, arg2, arg3, arg4)
end

function MediaManagerClearCustomGame(arg0, arg1, arg2, arg3, arg4)
	CoD.OverlayUtility.CreateOverlay(arg2, arg4, "CustomGameClearConfirmationOverlay")
end

function MediaManagerDeleteTheaterFile(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = CoD.FileshareUtility.GetDeletingModel()
	Engine.SetModelValue(registerVal6, Enum.FileshareTaskUIState.FILESHARE_TASK_UI_IDLE)
	arg4.m_leaveParentOpenAfterDelete = leaveParentOpen
	OpenPopup(arg4, "MediaManagerDeleteTheaterFile", arg2)
end

function MediaManagerTabChanged(arg0, arg1, arg2)
	CoD.perController[arg2].selectedMediaManagerTab = arg1.fileshareCategory
	MediaManagerUpdateSlotsUsed(arg2, arg1.fileshareCategory)
	CoD.FileshareUtility.SetCurrentCategory(arg1.fileshareCategory)
	MediaManagerMarkDirty(arg2)
end

function MediaManagerClearDisplay(arg0, arg1, arg2)
	local registerVal3 = CoD.FileshareUtility.IsCategoryFilm(arg2, arg1)
	registerVal3 = CoD.FileshareUtility.IsCategoryClip(arg2, arg1)
	registerVal3 = CoD.FileshareUtility.IsCategoryScreenshot(arg2, arg1)
	registerVal3 = CoD.FileshareUtility.IsCategoryCustomGames(arg2, arg1)
	if not registerVal3 and not registerVal3 and not arg1 or registerVal3 then
		return 
	end
	CoD.CraftUtility.Fileshare.ClearDisplay(arg2)
end

function MediaManagerPaintjobFocusChanged(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "paintjobSlotAndIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	Engine.SetModelValue(registerVal3, registerVal4)
	local registerVal5 = arg1:getModel(arg2, "weaponIndex")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	CoD.SetCustomization(arg2, registerVal6, "weapon_index")
	local registerVal8 = Engine.GetModelForController(arg2)
	local registerVal7 = Engine.CreateModel(registerVal8, "MediaManagerSelectedPaintjob")
	registerVal8 = Engine.CreateModel(registerVal7, "paintjobSlotAndIndex")
	Engine.SetModelValue(registerVal8, registerVal4)
	local registerVal9 = arg1:getModel(arg2, "authorName")
	local registerVal10 = Engine.GetModelValue(registerVal9)
	local registerVal11 = arg1:getModel(arg2, "createTime")
	local registerVal12 = Engine.GetModelValue(registerVal11)
	MediaManagerSetSlotModel(arg2, false, registerVal12, registerVal10)
end

function MediaManagerVariantFocusChanged(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "weaponIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	CoD.SetCustomization(arg2, registerVal4, "weapon_index")
	local registerVal5 = arg1:getModel(arg2, "authorName")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal7 = arg1:getModel(arg2, "createTime")
	local registerVal8 = Engine.GetModelValue(registerVal7)
	MediaManagerSetSlotModel(arg2, false, registerVal8, registerVal6)
end

function MediaManagerEmblemFocusChanged(arg0, arg1, arg2)
	CoD.SetCustomization(arg2, Enum.CustomizationType.CUSTOMIZATION_TYPE_EMBLEM, "type")
	local registerVal4 = arg1:getModel()
	CoD.perController[arg2].selectedEmblemModel = registerVal4
	local registerVal3 = arg1:getModel(arg2, "emblemIndex")
	registerVal4 = Engine.GetModelValue(registerVal3)
	Engine.SetupEmblemData(arg2, registerVal4, CoD.perController[arg2].selectedEmblemTabStorageType)
	local registerVal5 = arg1:getModel(arg2, "authorName")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal7 = arg1:getModel(arg2, "createTime")
	local registerVal8 = Engine.GetModelValue(registerVal7)
	MediaManagerSetSlotModel(arg2, false, registerVal8, registerVal6)
end

function MediaManagerCustomGameFocusChanged(arg0, arg1, arg2)
	SetSelectedCustomGame(arg1, arg2)
	MediaManagerSetSlotModel(arg2, false, "", "")
end

function MediaManagerTheaterFileFocusChanged(arg0, arg1, arg2)
	MediaManagerSetSlotModel(arg2, false, "", "")
	FileshareSetSelectedItem(arg0, arg1, arg2, "")
end

function MediaManagerBuyMoreSlotOnFocus(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "MediaManager", false)
	registerVal4 = Engine.CreateModel(registerVal3, "isBuyMoreSlot", false)
	Engine.SetModelValue(registerVal4, true)
end

function OpenMediaManager(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.FileshareUtility.GetCurrentCategory()
	CoD.FileshareUtility.SetPreviousCategory(registerVal5)
	CoD.FileshareUtility.SetCurrentCategory(arg3)
	local registerVal6 = CoD.GetCustomization(arg2, "weapon_index")
	local registerVal8 = Engine.GetGlobalModel()
	local registerVal7 = Engine.CreateModel(registerVal8, "MediaManager", false)
	registerVal8 = Engine.CreateModel(registerVal7, "previousWeaponIndex", false)
	Engine.SetModelValue(registerVal8, registerVal6)
	MediaManagerClearDisplay(arg0, arg1, arg2)
	OpenOverlay(arg0, "MediaManager", arg2)
end

function GoBackAndOpenMediaManagerOnParent(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.FileshareUtility.GetCurrentCategory()
	CoD.FileshareUtility.SetPreviousCategory(registerVal5)
	if arg3 ~= nil and arg3 ~= "" then
		CoD.FileshareUtility.SetCurrentCategory(arg3)
	end
	local registerVal6 = CoD.GetCustomization(arg2, "weapon_index")
	local registerVal8 = Engine.GetGlobalModel()
	local registerVal7 = Engine.CreateModel(registerVal8, "MediaManager", false)
	registerVal8 = Engine.CreateModel(registerVal7, "previousWeaponIndex", false)
	Engine.SetModelValue(registerVal8, registerVal6)
	MediaManagerClearDisplay(arg0, arg1, arg2)
	GoBackAndOpenOverlayOnParent(arg0, "MediaManager", arg2)
end

function MediaManagerClose(arg0, arg1, arg2)
	if CoD.perController[arg2].wasGunsmithVariantModelNil then
		CoD.perController[arg2].gunsmithVariantModel = nil
		CoD.perController[arg2].wasGunsmithVariantModelNil = nil
	end
	if CoD.perController[arg2].wasSelectedPaintjobModelNil then
		CoD.perController[arg2].selectedpaintjobModel = nil
		CoD.perController[arg2].wasSelectedPaintjobModelNil = nil
	end
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "MediaManager", false)
	registerVal4 = Engine.CreateModel(registerVal3, "previousWeaponIndex", false)
	local registerVal5 = CoD.FileshareUtility.GetPreviousCategory()
	CoD.FileshareUtility.SetCurrentCategory(registerVal5)
	CoD.FileshareUtility.SetDirty()
	local registerVal6 = Engine.GetModelValue(registerVal4)
	CoD.SetCustomization(arg2, registerVal6, "weapon_index")
	CoD.CraftUtility.Gunsmith.DisplayBaseWeapon(arg0, arg1, arg2)
	local registerVal8 = Engine.GetModelForController(arg2)
	local registerVal7 = Engine.CreateModel(registerVal8, "Gunsmith.VariantList.ForceUpdate")
	Engine.ForceNotifyModelSubscriptions(registerVal7)
end

function MediaManagerReloadWeaponModelIfNeeded(arg0)
	if CoD.perController[arg0].gunsmithVariantModel then
		local registerVal4 = Engine.GetModelForController(arg0)
		local registerVal3 = Engine.GetModel(registerVal4, "Gunsmith.Mode")
		Engine.SetModelValue(registerVal3, Enum.GunsmithMode.GUNSMITHMODE_VARIANTS)
		CoD.CraftUtility.Gunsmith.DisplayWeaponWithVariant(arg0, CoD.perController[arg0].gunsmithVariantModel)
	end
	if CoD.perController[arg0].selectedpaintjobModel then
		local registerVal5 = Engine.GetModelForController(arg0)
		registerVal4 = Engine.GetModel(registerVal5, "Paintshop.Mode")
		Engine.SetModelValue(registerVal4, Enum.PaintshopMode.PAINTSHOPMODE_PAINTJOBS)
		CoD.perController[arg0].viewIndex = 1.000000
		registerVal4 = Engine.GetModel(CoD.perController[arg0].selectedpaintjobModel, "paintjobSlot")
		registerVal5 = Engine.GetModelValue(registerVal4)
		local registerVal6 = Engine.GetModel(CoD.perController[arg0].selectedpaintjobModel, "paintjobIndex")
		local registerVal7 = Engine.GetModelValue(registerVal6)
		CoD.CraftUtility.Gunsmith.DisplayWeaponWithPaintjob(arg0, registerVal7, registerVal5)
	end
end

function MediaManagerFetchEmblemsData(arg0)
	CoD.CraftUtility.Emblems.CachedEmblems = {}
	CoD.CraftUtility.Emblems.CachedEmblemIndexMapping = {}
	CoD.perController[arg0].selectedEmblemTabStorageType = Enum.StorageFileType.STORAGE_EMBLEMS
	local registerVal1 = CoD.CraftUtility.Emblems.ParseDDL(arg0, CoD.perController[arg0].selectedEmblemTabStorageType)
end

function MediaManagerUpdateLocalData(arg0)
	MediaManagerFetchPaintjobsData(arg0)
	MediaManagerFetchVariantsData(arg0)
	MediaManagerFetchEmblemsData(arg0)
end

function PaintjobSelector_GainFocus(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	CoD.perController[arg2].selectedpaintjobModel = registerVal4
	CoD.perController[arg2].viewIndex = 1.000000
	registerVal4 = arg1:getModel(arg2, "paintjobSlot")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	local registerVal6 = arg1:getModel(arg2, "paintjobIndex")
	local registerVal7 = Engine.GetModelValue(registerVal6)
	CoD.CraftUtility.Gunsmith.DisplayWeaponWithPaintjob(arg2, registerVal7, registerVal5)
end

function PaintjobSelector_ChoosePaintjob(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "paintjobSlot")
	local registerVal4 = arg1:getModel(arg2, "paintjobIndex")
	local registerVal6 = arg1:getModel()
	CoD.perController[arg2].selectedpaintjobModel = registerVal6
	if registerVal3 and registerVal4 then
		local registerVal5 = Engine.GetModelValue(registerVal4)
		registerVal6 = Engine.GetModelValue(registerVal3)
		Engine.SetupPaintjobData(arg2, registerVal6, registerVal5)
	end
	CoD.perController[arg2].viewIndex = 1.000000
	CoD.SetCustomization(arg2, CoD.Paintshop.View[CoD.perController[arg2].viewIndex].customization_type, "type")
	CoD.SetCustomization(arg2, CoD.Paintshop.View[CoD.perController[arg2].viewIndex].view_string_ref, "view_string_ref")
	local registerVal8 = CoD.GetCustomization(arg2, "weapon_index")
	Engine.SetupEmblemEditBuffer(arg2, CoD.Paintshop.View[CoD.perController[arg2].viewIndex].customization_type, registerVal8)
	CoD.CraftUtility.DisplayWeaponInPaintshop(arg2, CoD.Paintshop.View[CoD.perController[arg2].viewIndex].view_name)
	Engine.SendMenuResponse(arg2, "paintshop_light", "far")
	CoD.SetEditorProperties(arg2, Enum.CustomizationEditorMode.CUSTOMIZATION_EDITOR_MODE_BROWSE, "editorMode")
end

function FileshareOpenPreviousPublishMenu(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.FileshareUtility.GetCurrentCategory()
	if registerVal4 == "paintjob" then
		CoD.CraftUtility.OpenPublishPromptPaintjob(arg0, arg1, arg2, nil, arg3)
	else
		if registerVal4 == "emblem" then
			CoD.CraftUtility.OpenPublishPromptEmblem(arg0, arg1, arg2, nil, arg3)
		else
			if registerVal4 == "variant" then
				CoD.CraftUtility.OpenPublishPromptGunsmith(arg0, arg1, arg2, nil, arg3)
			end
		end
	end
end

function FileshareOpenFullscreenView(arg0, arg1, arg2, arg3)
	if arg1.gridInfoTable then
		CoD.FileshareUtility.ReportView(arg2, arg1.gridInfoTable.zeroBasedIndex)
	end
	local registerVal4 = FileshareIsCategory(arg2, "screenshot_private")
	registerVal4 = FileshareIsCategory(arg2, "screenshot")
	registerVal4 = IsFileshareCategoryScreenshot(arg0, arg1, arg2)
	if not registerVal4 and not arg1 or registerVal4 then
		local registerVal5 = arg1:getModel()
		CoD.Menu.ModelToUse = registerVal5
		OpenOverlay(arg0, "Fileshare_ScreenshotDetailsView", arg2)
		CoD.Menu.ModelToUse = nil
	else
		OpenOverlay(arg0, "Fileshare_DetailsView", arg2)
	end
end

function FilesharePublish(arg0, arg1, arg2)
	CoD.FileshareUtility.Publish(arg0, arg2)
end

function FilesharePrivateUpload(arg0, arg1, arg2)
	CoD.FileshareUtility.PrivateUpload(arg2)
end

function FileshareDownload(arg0, arg1, arg2)
	CoD.FileshareUtility.Download(arg2)
end

function SteamWorkshopPublish(arg0, arg1, arg2)
	CoD.SteamWorkshopUtility.Publish(arg0, arg1, arg2)
end

function SteamWorkshopOpenAgreement(arg0, arg1, arg2)
	CoD.SteamWorkshopUtility.OpenAgreement(arg0, arg1, arg2)
end

function SteamWorkshopOpenFAQ(arg0, arg1, arg2)
	CoD.SteamWorkshopUtility.OpenFAQ(arg0, arg1, arg2)
end

function SteamWorkshopOpenItem(arg0, arg1, arg2)
	CoD.SteamWorkshopUtility.OpenItemOnSteam(arg0, arg1, arg2)
end

function SteamWorkshopViewWorkshop(arg0, arg1, arg2)
	CoD.SteamWorkshopUtility.ViewWorkshop(arg0, arg1, arg2)
end

function PaintjobSelector_ClearPaintjob(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedpaintjobModel, "paintjobSlot"))
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedpaintjobModel, "paintjobIndex"))
	CoD.CraftUtility.Paintjobs.ClearPaintjob(arg2, registerVal5, registerVal6)
	CoD.CraftUtility.Paintjobs.ParseDDL(arg2, Enum.StorageFileType.STORAGE_PAINTJOBS)
	local registerVal7 = IsMediaManager()
	if registerVal7 == true then
		GoBackMultiple(arg0, arg2, 1.000000)
		MediaManagerMarkDirty(arg2)
	else
		registerVal7 = GoBackMultiple(arg0, arg2, 2.000000)
		if registerVal7.paintjobSelector ~= nil then
			registerVal7.paintjobSelector.paintjobsList:updateDataSource(true)
			local registerVal8 = registerVal7.paintjobSelector.paintjobsList:getFirstSelectableItem()
			registerVal7.paintjobSelector.paintjobsList:setActiveItem(registerVal8)
		end
	end
	registerVal8 = Engine.GetModelForController(arg2)
	registerVal7 = Engine.GetModel(registerVal8, "Paintshop.UpdateDataSource")
	if registerVal7 ~= nil then
		ForceNotifyModel(arg2, "Paintshop.UpdateDataSource")
	end
end

function PaintjobSelector_CopyPaintjob(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = arg4:getModel()
	local registerVal6, registerVal7 = CoD.CraftUtility.Paintjobs.Copy(arg2, registerVal5)
	if registerVal6 and registerVal7 then
		CoD.CraftUtility.Paintjobs.ParseDDL(arg2, Enum.StorageFileType.STORAGE_PAINTJOBS)
		CoD.CraftUtility.InvalidateWCItemRender(registerVal6, registerVal7)
		local registerVal8 = GoBack(arg4, arg2)
		registerVal8.paintjobSelector.paintjobsList:updateDataSource(true)
		local registerVal12 = {}
		registerVal12.paintjobSlot = registerVal6
		registerVal12.paintjobIndex = registerVal7
		local registerVal10 = registerVal8.paintjobSelector.paintjobsList:findItem(registerVal12)
		if registerVal10 then
			registerVal8.paintjobSelector.paintjobsList:setActiveItem(registerVal10)
		end
		ForceNotifyModel(arg2, "Paintshop.UpdateDataSource")
	end
end

function PaintjobSelector_RenamePaintjob(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "paintjobSlot"))
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal3, "paintjobIndex"))
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal3, "paintjobName"))
	CoD.CraftUtility.Paintjobs.RenamePaintjob(arg2, registerVal4, registerVal5, registerVal6)
end

function PaintjobSelector_HandleRenameKeyboardComplete(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	if not registerVal4 then
		return 
	end
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_PAINTJOB then
		local registerVal6 = Engine.GetModel(registerVal4, "paintjobName")
	end
	if registerVal6 then
		Engine.SetModelValue(registerVal6, arg3.input)
	end
end

function PaintjobEditor_OpenSavePopup(arg0, arg1, arg2, arg3)
	CoD.OverlayUtility.CreateOverlay(arg2, arg0, "PaintjobSave", CoD.perController[arg2].selectedpaintjobModel)
end

function PaintjobEditor_ToggleGrid(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.CraftUtility.GetGridTypeName(arg2)
	local registerVal6 = IsGridOn(arg2, registerVal4)
	if not registerVal6 then
		registerVal6 = CoD.CraftUtility.GetGridSize(arg2)
	end
	SetProfileVar(arg2, registerVal4, registerVal6)
	registerVal6 = CoD.GetCustomization(arg2, "type")
	Engine.ExecNow(arg2, ("emblemSetGridSize " .. registerVal6 .. " " .. registerVal6))
	EmblemEditor_BeginEdit(arg0, arg1, arg2)
	GoBack(arg0, arg2)
end

function PaintjobEditor_RemoveGrid(arg0)
	local registerVal1 = CoD.GetCustomization(arg0, "type")
	Engine.ExecNow(arg0, ("emblemSetGridSize " .. registerVal1 .. " 0"))
end

function PaintjobEditor_RestoreGridState(arg0)
	local registerVal1 = CoD.GetCustomization(arg0, "type")
	local registerVal2 = CoD.CraftUtility.GetGridTypeName(arg0)
	local registerVal3 = Engine.GetProfileVarInt(arg0, registerVal2)
	Engine.ExecNow(arg0, ("emblemSetGridSize " .. registerVal1 .. " " .. registerVal3))
end

function PaintjobEditor_ChangeViewRightBumper(arg0, arg1, arg2)
	local registerVal3 = CoD.CraftUtility.Paintjobs.GetNextViewIndex(arg2)
	CoD.perController[arg2].viewIndex = registerVal3
	CoD.SetCustomization(arg2, CoD.Paintshop.View[registerVal3].customization_type, "type")
	CoD.SetCustomization(arg2, CoD.Paintshop.View[registerVal3].view_string_ref, "view_string_ref")
	local registerVal7 = CoD.GetCustomization(arg2, "weapon_index")
	Engine.SetupEmblemEditBuffer(arg2, CoD.Paintshop.View[registerVal3].customization_type, registerVal7)
	CoD.CraftUtility.DisplayWeaponInPaintshop(arg2, CoD.Paintshop.View[registerVal3].view_name)
	arg0.layerCarousel:updateDataSource()
end

function PaintjobEditor_ChangeViewLeftBumper(arg0, arg1, arg2)
	local registerVal3 = CoD.CraftUtility.Paintjobs.GetPrevViewIndex(arg2)
	CoD.perController[arg2].viewIndex = registerVal3
	CoD.SetCustomization(arg2, CoD.Paintshop.View[registerVal3].customization_type, "type")
	CoD.SetCustomization(arg2, CoD.Paintshop.View[registerVal3].view_string_ref, "view_string_ref")
	local registerVal7 = CoD.GetCustomization(arg2, "weapon_index")
	Engine.SetupEmblemEditBuffer(arg2, CoD.Paintshop.View[registerVal3].customization_type, registerVal7)
	CoD.CraftUtility.DisplayWeaponInPaintshop(arg2, CoD.Paintshop.View[registerVal3].view_name)
	arg0.layerCarousel:updateDataSource()
end

function PaintjobEditor_HandleKeyboardComplete(arg0, arg1, arg2, arg3)
	if not CoD.perController[arg2].selectedpaintjobModel then
		return 
	end
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_PAINTJOB then
		local registerVal6 = Engine.GetModel(CoD.perController[arg2].selectedpaintjobModel, "paintjobTextEntry")
		if registerVal6 then
			Engine.SetModelValue(registerVal6, arg3.input)
		end
		registerVal6 = arg0:getModel(arg2, "inputText")
		if registerVal6 then
			Engine.SetModelValue(registerVal6, arg3.input)
		end
	end
end

function PaintjobEditor_SavePaintjob(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(arg3, "paintjobTextEntry"))
	local registerVal5 = Engine.GetModel(arg3, "paintjobName")
	local registerVal6 = MediaManagerGetQuotaForCategory(arg2, "paintjob")
	Engine.SetModelValue(registerVal5, registerVal4)
	CoD.CraftUtility.Paintjobs.UploadPaintjob(arg2, arg3)
	CoD.CraftUtility.Paintjobs.ParseDDL(arg2, Enum.StorageFileType.STORAGE_PAINTJOBS)
	CoD.CraftUtility.Paintjobs.InvalidateRender(arg2, arg3)
	PaintJobEditor_RecordComScoreEvent(arg0, arg2, arg3, "save", registerVal6.categorySlotsUsed, registerVal6.categoryQuota)
	local registerVal7 = GoBack(arg0, arg2)
	EmblemEditor_HandleBackInBrowseMode(registerVal7, arg1, arg2)
	ClearSavedState(registerVal7, arg2)
end

function PaintjobEditor_DiscardChanges(arg0, arg1, arg2, arg3)
	local registerVal4 = GoBack(arg0, arg2)
	PaintJobEditor_RecordComScoreEvent(arg0, arg2, arg3, "discard")
	EmblemEditor_HandleBackInBrowseMode(registerVal4, arg1, arg2)
	ClearSavedState(registerVal4, arg2)
end

function PaintjobEditor_SaveChangesBack(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(arg3, "weaponIndex"))
	if registerVal4 == CoD.CraftUtility.Paintjobs.EMPTY_PAINTJOB_SLOT_WEAPON_INDEX then
		local registerVal5 = Engine.GetModel(arg3, "paintjobTextEntry")
		Engine.SetModelValue(registerVal5, "Paintjob")
	end
end

function HandleSocialMenuBack(arg0, arg1, arg2)
	local registerVal3 = IsLobbyHost()
	registerVal3 = IsGlobalModelValueTrue(arg1, arg2, "SocialMainMenu.managePartySubListSelected")
	if registerVal3 and registerVal3 then
		return 
	end
	local registerVal5 = Engine.GetGlobalModel()
	registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "socialRoot.tab"))
	if registerVal3 == "groups" then
		registerVal5 = Engine.GetModelForController(arg2)
		registerVal3 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "groups.frameType"))
		if registerVal3 == "invites" or registerVal3 == "members" then
			GroupsSocialChangeTabFrameWidget(arg0, arg1, arg2, "main")
			return 
		end
	end
	registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.CreateModel(registerVal5, "socialRoot.tab")
	Engine.SetModelValue(registerVal4, "friends")
	registerVal5 = Engine.GetModelForController(arg2)
	registerVal4 = Engine.CreateModel(registerVal5, "groups.highlightGroupsTabInSocial")
	Engine.SetModelValue(registerVal4, false)
	registerVal5 = Engine.GetModelForController(arg2)
	registerVal4 = Engine.CreateModel(registerVal5, "groups.frameType")
	Engine.SetModelValue(registerVal4, "")
	GoBack(arg0, arg2)
	ClearSavedState(arg0, arg2)
end

function SetSocialTab(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "socialRoot")
	registerVal4 = Engine.GetModel(registerVal3, "tab")
	Engine.SetModelValue(registerVal4, arg1.tabId)
end

function FetchOnlineFriendsData(arg0, arg1, arg2)
	if friends == arg1.tabId then
		Engine.UpdateFriends(arg2, Enum.PresenceFilter.PRESENCE_FILTER_ONLINE_AND_IN_TITLE)
	end
end

function OpenPlatformProfile(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal6 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "Social.selectedFriendXUID"))
	local registerVal7 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "Social.selectedFriendGamertag"))
	Engine.ShowPlatformProfile(arg2, registerVal6, registerVal7)
end

function OpenPlatformFriendRequest(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal6 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "Social.selectedFriendXUID"))
	local registerVal7 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "Social.selectedFriendGamertag"))
	Engine.ShowPlatformFriendRequest(arg2, registerVal6, registerVal7)
end

function SocialJoin(arg0, arg1, arg2, arg3, arg4)
	CoD.CACUtility.ValidateMPLootWeapons(arg2)
	local registerVal5 = Engine.IsInGame()
	if registerVal5 then
		registerVal5 = Engine.LobbyIsPlayerInLobby(Enum.LobbyType.LOBBY_TYPE_GAME, arg3.xuid)
		if not registerVal5 then
			registerVal5 = CoDShared.QuitGame(arg2)
			arg3.migrating = (not registerVal5)
			Engine.LobbyVM_CallFunc("InGameJoin", arg3)
		else
			Engine.LobbyVM_CallFunc("Join", arg3)
		end
	end
	registerVal5 = GoBack(arg0, arg2)
	GoBackToMenu(registerVal5, arg2, "Lobby")
end

function CacheSocialOnlinePlayersListModels(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "socialRoot")
	registerVal4 = Engine.CreateModel(registerVal3, "tab")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal5 == "party" then
		local registerVal6 = Engine.GetUserPartyInfo(arg2)
		local registerVal7 = Engine.CreateModel(registerVal3, "party")
		local registerVal8 = Engine.CreateModel(registerVal7, "available")
		Engine.SetModelValue(registerVal8, registerVal6.available)
		if registerVal6 ~= nil and #registerVal6.members then
			for index9=1.000000, #registerVal6.members, 1.000000 do
				local registerVal13 = Engine.CreateModel(registerVal7, ("pm_" .. index9))
				local registerVal14 = Engine.CreateModel(registerVal13, "gamertag")
				Engine.SetModelValue(registerVal14, registerVal6.members[index9].gamertag)
			end
		end
		return 
	end
	if arg0.cacheRootModel ~= nil then
	else
		registerVal14 = Engine.GetGlobalModel()
		registerVal13 = Engine.GetModel(registerVal14, "socialRoot")
		registerVal14 = Engine.CreateModel(registerVal13, "cache")
		local registerVal15 = Engine.CreateModel(registerVal14, "xuid")
		registerVal15 = Engine.CreateModel(registerVal13, "party")
		registerVal15 = Engine.CreateModel(registerVal15, "update")
		registerVal15 = Engine.CreateModel(registerVal15, "total")
		registerVal15 = Engine.CreateModel(registerVal15, "available")
		registerVal15 = Engine.CreateModel(registerVal15, "leader")
		Engine.SetModelValue(registerVal15, Engine.StringToXUIDDecimal("0"))
		for index15=1.000000, 18.000000, 1.000000 do
			local registerVal19 = Engine.CreateModel(registerVal15, ("pm_" .. index15))
			local registerVal20 = Engine.CreateModel(registerVal19, "gamertag")
			{}[index15] = registerVal20
			Engine.SetModelValue({}[index15], "")
		end
	end
	Engine.SetModelValue(registerVal15, arg1.xuid)
	Engine.SetModelValue(registerVal15, arg1.party.total)
	Engine.SetModelValue(registerVal15, arg1.party.available)
	Engine.SetModelValue(registerVal15, arg1.party.leader)
	if arg1.party ~= nil and arg1.party.members ~= nil then
		for index13=1.000000, #registerVal15, 1.000000 do
			if arg1.party.members[index13] ~= nil then
				Engine.SetModelValue({}[index13], arg1.party.members[index13].gamertag)
			end
		end
		registerVal13 = Engine.GetModelValue(registerVal15)
		if registerVal13 < 100000.000000 then
		else
		end
		Engine.SetModelValue(registerVal15, 0.000000)
	end
end

function CacheLobbyMemberPlayerInfoDetails(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "socialRoot")
	local registerVal6 = arg1:getModel()
	registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal6, "xuid"))
	local registerVal5 = Engine.CreateModel(registerVal3, "party")
	registerVal6 = Engine.GetLobbyMemberPartyInfo(arg2, registerVal4)
	local registerVal7 = Engine.CreateModel(registerVal5, "available")
	Engine.SetModelValue(registerVal7, registerVal6.available)
	if registerVal6 ~= nil and #registerVal6.members then
		for index8=1.000000, #registerVal6.members, 1.000000 do
			local registerVal12 = Engine.CreateModel(registerVal5, ("pm_" .. index8))
			local registerVal13 = Engine.CreateModel(registerVal12, "gamertag")
			Engine.SetModelValue(registerVal13, registerVal6.members[index8].gamertag)
		end
	end
end

function ShowcaseOpenPlayerDetails(arg0, arg1, arg2)
	ShowcaseSetSelectedFriendXUID(arg0, arg1, arg2, true)
	GoBackAndOpenOverlayOnParent(arg0, "Social_PlayerDetailsPopup", arg2)
end

function SetSelectedFriendXUID(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel(arg2, "xuid")
	if arg1 ~= nil and registerVal4 ~= nil then
		local registerVal5 = Engine.GetModelValue(registerVal4)
		registerVal5 = Engine.GetModelForController(arg2)
		local registerVal6 = Engine.CreateModel(registerVal5, "Social.selectedFriendXUID")
		Engine.SetModelValue(registerVal6, registerVal5)
		local registerVal7 = arg1:getModel(arg2, "gamertag")
		local registerVal8 = Engine.GetModelValue(registerVal7)
		local registerVal9 = Engine.CreateModel(registerVal5, "Social.selectedFriendGamertag")
		Engine.SetModelValue(registerVal9, registerVal8)
		local registerVal10 = Engine.UInt64ToString(registerVal5)
		if registerVal10 == "fefefefefefefefe" then
			local registerVal12 = Engine.GetModelForController(arg2)
			local registerVal11 = Engine.CreateModel(registerVal12, "socialPlayerInfo.identityBadge")
			local registerVal13 = Engine.CreateModel(registerVal11, "gamertag")
			Engine.SetModelValue(registerVal13, registerVal8)
			registerVal13 = Engine.CreateModel(registerVal11, "clantag")
			Engine.SetModelValue(registerVal13, "")
		end
		registerVal11 = arg1:getModel(arg2, "activity")
		if registerVal11 ~= nil then
			registerVal12 = Engine.GetModelValue(registerVal11)
			registerVal13 = Engine.CreateModel(registerVal5, "Social.selectedFriendInTitle")
			if Enum.PresenceActivity.PRESENCE_ACTIVITY_ONLINE_NOT_IN_TITLE >= registerVal12 then
			end
			Engine.SetModelValue(registerVal13, true)
		end
		registerVal12 = Engine.CreateModel(registerVal5, "Social.hideSelectedFriendShowcase")
		Engine.SetModelValue(registerVal12, false)
	end
end

function SocialToggleSorting(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "socialRoot")
	registerVal4 = Engine.GetModel(registerVal3, "sort")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal5 == Enum.PresenceSorting.PRESENCE_SORTING_ONLINE_MOST_RECENT then
		Engine.SetModelValue(registerVal4, Enum.PresenceSorting.PRESENCE_SORTING_ALPHABETICAL)
		Engine.SortFriends(arg2, Enum.PresenceSorting.PRESENCE_SORTING_ALPHABETICAL)
	else
		if registerVal5 == Enum.PresenceSorting.PRESENCE_SORTING_ALPHABETICAL then
			Engine.SetModelValue(registerVal4, Enum.PresenceSorting.PRESENCE_SORTING_ONLINE_MOST_RECENT)
			Engine.SortFriends(arg2, Enum.PresenceSorting.PRESENCE_SORTING_ONLINE_MOST_RECENT)
		end
	end
end

function SocialEnablePresenceCacheAutoupdate(arg0, arg1)
	if Engine.EnablePresenceCacheAutoupdate ~= nil then
		Engine.EnablePresenceCacheAutoupdate(arg0, arg1)
	end
end

function UpdateFriends(arg0, arg1, arg2)
	Engine.UpdateFriends(arg2, Enum.PresenceFilter.PRESENCE_FILTER_ONLINE_AND_IN_TITLE)
end

function SetFriendsTabName(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.CreateModel(registerVal3, "friends")
	local registerVal5 = Engine.CreateModel(registerVal4, "tab")
	Engine.SetModelValue(registerVal5, arg1.tabId)
end

function UpdateFriendsData(arg0, arg1, arg2)
	if friends == arg1.tabId then
		Engine.UpdateFriends(arg2, 2.000000)
	else
		if inbox == arg1.tabId then
			Engine.UpdateMessages(arg2, 1.000000)
		end
	end
end

function FriendsInboxOnMessageClick(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "xuid"))
	if registerVal3 ~= nil then
		Engine.ReadMessages(arg2, 0.000000)
	end
end

function SetPrimaryGroup(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "name"))
	Engine.SetPrimaryGroup(arg2, registerVal3)
	Engine.SetPrimaryGroupName(arg2, registerVal4)
	local registerVal6 = arg0:getParentMenu()
	OpenGenericSmallPopup(registerVal6, arg2, "GROUPS_NOTICE_CAPS", "GROUPS_PRIMARY_GROUP_SET", nil, "MENU_OK", nil, nil)
	local registerVal7 = Engine.GetModelForController(arg2)
	Engine.ForceNotifyModelSubscriptions(Engine.CreateModel(registerVal7, "groups.groupCount_self"))
	GoBack(arg0, arg2)
end

function GroupInvitesGoBack(arg0, arg1, arg2)
	local function __FUNC_6F372_(arg0, arg1, arg2)
		Engine.ClearLastGroupSearchResults(arg2)
		GoBack(arg0, arg2)
	end

	local registerVal4 = Engine.FetchingGroupPublicProfiles()
	if registerVal4 then
		OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "fetch_profiles_task_complete", __FUNC_6F372_, true, __FUNC_6F372_)
	else
		__FUNC_6F372_(arg0, arg1, arg2)
	end
end

function GetProcessingGroupTaskModel(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal1, "groups")
	local registerVal3 = Engine.CreateModel(registerVal2, "processingTask")
	return registerVal3
end

function GetCloseAutomaticallyModelForGroupsNotifyPoup(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	return Engine.GetModel(registerVal2, "groups.closeAutomaticallyAfterEvent")
end

function ProcessGroupApplication(arg0, arg1, arg2)
	local registerVal5 = arg0:getParentMenu()
	local registerVal12 = {}
	registerVal12 = {"MENU_ACCEPT", "GROUPS_REJECT_JOIN_REQUEST", "MENU_CANCEL"}
	local function __FUNC_6F6FC_(arg3)
		local registerVal1 = arg1:getModel()
		registerVal1 = arg1:getModel(arg2, "xuid")
		if registerVal1 and registerVal1 then
			registerVal1 = Engine.GetModelValue(arg1:getModel(arg2, "xuid"))
			if arg3 == 0.000000 then
				Engine.AcceptSelectedGroupApplication(arg2, registerVal1)
				OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "accept_application_task_complete")
			else
				if arg3 == 1.000000 then
					Engine.RejectSelectedGroupApplication(arg2, registerVal1)
					OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "reject_application_task_complete")
				end
			end
		end
		return true
	end

	registerVal5:OpenModalDialog(arg0, arg2, "GROUPS_JOIN_REQUEST_CAPS", "GROUPS_ACCEPT_JOIN_REQUEST", registerVal12, __FUNC_6F6FC_)
end

function ProcessLeaveSelectedGroup(arg0, arg1, arg2, arg3)
	local registerVal7 = IsGroupOwner(arg2)
	if registerVal7 then
	end
	registerVal7 = arg0:getParentMenu()
	local registerVal14 = {}
	registerVal14 = {"MPUI_NO", "MPUI_YES"}
	local function __FUNC_6FAC7_(arg4)
		if arg4 == 1.000000 then
			local registerVal1 = IsGroupOwner(arg2)
			if not true and registerVal1 then
				ProcessLeaveSelectedGroup(registerVal7, arg1, arg2, arg3)
				return true
			end
			registerVal1 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
			Engine.LeaveGroup(arg2, registerVal1)
			local function __FUNC_6FD01_(arg0, arg1, arg2)
				local registerVal5 = Engine.GetModelForController(arg2)
				local registerVal4 = Engine.CreateModel(registerVal5, "groups.highlightGroupsTabInSocial")
				Engine.SetModelValue(registerVal4, true)
				LUI.CoDMetrics.LeaveGroupEvent(arg2, registerVal1, true)
				ClearSelectedGroup(arg0, arg1, arg2)
				if not arg3 then
					GoBack(registerVal7, arg2)
				end
			end

			OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "leave_group_task_complete", __FUNC_6FD01_)
		end
		return true
	end

	registerVal7:OpenModalDialog(arg0, arg2, "GROUPS_DELETE_GROUP_CAPS", "GROUPS_DELETE_SELECTED_GROUP_TITLE", registerVal14, __FUNC_6FAC7_)
end

function OpenGroupOptionsPopup(arg0, arg1, arg2)
	OpenPopup(arg0, "GroupOptions", arg2)
end

function OpenGroupFriendsPopup(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "groupId"))
	Engine.FilterFriendsInGroup(arg2, registerVal3)
	OpenPopup(arg0, "GroupFriends", arg2)
end

function OpenGroupAdminOptionsPopupForGroupMember(arg0, arg1, arg2)
	OpenPopup(arg0, "GroupAdminOptions", arg2)
end

function SetGroupInvitePlayerModels(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if not registerVal3 then
		return 
	end
	registerVal3 = arg1:getModel(arg2, "sentByXuid")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal7 = Engine.GetModelForController(arg2)
		local registerVal6 = Engine.CreateModel(registerVal7, "groups.groupInvites.sentByXuid")
		Engine.SetModelValue(registerVal6, registerVal4)
	end
	registerVal4 = arg1:getModel(arg2, "sentByGamertag")
	if registerVal4 then
		local registerVal5 = Engine.GetModelValue(registerVal4)
		local registerVal8 = Engine.GetModelForController(arg2)
		registerVal7 = Engine.CreateModel(registerVal8, "groups.groupInvites.sentByGamertag")
		Engine.SetModelValue(registerVal7, registerVal5)
	end
end

function OpenGroupsInviteConfirmation(arg0, arg1, arg2)
	if not arg0.menuName then
		local registerVal4 = arg0:getParentMenu()
	end
	registerVal4 = arg1:getModel()
	registerVal4 = arg1:getModel(arg2, "groupId")
	if registerVal4 and registerVal4 then
		registerVal4 = Engine.GetModelValue(arg1:getModel(arg2, "groupId"))
		local registerVal5 = Engine.GetModelValue(arg1:getModel(arg2, "groupName"))
		local registerVal8 = Engine.GetModelForController(arg2)
		local registerVal7 = Engine.CreateModel(registerVal8, "groups.selectedGroup.groupId")
		Engine.SetModelValue(registerVal7, registerVal4)
		registerVal8 = Engine.GetModelForController(arg2)
		registerVal7 = Engine.CreateModel(registerVal8, "groups.selectedGroup.groupName")
		Engine.SetModelValue(registerVal7, registerVal5)
		CoD.OverlayUtility.CreateOverlay(arg2, registerVal4, "GroupsInviteConfirmation", arg2)
	end
end

function ShowReportGroupDialog(arg0, arg1, arg2, arg3, arg4)
	if CoD.perController[arg2].selectedGroup then
		local registerVal6 = Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId")
	else
		local registerVal7 = Engine.GetModelForController(arg2)
		registerVal6 = Engine.GetModel(registerVal7, "groups.selectedGroup.groupId")
	end
	registerVal6 = {}
	registerVal6.controller = arg2
	registerVal7 = Engine.GetModelValue(registerVal6)
	registerVal6.groupId = registerVal7
	CoD.OverlayUtility.CreateOverlay(arg2, arg4, "ReportGroup", arg2, arg1, registerVal6)
end

function AcceptGroupInvite(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg2)
	local registerVal3 = Engine.GetModel(registerVal4, "groups.selectedGroup.groupId")
	if registerVal3 then
		Engine.AcceptGroupInvite(arg2, Engine.GetModelValue(registerVal3))
		local function __FUNC_709BB_()
			local registerVal2 = Engine.Localize("GROUPS_INVITE_ACCEPTED")
			CoD.OverlayUtility.ShowToast("Invite", registerVal2, "", LuaEnums.INVITE_TOAST_POPUP_ACCEPTED_ICON)
			registerVal2 = Engine.GetModelValue(registerVal3)
			LUI.CoDMetrics.JoinGroupEvent(arg2, registerVal2, "invite")
			GoBack(arg0, arg2)
		end

		OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "groupsFetched", __FUNC_709BB_, true)
	end
end

function RejectGroupInvite(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg2)
	local registerVal3 = Engine.GetModel(registerVal4, "groups.selectedGroup.groupId")
	if registerVal3 then
		Engine.ClearLastGroupSearchResults(arg2)
		Engine.RejectGroupInvite(arg2, Engine.GetModelValue(registerVal3))
		local function __FUNC_70D91_()
			local registerVal2 = Engine.Localize("GROUPS_INVITE_REJECTED")
			CoD.OverlayUtility.ShowToast("Invite", registerVal2, "", LuaEnums.INVITE_TOAST_POPUP_REJECTED_ICON)
			GoBack(arg0, arg2)
		end

		OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "refreshInvites", __FUNC_70D91_, true)
	end
end

function FetchHighlightedGroupJoinApprovalType(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.IsMainThread()
	if not registerVal4 then
		return 
	end
	local registerVal5 = Engine.GetModelForController(arg2)
	registerVal4 = Engine.GetModel(registerVal5, "groups.lastGroupIdForJoinApprovalFetch")
	if not registerVal4 then
		local registerVal6 = Engine.GetModelForController(arg2)
		registerVal5 = Engine.CreateModel(registerVal6, "groups.lastGroupIdForJoinApprovalFetch")
		Engine.SetModelValue(registerVal5, Engine.StringToXUIDDecimal("0"))
	end
	registerVal6 = arg1:getModel()
	registerVal5 = CoD.SafeGetModelValue(registerVal6, "groupId")
	local registerVal8 = arg1:getModel()
	local registerVal7 = CoD.SafeGetModelValue(registerVal8, "privacy")
	registerVal8 = arg1:getModel(arg2, "joinApprovalType")
	if registerVal7 == Enum.GroupPrivacy.GROUP_PRIVACY_PRIVATE and registerVal8 then
		local registerVal9 = arg1:getModel(arg2, "joinApprovalType")
		Engine.SetModelValue(registerVal9, Enum.GroupJoinApprovalType.GROUP_JOIN_APPROVAL_INVITE_ONLY)
		return 
	end
	registerVal9 = Engine.GetModelValue(registerVal5)
	if registerVal5 and registerVal9 ~= registerVal5 then
		registerVal9 = Engine.FetchGroupJoinApprovalTypeByGroupId(arg2, registerVal5, arg3)
		if registerVal9 then
			Engine.SetModelValue(registerVal5, registerVal5)
		end
		local registerVal10 = Engine.GetModelForController(arg2)
		registerVal9 = Engine.GetModel(registerVal10, "groups.eventUpdate")
		local registerVal11 = Engine.GetModelForController(arg2)
		registerVal10 = Engine.GetModel(registerVal11, "groups.eventName")
		if not arg0.eventUpdateSubscription then
			local function __FUNC_7153F_(arg0)
				local registerVal1 = Engine.GetModelValue(registerVal10)
				if registerVal1 == "fetch_join_approval_type_task_complete" then
					if not arg1.gridInfoTable.parentGrid.activeWidget then
						return 
					end
					local registerVal2 = arg1.gridInfoTable.parentGrid.activeWidget:getModel()
					registerVal2 = arg1.gridInfoTable.parentGrid.activeWidget:getModel(arg2, "joinApprovalType")
					local registerVal3 = arg1.gridInfoTable.parentGrid.activeWidget:getModel(arg2, "groupId")
					local registerVal4 = Engine.GetModelValue(registerVal3)
					local registerVal6 = arg1.gridInfoTable.parentGrid.activeWidget:getModel(arg2, "joinApprovalType")
					local registerVal5 = Engine.SetModelValue(registerVal6, Engine.GetGroupJoinApprovalTypeByGroupId(arg2, registerVal4, arg3))
					if registerVal2 and registerVal3 and registerVal2 and not registerVal5 then
						Engine.ForceNotifyModelSubscriptions(arg1.gridInfoTable.parentGrid.activeWidget:getModel(arg2, "joinApprovalType"))
					end
				end
			end

			registerVal11 = arg0:subscribeToModel(registerVal9, __FUNC_7153F_, false)
			arg0.eventUpdateSubscription = registerVal11
		end
		if not arg0.progressSubscription then
			local registerVal12 = Engine.GetModelForController(arg2)
			registerVal11 = Engine.GetModel(registerVal12, "groups.fetchGroupJoinApprovalTypeInProgress")
			local function __FUNC_7177F_(arg0)
				local registerVal2 = arg1.gridInfoTable.parentGrid.activeWidget:getModel(arg2, "joinApprovalType")
				if arg1.gridInfoTable.parentGrid.activeWidget and registerVal2 then
					Engine.ForceNotifyModelSubscriptions(arg1.gridInfoTable.parentGrid.activeWidget:getModel(arg2, "joinApprovalType"))
				end
			end

			registerVal12 = arg0:subscribeToModel(registerVal11, __FUNC_7177F_, false)
			arg0.progressSubscription = registerVal12
		end
	end
end

function ProcessJoinSelectedGroup(arg0, arg1, arg2)
	local registerVal3 = IsGroupMemberFromElement(arg1, arg2)
	if registerVal3 then
		local registerVal4 = arg0:getParentMenu()
		OpenGenericSmallPopup(registerVal4, arg2, "GROUPS_NOTICE_CAPS", "GROUPS_PART_OF_GROUP", nil, "MENU_OK", nil, nil)
		return 
	end
	registerVal3 = arg1:getModel()
	registerVal3 = arg1:getModel(arg2, "privacy")
	registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "privacy"))
	if registerVal3 and registerVal3 and registerVal3 == Enum.GroupPrivacy.GROUP_PRIVACY_PRIVATE then
		registerVal4 = arg0:getParentMenu()
		OpenGenericSmallPopup(registerVal4, arg2, "GROUPS_NOTICE_CAPS", "GROUPS_CANNOT_JOIN_PRIVATE_GROUP", nil, "MENU_OK", nil, nil)
		return 
	end
	registerVal3 = arg0:getParentMenu()
	Engine.FetchSelectedGroupJoinApprovalType(arg2)
	local function __FUNC_71BA9_()
		local registerVal0 = Engine.GetSelectedGroupJoinApprovalType()
		if registerVal0 == Enum.GroupJoinApprovalType.GROUP_JOIN_APPROVAL_OFF then
			local registerVal6 = {}
			registerVal6 = {"MPUI_YES", "MPUI_NO"}
			local function __FUNC_71E1F_(arg3)
				if arg3 == 0.000000 then
					local registerVal1 = Engine.GetModelValue(arg1:getModel(arg2, "groupBufferType"))
					local registerVal2 = Engine.GetModelValue(arg1:getModel(arg2, "groupId"))
					Engine.JoinGroup(arg2, registerVal1, registerVal2)
					LUI.CoDMetrics.JoinGroupEvent(arg2, registerVal2, "search")
					OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "join_group_task_complete")
				end
				return true
			end

			registerVal3:OpenModalDialog(arg0, arg2, "GROUPS_JOIN_SELECTED_GROUP_TITLE", "", registerVal6, __FUNC_71E1F_)
		else
			registerVal0 = Engine.GetSelectedGroupJoinApprovalType()
			if registerVal0 == Enum.GroupJoinApprovalType.GROUP_JOIN_APPROVAL_ON then
				registerVal6 = {}
				registerVal6 = {"MPUI_YES", "MPUI_NO"}
				local function __FUNC_72015_(arg3)
					if arg3 == 0.000000 then
						Engine.SendApplicationToSelectedGroup(arg2)
						local registerVal2 = arg1:getModel()
						local registerVal1 = CoD.SafeGetModelValue(registerVal2, "groupId")
						if registerVal1 ~= nil then
							LUI.CoDMetrics.JoinGroupEvent(arg2, registerVal1, "application")
						end
						OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "send_application_task_complete")
					end
					return true
				end

				registerVal3:OpenModalDialog(arg0, arg2, "GROUPS_SEND_APPLICATION", "GROUPS_SEND_APPLICATION_DESC", registerVal6, __FUNC_72015_)
			end
		end
	end

	OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "fetch_join_approval_type_task_complete", __FUNC_71BA9_, true)
end

function GroupInvitesOpenPlayerDetails(arg0, arg1, arg2)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "groups.groupInvites.sentByXuid"))
	local registerVal6 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal6, "groups.groupInvites.sentByGamertag"))
	registerVal5 = Engine.GetModelForController(arg2)
	registerVal6 = Engine.CreateModel(registerVal5, "Social.selectedFriendXUID")
	local registerVal7 = Engine.CreateModel(registerVal5, "Social.selectedFriendGamertag")
	Engine.SetModelValue(registerVal6, registerVal3)
	Engine.SetModelValue(registerVal7, registerVal4)
	GoBackAndOpenOverlayOnParent(arg0, "Social_PlayerDetailsPopup", arg2)
end

function HandleGroupHeadquartersKeyboardComplete(arg0, arg1, arg2, arg3)
	if not CoD.perController[arg2].selectedGroup then
		return 
	end
	local registerVal6 = arg1:getModel()
	registerVal6 = arg1:getModel(arg2, "currentText")
	if registerVal6 and registerVal6 then
		local registerVal7 = arg1:getModel(arg2, "currentText")
		Engine.SetModelValue(registerVal7, arg3.input)
	end
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_GROUP_NAME then
		Engine.SetSelectedGroupName(arg2, arg3.input)
		local function __FUNC_72932_(arg0, arg1, arg2)
			local registerVal5 = Engine.GetModelForController(arg2)
			local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "groups.notificationError"))
			if registerVal3 then
				OpenGroupsNotifyPopup(arg0, arg1, arg2)
			else
				local registerVal4 = Engine.GetModel(CoD.perController[arg2].selectedGroup, "name")
				Engine.SetModelValue(registerVal4, arg3.input)
			end
		end

		OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "update_group_name_task_complete", __FUNC_72932_, true)
	else
		if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_GROUP_MESSAGE then
			Engine.SetSelectedGroupMessage(arg2, arg3.input)
			registerVal7 = Engine.GetModel(CoD.perController[arg2].selectedGroup, "message")
			Engine.SetModelValue(registerVal7, arg3.input)
		else
			if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_GROUP_DESCRIPTION then
				Engine.SetSelectedGroupDescription(arg2, arg3.input)
				registerVal7 = Engine.GetModel(CoD.perController[arg2].selectedGroup, "description")
				Engine.SetModelValue(registerVal7, arg3.input)
			end
		end
	end
end

function HandleGroupsKeyboardComplete(arg0, arg1, arg2, arg3)
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_GROUP_SEARCH_NAME then
		local registerVal6 = Engine.GetModelForController(arg2)
		local registerVal5 = Engine.GetModel(registerVal6, "groups.searchGroupsGroupName")
		Engine.SetModelValue(registerVal5, arg3.input)
	else
		if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_GROUP_PLAYER_SEARCH then
			registerVal6 = Engine.GetModelForController(arg2)
			registerVal5 = Engine.GetModel(registerVal6, "groups.searchGroupsPlayerName")
			Engine.SetModelValue(registerVal5, arg3.input)
		end
	end
end

function EditSelectedGroupName(arg0, arg1, arg2)
	ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_GROUP_NAME")
end

function EditSelectedGroupMessage(arg0, arg1, arg2)
	MarkGroupDataDirty(arg2, "message", true)
	ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_GROUP_MESSAGE")
end

function EditSelectedGroupDescription(arg0, arg1, arg2)
	MarkGroupDataDirty(arg2, "description", true)
	ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_GROUP_DESCRIPTION")
end

function OpenGroupHeadquarters(arg0, arg1, arg2)
	if not CoD.perController[arg2].selectedGroup then
		return 
	end
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
	local registerVal5 = arg0:getParentMenu()
	NavigateToMenu(registerVal5, "GroupHeadquarters", true, arg2)
	local registerVal6, registerVal7, registerVal8, registerVal9, registerVal10, registerVal11 = Engine.GetGroupLeaderboardInfo()
	SetGroupLeaderboardInfo(arg2, registerVal6, registerVal7, registerVal8, registerVal9, registerVal10, registerVal11, true)
	local registerVal12 = IsGroupLeaderboardAvailable()
	if registerVal12 then
		Engine.LoadLeaderboard(registerVal6, registerVal7)
		Engine.RequestLeaderboardData(arg2, Enum.LbFilter.LB_FILTER_GROUP_MEMBERS)
	end
	Engine.SetCurrentlyOpenedGroup(registerVal4)
	local registerVal14 = Engine.GetModelForController(arg2)
	local registerVal13 = Engine.CreateModel(registerVal14, "groups.disableViewGroups")
	Engine.SetModelValue(registerVal13, true)
end

function ClearCurrentlyOpenedGroup(arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "groups.disableViewGroups")
	Engine.SetModelValue(registerVal2, false)
	Engine.SetCurrentlyOpenedGroup(Engine.StringToXUIDDecimal("0"))
end

function UpdateSelectedGroupInfo(arg0, arg1, arg2)
	local registerVal3 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_TYPE)
	if registerVal3 then
		registerVal3 = IsGroupDataDirty(arg2, "privacy")
		if registerVal3 then
			Engine.SetSelectedGroupType(arg2, Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "privacy")))
		end
		registerVal3 = IsGroupDataDirty(arg2, "joinApprovalType")
		if registerVal3 then
			Engine.SetSelectedGroupJoinApprovalType(arg2, Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "joinApprovalType")))
		end
	end
	local registerVal4 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_DESCRIPTION)
	registerVal4 = IsGroupDataDirty(arg2, "description")
	if registerVal4 and registerVal4 then
	end
	registerVal4 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_MESSAGE)
	registerVal4 = IsGroupDataDirty(arg2, "message")
	if registerVal4 and registerVal4 then
	end
	registerVal4 = HasAdminPrivilege(arg2, Enum.GroupAdminPrivilege.GROUP_ADMIN_PRIVILEGE_EDIT_GROUP_EMBLEM)
	registerVal4 = IsGroupDataDirty(arg2, "emblem")
	if registerVal4 and registerVal4 then
	end
	if true then
		Engine.UpdateSelectedGroupProfile(arg2)
	end
	ResetGroupDirtyData(arg2)
end

function SetSelectedGroup(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if arg1 and registerVal3 then
		local registerVal4 = arg1:getModel()
		CoD.perController[arg2].selectedGroup = registerVal4
		registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "groupId"))
		registerVal4 = Engine.GetModelValue(arg1:getModel(arg2, "groupBufferType"))
		Engine.SetSelectedGroup(arg2, registerVal4, registerVal3)
		local registerVal7 = Engine.GetModelForController(arg2)
		Engine.ForceNotifyModelSubscriptions(Engine.CreateModel(registerVal7, "groups.selectedGroup"))
	end
end

function ClearSelectedGroup(arg0, arg1, arg2)
	CoD.perController[arg2].selectedGroup = nil
	Engine.ClearSelectedGroup()
	local registerVal5 = Engine.GetModelForController(arg2)
	Engine.ForceNotifyModelSubscriptions(Engine.CreateModel(registerVal5, "groups.selectedGroup"))
end

function SetGroupHeadquarterTabName(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.CreateModel(registerVal3, "groups")
	local registerVal5 = Engine.CreateModel(registerVal4, "grouphqtabname")
	Engine.SetModelValue(registerVal5, arg1.tabId)
end

function SearchGroupsBySearchType(arg0, arg1, arg2, arg3, arg4)
	if not arg4 then
		ClearSelectedGroup(arg0, arg1, arg2)
	end
	Engine.SearchGroups(arg2, arg3)
end

function ClearLastGroupSearchResults(arg0, arg1, arg2)
	Engine.ClearLastGroupSearchResults(arg2)
end

function SearchPlayerByGamertag(arg0, arg1, arg2)
	local registerVal3 = arg1:getParentMenu()
	local registerVal6 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal6, "groups.searchGroupsPlayerName"))
	if registerVal4 == "" then
		return 
	end
	Engine.SearchPlayerByGamertag(arg2, registerVal4)
	local registerVal7 = Engine.GetModelForController(arg2)
	registerVal6 = Engine.CreateModel(registerVal7, "groups.searchPlayerResultsVisible")
	Engine.SetModelValue(registerVal6, true)
	local registerVal5 = arg1:findSibling("CategoriesList")
	if registerVal5 then
		local registerVal8 = {}
		registerVal8.name = "gain_focus"
		registerVal8.controller = arg2
		registerVal5:processEvent(registerVal8)
	end
	local function __FUNC_742A4_(arg0, arg1, arg2)
		local registerVal3 = arg0:findSibling("CategoriesList")
		local registerVal4 = registerVal3:getModel()
		registerVal4 = registerVal3:getModel(arg2, "frameWidget")
		local registerVal5 = registerVal3:getModel(arg2, "frameWidget")
		Engine.SetModelValue(registerVal5, "CoD.FindGroupsTabSearchPlayerResultsFrame")
		registerVal4 = registerVal3:findSibling("FindGroupsTabFrame")
		if registerVal3 and registerVal4 and registerVal4 and registerVal4 then
			local registerVal7 = {}
			registerVal7.name = "lose_focus"
			registerVal7.controller = arg2
			registerVal4:processEvent(registerVal7)
			registerVal7 = {}
			registerVal7.name = "gain_focus"
			registerVal7.controller = arg2
			registerVal3:processEvent(registerVal7)
		end
	end

	OpenGroupsNotifyPopup(registerVal3, arg1, arg2, true, "search_player_task_complete", __FUNC_742A4_, true)
end

function SearchGroups(arg0, arg1, arg2)
	local registerVal3 = arg1:getParentMenu()
	Engine.ClearLastGroupSearchResults(arg2)
	Engine.SearchGroups(arg2, Enum.GroupSearchType.GROUP_SEARCH_TYPE_SEARCH_BY_PARAMS)
	local registerVal6 = Engine.GetModelForController(arg2)
	local registerVal5 = Engine.CreateModel(registerVal6, "groups.searchResultsVisible")
	Engine.SetModelValue(registerVal5, true)
	local registerVal4 = arg1:findSibling("CategoriesList")
	if registerVal4 then
		local registerVal7 = {}
		registerVal7.name = "gain_focus"
		registerVal7.controller = arg2
		registerVal4:processEvent(registerVal7)
	end
	ClearSelectedGroup(arg0, arg1, arg2)
	local function __FUNC_747BE_(arg0, arg1, arg2)
		local registerVal3 = arg0:findSibling("CategoriesList")
		local registerVal4 = registerVal3:getModel()
		registerVal4 = registerVal3:getModel(arg2, "frameWidget")
		local registerVal6 = Engine.GetModelForController(arg2)
		local registerVal5 = Engine.CreateModel(registerVal6, "groups.paramSearchStarted")
		Engine.SetModelValue(registerVal5, true)
		registerVal5 = registerVal3:getModel(arg2, "frameWidget")
		Engine.SetModelValue(registerVal5, "CoD.FindGroupsTabSearchGroupsResultsFrame")
		registerVal4 = registerVal3:findSibling("FindGroupsTabFrame")
		if registerVal3 and registerVal4 and registerVal4 and registerVal4 then
			local registerVal7 = {}
			registerVal7.name = "lose_focus"
			registerVal7.controller = arg2
			registerVal4:processEvent(registerVal7)
			registerVal7 = {}
			registerVal7.name = "gain_focus"
			registerVal7.controller = arg2
			registerVal3:processEvent(registerVal7)
		end
	end

	OpenGroupsNotifyPopup(registerVal3, arg1, arg2, true, "search_groups_task_complete", __FUNC_747BE_, true)
end

function InitializeGroups(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.CreateModel(registerVal3, "groups")
	Engine.CreateModel(registerVal4, "processingTask")
	Engine.CreateModel(registerVal4, "grouphqtabname")
	Engine.CreateModel(registerVal4, "createGroup")
	local registerVal5 = Engine.CreateModel(registerVal4, "leaderboardmaker")
	Engine.CreateModel(registerVal5, "startingState")
	Engine.CreateModel(registerVal5, "state")
	local registerVal7 = Engine.CreateModel(registerVal5, "lbDef")
	Engine.SetModelValue(registerVal7, "")
	registerVal7 = Engine.CreateModel(registerVal5, "lbDefOriginal")
	Engine.SetModelValue(registerVal7, "")
	registerVal7 = Engine.CreateModel(registerVal5, "lbTimeFrame")
	Engine.SetModelValue(registerVal7, 0.000000)
	registerVal7 = Engine.CreateModel(registerVal5, "lbHardcore")
	Engine.SetModelValue(registerVal7, false)
	registerVal7 = Engine.CreateModel(registerVal5, "lbArena")
	Engine.SetModelValue(registerVal7, false)
	registerVal7 = Engine.CreateModel(registerVal5, "lbSortType")
	Engine.SetModelValue(registerVal7, "")
	registerVal7 = Engine.CreateModel(registerVal5, "lbInitialized")
	Engine.SetModelValue(registerVal7, false)
	Engine.CreateModel(registerVal4, "notificationTitle")
	Engine.CreateModel(registerVal4, "notificationMessage")
	Engine.CreateModel(registerVal4, "notificationError")
	registerVal7 = Engine.CreateModel(registerVal4, "searchGroupsGroupName")
	Engine.SetModelValue(registerVal7, "")
	registerVal7 = Engine.CreateModel(registerVal4, "params.highlightGroupsTabInSocial")
	Engine.SetModelValue(registerVal7, false)
	local registerVal8 = Engine.GetModelForController(arg2)
	registerVal7 = Engine.CreateModel(registerVal8, "groups.searchResultsVisible")
	Engine.SetModelValue(registerVal7, false)
end

function FetchGroupInviteProfiles(arg0, arg1, arg2)
	Engine.FetchGroupInviteProfiles(arg2)
end

function UpdateFindGroupsTabSearchFrameWidget(arg0, arg1, arg2)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "groups.searchResultsVisible")
	Engine.SetModelValue(registerVal4, false)
end

function UpdateFindGroupsTabSearchPlayerFrameWidget(arg0, arg1, arg2)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "groups.searchPlayerResultsVisible")
	Engine.SetModelValue(registerVal4, false)
end

function OpenAdminPrivilegesPopup(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
	local registerVal6 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal6, "Social.selectedFriendXUID"))
	local registerVal5 = Engine.GetGroupAdminPrivileges(arg2, registerVal3, registerVal4)
	local registerVal8 = Engine.GetModelForController(arg2)
	local registerVal7 = Engine.CreateModel(registerVal8, "groups.currentAdminPrivileges")
	Engine.SetModelValue(registerVal7, registerVal5)
	OpenOverlay(arg0, "GroupAdminSettings", arg2)
end

function PromoteSelectedGroupMemberToAdmin(arg0, arg1, arg2)
	Engine.FetchSelectedGroupAdmins()
	local function __FUNC_75664_()
		local registerVal0 = Engine.GetSelectedGroupAdminsCount(arg2)
		local registerVal1 = IsGroupAdmin(arg2)
		if registerVal1 then
		end
		registerVal1 = Engine.GetSelectedGroupAdminsCount(arg2)
		local registerVal2 = Engine.GetMaxGroupAdminsCount()
		if registerVal2 <= registerVal1 then
			OpenGenericSmallPopup(arg1.gridInfoTable.parentGrid.menu, arg2, "GROUPS_NOTICE_CAPS", "GROUPS_MAX_ADMINS_LIMIT_REACHED_DESC", nil, "MENU_OK", nil, nil)
			return 
		end
		local registerVal7 = {}
		registerVal7 = {"GROUPS_DO_NOT_PROMOTE_CAPS", "GROUPS_PROMOTE_CAPS"}
		local function __FUNC_758E8_(arg0)
			if arg0 == 1.000000 then
				local registerVal1 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
				local registerVal4 = Engine.GetModelForController(arg2)
				local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "Social.selectedFriendXUID"))
				Engine.PromoteSelectedGroupMemberToAdmin(arg2, registerVal2)
				local function __FUNC_75B44_()
					GoBack(arg1.gridInfoTable.parentGrid.menu, arg2)
				end

				OpenGroupsNotifyPopup(arg1.gridInfoTable.parentGrid.menu, arg1, arg2, true, "promote_member_task_complete", __FUNC_75B44_, true)
			end
			return true
		end

		arg1.gridInfoTable.parentGrid.menu:OpenModalDialog(arg0, arg2, "GROUPS_PROMOTE_TO_ADMIN_CAPS", "GROUPS_PROMOTE_TO_ADMIN_DESC", registerVal7, __FUNC_758E8_)
	end

	OpenGroupsNotifyPopup(arg1.gridInfoTable.parentGrid.menu, arg1, arg2, true, "fetch_group_admins_task_complete", __FUNC_75664_, true)
end

function PromoteSelectedGroupAdminToOwner(arg0, arg1, arg2)
	local registerVal10 = {}
	registerVal10 = {"GROUPS_DO_NOT_TRANSFER_CAPS", "GROUPS_WITH_ADMIN_RIGHTS_CAPS", "GROUPS_WITHOUT_ADMIN_RIGHTS_CAPS"}
	local function __FUNC_75D34_(arg0)
		if arg0 == 1.000000 or arg0 == 2.000000 then
			local registerVal1 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
			local registerVal4 = Engine.GetModelForController(arg2)
			local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "Social.selectedFriendXUID"))
			if arg0 ~= 1.000000 then
			end
			Engine.PromoteGroupAdminToOwner(arg2, registerVal1, registerVal2, true)
			local function __FUNC_75FB5_()
				GoBack(arg1.gridInfoTable.parentGrid.menu, arg2)
			end

			OpenGroupsNotifyPopup(arg1.gridInfoTable.parentGrid.menu, arg1, arg2, true, "promote_member_to_owner_task_complete", __FUNC_75FB5_, true)
		end
		return true
	end

	arg1.gridInfoTable.parentGrid.menu:OpenModalDialog(arg0, arg2, "GROUPS_TRANSFER_OWNERSHIP_CAPS", "GROUPS_TRANSFER_OWNERSHIP_DESC", registerVal10, __FUNC_75D34_)
end

function ToggleGroupAdminPrivilege(arg0, arg1, arg2, arg3)
	Engine.ToggleGroupAdminPrivilege(arg2, arg3)
end

function UpdateSelectedGroupAdminPrivileges(arg0, arg1, arg2)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "Social.selectedFriendXUID"))
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
	registerVal5 = Engine.GetGroupAdminPrivileges(arg2, registerVal4, registerVal3)
	local registerVal8 = Engine.GetModelForController(arg2)
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal8, "groups.currentAdminPrivileges"))
	if registerVal5 ~= registerVal6 then
		Engine.PromoteSelectedGroupMemberToAdmin(arg2, registerVal3, registerVal6)
	end
end

function BlockPublishedContent(arg0, arg1, arg2)
	local registerVal10 = {}
	registerVal10 = {"GROUPS_BLOCK_PUBLISHED_CONTENT_CANCEL_CAPS", "GROUPS_BLOCK_PUBLISHED_CONTENT_OK_CAPS"}
	local function __FUNC_76493_(arg0)
		if arg0 == 1.000000 then
			local registerVal1 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
			local registerVal4 = Engine.GetModelForController(arg2)
			local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "Social.selectedFriendXUID"))
		end
		return true
	end

	arg1.gridInfoTable.parentGrid.menu:OpenModalDialog(arg0, arg2, "GROUPS_BLOCK_PUBLISHED_CONTENT_CAPS", "GROUPS_BLOCK_PUBLISHED_CONTENT_MESSAGE", registerVal10, __FUNC_76493_)
end

function RemoveFromGroup(arg0, arg1, arg2)
	local registerVal3 = arg1:getParentMenu()
	if arg1.gridInfoTable then
	end
	local registerVal10 = {}
	registerVal10 = {"GROUPS_REMOVE_FROM_GROUP_CANCEL_CAPS", "GROUPS_REMOVE_FROM_GROUP_OK_CAPS"}
	local function __FUNC_767EA_(arg0)
		if arg0 == 1.000000 then
			local registerVal1 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
			local registerVal4 = Engine.GetModelForController(arg2)
			local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "Social.selectedFriendXUID"))
			Engine.KickGroupMember(arg2, registerVal1, registerVal2)
			local function __FUNC_76A3B_()
				GoBack(arg1.gridInfoTable.parentGrid.menu, arg2)
			end

			OpenGroupsNotifyPopup(arg1.gridInfoTable.parentGrid.menu, arg1, arg2, true, "fetch_group_members_task_complete", __FUNC_76A3B_, true)
		end
		return true
	end

	arg1.gridInfoTable.parentGrid.menu:OpenModalDialog(arg0, arg2, "GROUPS_REMOVE_FROM_GROUP_CAPS", "GROUPS_REMOVE_FROM_GROUP_MESSAGE", registerVal10, __FUNC_767EA_)
end

function BanFromGroup(arg0, arg1, arg2)
	local registerVal3 = arg1:getParentMenu()
	if arg1.gridInfoTable then
	end
	local registerVal10 = {}
	registerVal10 = {"GROUPS_BAN_FROM_GROUP_CANCEL_CAPS", "GROUPS_BAN_FROM_GROUP_OK_CAPS"}
	local function __FUNC_76C2E_(arg0)
		if arg0 == 1.000000 then
			local registerVal1 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
			local registerVal4 = Engine.GetModelForController(arg2)
			local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "Social.selectedFriendXUID"))
			Engine.BanGroupMember(arg2, registerVal1, registerVal2)
			local function __FUNC_76E7E_()
				GoBack(arg1.gridInfoTable.parentGrid.menu, arg2)
			end

			OpenGroupsNotifyPopup(arg1.gridInfoTable.parentGrid.menu, arg1, arg2, true, "fetch_group_members_task_complete", __FUNC_76E7E_, true)
		end
		return true
	end

	arg1.gridInfoTable.parentGrid.menu:OpenModalDialog(arg0, arg2, "GROUPS_BAN_FROM_GROUP_CAPS", "GROUPS_BAN_FROM_GROUP_MESSAGE", registerVal10, __FUNC_76C2E_)
end

function UnBanFromGroup(arg0, arg1, arg2)
	local registerVal3 = arg1:getParentMenu()
	local registerVal10 = {}
	registerVal10 = {"GROUPS_UNBAN_FROM_GROUP_CANCEL_CAPS", "GROUPS_UNBAN_FROM_GROUP_OK_CAPS"}
	local function __FUNC_7700D_(arg3)
		if arg3 == 1.000000 then
			local registerVal1 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
			local registerVal4 = Engine.GetModelForController(arg2)
			local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "Social.selectedFriendXUID"))
			Engine.UnBanGroupMember(arg2, registerVal1, registerVal2)
			local function __FUNC_77261_()
				local registerVal0 = Engine.GetSelectedGroupBannedMembersCount(arg2)
				registerVal0 = arg0:findSibling("AdminOptions")
				if registerVal0 == 0.000000 and registerVal0 then
					local registerVal3 = {}
					registerVal3.name = "gain_focus"
					registerVal3.controller = arg2
					registerVal0:processEvent(registerVal3)
				end
			end

			OpenGroupsNotifyPopup(registerVal3, arg1, arg2, true, "fetch_banned_members_task_complete", __FUNC_77261_, true)
		end
		return true
	end

	registerVal3:OpenModalDialog(arg0, arg2, "GROUPS_UNBAN_FROM_GROUP_CAPS", "GROUPS_UNBAN_FROM_GROUP_MESSAGE", registerVal10, __FUNC_7700D_)
end

function DemoteAdminToRegularMember(arg0, arg1, arg2)
	local registerVal3 = arg1:getParentMenu()
	if arg1.gridInfoTable then
	end
	local registerVal10 = {}
	registerVal10 = {"GROUPS_DO_NOT_REMOVE_CAPS", "GROUPS_REMOVE_CAPS"}
	local function __FUNC_7753A_(arg0)
		if arg0 == 1.000000 then
			local registerVal1 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
			local registerVal4 = Engine.GetModelForController(arg2)
			local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "Social.selectedFriendXUID"))
			Engine.DemoteGroupAdminToRegularMember(arg2, registerVal1, registerVal2)
			local function __FUNC_77795_()
				GoBack(arg1.gridInfoTable.parentGrid.menu, arg2)
			end

			OpenGroupsNotifyPopup(arg1.gridInfoTable.parentGrid.menu, arg1, arg2, true, "demote_member_task_complete", __FUNC_77795_, true)
		end
		return true
	end

	arg1.gridInfoTable.parentGrid.menu:OpenModalDialog(arg0, arg2, "GROUPS_REMOVE_ADMIN_PRIVILEGES_CAPS", "GROUPS_REMOVE_ADMIN_PRIVILEGES_DESC", registerVal10, __FUNC_7753A_)
end

function OpenGroupSelector(arg0, arg1, arg2)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "Social.selectedFriendXUID"))
	Engine.FetchOutgoingGroupInvites(arg2, registerVal3)
	local function __FUNC_77975_()
		OpenPopup(arg0, "GroupSelectPopup", arg2)
	end

	OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "refreshOutgoingInvites", __FUNC_77975_, true)
end

function OpenViewGroups(arg0, arg1, arg2)
	ClearLastGroupSearchResults(arg0, arg1, arg2)
	SearchGroupsBySearchType(arg0, arg1, arg2, Enum.GroupSearchType.GROUP_SEARCH_TYPE_SELECTED_FRIEND, true)
	local function __FUNC_77B5D_()
		local registerVal0 = Engine.GetTotalGroupsCount(arg2, Enum.GroupBufferType.GROUP_BUFFER_TYPE_SEARCH)
		if registerVal0 == 0.000000 then
			OpenGenericSmallPopup(arg0, arg2, "MENU_NOTICE_CAPS", "GROUPS_NO_FRIENDS_GROUP", nil, "MENU_OK", nil, nil)
		else
			OpenPopup(arg0, "ShowFriendsGroups", arg2)
		end
	end

	OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "search_groups_task_complete", __FUNC_77B5D_, true)
end

function InviteToGroup(arg0, arg1, arg2)
	if not arg1.inviteSent then
		local registerVal7 = Engine.GetModelForController(arg2)
		local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal7, "Social.selectedFriendXUID"))
		Engine.SendGroupInvite(arg2, arg1.groupId, registerVal5)
		local function __FUNC_77EF0_()
			local registerVal0 = arg1:getModel()
			registerVal0 = arg1:getModel(arg2, "inviteSent")
			if registerVal0 and registerVal0 then
				local registerVal1 = arg1:getModel()
				if registerVal1 then
					registerVal1 = arg1:getModel(arg2, "inviteSent")
				end
				Engine.SetModelValue(registerVal1, true)
			end
			local registerVal2 = Engine.Localize("MENU_INVITE_SENT")
			CoD.OverlayUtility.ShowToast("Invite", registerVal2, "", LuaEnums.INVITE_TOAST_POPUP_ICON)
		end

		OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "refreshOutgoingInvites", __FUNC_77EF0_, true)
	end
	return true
end

function CreateNewGroupFlow(arg0, arg1, arg2)
	ClearSelectedGroup(arg0, arg1, arg2)
	InitializeCreateGroup(arg0, arg1, arg2)
	OpenCreateGroupMenu(arg0, arg1, arg2)
end

function CancelCreateGroup(arg0, arg1, arg2, arg3)
	local registerVal10 = {}
	registerVal10 = {"MENU_NO_CAPS", "MENU_YES_CAPS"}
	local function __FUNC_78299_(arg0)
		if arg0 == 1.000000 then
			GoBack(arg3, arg2)
		end
		return true
	end

	arg3:OpenModalDialog(arg0, arg2, "GROUPS_CANCEL_GROUP_CREATION_TITLE", "GROUPS_CANCEL_GROUP_CREATION_SUBTITLE", registerVal10, __FUNC_78299_)
end

function ProcessCreateGroup(arg0, arg1, arg2)
	local registerVal3 = ValidateCreateGroupInformation(arg0, arg1, arg2)
	if registerVal3 then
		CreateGroup(arg0, arg1, arg2)
	end
end

function InviteSelectedFriendsToGroup(arg0, arg1, arg2, arg3)
	local registerVal6 = Engine.GetModelForController(arg2)
	local registerVal5 = Engine.GetModel(registerVal6, "groups.createGroup.createdGroupId")
	if arg3 and registerVal5 then
		Engine.SendGroupBatchInvites(arg2, Engine.GetModelValue(registerVal5))
	end
	local registerVal8 = Engine.GetModelForController(arg2)
	local registerVal7 = Engine.CreateModel(registerVal8, "groups.highlightGroupsTabInSocial")
	Engine.SetModelValue(registerVal7, true)
	registerVal6 = GoBackToMenu(arg0, arg2, "Social_Main")
	OpenGenericSmallPopup(registerVal6, arg2, "GROUPS_SUCCESS_CAPS", "GROUPS_CREATE_SUCCESS_MESSAGE", nil, "MENU_OK", nil, nil)
end

function AdminTabMakeNotFocusableIfDisabled(arg0, arg1)
	local function __FUNC_786BE_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0:makeNotFocusable()
		end
	end

	arg0:linkToElementModel(arg0, "disabled", true, __FUNC_786BE_)
end

function CreateGroup(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "groups.createGroup.name"))
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal3, "groups.createGroup.description"))
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal3, "groups.createGroup.privacy"))
	local registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal3, "groups.createGroup.emblem"))
	local registerVal9 = Engine.CreateModel(registerVal3, "groups.createGroup.failed")
	Engine.SetModelValue(registerVal9, false)
	Engine.CreateGroup(arg2, registerVal4, registerVal5, registerVal6, registerVal7)
	local function __FUNC_78A77_(arg0, arg1, arg2)
		local registerVal3 = Engine.GetFriendsCount(arg2, 0.000000)
		local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "groups.createGroup.failed"))
		local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal3, "groups.notificationError"))
		if registerVal5 then
			OpenGroupsNotifyPopup(arg0, arg1, arg2)
		else
			if 0.000000 < registerVal3 and not registerVal4 then
				NavigateToMenu(arg0, "GroupInviteFriends", false, arg2)
			else
				if not registerVal4 then
					local registerVal7 = Engine.GetModelForController(arg2)
					local registerVal6 = Engine.CreateModel(registerVal7, "groups.highlightGroupsTabInSocial")
					Engine.SetModelValue(registerVal6, true)
					registerVal5 = GoBackToMenu(arg0, arg2, "Social_Main")
					OpenGenericSmallPopup(registerVal5, arg2, "GROUPS_SUCCESS_CAPS", "GROUPS_CREATE_SUCCESS_MESSAGE", nil, "MENU_OK", nil, nil)
				end
			end
		end
		registerVal6 = Engine.GetModelForController(arg2)
		registerVal5 = CoD.SafeGetModelValue(registerVal6, "groups.createGroup.createdGroupId")
		if not registerVal4 and registerVal5 ~= nil then
			if registerVal6 == Enum.GroupPrivacy.GROUP_PRIVACY_PRIVATE then
			end
			LUI.CoDMetrics.CreateGroupEvent(arg2, registerVal5, "private")
		end
	end

	local function __FUNC_78F83_(arg0, arg1, arg2)
		local registerVal3 = CoD.SafeGetModelValue(registerVal3, "groups.notificationMessage")
		if registerVal3 == "GROUPS_ERROR_TEAMNAME_ALREADY_EXISTS" then
			local registerVal4 = Engine.GetModel(registerVal3, "groups.notificationTitle")
			Engine.SetModelValue(registerVal4, "GROUPS_GROUP_NAME_EXISTS_CAPS")
		end
		registerVal4 = Engine.CreateModel(registerVal3, "groups.createGroup.failed")
		Engine.SetModelValue(registerVal4, true)
	end

	OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "create_group_task_complete", __FUNC_78A77_, true, __FUNC_78F83_)
end

function OpenLeaderboardResetOverlay(arg0, arg1, arg2, arg3, arg4)
	local registerVal10 = {}
	registerVal10.resetAction = arg3
	OpenSystemOverlay(arg0, arg4, arg2, "LeaderboardClearCustomConfirmationOverlay", registerVal10)
end

function SetDefaultCareerLeaderboard(arg0, arg1, arg2)
	local registerVal3 = CoD.LeaderboardUtility.GetCareerLeaderboardDef(arg2)
	local registerVal8 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
	SetGroupLeaderboardInfo(arg2, registerVal3, Enum.LbTrackType.LB_TRK_ALLTIME, false, false, "", true)
	Engine.SetGroupLeaderboard(arg2, registerVal8, registerVal3, Enum.LbTrackType.LB_TRK_ALLTIME, 0.000000)
	local registerVal9 = Engine.GetModelForController(arg2)
	local registerVal12 = Engine.GetModel(registerVal9, "groups.eventUpdate")
	local function __FUNC_79595_(arg0)
		local registerVal1 = Engine.GetModelValue(Engine.GetModel(registerVal9, "groups.eventName"))
		if registerVal1 == "set_leaderboard_task_complete" then
			Engine.LoadLeaderboard(registerVal3, Enum.LbTrackType.LB_TRK_ALLTIME)
			Engine.RequestLeaderboardData(arg2, Enum.LbFilter.LB_FILTER_GROUP_MEMBERS)
		end
	end

	arg0:subscribeToModel(registerVal12, __FUNC_79595_)
	local function __FUNC_7973C_(arg0, arg1, arg2)
		local registerVal5 = Engine.GetModelForController(arg2)
		Engine.ForceNotifyModelSubscriptions(Engine.GetModel(registerVal5, "groups.leaderboardmaker.lbDef"))
		OpenGenericSmallPopup(arg0, arg2, "GROUPS_CONGRATULATIONS_CAPS_TITLE", "GROUPS_DEFAULT_LB_SUCCESS", nil, "MENU_OK", nil, nil)
		local registerVal4 = Engine.GetModel(registerVal9, "groups.leaderboardmaker.state")
		Engine.SetModelValue(registerVal4, "")
	end

	OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "fetch_group_leaderboard_task_complete", __FUNC_7973C_, true)
end

function OpenLeaderboardMaker(arg0, arg1, arg2, arg3)
	if arg3 == nil then
		error("OpenLeaderboardMaker(): Invalid starting state specified")
		return 
	end
	local registerVal4 = Engine.GetModelForController(arg2)
	local registerVal6 = Engine.GetModel(registerVal4, "groups.leaderboardmaker.startingState")
	Engine.SetModelValue(registerVal6, arg3)
	registerVal6 = Engine.GetModel(registerVal4, "groups.leaderboardmaker.state")
	Engine.SetModelValue(registerVal6, arg3)
	local registerVal5 = arg0:getParentMenu()
	registerVal5:openPopup("LeaderboardMaker", arg2)
end

function RemoveGroupLeaderboard(arg0, arg1, arg2)
	local registerVal10 = {}
	registerVal10 = {"MPUI_NO", "MPUI_YES"}
	local function __FUNC_79CC5_(arg0)
		if arg0 == 1.000000 then
			SetGroupLeaderboardInfo(arg2, "", 0.000000, false, false, "", false)
			local registerVal1 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
			Engine.DeleteGroupLeaderboard(arg2, registerVal1)
			local function __FUNC_79EE7_()
				GoBack(arg1.gridInfoTable.parentGrid.menu, arg2)
				local registerVal2 = Engine.GetModelForController(arg2)
				Engine.ForceNotifyModelSubscriptions(Engine.CreateModel(registerVal2, "groups.updateLeaderboardTabNav"))
			end

			OpenGroupsNotifyPopup(arg1.gridInfoTable.parentGrid.menu, arg1, arg2, true, "delete_leaderboard_task_complete", __FUNC_79EE7_, true)
		end
		return true
	end

	arg1.gridInfoTable.parentGrid.menu:OpenModalDialog(arg0, arg2, "GROUPS_REMOVE_LEADERBOARD_CAPS", "GROUPS_REMOVE_LEADERBOARD_DESC", registerVal10, __FUNC_79CC5_)
end

function ProcessLeaderboardMakerBack(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "groups.leaderboardmaker.startingState"))
	local registerVal5 = Engine.GetModel(registerVal3, "groups.leaderboardmaker.state")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	if registerVal6 == registerVal4 or registerVal6 == "SelectAction" then
		Engine.SetModelValue(registerVal5, "")
		GoBack(arg0, arg2)
	else
		if registerVal6 == "ChooseBaseLeaderboard" then
			Engine.SetModelValue(registerVal5, "SelectAction")
		else
			if registerVal6 == "ChooseHardcore" then
				Engine.SetModelValue(registerVal5, "ChooseBaseLeaderboard")
			else
				if registerVal6 == "ChooseDefaultSort" then
					Engine.SetModelValue(registerVal5, "ChooseHardcore")
				else
					if registerVal6 == "ChooseTimeFrame" then
						Engine.SetModelValue(registerVal5, "ChooseDefaultSort")
					end
				end
			end
		end
	end
end

function EditGroupLeaderboard(arg0, arg1, arg2)
	local registerVal3 = GoBack(arg0, arg2)
	local registerVal4 = Engine.GetModelForController(arg2)
	local registerVal6 = Engine.GetModel(registerVal4, "groups.leaderboardmaker.state")
	Engine.SetModelValue(registerVal6, "ChooseBaseLeaderboard")
	OpenLeaderboardMaker(registerVal3, arg1, arg2, "ChooseBaseLeaderboard")
end

function ProcessChooseBaseLeaderboard(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg2)
	local registerVal5 = Engine.CreateModel(registerVal3, "groups.leaderboardmaker.lbDefOriginal")
	Engine.SetModelValue(registerVal5, Engine.GetModelValue(arg1:getModel(arg2, "lbDef")))
	registerVal5 = Engine.CreateModel(registerVal3, "groups.leaderboardmaker.lbDef")
	Engine.SetModelValue(registerVal5, Engine.GetModelValue(arg1:getModel(arg2, "lbDef")))
	registerVal5 = Engine.GetModel(registerVal3, "groups.leaderboardmaker.state")
	Engine.SetModelValue(registerVal5, "ChooseHardcore")
end

function ProcessChooseHardcoreAndArena(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg2)
	local registerVal5 = Engine.GetModelValue(Engine.CreateModel(registerVal3, "groups.leaderboardmaker.lbDef"))
	local registerVal7 = Engine.CreateModel(registerVal3, "groups.leaderboardmaker.lbHardcore")
	if arg1.value ~= "HC" then
	end
	Engine.SetModelValue(registerVal7, true)
	registerVal7 = Engine.CreateModel(registerVal3, "groups.leaderboardmaker.lbArena")
	if arg1.value ~= "ARENA" then
	end
	Engine.SetModelValue(registerVal7, true)
	if arg1.value ~= "" then
	end
	registerVal7 = Engine.CreateModel(registerVal3, "groups.leaderboardmaker.lbDef")
	Engine.SetModelValue(registerVal7, (registerVal5 .. "_" .. arg1.value))
	registerVal7 = Engine.GetModel(registerVal3, "groups.leaderboardmaker.state")
	Engine.SetModelValue(registerVal7, "ChooseDefaultSort")
end

function ProcessChooseDefaultSort(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg2)
	local registerVal6 = Engine.CreateModel(registerVal3, "groups.leaderboardmaker.lbSortType")
	Engine.SetModelValue(registerVal6, arg1.value)
	registerVal6 = Engine.GetModel(registerVal3, "groups.leaderboardmaker.state")
	Engine.SetModelValue(registerVal6, "ChooseTimeFrame")
end

function ProcessChooseTimeFrame(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "groups.leaderboardmaker.lbDef"))
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal3, "groups.leaderboardmaker.lbDefOriginal"))
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal3, "groups.leaderboardmaker.lbHardcore"))
	local registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal3, "groups.leaderboardmaker.lbArena"))
	local registerVal8 = Engine.GetModelValue(Engine.GetModel(registerVal3, "groups.leaderboardmaker.lbSortType"))
	local registerVal11 = Engine.GetModel(registerVal3, "groups.leaderboardmaker.lbTimeFrame")
	Engine.SetModelValue(registerVal11, arg1.value)
	local registerVal10 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
	SetGroupLeaderboardInfo(arg2, registerVal4, arg1.value, registerVal6, registerVal7, registerVal8, true)
	local registerVal12, registerVal13, registerVal14 = ipairs(CoD.LeaderboardUtility.sortColumns[registerVal5])
	for index15,value16 in registerVal12, registerVal13, registerVal14 do
		if registerVal8 == value16.lbSortType then
		end
	end
	Engine.SetGroupLeaderboard(arg2, registerVal10, registerVal4, arg1.value, value16.offset)
	local function __FUNC_7B0EC_(arg1, arg2, arg3)
		local registerVal5 = Engine.GetModelForController(arg3)
		Engine.ForceNotifyModelSubscriptions(Engine.GetModel(registerVal5, "groups.leaderboardmaker.lbDef"))
		local registerVal4 = Engine.GetModel(registerVal3, "groups.leaderboardmaker.state")
		Engine.SetModelValue(registerVal4, "")
		Engine.LoadLeaderboard(registerVal4, arg1.value)
		Engine.RequestLeaderboardData(arg3, Enum.LbFilter.LB_FILTER_GROUP_MEMBERS)
		GoBack(arg0, arg3)
	end

	local function __FUNC_7B351_()
		SetGroupsNotifyInformation(arg2, "MENU_ERROR_CAPS", "GROUPS_GENERIC_ERROR_MSG", true)
	end

	OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "set_leaderboard_task_complete", __FUNC_7B0EC_, false, __FUNC_7B351_, true)
end

function Leaderboard_TabChanged(arg0, arg1, arg2)
	CoD.perController[arg2].selectedLeaderboardTabId = arg1.tabId
end

function OpenLeaderboardMaintanencePopup(arg0, arg1)
	CoD.OverlayUtility.CreateOverlay(arg1, arg0, "LeaderboardsDownForMaintanence")
end

function NavigateToLeaderboardMain(arg0, arg1, arg2)
	local registerVal3 = NavigateToMenu(arg0, arg1, true, arg2)
	local registerVal4 = LeaderboardsDownForMaintanence()
	if registerVal4 then
		OpenLeaderboardMaintanencePopup(registerVal3, arg2)
	end
end

function LoadLeaderboard(arg0, arg1)
	local registerVal2 = IsCustomLeaderboard(arg1)
	local registerVal3 = IsDOALeaderboard(arg1)
	local registerVal4 = IsZMMapsLeaderboard(arg1)
	local registerVal5 = IsLobbyLeaderboard(arg1)
	local registerVal6 = Engine.GetModelForController(arg1)
	local registerVal7 = Engine.GetModel(registerVal6, "leaderboards")
	if registerVal7 == nil then
		local registerVal8 = Engine.CreateModel(registerVal6, "leaderboards", true)
		Engine.CreateModel(registerVal8, "leaderboardDurationFilter", true)
		local registerVal9 = Engine.CreateModel(registerVal8, "leaderboardPlayerFilter", true)
		Engine.SetModelValue(registerVal9, Enum.LbFilter.LB_FILTER_FRIENDS)
		registerVal9 = Engine.CreateModel(registerVal8, "leaderboardZMMapsNumPlayersFilter", true)
		Engine.SetModelValue(registerVal9, CoD.LeaderboardUtility.DEFAULT_ZM_MAPS_NUM_PLAYERS)
		registerVal9 = Engine.CreateModel(registerVal8, "leaderboardDOANumPlayersFilter", true)
		Engine.SetModelValue(registerVal9, CoD.LeaderboardUtility.DEFAULT_DOA_NUM_PLAYERS)
	end
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = CoD.SafeGetModelValue(registerVal9, "leaderboards.leaderboardPlayerFilter")
	if not registerVal8 then
	end
	if Enum.LbFilter.LB_FILTER_FRIENDS == Enum.LbFilter.LB_FILTER_GROUP_MEMBERS then
		local registerVal10 = Engine.CreateModel(registerVal8, "leaderboardPlayerFilter", true)
		Engine.SetModelValue(registerVal10, Enum.LbFilter.LB_FILTER_FRIENDS)
		CoD.perController[arg1].leaderboardPlayerFilter = Enum.LbFilter.LB_FILTER_FRIENDS
	end
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = CoD.SafeGetModelValue(registerVal10, "leaderboards.leaderboardZMMapsNumPlayersFilter")
	if not registerVal9 then
	end
	local registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = CoD.SafeGetModelValue(registerVal11, "leaderboards.leaderboardDOANumPlayersFilter")
	if not registerVal10 then
	end
	CoD.perController[arg1].pivotPosition = nil
	local registerVal13 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModelValue(Engine.GetModel(registerVal13, "leaderboardDef"))
	local registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = CoD.SafeGetModelValue(registerVal14, "leaderboards.leaderboardDurationFilter")
	registerVal14 = LUI.startswith(registerVal11, "LB_CP_DOA_BO3_SCORE")
	if not registerVal14 then
		registerVal14 = LUI.startswith(registerVal11, "LB_CP_DOA_BO3_ROUND")
	end
	if registerVal4 then
		local registerVal17 = tostring(CoD.LeaderboardUtility.DEFAULT_ZM_MAPS_NUM_PLAYERS)
	end
	if registerVal3 and CoD.LeaderboardUtility.DEFAULT_DOA_NUM_PLAYERS < CoD.LeaderboardUtility.DEFAULT_DOA_NUM_PLAYERS and registerVal14 then
		registerVal17 = tostring(CoD.LeaderboardUtility.DEFAULT_DOA_NUM_PLAYERS)
	end
	if registerVal5 then
	end
	local registerVal16, registerVal17, registerVal18 = ipairs(CoD.LeaderboardUtility.leaderboardInfo[registerVal11].trackTypes)
	if registerVal13 ==  then
	else
	end
	if true == false then
	end
	registerVal16 = Dvar.ui_hideLeaderboards:get()
	registerVal16 = Engine.LoadLeaderboard(((registerVal11 .. "_" .. registerVal17 .. "PLAYER") .. "_" .. registerVal17 .. "PLAYER"), CoD.LeaderboardUtility.leaderboardInfo[registerVal11].trackTypes[1.000000])
	if not registerVal16 and registerVal16 == true then
		if registerVal2 and Enum.LbFilter.LB_FILTER_LOBBY_MEMBERS == Enum.LbFilter.LB_FILTER_CUSTOM then
			local registerVal20 = {}
			registerVal20.controller = arg1
			Engine.LobbyVM_CallFunc("Leaderboard_PopulateCustomList", registerVal20)
		end
		local registerVal19 = CoD.LeaderboardUtility.LeaderboardPlayerFilterList(arg1)
		registerVal20, registerVal21, registerVal22 = pairs(registerVal19)
		for index23,value24 in registerVal20, registerVal21, registerVal22 do
			if value24.value == Enum.LbFilter.LB_FILTER_LOBBY_MEMBERS then
			else
			end
		end
		if true == false then
		end
		Engine.RequestLeaderboardData(arg1, Enum.LbFilter.LB_FILTER_FRIENDS, true)
	end
	registerVal16 = CoD.LeaderboardUtility.GetPlayerFilterString(Enum.LbFilter.LB_FILTER_FRIENDS)
	registerVal17 = CoD.LeaderboardUtility.GetDurationFilterString(CoD.LeaderboardUtility.leaderboardInfo[registerVal11].trackTypes[1.000000])
	if registerVal4 == true then
		registerVal19 = CoD.LeaderboardUtility.GetZMMapsNumPlayersFilterString(CoD.LeaderboardUtility.DEFAULT_ZM_MAPS_NUM_PLAYERS)
		registerVal20 = Engine.Localize("MPUI_X_SLASH_Y", registerVal19, registerVal16)
	else
		if registerVal2 == true then
			registerVal19 = Engine.Localize("MPUI_X_SLASH_Y", registerVal16, registerVal17)
		else
			if registerVal5 == true then
				registerVal19 = Engine.Localize(registerVal17)
			else
				if 1.000000 >= #CoD.LeaderboardUtility.leaderboardInfo[registerVal11].trackTypes then
				end
				if true == true then
					registerVal19 = Engine.Localize("MPUI_X_SLASH_Y", registerVal16, registerVal17)
				else
					if registerVal3 and registerVal14 == true then
						registerVal19 = CoD.LeaderboardUtility.GetDOANumPlayersFilterString(CoD.LeaderboardUtility.DEFAULT_DOA_NUM_PLAYERS)
						registerVal20 = Engine.Localize("MPUI_X_SLASH_Y", registerVal19, registerVal16)
					else
						registerVal19 = Engine.Localize(registerVal16)
					end
				end
			end
		end
	end
	SetGlobalModelValue("FilterInfo", registerVal19)
end

function Leaderboard_SetLeaderboardDef(arg0, arg1, arg2)
	local registerVal5 = arg1:getModel()
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "lbDef"))
	SetGlobalModelValue("leaderboardDef", registerVal3)
end

function Leaderboard_MoveUp(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg2)
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "leaderboards.leaderboardPlayerFilter")
	if registerVal3 == Enum.LbFilter.LB_FILTER_NONE or registerVal3 == Enum.LbFilter.LB_FILTER_GROUP_MEMBERS then
		Leaderboard_MoveUp_All(arg0, arg1, arg2)
	else
		Leaderboard_MoveUp_Friends(arg0, arg1, arg2)
	end
end

function Leaderboard_MoveDown(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg2)
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "leaderboards.leaderboardPlayerFilter")
	if registerVal3 == Enum.LbFilter.LB_FILTER_NONE or registerVal3 == Enum.LbFilter.LB_FILTER_GROUP_MEMBERS then
		Leaderboard_MoveDown_All(arg0, arg1, arg2)
	else
		Leaderboard_MoveDown_Friends(arg0, arg1, arg2)
	end
end

function Leaderboard_PageUp(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg2)
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "leaderboards.leaderboardPlayerFilter")
	if registerVal3 == Enum.LbFilter.LB_FILTER_NONE or registerVal3 == Enum.LbFilter.LB_FILTER_GROUP_MEMBERS then
		Leaderboard_PageUp_All(arg0, arg1, arg2)
	else
		Leaderboard_PageUp_Friends(arg0, arg1, arg2)
	end
end

function Leaderboard_PageDown(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg2)
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "leaderboards.leaderboardPlayerFilter")
	if registerVal3 == Enum.LbFilter.LB_FILTER_NONE or registerVal3 == Enum.LbFilter.LB_FILTER_GROUP_MEMBERS then
		Leaderboard_PageDown_All(arg0, arg1, arg2)
	else
		Leaderboard_PageDown_Friends(arg0, arg1, arg2)
	end
end

function Leaderboard_GoToTopOfList(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg2)
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "leaderboards.leaderboardPlayerFilter")
	if registerVal3 == Enum.LbFilter.LB_FILTER_NONE or registerVal3 == Enum.LbFilter.LB_FILTER_GROUP_MEMBERS then
		Leaderboard_GoToTopOfList_All(arg0, arg1, arg2)
	else
		Leaderboard_GoToTopOfList_Friends(arg0, arg1, arg2)
	end
end

function Leaderboard_UpdateHeaderModel(arg0, arg1)
	if not arg0.LeaderboardHeader then
		return 
	end
	DataSources.LeaderboardHeader.getModel(arg1)
	local registerVal3, registerVal4, registerVal5 = ipairs(arg0.LeaderboardHeader.linkedElementModels)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		value7.element:updateElementLinkedModels(arg0.LeaderboardHeader)
	end
end

function Leaderboard_ApplyFilters(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "leaderboards.leaderboardPlayerFilter")
	if registerVal2 ~= CoD.perController[arg1].leaderboardPlayerFilter then
	end
	local registerVal4 = Engine.GetModelForController(arg1)
	registerVal3 = CoD.SafeGetModelValue(registerVal4, "leaderboards.leaderboardDurationFilter")
	if registerVal3 ~= CoD.perController[arg1].leaderboardDurationFilter then
	end
	local registerVal6 = IsZMMapsLeaderboard(arg1)
	if registerVal6 then
		local registerVal7 = Engine.GetModelForController(arg1)
		registerVal6 = CoD.SafeGetModelValue(registerVal7, "leaderboards.leaderboardZMMapsNumPlayersFilter")
		if registerVal6 ~= CoD.perController[arg1].leaderboardZMMapsNumPlayersFilter then
		end
	end
	registerVal6 = IsDOALeaderboard(arg1)
	if registerVal6 then
		registerVal7 = Engine.GetModelForController(arg1)
		registerVal6 = CoD.SafeGetModelValue(registerVal7, "leaderboards.leaderboardDOANumPlayersFilter")
		if registerVal6 ~= CoD.perController[arg1].leaderboardDOANumPlayersFilter then
		end
	end
	if true and true and true and true then
		return 
	end
	registerVal6 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal6, "leaderboards")
	local registerVal8 = Engine.CreateModel(registerVal7, "leaderboardDurationFilter")
	Engine.SetModelValue(registerVal8, CoD.perController[arg1].leaderboardDurationFilter)
	local registerVal9 = Engine.CreateModel(registerVal7, "leaderboardPlayerFilter")
	Engine.SetModelValue(registerVal9, CoD.perController[arg1].leaderboardPlayerFilter)
	registerVal9 = Engine.CreateModel(registerVal7, "leaderboardZMMapsNumPlayersFilter")
	Engine.SetModelValue(registerVal9, CoD.perController[arg1].leaderboardZMMapsNumPlayersFilter)
	registerVal9 = Engine.CreateModel(registerVal7, "leaderboardDOANumPlayersFilter")
	Engine.SetModelValue(registerVal9, CoD.perController[arg1].leaderboardDOANumPlayersFilter)
	LoadLeaderboard(arg0, arg1)
end

function Leaderboard_OpenPlayerDetails(arg0, arg1, arg2)
	Leaderboard_SetSelectedFriendXUID(arg0, arg1, arg2)
	OpenOverlay(arg0, "Social_PlayerDetailsPopup", arg2)
end

function Leaderboard_SetSelectedFriendXUID(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if not registerVal3 then
		return 
	end
	local registerVal5 = arg1:getModel()
	registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "name"))
	local registerVal6 = arg1:getModel()
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal6, "xuid"))
	registerVal5 = Engine.GetPlayerInfo(arg2, registerVal4)
	registerVal6 = Engine.GetModelForController(arg2)
	local registerVal7 = Engine.CreateModel(registerVal6, "Social.selectedFriendXUID")
	Engine.SetModelValue(registerVal7, registerVal4)
	local registerVal8 = Engine.CreateModel(registerVal6, "Social.selectedFriendGamertag")
	Engine.SetModelValue(registerVal8, registerVal3)
end

function LeaderboardEnablePCacheBuffer(arg0, arg1, arg2)
	local function __FUNC_7DBC1_()
		local registerVal0 = arg0:getParent()
		local registerVal2 = registerVal0:getParent()
		if registerVal0.PlayerProfileInfoWidget then
			registerVal0.PlayerProfileInfoWidget:setState("Visible")
		end
		registerVal2 = arg1:getModel(arg2, "xuid")
		if registerVal2 then
			local registerVal3 = Engine.GetModelValue(registerVal2)
			arg1:setupPlayerBackgroundIdUpdateByXUID(registerVal3)
		end
		arg1.setVisibleTimer = nil
	end

	local registerVal4 = LUI.UITimer.newElementTimer(250.000000, true, __FUNC_7DBC1_)
	arg1.setVisibleTimer = registerVal4
	arg1:addElement(arg1.setVisibleTimer)
end

function LeaderboardDisablePCacheBuffer(arg0, arg1, arg2)
	arg1:disablePlayerBackgroundIdUpdate()
	if arg1.setVisibleTimer then
		arg1.setVisibleTimer:close()
		arg1.setVisibleTimer = nil
	end
	local registerVal3 = arg0:getParent()
	local registerVal5 = registerVal3:getParent()
	if registerVal3.PlayerProfileInfoWidget then
		registerVal3.PlayerProfileInfoWidget:setState("PCacheBuffer")
	end
end

function SpectateScoreboardPlayer(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, ("scoreboard." .. arg1))
	if not registerVal3 then
		return 
	end
	registerVal4 = Engine.GetModel(registerVal3, "count")
	if not registerVal4 then
		return 
	end
	local registerVal5 = Engine.GetModelValue(registerVal4)
	local registerVal6 = tonumber(arg2)
	if registerVal5 <= registerVal6 then
		return 
	end
	local registerVal7 = Engine.GetModel(registerVal3, registerVal6)
	if not registerVal7 then
		return 
	end
	local registerVal8 = Engine.GetModel(registerVal7, "clientNum")
	if not registerVal8 then
		return 
	end
	local registerVal9 = Engine.GetModelValue(registerVal8)
	Engine.SendMenuResponse(arg0, "spectate", registerVal9)
end

function SpectateSelectedPlayer(arg0, arg1, arg2)
	local registerVal5 = arg1:getModel()
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "clientNum"))
	Engine.SendMenuResponse(arg2, "spectate", registerVal3)
end

function SpectateNextAlivePlayer(arg0)
	Engine.Exec(arg0, "cmd follownextalive")
end

function SetShoutcastHighlightedPlayer(arg0, arg1, arg2)
	local registerVal5 = arg1:getModel()
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "clientNum"))
	Dvar.shoutcastHighlightedClient:set(registerVal3)
end

function ToggleCodCasterProfileValue(arg0, arg1)
	local registerVal2 = CoD.ShoutcasterProfileVarBool(arg0, arg1)
	if not registerVal2 then
		CoD.SetShoutcasterProfileVarValue(arg0, arg1, 1.000000)
	else
		CoD.SetShoutcasterProfileVarValue(arg0, arg1, 0.000000)
	end
end

function ToggleCodCasterQuickSettings(arg0, arg1, arg2, arg3)
	if not arg1.profileVar and not arg3 then
		return 
	end
	if arg3 == nil or arg3 == "" then
	else
	end
	ToggleCodCasterProfileValue(arg2, arg3)
	local registerVal5 = arg1:getModel()
	local registerVal6 = Engine.GetModel(registerVal5, "profileVarValue")
	if registerVal5 and registerVal6 then
		Engine.SetModelValue(registerVal6, CoD.ShoutcasterProfileVarBool(arg2, arg3))
	end
	registerVal6 = Engine.IsInGame()
	if registerVal6 and arg3 == "shoutcaster_qs_thirdperson" then
		local registerVal9 = CoD.ShoutcasterProfileVarValue(arg2, arg3)
		Engine.ExecNow(arg2, ("shoutcaster_thirdperson " .. registerVal9))
	end
end

function ToggleScoreboard(arg0)
	Engine.Exec(arg0, "cg_togglescores")
end

function ToggleInGamePauseMenu(arg0)
	Engine.Exec(arg0, "togglemenu")
end

function HandleTeamIdentityKeyboardComplete(arg0, arg1, arg2, arg3)
	local registerVal8 = DataSources.TeamIdentity.getModel(arg2)
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal8, "team"))
	local registerVal7 = DataSources.TeamIdentityInformation.getModel(arg2, registerVal6)
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_TEAM_IDENTITY_TEAMNAME then
		registerVal8 = Engine.GetModel(registerVal7, "teamName")
	end
	if registerVal8 then
		Engine.SetModelValue(registerVal8, arg3.input)
		CoD.SetShoutcasterProfileVarValue(arg2, ("shoutcaster_fe_" .. registerVal6 .. "_name"), arg3.input)
	end
end

function SetTeamIdentityProfileValue(arg0, arg1, arg2, arg3)
	if arg1 or arg3 == "" then
		return 
	end
	local registerVal5 = arg1:getModel()
	local registerVal4 = Engine.GetModel(registerVal5, "id")
	if not registerVal4 then
		return 
	end
	local registerVal7 = DataSources.TeamIdentity.getModel(arg2)
	registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal7, "team"))
	local registerVal6 = Engine.GetModelValue(registerVal4)
	CoD.SetShoutcasterProfileVarValue(arg2, ("shoutcaster_fe_" .. registerVal5 .. "_" .. arg3), registerVal6)
end

function SetTeamIdentityTeamLogo(arg0, arg1, arg2)
	local registerVal5 = DataSources.TeamIdentity.getModel(arg2)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "team"))
	local registerVal4 = DataSources.TeamIdentityInformation.getModel(arg2, registerVal3)
	local registerVal7 = arg1:getModel()
	registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal7, "ref"))
	local registerVal8 = arg1:getModel()
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal8, "name"))
	registerVal8 = Engine.GetModel(registerVal4, "teamLogo")
	Engine.SetModelValue(registerVal8, registerVal5)
	registerVal8 = Engine.GetModel(registerVal4, "teamLogoName")
	Engine.SetModelValue(registerVal8, registerVal6)
end

function SetTeamIdentityTeamColor(arg0, arg1, arg2)
	local registerVal5 = DataSources.TeamIdentity.getModel(arg2)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "team"))
	local registerVal4 = DataSources.TeamIdentityInformation.getModel(arg2, registerVal3)
	local registerVal7 = arg1:getModel()
	registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal7, "color"))
	registerVal7 = Engine.GetModel(registerVal4, "teamColor")
	Engine.SetModelValue(registerVal7, registerVal5)
end

function UpdateSelectedTeamIdentityColorElement(arg0, arg1, arg2)
	local registerVal5 = DataSources.TeamIdentity.getModel(arg2)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "team"))
	registerVal5 = CoD.ShoutcasterProfileVarValue(arg2, ("shoutcaster_fe_" .. registerVal3 .. "_color"))
	local registerVal8 = arg1:getModel()
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal8, "id"))
	local registerVal9 = {}
	registerVal9.id = registerVal5
	local registerVal7 = arg0.TeamColorList:findItem(registerVal9)
	if registerVal7 then
		registerVal9 = registerVal7:getModel()
		registerVal8 = Engine.GetModel(registerVal9, "selected")
		Engine.SetModelValue(registerVal8, false)
	end
	local registerVal10 = arg1:getModel()
	registerVal9 = Engine.GetModel(registerVal10, "selected")
	Engine.SetModelValue(registerVal9, true)
end

function SaveShoutcasterSettings(arg0, arg1, arg2)
	Engine.StorageWrite(arg2, Enum.StorageFileType.STORAGE_PROFILE_SHOUTCASTER)
end

function ChangeAbilityWheelItems(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.GetModel(registerVal4, "hudItems.cybercomRequestedType")
	registerVal4 = Engine.GetModelValue(registerVal3)
	Engine.SetModelValue(registerVal3, (((registerVal4 + arg2) + 3.000000) % 3.000000))
	DataSources.AbilityWheel.getModel(arg0)
	arg1.updateButtonStates(nil, ((((registerVal4 + arg2) + 3.000000) % 3.000000) + 1.000000))
end

function SetFileShareOverrideXuid(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "xuid")
	if registerVal3 ~= nil then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		Dvar.fshRecentsXUID:set(registerVal4)
		local registerVal10 = tostring(registerVal4)
		OpenGenericSmallPopup(arg0, arg2, "Theater Player Overriden", ("You will now be able to view fileshare as " .. registerVal10), nil, "MENU_OK")
	end
end

function OpenCODPointsIntro(arg0, arg1, arg2)
	local registerVal3 = Engine.StorageGetBuffer(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	local registerVal4 = Engine.GetInventoryItemQuantity(arg2, Dvar.initial_cod_points_id:get())
	registerVal4 = IsJapaneseSku()
	registerVal4 = registerVal3.codPointMsgSeen:get()
	if 0.000000 < registerVal4 and registerVal3 and not registerVal4 and registerVal4 == 0.000000 then
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "InitialCODPointsOverlay")
	end
end

function OpenBlackMarketIncentivePopup(arg0, arg1)
	local registerVal2 = ShouldShowSeasonPassIncentiveOverlay(arg1)
	if registerVal2 then
		CoD.OverlayUtility.CreateOverlay(arg1, arg0, "SeasonPassIncentiveOverlay")
	else
		registerVal2 = IsSeasonPassIncentiveExploitPossible(arg1)
		if registerVal2 and not CoD.isPC then
			CoD.OverlayUtility.CreateOverlay(arg1, arg0, "SeasonPassExlpoitOverlay")
		else
			registerVal2 = ShouldShowDigitalIncentiveOverlay(arg1)
			if registerVal2 then
				CoD.OverlayUtility.CreateOverlay(arg1, arg0, "DigitalIncentiveOverlay")
			else
				registerVal2 = ShouldShowRetailIncentiveOverlay(arg1)
				if registerVal2 then
					CoD.OverlayUtility.CreateOverlay(arg1, arg0, "RetailIncentiveOverlay")
				else
					registerVal2 = ShouldShowInitialCodPointsOverlay(arg1)
					if registerVal2 then
						CoD.OverlayUtility.CreateOverlay(arg1, arg0, "InitialCODPointsOverlay")
					else
						registerVal2 = CoD.StoreUtility.GetMissingCPSkuList(arg1)
						if 0.000000 < #arg1 then
							local registerVal8 = {}
							registerVal8.skuList = registerVal2
							CoD.OverlayUtility.CreateOverlay(arg1, arg0, "MissingCoDPointsRedemption", arg1, registerVal8)
						else
							local registerVal3 = CoD.StoreUtility.GetMissingCurrencySkuList(arg1)
							if 0.000000 < #registerVal3 then
								registerVal8 = {}
								registerVal8.skuList = registerVal3
								CoD.OverlayUtility.CreateOverlay(arg1, arg0, "MissingCurrencyRedemption", arg1, registerVal8)
							end
						end
					end
				end
			end
		end
	end
end

function OpenBlackMarket(arg0, arg1, arg2)
	local registerVal3 = Engine.PushAnticheatMessageToUI(arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.LOOT)
	if registerVal3 then
		DisplayAnticheatMessage(arg0, arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.LOOT, "", "")
		return 
	end
	registerVal3 = Engine.IsUserGuest(arg2)
	if registerVal3 then
		LuaUtils.UI_ShowErrorMessageDialog(arg2, "MENU_GUEST_CONTENT_RESTRICTED")
		return 
	end
	for index3=0.000000, (LuaEnums.MAX_CONTROLLER_COUNT - 1.000000), 1.000000 do
		local registerVal7 = CheckIfFeatureIsBanned(index3, LuaEnums.FEATURE_BAN.LOOT)
		if registerVal7 then
			LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(index3, LuaEnums.FEATURE_BAN.LOOT))
			return 
		end
	end
	OpenOverlay(arg0, "BlackMarket", arg2)
end

function OpenPCQuit(arg0, arg1, arg2)
	if CoD.isPC then
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "QuitPCGamePopup")
	end
end

function OpenPCResetControlsPopup(arg0, arg1, arg2)
	if CoD.isPC then
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "ResetPCControls")
	end
end

function ResetPCControlsToDefault(arg0, arg1, arg2)
	local registerVal3 = Dvar.ui_execdemo_gamescom:get()
	if registerVal3 then
		Engine.ExecNow(arg2, "resetprofilecommon")
		Engine.ExecNow(arg2, "updategamerprofile")
		Engine.ExecNow(arg2, "storagereset stats_mp_offline")
	end
	Engine.SetProfileVar(arg2, "input_invertpitch", 0.000000)
	Engine.SetProfileVar(arg2, "gpad_rumble", 1.000000)
	Engine.SetProfileVar(arg2, "gpad_sticksConfig", CoD.THUMBSTICK_DEFAULT)
	Engine.SetProfileVar(arg2, "gpad_buttonsConfig", CoD.BUTTONS_DEFAULT)
	Engine.SetProfileVar(arg2, "input_viewSensitivity", CoD.SENSITIVITY_2)
	Engine.SetProfileVar(arg2, "input_viewSensitivityHorizontal", CoD.SENSITIVITY_2)
	Engine.SetProfileVar(arg2, "input_viewSensitivityVertical", CoD.SENSITIVITY_2)
	Engine.SetProfileVar(arg2, "flipped_control_config", 0.000000)
	Engine.SetProfileVar(arg2, "mouseSensitivity", 5.000000)
	Engine.ExecNow(arg2, "defaultbindings")
	Engine.ExecNow(arg2, "execcontrollerbindings")
	Engine.SyncHardwareProfileWithDvars()
	local registerVal5 = {}
	registerVal5.name = "options_refresh"
	registerVal5.controller = arg2
	arg0:dispatchEventToRoot(registerVal5)
end

function OpenPCApplyGraphicsPopup(arg0, arg1, arg2)
	if CoD.isPC then
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "ApplyPCGraphics")
	end
end

function ApplyPCGraphicsOptions(arg0, arg1, arg2)
	Engine.ApplyHardwareProfileSettings()
	local registerVal3 = tonumber(Engine.GetHardwareProfileValueAsString("r_picmip"))
	Engine.SetTextureQuality(registerVal3)
	Engine.SetShadowQuality(CoD.PCUtil.ShadowOptionIndex)
	Engine.SetVolumetricQuality(CoD.PCUtil.VolumetricOptionIndex)
	Engine.SyncHardwareProfileWithDvars()
	Engine.SaveHardwareProfile()
	Engine.Exec(nil, "vid_restart")
	if arg0.occludedMenu and arg0.occludedMenu.id == "Menu.StartMenu_Options_Graphics_PC" then
		local function __FUNC_80E81_()
			Engine.SyncHardwareProfileWithDvars()
			Engine.SaveHardwareProfile()
			CoD.PCUtil.RefreshAllOptions(arg0.occludedMenu, arg2)
		end

		arg0.occludedMenu:addElement(LUI.UITimer.newElementTimer(500.000000, true, __FUNC_80E81_))
	end
end

function ResetPCGraphicsOptions(arg0, arg1, arg2)
	Engine.ResetHardwareProfileSettings()
	local registerVal4 = Engine.GetShadowQuality()
	CoD.PCUtil.ShadowOptionIndex = registerVal4
	registerVal4 = Engine.GetVolumetricQuality()
	CoD.PCUtil.VolumetricOptionIndex = registerVal4
	Engine.Exec(nil, "vid_restart")
	CoD.PCUtil.RefreshAllOptions(arg1, arg2)
end

function HideIfUsingMouse(arg0, arg1)
	if CoD.isPC then
		local registerVal2 = Engine.LastInput_Gamepad()
		if registerVal2 then
			arg0:setAlpha(1.000000)
		else
			arg0:setAlpha(0.000000)
		end
	end
end

function HideMouseCursor(arg0)
	if CoD.isPC then
		Engine.HideMouseCursor()
		arg0.mouseCursorHidden = true
	end
end

function ShowMouseCursor(arg0)
	if CoD.isPC then
		Engine.ShowMouseCursor()
		arg0.mouseCursorHidden = nil
	end
end

function UIKeyboardCancel(arg0, arg1)
	Engine.Exec(arg1, "ui_keyboard_cancel")
end

function UIKeyboardComplete(arg0, arg1)
	Engine.Exec(arg1, "ui_keyboard_complete")
end

function ServerBrowserQuickRefresh(arg0, arg1)
	Engine.SteamServerBrowser_QuickRefresh()
end

function ServerBrowserCancelRequest(arg0)
	Engine.SteamServerBrowser_CancelServerRequest()
end

function RefreshLobbyServerBrowser(arg0)
	if arg0.serverType then
		Engine.SteamServerBrowser_RequestServers(arg0.serverType)
	else
		local registerVal1 = Engine.SteamServerBrowser_GetCurrentServerRequestType()
		Engine.SteamServerBrowser_RequestServers(registerVal1)
	end
end

function ServerBrowserRefreshServer(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel()
	if registerVal4 then
		local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal4, "serverIndex"))
		Engine.SteamServerBrowser_RefreshServer(registerVal5)
	end
end

function ServerBrowserSetFavorite(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel()
	if registerVal4 then
		local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal4, "serverIndex"))
		local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal4, "name"))
		if arg2.serverType == Enum.SteamServerRequestType.STEAM_SERVER_REQUEST_TYPE_FAVORITES then
			Engine.SteamServerBrowser_RemoveFavoriteServer(registerVal5, false)
			local registerVal9 = Engine.Localize("PLATFORM_SERVER_REMOVED_FROM_FAVORITES")
			CoD.OverlayUtility.ShowToast("DefaultState", registerVal9, registerVal6)
		else
			if arg2.serverType == Enum.SteamServerRequestType.STEAM_SERVER_REQUEST_TYPE_HISTORY then
				Engine.SteamServerBrowser_RemoveFavoriteServer(registerVal5, true)
				registerVal9 = Engine.Localize("PLATFORM_SERVER_REMOVED_FROM_HISTORY")
				CoD.OverlayUtility.ShowToast("DefaultState", registerVal9, registerVal6)
			else
				Engine.SteamServerBrowser_AddFavoriteServer(registerVal5, false)
				registerVal9 = Engine.Localize("PLATFORM_SERVER_ADDED_TO_FAVORITES")
				CoD.OverlayUtility.ShowToast("DefaultState", registerVal9, registerVal6)
			end
		end
	end
end

function ServerBrowserToggleFilter(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel()
	if registerVal4 then
		local registerVal5 = Engine.GetModel(registerVal4, "attribute")
		if registerVal5 then
			local registerVal6 = Engine.GetModelValue(registerVal5)
			if registerVal6 == "any" then
				Engine.SteamServerBrowser_ClearAttributeFilters()
			else
				local registerVal7 = Engine.SteamServerBrowser_IsAttributeFilterActive(registerVal6)
				Engine.SteamServerBrowser_SetAttributeFilter(registerVal6, (not ))
			else
				registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal4, "type"))
				registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal4, "id"))
				if registerVal7 == "any" then
					Engine.SteamServerBrowser_ClearFilter(registerVal6)
				else
					local registerVal8 = Engine.SteamServerBrowser_IsFilterActive(registerVal6, registerVal7)
					if registerVal8 then
						Engine.SteamServerBrowser_RemoveFilter(registerVal6, registerVal7)
					else
						Engine.SteamServerBrowser_AddFilter(registerVal6, registerVal7)
					end
				end
			end
		end
	end
end

function ServerSettingsEditName(arg0, arg1, arg2)
	ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_SERVER_NAME")
end

function ServerSettingsEditDescription(arg0, arg1, arg2)
	ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_SERVER_DESCRIPTION")
end

function ServerSettingsEditPassword(arg0, arg1, arg2)
	ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_SERVER_PASSWORD")
end

function ServerSettingsHandleKeyboardComplete(arg0, arg1, arg2, arg3)
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_SERVER_NAME then
		Dvar.live_steam_server_name:set(arg3.input)
	else
		if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_SERVER_DESCRIPTION then
			Dvar.live_steam_server_description:set(arg3.input)
		else
			if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_SERVER_PASSWORD then
				Dvar.live_steam_server_password:set(arg3.input)
			end
		end
	end
end

function ServerBrowserRequestPlayersList(arg0, arg1)
	local registerVal2 = arg0:getModel()
	if registerVal2 then
		local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal2, "serverIndex"))
		Engine.SteamServerBrowser_RequestPlayersInfo(registerVal3)
	end
end

function ServerFiltersEditKeywords(arg0, arg1, arg2)
	ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_SERVER_FILTER_KEYWORDS")
end

function ServerFiltersHandleKeyboardComplete(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.CreateModel(registerVal5, "steamServer.keywordsFilter")
	Engine.SetModelValue(registerVal4, arg3.input)
	CoD.PCUtil.SetServerKeywordsFilter(arg3.input)
end

function SetVerticaListSpacerHeight(arg0, arg1)
	local registerVal2 = Engine.GetModelValue(arg1)
	if arg1 and registerVal2 then
		arg0:setTopBottom(true, false, 0.000000, registerVal2)
	end
end

function ToggleMouse(arg0, arg1)
	arg0:toggleMouse()
end

function EnableMouseButton(arg0, arg1)
	arg0:setHandleMouseButton(true)
end

function DisableMouseButton(arg0, arg1)
	arg0:setHandleMouseButton(false)
end

function EnableMouseButtonOnElement(arg0, arg1)
	arg0:setHandleMouseButton(true)
end

function DisableMouseButtonOnElement(arg0, arg1)
	arg0:setHandleMouseButton(false)
end

function DisableMouseOnElement(arg0, arg1, arg2)
	if arg0[arg1] then
		arg0[arg1]:setMouseDisabled(true)
	end
end

function EnableMouseOnElement(arg0, arg1, arg2)
	if arg0[arg1] then
		arg0[arg1]:setMouseDisabled(false)
	end
end

function DisableMouseOnMenuElement(arg0, arg1, arg2)
	if arg0[arg1] then
		arg0[arg1]:setMouseDisabled(true)
	end
end

function EnableMouseOnMenuElement(arg0, arg1, arg2)
	if arg0[arg1] then
		arg0[arg1]:setMouseDisabled(false)
	end
end

function ToggleDropdownListInUse_Console(arg0, arg1)
	arg0.inUse = (not arg0.inUse)
	if arg0.inUse == true then
		MakeFocusable(arg0.DropdownList)
		SetLoseFocusToElement(arg0, "DropdownRoot", arg1)
		SetFocusToElement(arg0, "DropdownList", arg1)
		if arg0.DropdownList and arg0.DropdownList then
			SetState(arg0, "DefaultState")
			MakeNotFocusable(arg0.DropdownList)
			MakeFocusable(arg0.DropdownRoot)
			SetLoseFocusToElement(arg0, "DropdownList", arg1)
			SetFocusToElement(arg0, "DropdownRoot", arg1)
		end
	end
end

function DropDownListItemClick_Console(arg0, arg1, arg2)
end

function Gunsmith_OpenCreateVariantNamePopup(arg0, arg1, arg2)
	CoD.OverlayUtility.CreateOverlay(arg2, arg0, "GunsmithCreateVariantNameOverlay", arg2, arg1)
end

function Gunsmith_OpenSaveVariantPopup(arg0, arg1, arg2, arg3)
	CoD.OverlayUtility.CreateOverlay(arg2, arg0, "GunsmithSaveVariant", arg2, arg1)
end

function Gunsmith_TabChanged(arg0, arg1, arg2)
	DataSources.CraftWeaponList.setCurrentFilterItem(arg1.filter)
	CoD.perController[arg2].weaponCategory = arg1.filter
	arg0.weaponList:updateDataSource(true)
	local registerVal3 = arg0.weaponList:getFirstSelectableItem()
	arg0.weaponList:setActiveItem(registerVal3)
	if CoD.perController[arg2].gunsmithWeaponCategoryRestored == true then
		CoD.SetCustomization(arg2, (arg0.tabList.Tabs.grid.activeWidget.gridInfoTable.zeroBasedIndex + 1.000000), "category_index")
	end
end

function Gunsmith_Back(arg0, arg1, arg2)
	CoD.perController[arg2].gunsmithWeaponCategoryRestored = nil
	CoD.perController[arg2].gunsmithWeaponListIndex = nil
	CoD.perController[arg2].gunsmithAttachmentType = nil
	CoD.perController[arg2].gunsmithAttachmentModel = nil
	CoD.perController[arg2].gunsmithCamoIndexModel = nil
	CoD.perController[arg2].gunsmithReticleIndexModel = nil
	CoD.perController[arg2].gunsmithVariantModel = nil
	CoD.perController[arg2].gunsmithAttachmentVariantModel = nil
	CoD.perController[arg2].emptyVariantSelected = nil
	CoD.CraftUtility.Gunsmith.CachedVariants = {}
end

function Gunsmith_GainFocus(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "itemIndex"))
	CoD.SetCustomization(arg2, registerVal3, "weapon_index")
	if arg0.tabList then
		CoD.SetCustomization(arg2, (arg0.tabList.Tabs.grid.activeWidget.gridInfoTable.zeroBasedIndex + 1.000000), "category_index")
	end
	CoD.CraftUtility.Gunsmith.DisplayBaseWeapon(arg0, arg1, arg2)
	CoD.GunsmithWeaponOptionsTable = nil
end

function Gunsmith_ChooseWeaponList(arg0, arg1, arg2)
	arg0:updateMode(Enum.GunsmithMode.GUNSMITHMODE_WEAPONLIST, arg1)
	local registerVal3 = arg0.variantSelector.variantList:getFirstSelectableItem()
	arg0.variantSelector.variantList:setActiveItem(registerVal3)
end

function Gunsmith_BrowseVariants(arg0, arg1, arg2)
	arg0.variantSelector.variantList:updateDataSource(true)
	arg0:updateMode(Enum.GunsmithMode.GUNSMITHMODE_VARIANTS, arg1)
	CoD.perController[arg2].gunsmithWeaponListIndex = (arg0.weaponList.activeWidget.gridInfoTable.zeroBasedIndex + 1.000000)
	CoD.perController[arg2].gunsmithWeaponCategoryRestored = false
	CoD.perController[arg2].gunsmithAttachmentType = "attachment"
end

function Gunsmith_HandleKeyboardComplete(arg0, arg1, arg2, arg3)
	if not CoD.perController[arg2].gunsmithVariantModel then
		return 
	end
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_GUNSMITH then
		local registerVal6 = Engine.GetModel(CoD.perController[arg2].gunsmithVariantModel, "variantTextEntry")
		if registerVal6 then
			Engine.SetModelValue(registerVal6, arg3.input)
			local registerVal7 = Engine.GetModelForController(arg2)
			registerVal6 = Engine.CreateModel(registerVal7, "Gunsmith.validVariantNameEntered")
			Engine.SetModelValue(registerVal6, true)
		end
		registerVal6 = arg0:getModel(arg2, "inputText")
		if registerVal6 then
			Engine.SetModelValue(registerVal6, arg3.input)
		end
	end
end

function Gunsmith_CreateVariantNameBack(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	local registerVal4 = Engine.GetModel(registerVal3, "variantTextEntry")
	Engine.SetModelValue(registerVal4, Engine.Localize("MENU_GUNSMITH_ENTER_VARIANT_NAME"))
	local registerVal6 = Engine.GetModelForController(arg2)
	local registerVal5 = Engine.CreateModel(registerVal6, "Gunsmith.validVariantNameEntered")
	Engine.SetModelValue(registerVal5, false)
end

function Gunsmith_FocusOccupiedVariant(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	CoD.perController[arg2].gunsmithVariantModel = registerVal4
	CoD.CraftUtility.Gunsmith.DisplayWeaponWithVariant(arg2, CoD.perController[arg2].gunsmithVariantModel)
end

function Gunsmith_ChooseEmptyVariant(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	CoD.perController[arg2].gunsmithVariantModel = registerVal4
	registerVal4 = Engine.GetModelForController(arg2)
	local registerVal3 = Engine.CreateModel(registerVal4, "Gunsmith.validVariantNameEntered")
	Engine.SetModelValue(registerVal3, false)
	CoD.CraftUtility.Gunsmith.DisplayWeaponWithVariant(arg2, CoD.perController[arg2].gunsmithVariantModel)
	CoD.perController[arg2].emptyVariantSelected = true
end

function Gunsmith_EditVariant(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	CoD.perController[arg2].gunsmithVariantModel = registerVal4
	CoD.perController[arg2].confirmVariantNameButtonPressed = true
end

function Gunsmith_ConfirmVariantName(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal4, "variantTextEntry"))
	local registerVal6 = Engine.GetModel(registerVal4, "variantName")
	Engine.SetModelValue(registerVal6, registerVal5)
	local registerVal7 = GoBack(arg3, arg2)
	if registerVal7 then
		CoD.perController[arg2].confirmVariantNameButtonPressed = true
		registerVal7:openOverlay("GunsmithCustomizeVariant", arg2)
		local registerVal8 = Engine.GetModel(registerVal4, "variantNameBig")
		Engine.SetModelValue(registerVal8, registerVal5)
	end
end

function Gunsmith_SetWeaponAttachmentType(arg0, arg1, arg2, arg3, arg4, arg5)
	CoD.perController[arg5].gunsmithAttachmentType = arg2
	CoD.perController[arg5].gunsmithAttachmentIsZombieMode = arg4
	local registerVal7 = arg0:getModel(arg5, ("attachment" .. arg3))
	CoD.perController[arg5].gunsmithAttachmentModel = registerVal7
	registerVal7 = arg0:getModel(arg5, ("attachmentVariant" .. arg3))
	CoD.perController[arg5].gunsmithAttachmentVariantModel = registerVal7
	registerVal7 = Engine.GetModelForController(arg5)
	local registerVal6 = Engine.CreateModel(registerVal7, "Gunsmith.GunsmithSelectedItemProperties.attachmentType")
	Engine.SetModelValue(registerVal6, arg2)
end

function Gunsmith_ClearAttachmentSlot(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel(arg3, ("attachment" .. arg2))
	Engine.SetModelValue(registerVal4, CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX)
	local registerVal5 = arg0:getModel(arg3, ("attachmentVariant" .. arg2))
	Engine.SetModelValue(registerVal5, CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX)
	if arg2 == 1.000000 or arg2 == "1" then
		local registerVal6 = arg0:getModel(arg3, "reticleIndex")
		Engine.SetModelValue(registerVal6, CoD.CraftUtility.Gunsmith.RETICLE_NONE)
	end
	Gunsmith_ClearItemName(arg3)
	registerVal6 = arg0:getModel()
	CoD.CraftUtility.Gunsmith.DisplayWeaponWithVariant(arg3, registerVal6, true)
end

function Gunsmith_ClearCamo(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel(arg2, "camoIndex")
	Engine.SetModelValue(registerVal3, CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX)
	Gunsmith_ClearItemName(arg2)
	local registerVal4 = arg0:getModel()
	CoD.CraftUtility.Gunsmith.DisplayWeaponWithVariant(arg2, registerVal4, true)
end

function Gunsmith_ClearVariantPaintjobSlot(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel(arg2, "paintjobSlot")
	local registerVal4 = arg0:getModel(arg2, "paintjobIndex")
	Engine.SetModelValue(registerVal3, Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT)
	Engine.SetModelValue(registerVal4, Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX)
	Gunsmith_ClearItemName(arg2)
	local registerVal5 = arg0:getModel()
	CoD.CraftUtility.Gunsmith.DisplayWeaponWithVariant(arg2, registerVal5, true)
end

function Gunsmith_SelectAttachment(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	if registerVal3 and CoD.perController[arg2].gunsmithVariantModel then
		local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal3, "attachmentIndex"))
		local registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal3, "acvIndex"))
		for index9=1.000000, CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			local registerVal13 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].gunsmithVariantModel, ("attachment" .. index9)))
			local registerVal14 = Engine.AreAttachmentsCompatibleByAttachmentID(registerVal6, registerVal13)
			if 0.000000 < registerVal13 and registerVal6 ~= registerVal13 and not registerVal14 then
				table.insert({}, index9)
			end
		end
		for index9=1.000000, #CoD.CraftUtility.Gunsmith.MAX_ATTACHMENTS, 1.000000 do
			registerVal13 = Engine.GetModel(CoD.perController[arg2].gunsmithVariantModel, ("attachment" .. {}[index9]))
			registerVal14 = Engine.GetModel(CoD.perController[arg2].gunsmithVariantModel, ("attachmentVariant" .. {}[index9]))
			Engine.SetModelValue(registerVal13, CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX)
			Engine.SetModelValue(registerVal14, CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX)
		end
		CoD.CraftUtility.Gunsmith.ClearVariantSlotByAttachmentIndex(arg2, CoD.perController[arg2].gunsmithVariantModel, registerVal6)
		local registerVal9 = arg0:getModel()
		Engine.SetModelValue(registerVal9, registerVal6)
		Engine.SetModelValue(CoD.perController[arg2].gunsmithAttachmentVariantModel, registerVal7)
	end
end

function Gunsmith_FocusAttachment(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.GetCustomization(arg2, "weapon_index")
	local registerVal5 = arg1:getModel(arg2, "attachmentIndex")
	local registerVal6 = Engine.GetModelValue(registerVal5)
	local registerVal7 = Engine.GetAttachmentRefByIndex(registerVal6)
	local registerVal8 = arg0:getModel()
	local registerVal9 = Engine.GetModelValue(registerVal8)
	local registerVal10 = Engine.GetAttachmentRefByIndex(registerVal9)
	local registerVal12 = CoD.CraftUtility.GetLoadoutSlot(arg2)
	local registerVal15 = Engine.GetItemRef(registerVal4, Enum.eModes.MODE_MULTIPLAYER)
	local registerVal16 = CoD.CraftUtility.GetModeAbbreviation()
	registerVal16 = CoD.CraftUtility.Gunsmith.GetVariantAttachmentList(arg2, CoD.perController[arg2].gunsmithVariantModel)
	local registerVal17, registerVal18, registerVal19 = ipairs(registerVal16)
	for index20,value21 in registerVal17, registerVal18, registerVal19 do
		if value21 ~= CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
			local registerVal22 = Engine.GetAttachmentRefByIndex(value21)
			local registerVal23 = Engine.IsOpticByAttachmentIndex(registerVal6)
			local registerVal24 = Engine.IsOpticByAttachmentIndex(value21)
			if arg1 or not registerVal24 then
				local registerVal25 = Engine.AreAttachmentsCompatibleByAttachmentID(registerVal6, value21)
				if registerVal25 then
				end
			end
		end
	end
	if CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX < registerVal9 and registerVal7 ~= registerVal10 then
		registerVal17 = string.gsub((((registerVal15 .. registerVal16) .. "+" .. registerVal22) .. "+" .. registerVal7), ("+" .. registerVal10), "")
	end
	if arg3 == false then
		registerVal18 = CoD.CraftUtility.Gunsmith.GetWeaponAttachmentStringWithoutVariants(arg2, CoD.perController[arg2].gunsmithVariantModel)
	else
		registerVal18 = Engine.GetModelValue(arg1:getModel(arg2, "variantIndex"))
		registerVal19 = CoD.CraftUtility.Gunsmith.GetAttachmentVariantStringWithSelectedVariant(arg2, CoD.perController[arg2].gunsmithVariantModel, registerVal9, registerVal18)
	end
	registerVal18 = CoD.CraftUtility.Gunsmith.IsFocusAttachmentEquipped(arg2, CoD.perController[arg2].gunsmithVariantModel, registerVal6)
	if not registerVal18 then
	end
	if registerVal17 and registerVal17 ~= "" then
		registerVal23 = CoD.GetLocalClientAdjustedNum(arg2)
		Engine.SendClientScriptNotify(arg2, ("CustomClass_focus" .. registerVal23), registerVal12, registerVal17, registerVal7, "none", (registerVal19 .. (registerVal7 .. ",0")))
	end
end

function Gunsmith_SetAttachmentVariant(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "variantIndex"))
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal3, "attachmentIndex"))
	local registerVal7 = CoD.CraftUtility.Gunsmith.IsFocusAttachmentEquipped(arg2, CoD.perController[arg2].gunsmithVariantModel, registerVal5)
	if registerVal5 ~= CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX and registerVal7 then
		CoD.CraftUtility.Gunsmith.SetFocusAttachmentVariant(arg2, CoD.perController[arg2].gunsmithVariantModel, registerVal5, registerVal4)
	end
end

function Gunsmith_FocusCamo(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "itemIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = IsGunsmithItemWeaponOptionLocked(arg0, arg1, arg2)
	if registerVal5 then
	end
	local registerVal7 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].gunsmithVariantModel, "paintjobSlot"))
	local registerVal8 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].gunsmithVariantModel, "paintjobIndex"))
	CoD.CraftUtility.Gunsmith.DisplayWeaponWithVariant(arg2, CoD.perController[arg2].gunsmithVariantModel, false, nil, nil, 0.000000)
end

function Gunsmith_SetWeaponCamoModel(arg0, arg1, arg2)
	local registerVal4 = arg0:getModel(arg2, "camoIndex")
	CoD.perController[arg2].gunsmithCamoIndexModel = registerVal4
	local registerVal8 = CoD.GetLocalClientAdjustedNum(arg2)
	Engine.SendClientScriptNotify(arg2, ("cam_customization_focus" .. registerVal8), "primary", "select01")
end

function Gunsmith_SelectCamo(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "itemIndex")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal5 = arg0:getModel()
		Engine.SetModelValue(registerVal5, registerVal4)
	end
end

function Gunsmith_FocusReticle(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].gunsmithVariantModel, "camoIndex"))
	CoD.CraftUtility.Gunsmith.DisplayWeaponWithVariant(arg2, CoD.perController[arg2].gunsmithVariantModel, false, nil, nil, registerVal4)
end

function Gunsmith_SetWeaponReticleModel(arg0, arg1, arg2)
	local registerVal4 = arg0:getModel(arg2, "reticleIndex")
	CoD.perController[arg2].gunsmithReticleIndexModel = registerVal4
	Engine.SendClientScriptNotify(arg2, "cam_customization_focus", "primary", "select01")
end

function Gunsmith_SelectReticle(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "weaponOptionSubIndex")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal5 = arg0:getModel()
		Engine.SetModelValue(registerVal5, registerVal4)
	end
end

function Gunsmith_SetWeaponOptionAsOld(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel()
	local registerVal4 = CoD.GetCustomization(arg2, "weapon_index")
	local registerVal5 = CoD.SafeGetModelValue(registerVal3, "weaponOptionType")
	local registerVal6 = CoD.SafeGetModelValue(registerVal3, "filterMode")
	local registerVal7 = CoD.SafeGetModelValue(CoD.perController[arg2].gunsmithVariantModel, "attachment1")
	if registerVal5 == Enum.eWeaponOptionGroup.WEAPONOPTION_GROUP_RETICLE and registerVal7 then
	end
	SetWeaponOptionAsOldInternal(arg0, arg1, arg2, registerVal7)
end

function Gunsmith_SetAttachmentAsOld(arg0, arg1)
	local registerVal2 = CoD.GetCustomization(arg1, "weapon_index")
	local registerVal3 = arg0:getModel(arg1, "attachmentIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = Engine.GetAttachmentIndexByAttachmentTableIndex(registerVal2, registerVal4)
	if registerVal3 and CoD.CACUtility.EmptyItemIndex < registerVal5 then
		Engine.SetAttachmentAsOld(arg1, registerVal2, registerVal5)
	end
end

function Gunsmith_SetACVASOld(arg0, arg1)
	local registerVal2 = CoD.GetCustomization(arg1, "weapon_index")
	if arg0.attachmentTableIndex and arg0.variantIndex then
		SetACVASOldInternal(arg1, registerVal2, arg0.attachmentTableIndex, arg0.variantIndex, Enum.eModes.MODE_MULTIPLAYER)
	end
end

function Gunsmith_SetSelectedItemName(arg0, arg1, arg2, arg3, arg4)
	if arg1.m_focusable then
		local registerVal5 = arg1:getModel()
		local registerVal7 = Engine.GetModelForController(arg4)
		local registerVal6 = Engine.CreateModel(registerVal7, "Gunsmith.GunsmithSelectedItemProperties.itemName")
		local registerVal8 = Engine.GetModelForController(arg4)
		registerVal7 = Engine.CreateModel(registerVal8, "Gunsmith.GunsmithSelectedItemProperties.attachmentType")
		Engine.SetModelValue(registerVal7, arg2)
		Engine.SetModelValue(registerVal6, "")
		if arg2 == "attachment" or arg2 == "optic" then
			registerVal8 = arg0:getModel(arg4, ("attachment" .. arg3))
			local registerVal9 = Engine.GetModelValue(registerVal8)
			if registerVal9 ~= CoD.CraftUtility.Gunsmith.EMPTY_ITEM_INDEX then
				local registerVal10 = Engine.GetAttachmentNameByIndex(registerVal9)
				Engine.SetModelValue(registerVal6, registerVal10)
				Gunsmith_SetWeaponAttachmentType(arg0, arg1, arg2, arg3, false, arg4)
			else
				if arg2 == "camo" and arg3 == "" then
					registerVal8 = arg0:getModel(arg4, "camoIndex")
					registerVal9 = Engine.GetModelValue(registerVal8)
					registerVal10 = CoD.GetCustomization(arg4, "weapon_index")
					local registerVal11 = Engine.GetWeaponOptionsInfoModelByIndex(arg4, registerVal9, "WeaponOptions", registerVal10, 0.000000)
					local registerVal12 = Engine.GetModel(registerVal11, "name")
					if registerVal9 ~= CoD.CraftUtility.Gunsmith.CAMO_NONE and CoD.CACUtility.EmptyItemIndex < registerVal10 and registerVal12 then
						local registerVal13 = Engine.GetModelValue(registerVal12)
						Engine.SetModelValue(registerVal6, registerVal13)
					else
						if arg2 == "paintjob" and arg3 == "" then
							registerVal8 = arg1:getModel(arg4, "paintjobSlot")
							registerVal9 = Engine.GetModelValue(registerVal8)
							registerVal10 = arg1:getModel(arg4, "paintjobIndex")
							registerVal11 = Engine.GetModelValue(registerVal10)
							registerVal12 = CoD.CraftUtility.Paintjobs.GetPaintjobName(arg4, registerVal9, registerVal11)
							Engine.SetModelValue(registerVal6, registerVal12)
							if registerVal9 ~= Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_SLOT and registerVal11 ~= Enum.CustomizationPaintjobInvalidID.CUSTOMIZATION_INVALID_PAINTJOB_INDEX and arg2 == "snapshot" and arg3 == "" then
								Engine.SetModelValue(registerVal6, Engine.Localize("MENU_GUNSMITH_SNAPSHOT_SUBHEADER"))
							end
						end
					end
				end
			end
		end
	end
end

function Gunsmith_ClearVariant(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].gunsmithVariantModel, "variantIndex"))
	CoD.CraftUtility.Gunsmith.ClearVariant(arg2, registerVal4)
	local registerVal6 = IsMediaManager()
	if registerVal6 == true then
		registerVal6 = GoBackMultiple(arg0, arg2, 1.000000)
		MediaManagerMarkDirty(arg2)
	else
		registerVal6 = GoBackMultiple(arg0, arg2, 2.000000)
	end
	if registerVal6.variantSelector ~= nil and registerVal6.variantSelector.variantList ~= nil then
		registerVal6.variantSelector.variantList:updateDataSource(true)
		registerVal6 = registerVal6.variantSelector.variantList:getFirstSelectableItem()
		registerVal6.variantSelector.variantList:setActiveItem(registerVal6)
	end
	local registerVal7 = Engine.GetModelForController(arg2)
	registerVal6 = Engine.GetModel(registerVal7, "Gunsmith.UpdateDataSource")
	if registerVal6 ~= nil then
		ForceNotifyModel(arg2, "Gunsmith.UpdateDataSource")
	end
end

function Gunsmith_CopyVariant(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].gunsmithVariantModel, "variantIndex"))
	local registerVal7 = CoD.CraftUtility.Gunsmith.Copy(arg2, registerVal6)
	if registerVal7 then
		local registerVal8 = GoBack(arg4, arg2)
		registerVal8.variantSelector.variantList:updateDataSource(true)
		local registerVal12 = {}
		registerVal12.variantIndex = registerVal7
		local registerVal10 = registerVal8.variantSelector.variantList:findItem(registerVal12)
		if registerVal10 then
			registerVal8.variantSelector.variantList:setActiveItem(registerVal10)
		end
		ForceNotifyModel(arg2, "Gunsmith.UpdateDataSource")
	end
end

function Gunsmith_RenameVariant(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "variantIndex"))
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal3, "variantName"))
	CoD.CraftUtility.Gunsmith.RenameVariant(arg2, registerVal4, registerVal5)
end

function Gunsmith_HandleRenameKeyboardComplete(arg0, arg1, arg2, arg3)
	local registerVal4 = arg0:getModel()
	if not registerVal4 then
		return 
	end
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_GUNSMITH then
		local registerVal7 = Engine.GetModel(registerVal4, "variantName")
		registerVal7 = Engine.GetModel(registerVal4, "variantNameBig")
	end
	if registerVal7 then
		Engine.SetModelValue(registerVal7, arg3.input)
		Gunsmith_ClearSelectedGunsmithVariantStats(arg2)
	end
	if registerVal7 then
		Engine.SetModelValue(registerVal7, arg3.input)
	end
end

function Gunsmith_ClearSelectedGunsmithVariantStats(arg0)
	if CoD.perController[arg0].gunsmithVariantModel then
		local registerVal2 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg0].gunsmithVariantModel, "variantIndex"))
		CoD.CraftUtility.Gunsmith.ClearVariantStats(arg0, registerVal2, Enum.eModes.MODE_MULTIPLAYER)
		CoD.CraftUtility.Gunsmith.ClearVariantStats(arg0, registerVal2, Enum.eModes.MODE_CAMPAIGN)
	end
end

function Gunsmith_SaveChangesButtonAction(arg0, arg1, arg2, arg3)
	local registerVal5 = MediaManagerGetQuotaForCategory(arg3, "variant")
	if arg2 == "save" then
		CoD.CraftUtility.Gunsmith.WriteVaraintDataToDDL(arg3, CoD.perController[arg3].gunsmithVariantModel)
		ForceNotifyModel(arg3, "Gunsmith.UpdateDataSource")
		Gunsmith_RecordComScoreEvent(arg0, arg3, CoD.perController[arg3].gunsmithVariantModel, "save", registerVal5.categorySlotsUsed, registerVal5.categoryQuota)
	else
		Gunsmith_RecordComScoreEvent(arg0, arg3, CoD.perController[arg3].gunsmithVariantModel, "discard")
	end
	local registerVal6 = GoBack(arg0, arg3)
	local registerVal7 = GoBack(registerVal6, arg3)
	ClearMenuSavedState(registerVal6)
	local registerVal8 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg3].gunsmithVariantModel, "variantIndex"))
	registerVal7.variantSelector.variantList:updateDataSource(true)
	registerVal7.attachmentList:updateDataSource(true)
	local registerVal11 = {}
	registerVal11.variantIndex = registerVal8
	registerVal7.variantSelector.variantList:findItem(registerVal11, nil, true, nil)
	CoD.perController[arg3].emptyVariantSelected = false
end

function Gunsmith_PaintjobSelector_GainFocus(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	CoD.perController[arg2].selectedpaintjobModel = registerVal4
	CoD.perController[arg2].viewIndex = 1.000000
	registerVal4 = arg1:getModel(arg2, "paintjobSlot")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	local registerVal6 = arg1:getModel(arg2, "paintjobIndex")
	local registerVal7 = Engine.GetModelValue(registerVal6)
	CoD.CraftUtility.Gunsmith.DisplayWeaponWithVariant(arg2, CoD.perController[arg2].gunsmithVariantModel, false, registerVal5, registerVal7, nil)
	SetHeadingKickerText("MENU_GUNSMITH_CAPS")
end

function Gunsmith_OpenPaintjobSelector(arg0, arg1, arg2)
	CoD.SetCustomization(arg2, Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_LEFT, "type")
	CoD.perController[arg2].totalLayers = Enum.CustomizationTypeLayerCount.CUSTOMIZATION_TYPE_PAINTSHOP_MAX_LAYERS
	CoD.perController[arg2].totalGroups = Enum.CustomizationTypeGroupCount.CUSTOMIZATION_TYPE_MAX_GROUPS
	local registerVal4 = CoD.CraftUtility.Paintjobs.ParseDDL(arg2, Enum.StorageFileType.STORAGE_PAINTJOBS)
end

function Gunsmith_PaintjobSelector_ChooseOccupiedPaintjob(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "paintjobSlot"))
	local registerVal4 = Engine.GetModelValue(arg1:getModel(arg2, "paintjobIndex"))
	local registerVal5 = arg0:getModel(arg2, "paintjobSlot")
	local registerVal6 = arg0:getModel(arg2, "paintjobIndex")
	local registerVal7 = arg0:getModel(arg2, "paintjobSlotAndIndex")
	Engine.SetModelValue(registerVal5, registerVal3)
	Engine.SetModelValue(registerVal6, registerVal4)
	Engine.SetModelValue(registerVal7, (registerVal3 .. " " .. registerVal4))
end

function Gunsmith_ClearCACWithUpdatedVariant(arg0, arg1)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg1].gunsmithVariantModel, "variantIndex"))
	local function __FUNC_891C5_(arg0, arg2, arg3)
		local registerVal3 = Engine.GetClassItem(arg1, arg0, arg2, arg3)
		if CoD.CACUtility.EmptyItemIndex < registerVal3 and registerVal3 == (registerVal3 + 1.000000) then
			Engine.SetClassItem(arg1, arg0, arg2, CoD.CACUtility.EmptyItemIndex, arg3)
		end
	end

	local function __FUNC_892F9_(arg0)
		local registerVal1 = Engine.GetCustomClassCount(arg1, arg0)
		for index2=1.000000, registerVal1, 1.000000 do
			__FUNC_891C5_((index2 - 1.000000), "primarygunsmithvariant", arg0)
			__FUNC_891C5_((index2 - 1.000000), "secondarygunsmithvariant", arg0)
		end
	end

	__FUNC_892F9_(Enum.eModes.MODE_CAMPAIGN)
	__FUNC_892F9_(Enum.eModes.MODE_MULTIPLAYER)
end

function Gunsmith_SnapshotToggleDisplayProperty(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "param")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, registerVal4)
	if registerVal3 and registerVal4 and registerVal5 then
		registerVal6 = Engine.GetModelValue(registerVal5)
		Engine.SetModelValue(registerVal5, ((registerVal6 + 1.000000) % 2.000000))
	end
end

function Gunsmith_SnapshotToggleControlsUI(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "GunsmithSnapshot.ShowControls")
	if registerVal3 then
		registerVal4 = Engine.GetModelValue(registerVal3)
		Engine.SetModelValue(registerVal3, ((registerVal4 + 1.000000) % 2.000000))
	end
end

function Gunsmith_SnapshotToggleStatsFilter(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "GunsmithSnapshot.SessionMode")
	if registerVal3 then
		registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal4 == Enum.eModes.MODE_CAMPAIGN then
			Engine.SetModelValue(registerVal3, Enum.eModes.MODE_MULTIPLAYER)
		else
			Engine.SetModelValue(registerVal3, Enum.eModes.MODE_CAMPAIGN)
		end
	end
end

function CopyModelFindElement(arg0, arg1, arg2)
	local registerVal4 = arg1:getParent()
	if registerVal4 and registerVal4[arg2] then
		registerVal4[arg2]:setModel(arg1:getModel())
	end
end

function StartMenuGoBack_ListElement(arg0, arg1, arg2, arg3, arg4)
	StartMenuGoBack(arg4, arg2)
end

function StartMenuGoBack(arg0, arg1)
	StartMenuResumeGame(arg0, arg1)
	GoBack(arg0, arg1)
	ClearSavedState(arg0, arg1)
end

function StartMenuResumeGame(arg0, arg1)
	local registerVal2 = Engine.IsInGame()
	registerVal2 = Engine.CanPauseGame()
	registerVal2 = Engine.IsDemoPlaying()
	if registerVal2 and registerVal2 and not registerVal2 then
		Engine.SetDvar("cl_paused", 0.000000)
	end
	registerVal2 = Engine.IsInGame()
	if registerVal2 then
		Engine.SetActiveMenu(arg1, CoD.UIMENU_NONE)
	end
	PrepareCloseMenuInSafehouse(arg1)
end

function UnpauseGame(arg0, arg1)
	local registerVal2 = Engine.IsInGame()
	registerVal2 = Engine.CanPauseGame()
	registerVal2 = Engine.IsDemoPlaying()
	if registerVal2 and registerVal2 and not registerVal2 then
		Engine.SetDvar("cl_paused", 0.000000)
	end
end

function CloseStartMenu(arg0, arg1)
	local registerVal2 = GoBackToMenu(arg0, arg1, "StartMenu_Main")
	if registerVal2.menuName == "StartMenu_Main" or registerVal2.menuName == "DOA_INGAME_PAUSE" then
		StartMenuGoBack(registerVal2, arg1)
	end
end

function RefreshLobbyRoom(arg0, arg1)
	local registerVal2 = Engine.IsInGame()
	if registerVal2 then
		return 
	end
	local registerVal3 = Engine.GetGlobalModel()
	registerVal2 = Engine.GetModel(registerVal3, "lobbyRoot.lobbyGameMode")
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.GetModel(registerVal4, "lobbyRoot.lobbyMainMode")
	local registerVal5 = Engine.GetGlobalModel()
	registerVal4 = Engine.GetModel(registerVal5, "lobbyRoot.room")
	if registerVal4 then
		registerVal5 = Engine.GetModelValue(registerVal4)
		if registerVal5 == "auto" then
			local registerVal6 = Engine.GetMostRecentPlayedMode(arg1)
			local registerVal7 = Engine.GetAbbreviationForMode(registerVal6)
			registerVal7 = Engine.SessionModeIsMode(CoD.SESSIONMODE_SYSTEMLINK)
			if registerVal7 == true then
			end
			registerVal7 = IsCustomLobby()
			if registerVal7 then
			end
		end
		SendCustomClientScriptMenuStateChangeNotify(arg1, "Main", true, ((registerVal7 .. "_local") .. "_custom"))
		arg0.previousRoom = ((registerVal7 .. "_local") .. "_custom")
	end
end

function UpdatePlayerInspection(arg0, arg1, arg2)
	local registerVal5 = arg1:getModel()
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "xuid"))
	local registerVal4 = Engine.XuidIsValid(registerVal3)
	if registerVal4 then
		Engine.SendClientScriptNotify(arg2, "inspect_player", Engine.UInt64ToString(registerVal3))
	end
end

function UpdateGamerprofile(arg0, arg1, arg2)
	Engine.Exec(arg2, "updategamerprofile")
end

function OpenPaintshop(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.PushAnticheatMessageToUI(arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.UGC)
	if registerVal5 then
		DisplayAnticheatMessage(arg0, arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.UGC, "Paintshop", "")
		return 
	end
	registerVal5 = CheckIfFeatureIsBanned(arg2, LuaEnums.FEATURE_BAN.USER_GENERATED_CONTENT)
	if registerVal5 then
		LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(arg2, LuaEnums.FEATURE_BAN.USER_GENERATED_CONTENT))
		return 
	end
	local registerVal6 = Engine.GetModelForController(arg2)
	registerVal5 = Engine.CreateModel(registerVal6, "Paintshop.Mode")
	Engine.SetModelValue(registerVal5, Enum.PaintshopMode.PAINTSHOPMODE_WEAPONLIST)
	CoD.SetCustomization(arg2, Enum.CustomizationType.CUSTOMIZATION_TYPE_PAINTSHOP_VIEW_LEFT, "type")
	CoD.perController[arg2].totalLayers = Enum.CustomizationTypeLayerCount.CUSTOMIZATION_TYPE_PAINTSHOP_MAX_LAYERS
	CoD.perController[arg2].totalGroups = Enum.CustomizationTypeGroupCount.CUSTOMIZATION_TYPE_MAX_GROUPS
	local registerVal7 = CoD.CraftUtility.Paintjobs.ParseDDL(arg2, Enum.StorageFileType.STORAGE_PAINTJOBS)
	if registerVal7 then
		arg4:openOverlay("Paintshop", arg2)
	end
end

function OpenEmblemSelect(arg0, arg1, arg2, arg3, arg4)
	CoD.SetCustomization(arg2, Enum.CustomizationType.CUSTOMIZATION_TYPE_EMBLEM, "type")
	Engine.ExecNow(arg2, "emblemgetprofile")
	CoD.perController[arg2].selectedEmblemTabStorageType = arg3
	local registerVal5 = CoD.CraftUtility.Emblems.ParseDDL(arg2, CoD.perController[arg2].selectedEmblemTabStorageType)
	if registerVal5 then
		arg4:openOverlay("EmblemSelect", arg2)
	end
end

function OpenEmblemEditor(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.PushAnticheatMessageToUI(arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.UGC)
	if registerVal5 then
		DisplayAnticheatMessage(arg1, arg2, LuaEnums.ANTICHEAT_MESSAGE_GROUPS.UGC, "EmblemEditor", arg4)
		return 
	end
	registerVal5 = CheckIfFeatureIsBanned(arg2, LuaEnums.FEATURE_BAN.USER_GENERATED_CONTENT)
	if registerVal5 then
		LuaUtils.UI_ShowErrorMessageDialog(arg2, GetFeatureBanInfo(arg2, LuaEnums.FEATURE_BAN.USER_GENERATED_CONTENT))
		return 
	end
	if arg4 == "EmblemSelect" then
		EmblemSelect_ChooseEmblem(arg1, arg0, arg2)
		OpenOverlay(arg1, "EmblemEditor", arg2, "", "")
	else
		if arg4 == "PaintjobSelect" then
			PaintjobSelector_ChoosePaintjob(arg1, arg0, arg2)
			OpenOverlay(arg1, "EmblemEditor", arg2, "", "")
		end
	end
end

function OpenGunsmith(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetModelForController(arg2)
	local registerVal5 = Engine.CreateModel(registerVal6, "Gunsmith.Mode")
	Engine.SetModelValue(registerVal5, Enum.GunsmithMode.GUNSMITHMODE_WEAPONLIST)
	registerVal6 = CoD.CraftUtility.Gunsmith.ParseDDL(arg2, Enum.StorageFileType.STORAGE_GUNSMITH)
	local registerVal7 = CoD.CraftUtility.Paintjobs.ParseDDL(arg2, Enum.StorageFileType.STORAGE_PAINTJOBS)
	if registerVal6 and registerVal7 then
		arg4:openOverlay("Gunsmith", arg2)
		CoD.perController[arg2].emptyVariantSelected = false
	end
end

function OpenCallingCards(arg0, arg1, arg2, arg3, arg4)
	arg4:openOverlay("CallingCards", arg2)
end

function OpenGroups(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = IsGroupsEnabled()
	if registerVal5 then
		InitializeGroups(arg0, nil, arg2)
		GoBackAndOpenOverlayOnParent(arg0, "Groups", arg2)
		CoD.FileshareUtility.SetFileshareMode(arg2, Enum.FileshareMode.FILESHARE_MODE_GROUPS)
	end
end

function ToggleGroupShowcaseContentFavorite(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.FileshareUtility.GetSelectedItemProperty("fileId")
	if registerVal5 and CoD.perController[arg2].selectedGroup then
		local registerVal6 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
		local registerVal7 = CoD.FileshareUtility.GetSelectedItemProperty("favoriteInCurrGroup")
		if not registerVal7 then
			Engine.FavoriteFileInGroupsShowcase(arg2, registerVal6, registerVal5)
			local function __FUNC_8B80A_()
				CoD.FileshareUtility.ShowToastForProcessingGroupShowcaseAction(arg2, CoD.FileshareUtility.ToastTypes.GROUP_FAVORITE)
				Close(arg0, arg2)
			end

			OpenGroupsNotifyPopup(arg4, arg1, arg2, true, "favorite_file_in_showcase_task_complete", __FUNC_8B80A_, true)
		else
			Engine.UnfavoriteFileFromGroupsShowcase(arg2, registerVal6, registerVal5)
			local function __FUNC_8B925_()
				CoD.FileshareUtility.ShowToastForProcessingGroupShowcaseAction(arg2, CoD.FileshareUtility.ToastTypes.GROUP_UNFAVORITE)
				Close(arg0, arg2)
			end

			OpenGroupsNotifyPopup(arg4, arg1, arg2, true, "unfavorite_file_from_showcase_task_complete", __FUNC_8B925_, true)
		end
	end
end

function ToggleGroupShowcaseContentFeatured(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.FileshareUtility.GetSelectedItemProperty("fileId")
	if registerVal5 and CoD.perController[arg2].selectedGroup then
		local registerVal6 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
		local registerVal7 = CoD.FileshareUtility.GetSelectedItemProperty("featuredInCurrGroup")
		if not registerVal7 then
			Engine.FeatureFileInGroupsShowcase(arg2, registerVal6, registerVal5)
			local function __FUNC_8BDC2_()
				RemoveGroupShowcaseItemFromUnfeaturedList(registerVal6, registerVal5)
				CoD.FileshareUtility.ShowToastForProcessingGroupShowcaseAction(arg2, CoD.FileshareUtility.ToastTypes.GROUP_FEATURE)
				Close(arg0, arg2)
			end

			local function __FUNC_8BF1F_(arg1, arg2, arg3)
				local registerVal5 = Engine.GetModelForController(arg3)
				local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal5, "groups.notificationMessage"))
				if registerVal3 == "GROUPS_ERROR_TEAM_SHOWCASE_COUNT_EXCEEDED_FEATURE" then
					CoD.perController[arg3].previousFileId = registerVal5
					registerVal5 = CoD.FileshareUtility.GetSelectedItemProperty("fileName")
					CoD.perController[arg3].previousFileName = registerVal5
					registerVal5 = CoD.FileshareUtility.GetSelectedItemProperty("fileCategory")
					CoD.perController[arg3].previousFileCategory = registerVal5
					local registerVal4 = GoBack(arg1, arg3)
					OpenPopup(arg0, "GroupRemoveFeaturedItem", arg3)
					Close(registerVal4, arg3)
				end
			end

			OpenGroupsNotifyPopup(arg4, arg1, arg2, true, "feature_file_in_showcase_task_complete", __FUNC_8BDC2_, true, __FUNC_8BF1F_)
		else
			Engine.UnfeatureFileFromGroupsShowcase(arg2, registerVal6, registerVal5)
			local function __FUNC_8C255_()
				AddGroupShowcaseItemToUnfeaturedList(registerVal6, registerVal5)
				CoD.FileshareUtility.ShowToastForProcessingGroupShowcaseAction(arg2, CoD.FileshareUtility.ToastTypes.GROUP_UNFEATURE)
				Close(arg0, arg2)
			end

			OpenGroupsNotifyPopup(arg4, arg1, arg2, true, "unfeature_file_from_showcase_task_complete", __FUNC_8C255_, true)
		end
	end
end

function SwitchGroupShowcaseContentFeatured(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.FileshareUtility.GetSelectedItemProperty("fileId")
	CoD.perController[arg2].previousFileId = nil
	CoD.perController[arg2].previousFileName = nil
	CoD.perController[arg2].previousFileCategory = nil
	if registerVal4 and CoD.perController[arg2].previousFileId and CoD.perController[arg2].selectedGroup then
		local registerVal8 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
		Engine.UnfeatureFileFromGroupsShowcase(arg2, registerVal8, registerVal4, CoD.perController[arg2].previousFileId)
		local function __FUNC_8C769_(arg0, arg1, arg2)
			AddGroupShowcaseItemToUnfeaturedList(registerVal8, registerVal4)
			local function __FUNC_8C859_()
				RemoveGroupShowcaseItemFromUnfeaturedList(registerVal8, CoD.perController[arg2].previousFileId)
				CoD.FileshareUtility.ShowToastForProcessingGroupShowcaseAction(arg2, CoD.FileshareUtility.ToastTypes.GROUP_FEATURE, CoD.perController[arg2].previousFileName, CoD.perController[arg2].previousFileCategory)
			end

			OpenGroupsNotifyPopup(arg0, arg1, arg2, true, "feature_file_in_showcase_task_complete", __FUNC_8C859_, true)
		end

		OpenGroupsNotifyPopup(arg3, arg1, arg2, true, "unfeature_file_from_showcase_task_complete", __FUNC_8C769_, true)
	end
end

function RemoveFileFromGroupsShowcase(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.FileshareUtility.GetSelectedItemProperty("fileId")
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].selectedGroup, "groupId"))
	if registerVal5 then
		Engine.RemoveFileFromGroupsShowcase(arg2, registerVal5, registerVal6)
		local function __FUNC_8CBDE_()
			CoD.FileshareUtility.ShowToastForProcessingGroupShowcaseAction(arg2, CoD.FileshareUtility.ToastTypes.GROUP_REMOVE)
			Close(arg0, arg2)
		end

		OpenGroupsNotifyPopup(arg4, arg1, arg2, true, "remove_file_from_showcase_task_complete", __FUNC_8CBDE_, true)
	end
end

function PublishFileToGroupsShowcase(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.FileshareUtility.GetSelectedItemProperty("fileId")
	if registerVal5 then
		Engine.PublishFileToGroupsShowcase(arg2, registerVal5)
		local function __FUNC_8CE70_()
			CoD.FileshareUtility.ShowToastForProcessingGroupShowcaseAction(arg2, CoD.FileshareUtility.ToastTypes.GROUP_PUBLISH)
			Close(arg0, arg2)
		end

		OpenGroupsNotifyPopup(arg4, arg1, arg2, true, "publish_file_to_showcase_task_complete", __FUNC_8CE70_, true)
	end
end

function GroupsHandleGoBack(arg0, arg1, arg2)
	ClearSelectedGroup(arg0, arg1, arg2)
	CoD.perController[arg2].openMediaTabAfterClosingGroups = true
	GoBackAndOpenOverlayOnParent(arg0, "StartMenu_Main", arg2)
end

function OpenPersonalizeCharacter(arg0, arg1, arg2, arg3, arg4)
	CoD.LobbyBase.OpenPersonalizeCharacter(arg4, arg2)
end

function OpenChooseCharacterLoadout(arg0, arg1, arg2, arg3, arg4)
	CoD.CCUtility.customizationMode = Enum.eModes.MODE_MULTIPLAYER
	CoD.LobbyBase.OpenChooseCharacterLoadout(arg4, arg2, arg3)
end

function EditClanTag(arg0, arg1, arg2)
	ShowKeyboard(arg0, arg1, arg2, "KEYBOARD_TYPE_CLAN_TAG")
end

function OpenPopupMenuByNameParam(arg0, arg1, arg2, arg3, arg4)
	arg4:openPopup(arg3, arg2)
end

function HandleDemoKeyboardComplete(arg0, arg1, arg2, arg3)
	if arg3.modeName == arg1.keyboardName then
		arg1.Text:setText(arg3.text)
	end
end

function OpenDemoKeyboard(arg0, arg1, arg2, arg3, arg4)
	if arg4 and arg4 ~= "" then
		Engine.Exec(arg2, ("demo_keyboard " .. arg3 .. " " .. arg4))
	else
		Engine.Exec(arg2, ("demo_keyboard " .. arg3))
	end
	arg1.keyboardName = arg3
end

function OpenDemoSaveKeyboard(arg0, arg1, arg2, arg3)
	local registerVal5 = CoD.FileshareUtility.GetCurrentCategory()
	if registerVal5 == "clip_private" then
		if arg3 == "name" then
		else
			if arg3 == "desc" and registerVal5 == "screenshot_private" then
				if arg3 == "name" then
				else
					if arg3 == "desc" then
					end
				end
			end
		end
	end
	if not "screenshotDesc" then
		return 
	end
	OpenDemoKeyboard(arg0, arg1, arg2, "screenshotDesc", "")
end

function StartMenuUploadClip(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.GetDemoStreamedDownloadProgress()
	if registerVal5 < 100.000000 then
		local registerVal6 = Engine.Localize("MENU_NOTICE")
		local registerVal7 = Engine.Localize("MPUI_DEMO_DOWNLOAD_IN_PROGRESS", math.floor(registerVal5))
		local registerVal10 = {}
		registerVal10.controller = event.controller
		registerVal10.titleText = registerVal6
		registerVal10.messageText = registerVal7
		CoD.Menu.OpenDemoErrorPopup(arg0, registerVal10)
		return 
	end
	Engine.ExecNow(arg2, "demo_updatesavepopupuimodels clip")
	Engine.ExecNow(arg2, "setupThumbnailForFileshareSave clip")
	registerVal6 = IsInGame()
	registerVal6 = ShowOutOfClipsWarning(arg2)
	if registerVal6 and registerVal6 then
		CoD.OverlayUtility.CreateOverlay(arg2, arg4, "ClipsUnavailableForPurchase")
	else
		local function __FUNC_8DAAE_(arg0)
			Engine.SaveAndUploadClip(arg0, 0.000000)
		end

		CoD.FileshareUtility.OpenPrivateUploadPopup(arg0, arg2, "clip_private", __FUNC_8DAAE_)
	end
end

function UploadClip_GoBack(arg0, arg1, arg2, arg3)
	local registerVal4 = GoBack(arg0, arg2)
	ClearMenuSavedState(arg0)
	if registerVal4.menuName == "TimelineEditor" then
		Engine.Exec(arg2, "setupThumbnailsForManageSegments")
	else
		ResetThumbnailViewer(arg2)
	end
	local registerVal5 = Engine.IsClipModified()
	if registerVal5 == false and registerVal4.menuName == "EndDemoPopup" then
		GoBack(registerVal4, arg2)
	end
	local registerVal7 = Engine.GetGlobalModel()
	local registerVal6 = Engine.GetModel(registerVal7, "demo.uploadPopupOpen")
	Engine.SetModelValue(registerVal6, false)
end

function StartMenuOpenManageSegments(arg0, arg1, arg2, arg3, arg4)
	OpenPopupMenuByNameParam(arg0, arg1, arg2, "TimelineEditor", arg4)
end

function StartMenuOpenCustomizeHighlightReel(arg0, arg1, arg2, arg3, arg4)
	CoD.OverlayUtility.CreateOverlay(arg2, arg0, "DemoCustomizeHighlightReelPopup")
end

function StartMenuJumpToStart(arg0, arg1, arg2, arg3, arg4)
	Engine.Exec(arg2, "demo_jumptostart")
	GoBack(arg0, arg2)
end

function StartMenuEndDemo(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = arg0:getParent()
	CoD.OverlayUtility.CreateOverlay(arg2, registerVal6, "EndDemoPopup")
end

function DemoSwitchPlayer(arg0, arg1)
	if arg1 == nil or arg1 == "" then
		return 
	end
	if arg1 == "next" then
	else
		if arg1 == "prev" then
		end
	end
	Engine.Exec(arg0, ("demo_switchplayer " .. 1.000000))
end

function UpdateDemoTimeScale(arg0, arg1)
	local registerVal2 = CoD.DemoUtility.GetRoundedTimeScale()
	local registerVal3 = tonumber(arg1)
	local registerVal6 = Dvar.demo_maxTimeScale:get()
	if 0.000000 >= registerVal3 or (registerVal2 + registerVal3) > registerVal6 then
		if registerVal3 < 0.000000 and 0.100000 <= (registerVal2 + registerVal3) then
			Engine.Exec(arg0, ("demo_timescale " .. (registerVal2 + registerVal3)))
		end
	end
end

function UpdateDemoCameraMode(arg0, arg1)
	if arg1 == nil or arg1 == "" then
		return 
	end
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "demo.cameraMode"))
	if arg1 == "next" or arg1 == "cycle" then
		if registerVal2 == Enum.demoCameraMode.DEMO_CAMERA_MODE_NONE then
		else
			if registerVal2 == Enum.demoCameraMode.DEMO_CAMERA_MODE_THIRDPERSON then
			else
				if arg1 == "cycle" then
				else
					return 
				else
					if arg1 == "prev" then
						if registerVal2 == Enum.demoCameraMode.DEMO_CAMERA_MODE_THIRDPERSON then
						else
							if registerVal2 == Enum.demoCameraMode.DEMO_CAMERA_MODE_FREECAM then
							else
								return 
							end
						end
					end
				end
			end
		end
	end
	Engine.SwitchDemoCameraMode(Enum.demoCameraMode.DEMO_CAMERA_MODE_THIRDPERSON)
end

function GetNextDemoFastForwardTimeScale()
	local registerVal0 = CoD.DemoUtility.GetRoundedTimeScale()
	if 6.000000 <= registerVal0 then
	else
		if 4.000000 <= registerVal0 then
		else
			if 2.000000 <= registerVal0 then
			else
				if 1.000000 <= registerVal0 then
				else
				end
			end
		end
	end
	return 1.000000
end

function UpdateDemoFastForward(arg0)
	local registerVal1 = GetNextDemoFastForwardTimeScale()
	Engine.ExecNow(arg0, ("demo_timescale " .. registerVal1))
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "demo.timeScale")
	if registerVal2 then
		Engine.SetModelValue(registerVal2, registerVal1)
	end
	return registerVal1
end

function DemoJumpBack(arg0)
	Engine.Exec(arg0, "demo_back")
end

function DemoUpdatePlayPause(arg0)
	local registerVal1 = Engine.IsDemoClipRecording()
	if registerVal1 then
		Engine.Exec(arg0, "demo_pausecliprecord")
	end
	registerVal1 = CoD.DemoUtility.GetRoundedTimeScale()
	if 1.100000 <= registerVal1 then
		Engine.ExecNow(arg0, ("demo_timescale " .. 1.000000))
		local registerVal3 = Engine.GetGlobalModel()
		local registerVal2 = Engine.GetModel(registerVal3, "demo.timeScale")
		if registerVal2 then
			Engine.SetModelValue(registerVal2, 1.000000)
		else
			CoD.DemoUtility.RunPauseCommand(arg0)
		end
	end
end

function DemoToggleDemoHud(arg0)
	Engine.Exec(arg0, "demo_toggledemohud")
end

function DemoCancelPreview(arg0)
	Engine.Exec(arg0, "demo_cancelpreview")
end

function DemoStartAutoDollyCamera(arg0)
	CoD.DemoUtility.UnpauseIfPaused(arg0)
	Engine.Exec(arg0, "demo_startautodollycam")
end

function DemoStopAutoDollyCamera(arg0)
	Engine.Exec(arg0, "demo_stopautodollycam")
end

function DemoAddDollyCameraMarker(arg0)
	Engine.Exec(arg0, "demo_adddollycammarker")
end

function DemoEditDollyCameraMarker(arg0)
	CoD.DemoUtility.SwitchToDollyCamMarker(arg0, -1.000000)
	CoD.DemoUtility.SetEditingDollyCameraMarker(arg0, true)
end

function DemoExitEditDollyCameraMarker(arg0)
	local registerVal1 = Engine.GetHighlightedCameraMarker()
	Engine.Exec(arg0, ("demo_updatedollycammarkerparameters " .. registerVal1))
	CoD.DemoUtility.SetEditingDollyCameraMarker(arg0, false)
end

function DemoPlaceDollyCameraMarker(arg0)
	Engine.Exec(arg0, "demo_applynewdollycammarkerposition 0")
end

function DemoCancelPlaceDollyCameraMarker(arg0)
	Engine.Exec(arg0, "demo_applynewdollycammarkerposition 1")
end

function UpdateDollyCameraTimeScaleMode(arg0, arg1)
	if arg1 == nil or arg1 == "" then
		return 
	end
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "demo.currentDollyCamMarkerTimeScaleMode")
	registerVal3 = Engine.GetModelValue(registerVal2)
	if arg1 == "next" then
		if registerVal3 == Enum.demoDollyCameraTimeScaleMode.DEMO_DOLLYCAM_TIMESCALE_MODE_MANUAL then
		else
			if registerVal3 == Enum.demoDollyCameraTimeScaleMode.DEMO_DOLLYCAM_TIMESCALE_MODE_LINEAR then
			else
				return 
			else
				if arg1 == "prev" then
					if registerVal3 == Enum.demoDollyCameraTimeScaleMode.DEMO_DOLLYCAM_TIMESCALE_MODE_LINEAR then
					else
						if registerVal3 == Enum.demoDollyCameraTimeScaleMode.DEMO_DOLLYCAM_TIMESCALE_MODE_FIXED then
						else
							return 
						end
					end
				end
			end
		end
	end
	Engine.SetModelValue(registerVal2, Enum.demoDollyCameraTimeScaleMode.DEMO_DOLLYCAM_TIMESCALE_MODE_LINEAR)
end

function UpdateDollyCameraTimeScale(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "demo.currentDollyCamMarkerTimeScaleValue")
	if not registerVal2 then
		return 
	end
	registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = tonumber(arg1)
	local registerVal7 = Dvar.demo_maxTimeScale:get()
	if 0.000000 >= registerVal4 or (registerVal3 + registerVal4) > registerVal7 then
		if registerVal4 < 0.000000 and 0.100000 <= (registerVal3 + registerVal4) then
			Engine.SetModelValue(registerVal2, (registerVal3 + registerVal4))
		end
	end
end

function DemoFreeCameraLockOnObject(arg0)
	Engine.Exec(arg0, "demo_activatefreecameralockon")
end

function DemoFreeCameraUnlockObject(arg0)
	Engine.Exec(arg0, "demo_deactivatefreecameralockon")
end

function DemoAddLightmanMarker(arg0)
	Engine.Exec(arg0, "demo_addlightmanmarker")
end

function DemoEditLightmanMarker(arg0)
	CoD.DemoUtility.SwitchToLightmanMarker(arg0, -1.000000)
	CoD.DemoUtility.SetEditingLightmanMarker(arg0, true)
end

function DemoExitEditLightmanMarker(arg0)
	local registerVal1 = Engine.GetHighlightedCameraMarker()
	Engine.Exec(arg0, ("demo_updatelightmanmarkerparameters " .. registerVal1))
	CoD.DemoUtility.SetEditingLightmanMarker(arg0, false)
end

function DemoPlaceLightmanMarker(arg0)
	Engine.Exec(arg0, "demo_applynewlightmanmarkerposition 0")
end

function DemoCancelPlaceLightmanMarker(arg0)
	Engine.Exec(arg0, "demo_applynewlightmanmarkerposition 1")
end

function UpdateLightmanLightMode(arg0, arg1)
	if arg1 == nil or arg1 == "" then
		return 
	end
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.GetModel(registerVal3, "demo.currentLightmanMarkerLightMode")
	registerVal3 = Engine.GetModelValue(registerVal2)
	if arg1 == "next" then
		if registerVal3 == Enum.demoLightmanLightMode.DEMO_LIGHTMAN_LIGHT_MODE_OMNI then
		else
			return 
		else
			if arg1 == "prev" then
				if registerVal3 == Enum.demoLightmanLightMode.DEMO_LIGHTMAN_LIGHT_MODE_SPOT then
				else
					return 
				end
			end
		end
	end
	Engine.SetModelValue(registerVal2, Enum.demoLightmanLightMode.DEMO_LIGHTMAN_LIGHT_MODE_OMNI)
	local registerVal5 = Engine.GetHighlightedCameraMarker()
	Engine.Exec(arg0, ("demo_updatelightmanmarkerparameters " .. registerVal5))
end

function UpdateLightmanFloatParam(arg0, arg1, arg2)
	local registerVal3 = tonumber(arg2)
	if 0.000000 >= registerVal3 then
	end
	if not arg0.btnId then
		return 
	end
	if true then
	else
	end
	if arg0.btnId == "lightmanlightintensity" then
		local registerVal9 = Engine.GetGlobalModel()
		local registerVal8 = Engine.GetModel(registerVal9, "demo.currentLightmanMarkerLightIntensity")
	else
		if arg0.btnId == "lightmanlightrange" then
			registerVal9 = Engine.GetGlobalModel()
			registerVal8 = Engine.GetModel(registerVal9, "demo.currentLightmanMarkerLightRange")
		end
	end
	if arg1 or not registerVal8 then
		return 
	end
	registerVal8 = Engine.GetModelValue(registerVal8)
	if arg1 or (registerVal8 + -0.500000) > 10.000000 then
		if not true and 0.100000 <= (registerVal8 + -0.500000) then
			Engine.SetModelValue(registerVal8, (registerVal8 + -0.500000))
			local registerVal10 = Engine.GetHighlightedCameraMarker()
			Engine.Exec(arg1, ("demo_updatelightmanmarkerparameters " .. registerVal10))
		end
	end
end

function StoreCurrentLightmanColor(arg0, arg1, arg2, arg3)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal6, "demo.currentLightmanMarkerLightColorR"))
	local registerVal7 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal7, "demo.currentLightmanMarkerLightColorG"))
	local registerVal8 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal8, "demo.currentLightmanMarkerLightColorB"))
	registerVal8 = string.format("%d %d %d", (registerVal4 * 255.000000), (registerVal5 * 255.000000), (registerVal6 * 255.000000))
	CoD.DemoUtility.CurrentLightmanColor = registerVal8
end

function SelectLightmanColor(arg0, arg1, arg2, arg3)
	local registerVal5 = arg1:getModel()
	local registerVal4 = Engine.GetModel(registerVal5, "color")
	if registerVal4 then
		CoD.DemoUtility.SetCurrentLightmanColor(arg2, Engine.GetModelValue(registerVal4))
	end
end

function CancelLightmanColorSelection(arg0, arg1, arg2, arg3)
	if not CoD.DemoUtility.CurrentLightmanColor then
		return 
	end
	CoD.DemoUtility.SetCurrentLightmanColor(arg2, CoD.DemoUtility.CurrentLightmanColor)
end

function UpdateNumHighlightReelMomentsElementColor(arg0, arg1)
	local registerVal2 = CoD.DemoUtility.GetNumHighlightReelMomentsModel()
	if registerVal2 then
		local registerVal4 = Engine.GetModelValue(registerVal2)
	end
	if registerVal4 <= 0.000000 then
		arg0:setRGB(CoD.red.r, CoD.red.g, CoD.red.b)
	else
		arg0:setRGB(1.000000, 1.000000, 1.000000)
	end
end

function DemoCancelHighlightReelCreation(arg0)
	Engine.Exec(arg0, "demo_cancelhighlightreelcreation")
end

function ResetThumbnailViewer(arg0)
	Engine.ExecNow(arg0, "resetThumbnailViewer")
end

function PreserveThumbnails(arg0, arg1)
	if arg1 == true then
		Engine.ExecNow(arg0, "preservethumbnails 1")
	else
		Engine.ExecNow(arg0, "preservethumbnails 0")
	end
end

function TimelineEditorRefresh()
	local registerVal1 = Engine.GetGlobalModel()
	local registerVal0 = Engine.GetModel(registerVal1, "DemoSegments.refresh")
	registerVal1 = Engine.GetModelValue(registerVal0)
	Engine.SetModelValue(registerVal0, (registerVal1 + 1.000000))
end

function TimelineEditorPreviewClip(arg0, arg1, arg2)
	local registerVal5 = {}
	registerVal5.name = "close_all_ingame_menus"
	registerVal5.controller = arg2
	CoD.InGameMenu.CloseAllInGameMenus(arg0, registerVal5)
	Engine.Exec(arg2, "demo_previewclip")
end

function TimelineEditorFilmOptions(arg0, arg1, arg2)
	OpenPopupWithPriority(arg0, "TimelineEditorFilmOptions", arg2, 100.000000)
end

function TimelineEditorChangeTransition(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = Engine.GetModel(registerVal4, "segmentNumber")
	if registerVal3 then
		registerVal4 = Engine.GetModelValue(registerVal3)
		local registerVal5 = tonumber(Engine.GetDemoSegmentInformation((registerVal4 - 1.000000), "transitionValue"))
		if Enum.demoClipTransition.DEMO_CLIP_TRANSITION_LAST < (registerVal5 + 1.000000) then
		end
		Engine.ExecNow(arg2, ("demo_switchtransition " .. (registerVal4 - 1.000000) .. " " .. Enum.demoClipTransition.DEMO_CLIP_TRANSITION_FIRST))
	end
end

function TimelineEditorPlaceSegment(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.DemoUtility.Timeline_GetSelectedSegmentModel()
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal5, "segmentNumber"))
	local registerVal7 = Engine.GetModelValue(arg1:getModel(arg2, "segmentNumber"))
	if arg3 and (registerVal6 - 1.000000) ~= (registerVal7 - 1.000000) then
		local registerVal11 = arg4:getOwner()
		Engine.ExecNow(registerVal11, ("demo_movesegment " .. (registerVal6 - 1.000000) .. " " .. (registerVal7 - 1.000000)))
		CoD.DemoUtility.SetupDemoSegmentModel((registerVal6 - 1.000000))
		CoD.DemoUtility.SetupDemoSegmentModel((registerVal7 - 1.000000))
	end
	local registerVal8 = Engine.GetModel(registerVal5, "selected")
	Engine.SetModelValue(registerVal8, false)
	local registerVal9 = arg1:getModel()
	CoD.Timeline_RefreshStateAfterMove(arg4, registerVal9, registerVal5, arg3)
end

function TimelineEditorSetupMoveSegment(arg0, arg1, arg2, arg3)
	local registerVal4 = arg1:getModel()
	CoD.DemoUtility.Timeline_SetSelectedSegmentModel(registerVal4)
	CoD.Timeline_RefreshState(arg3, registerVal4, true)
end

function TimelineEditorUpdateTimeline(arg0, arg1, arg2, arg3, arg4)
	if arg3 == "gain_focus" then
	else
	end
	local registerVal8 = arg1:getModel()
	CoD.Timeline_RefreshState(arg4, registerVal8, false)
end

function TimelineEditorUpdateHighlightedSegmentModel(arg0, arg1, arg2, arg3, arg4)
	if arg3 == "gain_focus" then
	else
	end
	local registerVal6 = arg1:getModel()
	if not registerVal6 then
		return 
	end
	local registerVal7 = Engine.CreateModel(registerVal6, "highlighted")
	Engine.SetModelValue(registerVal7, false)
end

function TimelineEditorKeyboardComplete(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.DemoUtility.Timeline_GetHighlightedSegmentModel()
	local registerVal6 = Engine.GetModel(registerVal4, "name")
	Engine.SetModelValue(registerVal6, arg3.input)
end

function IncreaseSafeAreaVertical(arg0, arg1, arg2)
	if CoD.SafeArea and arg1 or not CoD.SafeArea.AdjustAmount then
		return 
	end
	local registerVal3 = tonumber(Engine.ProfileValueAsString(arg2, "safeAreaTweakable_vertical"))
	if (registerVal3 + CoD.SafeArea.AdjustAmount) <= CoD.SafeArea.Maximum then
		Engine.SetProfileVar(arg2, "safeAreaTweakable_vertical", (registerVal3 + CoD.SafeArea.AdjustAmount))
	end
end

function DecreaseSafeAreaVertical(arg0, arg1, arg2)
	if CoD.SafeArea and arg1 or not CoD.SafeArea.AdjustAmount then
		return 
	end
	local registerVal3 = tonumber(Engine.ProfileValueAsString(arg2, "safeAreaTweakable_vertical"))
	if CoD.SafeArea.Minimum <= (registerVal3 - CoD.SafeArea.AdjustAmount) then
		Engine.SetProfileVar(arg2, "safeAreaTweakable_vertical", (registerVal3 - CoD.SafeArea.AdjustAmount))
	end
end

function IncreaseSafeAreaHorizontal(arg0, arg1, arg2)
	if CoD.SafeArea and arg1 or not CoD.SafeArea.AdjustAmount then
		return 
	end
	local registerVal3 = tonumber(Engine.ProfileValueAsString(arg2, "safeAreaTweakable_horizontal"))
	if (registerVal3 + CoD.SafeArea.AdjustAmount) <= CoD.SafeArea.Maximum then
		Engine.SetProfileVar(arg2, "safeAreaTweakable_horizontal", (registerVal3 + CoD.SafeArea.AdjustAmount))
	end
end

function DecreaseSafeAreaHorizontal(arg0, arg1, arg2)
	if CoD.SafeArea and arg1 or not CoD.SafeArea.AdjustAmount then
		return 
	end
	local registerVal3 = tonumber(Engine.ProfileValueAsString(arg2, "safeAreaTweakable_horizontal"))
	if CoD.SafeArea.Minimum <= (registerVal3 - CoD.SafeArea.AdjustAmount) then
		Engine.SetProfileVar(arg2, "safeAreaTweakable_horizontal", (registerVal3 - CoD.SafeArea.AdjustAmount))
	end
end

function EquipScorestreak(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "itemIndex")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		if registerVal4 ~= CoD.CACUtility.EmptyItemIndex then
			local registerVal6 = CoD.CACUtility.GetAttachedItemSlot(CoD.perController[arg2].classModel, registerVal4, CoD.CACUtility.KillstreakNameList)
			if not registerVal6 then
				local registerVal7 = CoD.CACUtility.FindFirstEmptySlotInList(CoD.perController[arg2].classModel, CoD.CACUtility.KillstreakNameList)
				if registerVal7 then
					CoD.SetClassItem(arg2, 0.000000, registerVal7, registerVal4)
					CoD.CACUtility.GetCustomClassModel(arg2, 0.000000, CoD.perController[arg2].classModel)
					local registerVal10 = {}
					registerVal10.name = "update_state"
					registerVal10.menu = arg0
					arg0:processEvent(registerVal10)
				else
					local registerVal8 = OpenPopup(arg0, "ScorestreakOverCapacity", arg2)
					registerVal8:setModel(CoD.perController[arg2].classModel)
					if registerVal8.updateSelectedImage then
						registerVal8:updateSelectedImage(registerVal4)
					end
					local function __FUNC_921D2_()
						if registerVal8.lastRemovedSlot then
							CoD.SetClassItem(arg2, 0.000000, registerVal8.lastRemovedSlot, registerVal4)
							CoD.CACUtility.GetCustomClassModel(arg2, 0.000000, CoD.perController[arg2].classModel)
							local registerVal2 = {}
							registerVal2.name = "update_state"
							registerVal2.menu = arg0
							arg0:processEvent(registerVal2)
						end
					end

					LUI.OverrideFunction_CallOriginalFirst(registerVal8, "close", __FUNC_921D2_)
				end
			end
		end
	end
end

function RemoveScorestreak(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "itemIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = arg0:getModel()
	local registerVal6 = CoD.CACUtility.GetAttachedItemSlot(registerVal5, registerVal4, CoD.CACUtility.KillstreakNameList)
	if registerVal3 and registerVal4 ~= CoD.CACUtility.EmptyItemIndex and registerVal6 then
		arg0.lastRemovedSlot = registerVal6
		CoD.SetClassItem(arg2, 0.000000, registerVal6, CoD.CACUtility.EmptyItemIndex)
		CoD.CACUtility.GetCustomClassModel(arg2, 0.000000, registerVal5)
		local registerVal9 = {}
		registerVal9.name = "update_state"
		registerVal9.menu = arg0
		arg0:processEvent(registerVal9)
	end
end

function RemoveAllScorestreaks(arg0, arg1)
	local registerVal2 = arg0:getModel()
	local registerVal3, registerVal4, registerVal5 = ipairs(CoD.CACUtility.KillstreakNameList)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		CoD.SetClassItem(arg1, 0.000000, value7, CoD.CACUtility.EmptyItemIndex)
	end
	CoD.CACUtility.GetCustomClassModel(arg1, 0.000000, registerVal2)
	registerVal5 = {}
	registerVal5.name = "update_state"
	registerVal5.menu = arg0
	arg0:processEvent(registerVal5)
end

function GoBackAndUpdateSelectedChallengesButton(arg0, arg1)
	local registerVal2 = GoBack(arg0, arg1)
	local registerVal5 = {}
	registerVal5.name = "set_selected_button"
	registerVal5.controller = arg1
	registerVal2:processEvent(registerVal5)
	return registerVal2
end

function Challenges_UpdateListFromTabChanged(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "tabCategory")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		SetGlobalModelValue("challengeCategory", registerVal4)
		if arg0.TabFrame.framedWidget then
		end
		if arg0.TabFrame.framedWidget.CallingCardGrid then
			arg0.TabFrame.framedWidget.CallingCardGrid:updateDataSource()
		end
	end
end

function CallingCards_SetPlayerBackground(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = Engine.GetModel(registerVal4, "iconId")
	if registerVal3 ~= nil then
		registerVal4 = Engine.GetModelValue(registerVal3)
		if arg0.callingCardShowcaseSlot then
			Engine.SetCombatRecordBackgroundId(arg2, registerVal4, arg0.callingCardShowcaseSlot)
			local registerVal6 = Engine.GetGlobalModel()
			local registerVal5 = Engine.GetModel(registerVal6, "CallingCardShowcaseUpdated")
			if registerVal5 then
				Engine.ForceNotifyModelSubscriptions(registerVal5)
			end
			GoBackToMenu(arg0, arg2, "CombatRecordMP")
			CoD.perController[arg2].currentCallingCardTabElement = nil
		else
			SetEmblemBackground_Internal(arg2, registerVal4)
		end
		arg1:playSound("list_action", arg2)
	end
	ForceNotifyControllerModel(arg2, "identityBadge.xuid")
end

function CallingCards_EmblemGetProfile(arg0, arg1, arg2)
	Engine.ExecNow(arg2, "emblemGetProfile")
	ForceNotifyControllerModel(arg2, "identityBadge.xuid")
end

function CallingCards_GoBack(arg0, arg1)
	local registerVal2 = IsLive()
	if not registerVal2 then
		Engine.CommitProfileChanges(arg1)
	else
		CallingCard_TrackCWLEquip(arg1, "CallingCard")
		UploadPublicProfile(arg0, arg1)
	end
	local registerVal4 = Engine.GetGlobalModel()
	Engine.ForceNotifyModelSubscriptions(Engine.CreateModel(registerVal4, "callingCardBreadcrumbChanged"))
end

function CallingCards_UpdateListFromTabChanged(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "tabCategory")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
		SetGlobalModelValue("challengeGameMode", registerVal4)
		CoD.perController[arg2].currentCallingCardTabElement = arg1
		if arg0.TabFrame.framedWidget then
		end
		if arg0.TabFrame.framedWidget.CallingCardGrid then
			arg0.TabFrame.framedWidget.CallingCardGrid:updateDataSource()
		end
	end
end

function CallingCards_SetOld(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "iconId")
	if registerVal2 then
		Engine.SetEmblemBackgroundAsOld(arg1, registerVal2)
		local registerVal4 = CoD.perController[arg1].currentCallingCardTabElement:getModel()
		registerVal3 = Engine.GetModel(registerVal4, "breadcrumbCount")
		if CoD.perController[arg1].currentCallingCardTabElement and registerVal3 then
			local registerVal8 = Engine.GetModelValue(registerVal3)
			Engine.SetModelValue(registerVal3, math.max(0.000000, (registerVal8 - 1.000000)))
		end
		registerVal4 = CoD.perController[arg1].currentCallingCardBlackMarketElement:getModel()
		registerVal3 = Engine.GetModel(registerVal4, "newCount")
		if CoD.perController[arg1].currentCallingCardBlackMarketElement and registerVal3 then
			registerVal8 = Engine.GetModelValue(registerVal3)
			Engine.SetModelValue(registerVal3, math.max(0.000000, (registerVal8 - 1.000000)))
		end
	end
end

function OpenEnterPrestigeModeMenu(arg0, arg1, arg2)
	local registerVal3 = CheckIfFeatureIsBanned(arg1, LuaEnums.FEATURE_BAN.PRESTIGE)
	if registerVal3 then
		LuaUtils.UI_ShowErrorMessageDialog(arg1, GetFeatureBanInfo(arg1, LuaEnums.FEATURE_BAN.PRESTIGE))
		return 
	end
	OpenSystemOverlay(arg0, arg2, arg1, "EnterPrestigeMode", nil)
end

function OpenPrestigeRefundTokensMenu(arg0, arg1, arg2)
	local registerVal3 = CheckIfFeatureIsBanned(arg1, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS)
	if registerVal3 then
		LuaUtils.UI_ShowErrorMessageDialog(arg1, GetFeatureBanInfo(arg1, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS))
		return 
	end
	OpenSystemOverlay(arg0, arg2, arg1, "PrestigeRefundTokens", nil)
end

function OpenPrestigeFreshStartMenu(arg0, arg1, arg2)
	local registerVal3 = CheckIfFeatureIsBanned(arg1, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS)
	if registerVal3 then
		LuaUtils.UI_ShowErrorMessageDialog(arg1, GetFeatureBanInfo(arg1, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS))
		return 
	end
	OpenSystemOverlay(arg0, arg2, arg1, "PrestigeFreshStart1", nil)
end

function OpenCustomizePrestigeMenu(arg0, arg1, arg2)
	local registerVal3 = CheckIfFeatureIsBanned(arg1, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS)
	if registerVal3 then
		LuaUtils.UI_ShowErrorMessageDialog(arg1, GetFeatureBanInfo(arg1, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS))
		return 
	end
	registerVal3 = CoD.PrestigeUtility.GetPrestigeGameMode()
	if registerVal3 == Enum.eModes.MODE_ZOMBIES then
		OpenOverlay(arg0, "Prestige_CustomizePrestigeIconZM", arg1, "", "")
	else
		OpenOverlay(arg0, "Prestige_CustomizePrestigeIcon", arg1, "", "")
	end
end

function OpenPermanentUnlockMenu(arg0, arg1, arg2)
	local registerVal3 = CheckIfFeatureIsBanned(arg1, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS)
	if registerVal3 then
		LuaUtils.UI_ShowErrorMessageDialog(arg1, GetFeatureBanInfo(arg1, LuaEnums.FEATURE_BAN.PRESTIGE_EXTRAS))
		return 
	end
	CoD.PrestigeUtility.previousGameMode = CoD.gameMode
	CoD.PrestigeUtility.previousStatsMilestonePath = CoD.statsMilestonePath
	CoD.gameMode = "MP"
	CoD.statsMilestonePath = "gamedata/stats/mp/statsmilestones"
	SetHeadingKickerText("MENU_PERMANENT_UNLOCKS")
	CoD.PrestigeUtility.CreatePermanentUnlockTokenModel(arg1)
	local registerVal4 = Engine.GetModelForController(arg1)
	registerVal3 = Engine.CreateModel(registerVal4, "PermanentlyUnlockClass")
	CoD.CACUtility.GetCustomClassModel(arg1, 0.000000, registerVal3)
	CoD.perController[arg1].classModel = registerVal3
	OpenOverlay(arg0, "Prestige_PermanentUnlocks", arg1)
end

function ClosePermanentUnlockMenu(arg0, arg1, arg2)
	CoD.gameMode = CoD.PrestigeUtility.previousGameMode
	CoD.statsMilestonePath = CoD.PrestigeUtility.previousStatsMilestonePath
	local registerVal6 = CoD.GetLocalClientAdjustedNum(arg1)
	SendClientScriptNotify(arg1, ("CustomClass_closed" .. registerVal6), "")
	GoBack(arg0, arg1)
end

function OpenPermanentUnlockCategoryMenu(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.PrestigeUtility.GetContentCategoryData(arg3)
	CoD.perController[arg2].weaponCategory = registerVal5.weaponCategory
	NavigateToMenu(arg0, registerVal5.menuName, true, arg2)
end

function OpenPermanentWeaponUnlockCategoryMenu(arg0, arg1, arg2, arg3, arg4)
	CoD.CraftUtility.Gunsmith.ParseDDL(arg2, Enum.StorageFileType.STORAGE_GUNSMITH)
	OpenPermanentUnlockCategoryMenu(arg0, arg1, arg2, arg3, arg4)
end

function SetIsInPrestigeMenu(arg0)
	CoD.PrestigeUtility.isInPermanentUnlockMenu = arg0
end

function OpenPermanentUnlockClassItemDialog(arg0, arg1, arg2)
	local registerVal8 = Engine.GetModelValue(arg1:getModel(arg2, "itemIndex"))
	CoD.OverlayUtility.CreateOverlay(arg2, arg0, "PermanentUnlockClassItem", arg2, registerVal8, nil)
end

function OpenPrestigeMasterDialogIfNeeded(arg0, arg1, arg2)
	local registerVal3 = PlayerGainedPrestigeMaster(arg1, arg2)
	if not registerVal3 then
		return 
	end
	CoD.OverlayUtility.CreateOverlay(arg1, arg0, "PrestigeMasterNotification", arg1, nil)
	local registerVal6 = tostring(arg2)
	Engine.Exec(arg1, ("PrestigeStatsMaster " .. registerVal6))
	SaveLoadout(arg0, arg1)
	registerVal6 = tostring(arg2)
	Engine.Exec(arg1, ("uploadstats " .. registerVal6))
	Engine.Exec(arg1, "savegamerprofilestats")
end

function PermanentlyUnlockItem(arg0, arg1, arg2)
	local registerVal5 = arg1:getModel(arg2, "itemIndex")
	if not arg1.itemIndex and registerVal5 then
		registerVal5 = Engine.GetModelValue(registerVal5)
	end
	if registerVal5 then
		Engine.PermanentlyUnlockItem(arg2, registerVal5, CoD.PrestigeUtility.GetPrestigeGameMode())
		SaveLoadout(arg0, arg2)
		UploadStats(arg0, arg2)
		local registerVal8 = CoD.GetLocalClientAdjustedNum(arg2)
		Engine.SendClientScriptNotify(arg2, ("CustomClass_update" .. registerVal8), "purchased")
	end
end

function SetParagonIcon(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "iconId")
	if not registerVal3 then
		return 
	end
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = Engine.GetPlayerStats(arg2, CoD.STATS_LOCATION_NORMAL, CoD.PrestigeUtility.GetPrestigeGameMode())
	registerVal5.PlayerStatsList.PARAGON_ICON_ID.StatValue:set(registerVal4)
end

function OpenAARIfNeeded(arg0, arg1)
	local registerVal2 = CanShowAAR(arg1)
	registerVal2 = IsAARValid(arg1)
	if registerVal2 and registerVal2 then
		local registerVal3 = IsCustomLobby()
		if registerVal3 then
		else
			registerVal3 = IsLAN()
			if registerVal3 then
			else
			end
		end
		registerVal3 = Engine.GetMaxControllerCount()
		for index4=0.000000, (registerVal3 - 1.000000), 1.000000 do
			local registerVal10 = Engine.GetModelForController(index4)
			local registerVal9 = Engine.CreateModel(registerVal10, "aarType")
			Engine.SetModelValue(registerVal9, "public")
		end
		local registerVal4 = AutomaticallyOpenAAR(arg1)
		if registerVal4 then
			registerVal4 = LUI.UITimer.new(1000.000000, "open_aar", true, arg0)
			local function __FUNC_95120_(arg0, arg2)
				local registerVal2 = CanShowAAR(arg1)
				if not registerVal2 then
					return 
				end
				registerVal2 = IsAARValid(arg1)
				if not registerVal2 then
					return 
				end
				local registerVal4 = Engine.GetModelForController(arg1)
				local registerVal3 = Engine.CreateModel(registerVal4, "doAARXPBarAnimation")
				Engine.SetModelValue(registerVal3, true)
				if CoD.isZombie then
					registerVal2 = CoD.AARUtility.AnyRewardsEarnedDuringMatch(arg1)
					if registerVal2 then
						registerVal2 = OpenOverlay(arg0, "RewardsOverlay", arg1)
						OpenPrestigeMasterDialogIfNeeded(registerVal2, arg1, Enum.eModes.MODE_ZOMBIES)
					else
						registerVal2 = OpenOverlay(arg0, "ZMAAR", arg1)
						OpenPrestigeMasterDialogIfNeeded(registerVal2, arg1, Enum.eModes.MODE_ZOMBIES)
					else
						registerVal2 = IsArenaMode()
						if registerVal2 then
							OpenOverlay(arg0, "ArenaResult", arg1)
						else
							registerVal2 = CoD.AARUtility.AnyRewardsEarnedDuringMatch(arg1)
							if registerVal2 then
								registerVal2 = OpenOverlay(arg0, "RewardsOverlay", arg1)
								OpenPrestigeMasterDialogIfNeeded(registerVal2, arg1, Enum.eModes.MODE_MULTIPLAYER)
							else
								registerVal2 = OpenOverlay(arg0, "MPAAR", arg1)
								OpenPrestigeMasterDialogIfNeeded(registerVal2, arg1, Enum.eModes.MODE_MULTIPLAYER)
							end
						end
					end
				end
				registerVal2 = CoD.GetPlayerStats(arg1)
				registerVal2.AfterActionReportStats.lobbyPopup:set("")
			end

			arg0:registerEventHandler("open_aar", __FUNC_95120_)
			arg0:addElement(registerVal4)
		end
	end
end

function OpenAAR(arg0, arg1)
	if CoD.isZombie then
		local registerVal2 = CoD.AARUtility.AnyRewardsEarnedDuringMatch(arg1)
		if registerVal2 then
			OpenOverlay(arg0, "RewardsOverlay", arg1)
		else
			OpenOverlay(arg0, "ZMAAR", arg1)
		else
			local registerVal4 = Engine.GetModelForController(arg1)
			local registerVal3 = Engine.CreateModel(registerVal4, "doAARXPBarAnimation")
			Engine.SetModelValue(registerVal3, true)
			registerVal2 = IsArenaMode()
			if registerVal2 then
				OpenOverlay(arg0, "ArenaResult", arg1)
			else
				registerVal2 = CoD.AARUtility.AnyRewardsEarnedDuringMatch(arg1)
				if registerVal2 then
					OpenOverlay(arg0, "RewardsOverlay", arg1)
				else
					OpenOverlay(arg0, "MPAAR", arg1)
				end
			end
		end
	end
end

function SetStableStatsBuffer(arg0)
	Engine.MakeStableStatsBufferForController(arg0)
end

function SurveyShouldShow(arg0)
	local registerVal1 = CoD.GetPlayerStats(arg0)
	local registerVal2 = tonumber(registerVal1.AfterActionReportStats.surveyId:get())
	local registerVal3 = tonumber(registerVal1.AfterActionReportStats.demoFileID:get())
	if registerVal3 == 0.000000 then
		return false
	end
	if registerVal2 == 0.000000 then
		return false
	end
	return true
end

function GoBackAndShowMatchSurveyIfNecessary(arg0, arg1)
	local registerVal2 = GoBack(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "lobbyRoot.showPostMatchSurvey")
	registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = SurveyShouldShow(arg1)
	if registerVal4 == true and registerVal5 == true then
		Engine.SetModelValue(registerVal3, false)
		CoD.OverlayUtility.CreateOverlay(arg1, registerVal2, "PostMatchSurvey")
	end
end

function CloseCPAAR(arg0, arg1)
	local registerVal3 = Dvar.ui_mapname:get()
	CoD.perController[arg1].lastAARMapName = registerVal3
	CoD.perController[arg1].fromMaxLevelMessage = false
end

function PlayArenaChallengeToastsOnClipOver(arg0, arg1)
	local registerVal2 = ArenaChallengesEnabled()
	if registerVal2 then
		local function __FUNC_95E0D_(arg0, arg2)
			CoD.ArenaUtility.PlayRecentArenaChallengeToasts(arg1)
		end

		arg0:registerEventHandler("clip_over", __FUNC_95E0D_)
	end
end

function OpenMOTDPopup(arg0, arg1, arg2, arg3, arg4)
	if arg3 ~= nil then
		local registerVal5 = Engine.GetModelForController(arg2)
		local registerVal7 = Engine.CreateModel(registerVal5, "MOTDMenu.ActionSource")
		Engine.SetModelValue(registerVal7, arg3)
	end
	registerVal5 = arg4:openOverlay("MOTD", arg2)
	registerVal7 = Engine.GetGlobalModel()
	local registerVal6 = Engine.GetModel(registerVal7, "MtxCommsMOTD")
	registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal6, "messageID"))
	registerVal5.crm_message_id = registerVal7
	Engine.ReportMarketingMessageViewed(arg2, "motd")
	LUI.CoDMetrics.CRMMessageImpression(arg0, arg2, "motd")
	registerVal7 = ShouldPresentMOTDBanner(arg2, registerVal5)
	if not registerVal7 then
		registerVal5.motdFooter:close()
	else
		Engine.ReportMarketingMessageViewed(arg2, "registration")
		LUI.CoDMetrics.CRMMessageImpression(arg0, arg2, "registration")
	end
end

function MOTDPopupAcceptAction(arg0, arg1, arg2, arg3, arg4)
	LUI.CoDMetrics.CRMMessageInteraction(arg0, arg2, "motd")
	local registerVal6 = Engine.GetModelForController(arg2)
	local registerVal5 = Engine.CreateModel(registerVal6, "MOTDMenu.ActionSource")
	registerVal6 = Engine.GetModelValue(registerVal5)
	if registerVal6 == "FeaturedWidget" then
		GoBack(arg4, arg2)
		return 
	end
	local registerVal7 = LuaUtils.IsBetaBuild()
	if registerVal7 then
		registerVal7 = IsFirstTimeSetup(arg2, Enum.eModes.MODE_MULTIPLAYER)
		if registerVal7 then
			OpenMPFirstTimeFlow(arg0, nil, arg2, nil, arg0)
		else
			NavigateToLobby_FirstTimeFlowMP(arg0, nil, arg2, arg4)
		else
			local registerVal8 = Engine.GetModelForController(arg2)
			registerVal7 = Engine.CreateModel(registerVal8, "MOTDMenu.ActionSource")
			registerVal8 = Engine.GetModelValue(registerVal7)
			if registerVal8 == "FeaturedWidget" then
				GoBack(arg4, arg2)
				return 
			else
				if registerVal8 == "LoginReward" then
					local registerVal9 = GoBack(arg4, arg2)
					OpenLoginRewardPopup(registerVal9, arg2)
					return 
				else
					NavigateToLobby(arg0, "ModeSelect", false, arg2)
				end
			end
		end
	end
	SendClientScriptMenuChangeNotify(arg2, arg4, false)
	Close(arg0, arg2)
end

function OpenLoginRewardPopup(arg0, arg1)
	CoD.OverlayUtility.CreateOverlay(arg1, arg0, "LoginRewardOverlay")
end

function OpenZMDLCPurchaseRewardPopup(arg0, arg1, arg2)
	local registerVal4 = ShouldShowZMHDGobbleGumPopup(arg1, CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_PS4_INDEX_ID)
	if registerVal4 then
	else
		registerVal4 = ShouldShowZMHDGobbleGumPopup(arg1, CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_XB1_INDEX_ID)
		if registerVal4 then
		else
			registerVal4 = ShouldShowURMFirstTimePopup(arg1)
			if registerVal4 then
			end
		end
	end
	SetNextPreStartPopup(arg1, "URMFirstTime")
	CoD.OverlayUtility.CreateOverlay(arg1, arg0, "ZMDLCPurchaseRewardOverlay", arg1, arg2)
end

function OpenZMHDPurchaseRewardPopup(arg0, arg1)
	local registerVal3 = ShouldShowZMHDGobbleGumPopup(arg1, CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_PS4_INDEX_ID)
	if registerVal3 then
	else
		registerVal3 = ShouldShowZMHDGobbleGumPopup(arg1, CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_XB1_INDEX_ID)
		if registerVal3 then
		else
			registerVal3 = ShouldShowURMFirstTimePopup(arg1)
			if registerVal3 then
			end
		end
	end
	SetNextPreStartPopup(arg1, "URMFirstTime")
	CoD.OverlayUtility.CreateOverlay(arg1, arg0, "ZMHDPurchaseRewardOverlay")
end

function OpenZMHDGobbleGumPopup(arg0, arg1, arg2)
	if arg2 == CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_PS4_INDEX_ID then
		local registerVal5 = ShouldShowZMHDGobbleGumPopup(arg1, CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_XB1_INDEX_ID)
		if registerVal5 then
		else
			registerVal5 = ShouldShowURMFirstTimePopup(arg1)
			registerVal5 = ShouldShowURMFirstTimePopup(arg1)
			if registerVal5 and arg2 == CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_XB1_INDEX_ID and registerVal5 then
			end
		end
	end
	SetNextPreStartPopup(arg1, "URMFirstTime")
	local registerVal10 = {}
	registerVal10.index = arg2
	registerVal10.skuId = CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_XB1_SKU_ID
	CoD.OverlayUtility.CreateOverlay(arg1, arg0, "ZMHDGobbleGumOverlay", arg1, registerVal10)
end

function OpenURMFirstTimePopup(arg0, arg1)
	local registerVal8 = {}
	registerVal8.isFirstTime = true
	registerVal8.cost = 0.000000
	registerVal8.skuId = CoD.BubbleGumBuffUtility.URM_FIRST_TIME_SKU_ID
	CoD.OverlayUtility.CreateOverlay(arg1, arg0, "UltraRareMegaPurchaseOverlay", arg1, registerVal8)
end

function GoThroughZMHDPopups(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "skipZMHDPopups")
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 then
		return 
	end
	local registerVal4 = ShouldShowZMDLCPurchaseRewardPopup(arg1, {})
	if registerVal4 then
		OpenZMDLCPurchaseRewardPopup(arg0, arg1, {})
	else
		registerVal4 = ShouldShowZMHDPurchaseRewardPopup(arg1)
		if registerVal4 then
			OpenZMHDPurchaseRewardPopup(arg0, arg1)
		else
			registerVal4 = ShouldShowZMHDGobbleGumPopup(arg1, CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_PS4_INDEX_ID)
			if registerVal4 then
				OpenZMHDGobbleGumPopup(arg0, arg1, CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_PS4_INDEX_ID)
			else
				registerVal4 = ShouldShowZMHDGobbleGumPopup(arg1, CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_XB1_INDEX_ID)
				if registerVal4 then
					OpenZMHDGobbleGumPopup(arg0, arg1, CoD.BubbleGumBuffUtility.ZMHD_RELEASE_PROMO_XB1_INDEX_ID)
				else
					registerVal4 = ShouldShowURMFirstTimePopup(arg1)
					if registerVal4 then
						OpenURMFirstTimePopup(arg0, arg1)
					end
				end
			end
		end
	end
end

function OpenCRMFeaturedPopup(arg0, arg1, arg2, arg3, arg4)
	if arg3 == "MOTDBanner" then
		local registerVal6 = Engine.GetGlobalModel()
		local registerVal5 = Engine.CreateModel(registerVal6, "CRMPopup")
		local registerVal7 = Engine.CreateModel(registerVal5, "location")
		Engine.SetModelValue(registerVal7, "registration")
		registerVal7 = Engine.CreateModel(registerVal5, "actionSource")
		Engine.SetModelValue(registerVal7, arg3)
	else
		if arg3 == "Featured" then
			registerVal6 = Engine.GetGlobalModel()
			registerVal5 = Engine.CreateModel(registerVal6, "CRMPopup")
			registerVal7 = Engine.CreateModel(registerVal5, "location")
			Engine.SetModelValue(registerVal7, "crm_featured")
			registerVal7 = Engine.CreateModel(registerVal5, "actionSource")
			Engine.SetModelValue(registerVal7, arg3)
		end
	end
	OpenOverlay(arg4, "CRMPopup", arg2)
end

function CRMFeaturedPopupActionHandler(arg0, arg1, arg2, arg3, arg4)
	local registerVal8 = Engine.GetGlobalModel()
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal8, "CRMPopup.action"))
	registerVal8 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal8, "CRMPopup.location"))
	if registerVal6 ~= nil and registerVal6 ~= "" then
		LUI.CoDMetrics.CRMMessageInteraction(arg0, arg2, registerVal6)
		local registerVal7 = LUI.startswith(registerVal6, "store")
		if registerVal7 then
			registerVal7 = GoBack(arg0, arg2)
			if CoD.isPC then
				OpenSteamStore(arg0, arg1, arg2, "CRMFeaturedPopup", registerVal7)
			else
				CoD.StoreUtility.SetupFocusCategory(arg2, registerVal6)
				OpenStore(arg0, arg1, arg2, "CRMFeaturedPopup", registerVal7)
			else
				if registerVal6 == "blackmarket" then
					local registerVal9 = Engine.GetGlobalModel()
					registerVal8 = Engine.CreateModel(registerVal9, "blackmarketOpenSource")
					Engine.SetModelValue(registerVal8, Engine.GetCurrentMode())
					Engine.SwitchMode(arg2, "mp")
					registerVal7 = GoBack(arg0, arg2)
					OpenBlackMarket(registerVal7, nil, arg2)
				else
					if registerVal6 == "drmonty" then
						registerVal9 = Engine.GetGlobalModel()
						registerVal8 = Engine.CreateModel(registerVal9, "megachewOpenSource")
						Engine.SetModelValue(registerVal8, Engine.GetCurrentMode())
						Engine.SwitchMode(arg2, "zm")
						registerVal7 = GoBack(arg0, arg2)
						OpenMegaChewFactorymenu(arg0, arg1, arg2, registerVal7.name, registerVal7)
					else
						if registerVal6 == "contracts" then
							registerVal9 = Engine.GetGlobalModel()
							registerVal8 = Engine.CreateModel(registerVal9, "contractsOpenSource")
							Engine.SetModelValue(registerVal8, Engine.GetCurrentMode())
							Engine.SwitchMode(arg2, "mp")
							registerVal7 = GoBack(arg0, arg2)
							LuaUtils.CycleContracts()
							OpenOverlay(registerVal7, "BM_Contracts", arg2)
						else
							if registerVal6 == "promo" then
								registerVal9 = Engine.GetGlobalModel()
								registerVal8 = Engine.CreateModel(registerVal9, "promoOpenSource")
								Engine.SetModelValue(registerVal8, Engine.GetCurrentMode())
								Engine.SwitchMode(arg2, "mp")
								registerVal7 = GoBack(arg0, arg2)
								OpenOverlay(registerVal7, "ZMHD_Community_Theme", arg2, "", "")
							end
						end
					end
				end
			end
		end
	end
end

function HandleGoBackFromBlackMarket(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, "blackmarketOpenSource")
	registerVal6 = Engine.GetCurrentMode()
	if registerVal5 ~= nil then
		local registerVal7 = Engine.GetModelValue(registerVal5)
		if registerVal7 ~= registerVal6 then
			Engine.SwitchMode(arg2, registerVal7)
		end
		Engine.UnsubscribeAndFreeModel(registerVal5)
	end
end

function HandleGoBackFromMegaChew(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, "megachewOpenSource")
	registerVal6 = Engine.GetCurrentMode()
	if registerVal5 ~= nil then
		local registerVal7 = Engine.GetModelValue(registerVal5)
		if registerVal7 ~= registerVal6 then
			Engine.SwitchMode(arg2, registerVal7)
		end
		Engine.UnsubscribeAndFreeModel(registerVal5)
	end
end

function HandleGoBackFromCookbook(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, "cookbookRecipeOpenSource")
	registerVal6 = Engine.GetCurrentMode()
	if registerVal5 ~= nil then
		local registerVal7 = Engine.GetModelValue(registerVal5)
		if registerVal7 ~= registerVal6 then
			Engine.SwitchMode(arg2, registerVal7)
		end
		Engine.UnsubscribeAndFreeModel(registerVal5)
	end
end

function HandleGoBackFromDailyChallenge(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, "dailyChallengeOpenSource")
	registerVal6 = Engine.GetCurrentMode()
	if registerVal5 ~= nil then
		local registerVal7 = Engine.GetModelValue(registerVal5)
		if registerVal7 ~= registerVal6 then
			Engine.SwitchMode(arg2, registerVal7)
		end
		Engine.UnsubscribeAndFreeModel(registerVal5)
	end
end

function HandleGoBackFromContracts(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, "contractsOpenSource")
	registerVal6 = Engine.GetCurrentMode()
	if registerVal5 ~= nil then
		local registerVal7 = Engine.GetModelValue(registerVal5)
		if registerVal7 ~= registerVal6 then
			Engine.SwitchMode(arg2, registerVal7)
		end
		Engine.UnsubscribeAndFreeModel(registerVal5)
	end
end

function HandleGoBackFromPromo(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, "promoOpenSource")
	registerVal6 = Engine.GetCurrentMode()
	if registerVal5 ~= nil then
		local registerVal7 = Engine.GetModelValue(registerVal5)
		if registerVal7 ~= registerVal6 then
			Engine.SwitchMode(arg2, registerVal7)
		end
		Engine.UnsubscribeAndFreeModel(registerVal5)
	end
end

function GoToModeSelectFromCRMPopup(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "MOTDMenu.ActionSource")
	registerVal4 = Engine.GetModelValue(registerVal3)
	if registerVal4 == "FeaturedWidget" then
		GoBack(arg2, arg1)
		return 
	end
	NavigateToLobby(arg0, "ModeSelect", false, arg1)
	SendClientScriptMenuChangeNotify(arg1, arg2, false)
	Close(arg0, arg1)
end

function BubbleGumBuffSelectTabChanged(arg0, arg1, arg2)
	if arg1.filter then
		CoD.perController[arg2].weaponCategory = arg1.filter
		DataSources.Unlockables.setCurrentFilterItem(arg1.filter)
		arg0.selectionList:updateDataSource()
	end
end

function EquipBubblegumPack(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "bgbPackIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	Engine.EquipBubbleGumPack(arg2, registerVal4)
end

function EquipBubblegumBuff(arg0, arg1, arg2)
	local registerVal3 = Engine.GetEquippedBubbleGumPack(arg2)
	local registerVal5 = Engine.GetModelValue(arg1:getModel(arg2, "itemIndex"))
	for index8=0.000000, (CoD.BubbleGumBuffs.NumBuffsPerPack - 1.000000), 1.000000 do
		local registerVal12 = Engine.GetBubbleGumBuff(arg2, registerVal3, index8)
		if registerVal12 == registerVal5 then
			local registerVal13 = Engine.GetBubbleGumBuff(arg2, registerVal3, CoD.perController[arg2].bgbIndex)
		else
		end
	end
	Engine.SetBubbleGumBuff(arg2, registerVal3, CoD.perController[arg2].bgbIndex, registerVal5)
	if index8 then
		Engine.SetBubbleGumBuff(arg2, registerVal3, index8, registerVal13)
	end
end

function ShowBubblegumBuffModel(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "itemIndex")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	local registerVal5 = Engine.GetItemGroup(registerVal4, Enum.eModes.MODE_ZOMBIES)
	local registerVal10 = Engine.GetItemRef(registerVal4, Enum.eModes.MODE_ZOMBIES)
	local registerVal13 = CoD.GetLocalClientAdjustedNum(arg2)
	Engine.SendClientScriptNotify(arg2, ("CustomClass_update" .. registerVal13), registerVal5, ("p7_" .. registerVal10 .. "_ui"), "select01", nil, nil, true, false)
end

function SelectBubblegumBuff(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "bgbIndex"))
	CoD.perController[arg2].bgbIndex = registerVal3
end

function SetBubbleGumPackNameFromPackIndex(arg0, arg1, arg2)
	return Engine.SetBubbleGumPackName(arg0, arg1, arg2)
end

function MegaChewFactoryFocusChanged(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "index")
	if registerVal3 then
		Engine.SendClientScriptNotify(arg2, "mega_chew_update", "focus_changed", Engine.GetModelValue(registerVal3))
	end
end

function MegaChewFactoryPurchase(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "price")
	local registerVal4 = Engine.GetModelForController(arg2)
	local registerVal5 = Engine.CreateModel(registerVal4, "MegaChewFactory")
	local registerVal6 = Engine.CreateModel(registerVal5, "getResultsOrKeepWaiting")
	if registerVal3 and registerVal6 then
		local registerVal7 = Engine.GetModelValue(registerVal3)
		local registerVal12 = Engine.GetModelValue(registerVal3)
		Engine.SendClientScriptNotify(arg2, "mega_chew_update", "purchased", registerVal12, arg2)
	end
end

function UpdateMenuVialModel(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "vials"))
	local registerVal4 = Engine.GetModelValue(arg1:getModel(arg2, "image"))
	local registerVal6 = arg0:getModel(arg2, "vials")
	Engine.SetModelValue(registerVal6, registerVal3)
	registerVal6 = arg0:getModel(arg2, "image")
	Engine.SetModelValue(registerVal6, registerVal4)
end

function UpdateOverlayImageWithElementImage(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "image"))
	if registerVal3 then
		local registerVal5 = arg0:getModel(arg2, "image")
		Engine.SetModelValue(registerVal5, registerVal3)
	end
end

function SetSeenMegaChewFactoryFirstTimePopup(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
	if registerVal1 then
		registerVal1.extraBools[0.000000]:set(1.000000)
	end
end

function SetSeenNewtonsCookbookFirstTimePopup(arg0)
	local registerVal1 = Engine.StorageGetBuffer(arg0, Enum.StorageFileType.STORAGE_ZM_STATS_ONLINE)
	if registerVal1 then
		registerVal1.extraBools[2.000000]:set(1.000000)
		UploadStats(nil, arg0)
	end
end

function FocusWeaponBuildKit(arg0, arg1, arg2)
	Gunsmith_GainFocus(arg0, arg1, arg2)
	local registerVal3 = CoD.GetCustomization(arg2, "weapon_index")
	if not registerVal3 then
		return 
	end
	local registerVal4 = CoD.CraftUtility.Gunsmith.GetSortedWeaponVariantList(registerVal3)
	local registerVal5 = CoD.CraftUtility.Gunsmith.GetVariantByIndex(arg2, registerVal4[#].variantIndex)
	local registerVal7 = Engine.GetModelForController(arg2)
	local registerVal6 = Engine.CreateModel(registerVal7, "WeaponBuildKitVariant")
	DataSources.GunsmithVariantList.createVariantModel(arg2, registerVal3, registerVal5, 1.000000, registerVal6)
	CoD.perController[arg2].gunsmithVariantModel = registerVal6
	CoD.CraftUtility.Gunsmith.DisplayWeaponWithVariant(arg2, CoD.perController[arg2].gunsmithVariantModel)
	arg0:setModel(registerVal6)
	local registerVal9 = {}
	registerVal9.name = "update_state"
	registerVal9.controller = arg2
	arg0.WeaponBuildKitsAttachmentsPreview:processEvent(registerVal9)
end

function SelectWeaponBuildKitCategory(arg0, arg1)
	local registerVal3 = arg0:getModel()
	local registerVal2 = Engine.GetModel(registerVal3, "categoryRef")
	if registerVal2 then
		registerVal3 = Engine.GetModelValue(registerVal2)
		DataSources.Unlockables.setCurrentFilterItem(registerVal3)
		CoD.perController[arg1].weaponCategory = registerVal3
	end
end

function SelectWeaponBuildKit(arg0, arg1, arg2)
	Gunsmith_BrowseVariants(arg0, arg1, arg2)
	local registerVal3 = CoD.GetCustomization(arg2, "weapon_index")
	if not registerVal3 then
		return 
	end
	local registerVal4 = CoD.CraftUtility.Gunsmith.GetSortedWeaponVariantList(registerVal3)
	local registerVal5 = CoD.CraftUtility.Gunsmith.GetVariantByIndex(arg2, registerVal4[#].variantIndex)
	local registerVal7 = Engine.GetModelForController(arg2)
	local registerVal6 = Engine.CreateModel(registerVal7, "WeaponBuildKitVariant")
	DataSources.GunsmithVariantList.createVariantModel(arg2, registerVal3, registerVal5, 1.000000, registerVal6)
	CoD.perController[arg2].gunsmithVariantModel = registerVal6
	CoD.CraftUtility.Gunsmith.DisplayWeaponWithVariant(arg2, CoD.perController[arg2].gunsmithVariantModel)
	registerVal7 = CoD.CraftUtility.Gunsmith.IsVariantIndexOccupied(registerVal5.variantIndex)
	if not registerVal7 then
		local registerVal8 = Engine.GetModelForController(arg2)
		registerVal7 = Engine.CreateModel(registerVal8, "Gunsmith.validVariantNameEntered")
		Engine.SetModelValue(registerVal7, false)
		registerVal8 = Engine.GetModel(registerVal6, "variantTextEntry")
		if registerVal8 then
			Engine.SetModelValue(registerVal8, "")
			local registerVal10 = Engine.GetModelForController(arg2)
			local registerVal9 = Engine.CreateModel(registerVal10, "Gunsmith.validVariantNameEntered")
			Engine.SetModelValue(registerVal9, true)
		end
		registerVal9 = Engine.GetModelValue(registerVal8)
		registerVal10 = Engine.GetModel(registerVal6, "variantName")
		Engine.SetModelValue(registerVal10, registerVal9)
	end
	OpenOverlay(arg0, "WeaponBuildKitsCustomizeVariant", arg2)
	Gunsmith_ChooseWeaponList(arg0, arg1, arg2)
end

function SaveWeaponBuildKit(arg0, arg1, arg2)
	CoD.CraftUtility.Gunsmith.WriteVaraintDataToDDL(arg2, arg0:getModel())
	local registerVal5 = GoBackAndUpdateStateOnPreviousMenu(arg0, arg2)
	ClearMenuSavedState(arg0)
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(CoD.perController[arg2].gunsmithVariantModel, "variantIndex"))
	registerVal5.variantSelector.variantList:updateDataSource(true)
	local registerVal9 = {}
	registerVal9.variantIndex = registerVal6
	registerVal5.variantSelector.variantList:findItem(registerVal9, nil, true, nil)
	CoD.CraftUtility.Gunsmith.DisplayWeaponWithVariant(arg2, CoD.perController[arg2].gunsmithVariantModel)
end

function SetMap(arg0, arg1, arg2)
	if CoD.mapsTable[arg1] == nil then
		local registerVal4 = Mods_Enabled()
		if registerVal4 then
			registerVal4 = Mods_IsUsingMods()
			if not registerVal4 then
				{}.ugcName = LuaEnums.DEFAULT_MOD_NAME
				{}.ugcType = LuaEnums.MODS_BASE_PATH
				{}.ugcVersion = 1.000000
				Engine.LobbyVM_CallFunc("LoadMod", {})
			end
			local registerVal5 = Engine.GetGlobalModel()
			registerVal4 = Engine.CreateModel(registerVal5, "lobbyRoot.selectedMapId")
			Engine.GameLobbySetMap(arg1)
			Engine.SetModelValue(registerVal4, arg1)
			return 
		else
			registerVal4 = LuaUtils.GetDefaultMap(LobbyData.GetCurrentMenuTarget())
		end
	end
	Engine.SetDvar("cp_queued_level", registerVal4)
	if arg2 and CoD.mapsTable[registerVal4].safeHouse then
	end
	Engine.GameLobbySetMap(CoD.mapsTable[registerVal4].safeHouse)
	registerVal4 = IsFreeRunMap(CoD.mapsTable[registerVal4].safeHouse)
	if registerVal4 then
		Engine.SetProfileVar(arg0, CoD.profileKey_map_fr, CoD.mapsTable[registerVal4].safeHouse)
	else
		Engine.SetProfileVar(arg0, CoD.profileKey_map, CoD.mapsTable[registerVal4].safeHouse)
	end
	registerVal5 = Engine.GetGlobalModel()
	registerVal4 = Engine.CreateModel(registerVal5, "lobbyRoot.selectedMapId")
	Engine.SetModelValue(registerVal4, CoD.mapsTable[registerVal4].safeHouse)
	Engine.CommitProfileChanges(arg0)
end

function OpenPurchaseMapPackConfirmation(arg0, arg1, arg2, arg3)
	local registerVal6 = arg1:getModel()
	local registerVal5 = CoD.SafeGetModelValue(registerVal6, "dlcIndex")
	if registerVal5 and Engine.GetDLCBitForDLCIndex then
		registerVal6 = Engine.GetDLCBitForDLCIndex(registerVal5)
	end
	if not registerVal6 then
		if not arg1.mapName and not arg1.mapId then
		end
		registerVal6 = Engine.GetDLCBitForMapName(arg1.id)
	end
	registerVal6 = {}
	registerVal6.dlcPack = CoD.DLCPackFromBit[registerVal6]
	registerVal6.actionSource = arg2
	if registerVal6.dlcPack and registerVal6.dlcPack == "DLC5" and CoD.isPS4 then
		registerVal6.dlcPack = "DLC5_ORBIS"
	end
	if registerVal6.dlcPack then
		CoD.OverlayUtility.CreateOverlay(arg0, arg3, "PurchaseMapPackConfirmation", arg0, registerVal6)
	end
end

function MapSelected(arg0, arg1)
	SetMap(arg1, arg0.mapName, false)
end

function CustomGamesOpenMyShowcase(arg0, arg1)
	CoD.FileshareUtility.SetFileshareMode(arg1, Enum.FileshareMode.FILESHARE_MODE_USER)
	FileshareSetShowcasePublishMode(arg1, false)
	local registerVal2 = Engine.GetXUID64(arg1)
	CoD.FileshareUtility.FetchContentForUser(arg1, registerVal2)
	CoD.FileshareUtility.SetCurrentFilter("", "")
	CoD.FileshareUtility.SetShowFileDetails(false)
	CoD.FileshareUtility.SetShowPublishNewDetails(false)
	CoD.FileshareUtility.SetShowCreateButton(false)
	SetInCustomGames(1.000000)
	OpenShowcaseCustomGames(arg0, nil, arg1, "", nil)
end

function SetInCustomGames(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "CustomGamesRoot")
	local registerVal3 = Engine.CreateModel(registerVal1, "inCustomGames")
	Engine.SetModelValue(registerVal3, arg0)
end

function CustomGamesOpenOptions(arg0, arg1, arg2)
	OpenPopup(arg0, "CustomGamesOptions", arg1)
end

function GetCurrentGameType(arg0)
	return Engine.DvarString(nil, "ui_gametype")
end

function SetCurrentUIGameType(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "CustomGamesRoot")
	local registerVal4 = Engine.CreateModel(registerVal2, "communityOption")
	Engine.SetModelValue(registerVal4, false)
	registerVal4 = Engine.CreateModel(registerVal2, "showcaseOption")
	Engine.SetModelValue(registerVal4, false)
	if arg0.gametype then
		registerVal4 = Engine.CreateModel(registerVal2, "gameType")
		Engine.SetModelValue(registerVal4, arg0.gametype)
		if CoD.perController[arg1].previousGameType ~= arg0.gametype then
			CustomGameMarkDirty(arg1)
			CoD.perController[arg1].previousGameType = ""
		else
			CoD.perController[arg1].previousGameType = ""
		end
	end
	if not arg1 or arg0.showcase then
		registerVal4 = Engine.CreateModel(registerVal2, "gameType")
		Engine.SetModelValue(registerVal4, "")
		registerVal4 = Engine.CreateModel(registerVal2, "communityOption")
		Engine.SetModelValue(registerVal4, arg0.community)
		registerVal4 = Engine.CreateModel(registerVal2, "showcaseOption")
		Engine.SetModelValue(registerVal4, arg0.showcase)
		registerVal4 = Engine.GetGlobalModel()
		registerVal3 = Engine.CreateModel(registerVal4, "SelectedCustomGame")
		registerVal4 = Engine.GetModelValue(Engine.CreateModel(registerVal3, "secondaryListSelected"))
		if registerVal4 == true then
			local registerVal5 = Engine.CreateModel(registerVal3, "secondaryListSelected")
			Engine.SetModelValue(registerVal5, false)
		else
			CustomGameMarkDirty(arg1)
		end
	end
end

function GetCurrentUIGameType(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "CustomGamesRoot")
	registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "gameType"))
	if not registerVal2 then
	end
	return "tdm"
end

function LoadCustomGame(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "slot")
	local registerVal3 = arg0:getModel(arg1, "index")
	local registerVal4 = arg0:getModel(arg1, "gameName")
	Engine.LobbyHost_SetCustomGameName("")
	if registerVal2 and registerVal3 then
		local registerVal6 = arg0:getModel(arg1, "isOfficial")
		if registerVal6 then
			local registerVal7 = Engine.GetModelValue(registerVal6)
		end
		if registerVal7 then
			local registerVal10 = Engine.GetModelValue(registerVal2)
			local registerVal12 = Engine.GetModelValue(registerVal3)
			Engine.Exec(arg1, ("customgames_loadofficialgame " .. registerVal10 .. " " .. registerVal12))
		else
			registerVal10 = Engine.GetModelValue(registerVal2)
			registerVal12 = Engine.GetModelValue(registerVal3)
			Engine.Exec(arg1, ("customgames_load " .. registerVal10 .. " " .. registerVal12))
		end
		CustomGamesShowLoadSuccessToast(arg0, arg1, Engine.GetModelValue(registerVal4))
	end
end

function LoadFileshareCustomGame(arg0, arg1, arg2)
	local registerVal3 = CoD.FileshareUtility.GetSelectedItem()
	local registerVal4 = CoD.FileshareUtility.GetSelectedItemProperty("fileId")
	if registerVal4 then
		Engine.LoadFileshareCustomGame(arg2, registerVal4)
	end
end

function SaveCustomGame(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "CustomGamesRoot")
	registerVal4 = Engine.GetModelValue(Engine.CreateModel(registerVal3, "isOfficial"))
	local registerVal5 = Engine.GetModelValue(Engine.CreateModel(registerVal3, "slot"))
	local registerVal6 = Engine.GetModelValue(Engine.CreateModel(registerVal3, "index"))
	local registerVal7 = Engine.GetModelValue(Engine.CreateModel(registerVal3, "gameName"))
	local registerVal8 = Engine.GetModelValue(Engine.CreateModel(registerVal3, "gameDescription"))
	if arg1 or registerVal7 == "" then
	end
	if arg1 or registerVal8 == "" then
		local registerVal13 = GetCurrentGameType()
		local registerVal9 = Engine.Localize(Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", registerVal13, "description"))
	end
	if registerVal4 ~= nil and registerVal4 == 1.000000 or registerVal4 == true then
		local registerVal10 = Engine.CreateModel(registerVal3, "gameName")
		Engine.SetModelValue(registerVal10, "Custom Game")
		registerVal10 = Engine.CreateModel(registerVal3, "gameDescription")
		Engine.SetModelValue(registerVal10, "Game Description")
		OpenOverlay(arg0, "CustomGamesSave", arg2)
	else
		local registerVal16 = GetCurrentGameType()
		Engine.Exec(arg1, ("customgames_save " .. registerVal5 .. " " .. registerVal6 .. " " .. registerVal16 .. " "" .. "Custom Game" .. """ .. " "" .. registerVal9 .. """))
	end
end

function CustomGameSelectorLoseFocus(arg0, arg1, arg2, arg3)
	local registerVal5 = GetCurrentUIGameType(arg2)
	CoD.perController[arg2].previousGameType = registerVal5
end

function CustomGameSelector_Delete(arg0, arg1, arg2, arg3, arg4)
	DeleteCustomGameYes(arg0, arg1, arg2, arg3, arg4)
	MediaManagerMarkDirty(arg2)
end

function SaveCustomGameYes(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "CustomGamesRoot")
	registerVal6 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "gameName"))
	local registerVal7 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "gameDescription"))
	if arg1 or registerVal6 == "" then
	end
	if arg1 or registerVal7 == "" then
		local registerVal12 = GetCurrentGameType()
		local registerVal8 = Engine.Localize(Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", registerVal12, "description"))
	end
	local registerVal11 = GetCurrentGameType()
	Engine.Exec(arg2, ("customgames_savenew " .. registerVal11 .. " "" .. "Custom Game" .. """ .. " "" .. registerVal8 .. """))
end

function DeleteCustomGame(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "SelectedCustomGame")
	registerVal6 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "isOfficial"))
	if registerVal6 then
		return 
	end
	OpenOverlay(arg4, "CustomGamesDelete", arg2)
end

function DeleteCustomGameYes(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "SelectedCustomGame")
	registerVal6 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "slot"))
	local registerVal7 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "index"))
	GoBack(arg0, arg2)
	Engine.ExecNow(arg2, ("customgames_delete " .. registerVal6 .. " " .. registerVal7))
end

function DeleteCustomGameNo(arg0, arg1, arg2, arg3, arg4)
	GoBack(arg4, arg2)
end

function CustomGamesProcessDeleteSuccess(arg0, arg1, arg2)
	CustomGameMarkDirty(arg1)
	local registerVal3 = Engine.Localize("MENU_CUSTOMGAME_DELETED")
	if arg1 or arg2 == "" then
		local registerVal6 = Engine.GetGlobalModel()
		local registerVal5 = Engine.CreateModel(registerVal6, "SelectedCustomGame")
		registerVal6 = Engine.GetModelValue(registerVal5, "gameName")
		if registerVal6 then
		else
		end
	end
	CoD.OverlayUtility.ShowToast("Fileshare", registerVal3, arg2, "uie_t7_mp_icon_header_customgames", "uie_t7_mp_icon_header_customgames")
end

function OpenCustomGamePublishPrompt(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "SelectedCustomGame")
	registerVal6 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "isOfficial"))
	local registerVal7 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "gameName"))
	local registerVal8 = Engine.GetModelValue(Engine.CreateModel(registerVal5, "gameDescription"))
	if registerVal6 then
		return 
	end
	if not registerVal7 then
	end
	if not registerVal8 then
	end
	CoD.FileshareUtility.OpenPublishPrompt(arg4, arg2, "customgame", "Custom Game", "", PublishCustomGame)
end

function PublishCustomGame(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "SelectedCustomGame")
	registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "slot"))
	local registerVal3 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "index"))
	local registerVal4 = CoD.FileshareUtility.GetPublishName()
	local registerVal5 = CoD.FileshareUtility.GetPublishDescription()
	local registerVal12 = GetCurrentUIGameType(arg0)
	Engine.PublishCustomGame(arg0, "customgame", registerVal2, registerVal3, registerVal4, registerVal12, registerVal5)
end

function SetSelectedCustomGame(arg0, arg1)
	local registerVal2 = arg0:getModel()
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "SelectedCustomGame")
	local registerVal5 = Engine.CreateModel(registerVal3, "secondaryListSelected")
	Engine.SetModelValue(registerVal5, true)
	registerVal5 = Engine.CreateModel(registerVal3, "slot")
	Engine.SetModelValue(registerVal5, CoD.SafeGetModelValue(registerVal2, "slot"))
	registerVal5 = Engine.CreateModel(registerVal3, "index")
	Engine.SetModelValue(registerVal5, CoD.SafeGetModelValue(registerVal2, "index"))
	registerVal5 = Engine.CreateModel(registerVal3, "uiIndex")
	Engine.SetModelValue(registerVal5, CoD.SafeGetModelValue(registerVal2, "uiIndex"))
	registerVal5 = Engine.CreateModel(registerVal3, "gameName")
	Engine.SetModelValue(registerVal5, CoD.SafeGetModelValue(registerVal2, "gameName"))
	registerVal5 = Engine.CreateModel(registerVal3, "gameDescription")
	Engine.SetModelValue(registerVal5, CoD.SafeGetModelValue(registerVal2, "gameDescription"))
	registerVal5 = Engine.CreateModel(registerVal3, "isOfficial")
	Engine.SetModelValue(registerVal5, CoD.SafeGetModelValue(registerVal2, "isOfficial"))
end

function SetCurrentCustomGame(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "slot")
	local registerVal3 = arg0:getModel(arg1, "index")
	local registerVal4 = arg0:getModel(arg1, "isOfficial")
	local registerVal5 = arg0:getModel(arg1, "gameName")
	local registerVal7 = Engine.GetGlobalModel()
	local registerVal6 = Engine.CreateModel(registerVal7, "CustomGamesRoot")
	if registerVal2 and registerVal3 and registerVal5 then
		local registerVal8 = Engine.CreateModel(registerVal6, "slot")
		Engine.SetModelValue(registerVal8, Engine.GetModelValue(registerVal2))
		registerVal8 = Engine.CreateModel(registerVal6, "index")
		Engine.SetModelValue(registerVal8, Engine.GetModelValue(registerVal3))
		registerVal8 = Engine.CreateModel(registerVal6, "gameName")
		Engine.SetModelValue(registerVal8, Engine.GetModelValue(registerVal5))
	end
	if registerVal4 then
		registerVal7 = Engine.GetModelValue(registerVal4)
		Engine.LobbyHost_SetOfficialCustomGame(registerVal7)
	end
end

function CustomGameMarkDirty(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "CustomGamesRoot")
	registerVal2 = Engine.CreateModel(registerVal1, "dirty")
	Engine.ForceNotifyModelSubscriptions(registerVal2)
end

function OpenPopularCustomGames(arg0, arg1, arg2)
	CoD.FileshareUtility.SetCurrentCommunityDataType(Enum.FileshareCommunityDataType.FILESHARE_COMMUNITY_DATA_POPULAR)
	CoD.FileshareUtility.SetFileshareMode(arg2, Enum.FileshareMode.FILESHARE_MODE_COMMUNITY)
	local registerVal4 = arg1:getModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "category")
	local registerVal5 = arg1:getModel()
	registerVal4 = Engine.CreateModel(registerVal5, "communityDataType")
	Engine.SetModelValue(registerVal3, "customgame")
	Engine.SetModelValue(registerVal4, Enum.FileshareCommunityDataType.FILESHARE_COMMUNITY_DATA_POPULAR)
	SetInCustomGames(1.000000)
	FileshareCategorySelectorItemSelected(arg0, arg1, arg2)
	CoD.FileshareUtility.SetShowCreateButton(false)
	CoD.FileshareUtility.SetShowFileDetails(false)
	CoD.FileshareUtility.SetShowPublishNewDetails(false)
	OpenShowcase(arg0, arg1, arg2, nil, arg0)
end

function OpenTrendingCustomGames(arg0, arg1, arg2)
	CoD.FileshareUtility.SetCurrentCommunityDataType(Enum.FileshareCommunityDataType.FILESHARE_COMMUNITY_DATA_TRENDING)
	CoD.FileshareUtility.SetFileshareMode(arg2, Enum.FileshareMode.FILESHARE_MODE_COMMUNITY)
	local registerVal4 = arg1:getModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "category")
	local registerVal5 = arg1:getModel()
	registerVal4 = Engine.CreateModel(registerVal5, "communityDataType")
	Engine.SetModelValue(registerVal3, "customgame")
	Engine.SetModelValue(registerVal4, Enum.FileshareCommunityDataType.FILESHARE_COMMUNITY_DATA_TRENDING)
	SetInCustomGames(1.000000)
	FileshareCategorySelectorItemSelected(arg0, arg1, arg2)
	CoD.FileshareUtility.SetShowCreateButton(false)
	CoD.FileshareUtility.SetShowFileDetails(false)
	CoD.FileshareUtility.SetShowPublishNewDetails(false)
	OpenShowcase(arg0, arg1, arg2, nil, arg0)
end

function OpenrRecentCustomGames(arg0, arg1, arg2)
	CoD.FileshareUtility.SetCurrentCommunityDataType(Enum.FileshareCommunityDataType.FILESHARE_COMMUNITY_DATA_RECENT)
	CoD.FileshareUtility.SetFileshareMode(arg2, Enum.FileshareMode.FILESHARE_MODE_COMMUNITY)
	local registerVal4 = arg1:getModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "category")
	local registerVal5 = arg1:getModel()
	registerVal4 = Engine.CreateModel(registerVal5, "communityDataType")
	Engine.SetModelValue(registerVal3, "customgame")
	Engine.SetModelValue(registerVal4, Enum.FileshareCommunityDataType.FILESHARE_COMMUNITY_DATA_RECENT)
	SetInCustomGames(1.000000)
	FileshareCategorySelectorItemSelected(arg0, arg1, arg2)
	CoD.FileshareUtility.SetShowCreateButton(false)
	CoD.FileshareUtility.SetShowFileDetails(false)
	CoD.FileshareUtility.SetShowPublishNewDetails(false)
	OpenShowcase(arg0, arg1, arg2, nil, arg0)
end

function GameModeSelected(arg0, arg1)
	Engine.Exec(arg1, "resetCustomGametype")
	local registerVal2 = CoDShared.IsGametypeTeamBased()
	local registerVal3 = GetCurrentUIGameType(arg1)
	if registerVal3 == "" then
		return 
	end
	Engine.SetGametype(registerVal3)
	local registerVal4 = CoDShared.IsGametypeTeamBased()
	if registerVal2 ~= registerVal4 then
		Engine.SetDvar("bot_friends", 0.000000)
		Engine.SetDvar("bot_enemies", 0.000000)
	end
	Engine.Exec(arg1, "xupdatepartystate")
	Engine.SetProfileVar(arg1, CoD.profileKey_gametype, registerVal3)
	Engine.PartyHostClearUIState()
	Engine.CommitProfileChanges(arg1)
	Engine.SystemNeedsUpdate(nil, "lobby")
	local registerVal7 = {}
	registerVal7.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
	registerVal7.lobbyModule = Enum.LobbyModule.LOBBY_MODULE_HOST
	Engine.LobbyVM_CallFunc("OnGametypeSettingsChange", registerVal7)
end

function GameModeSelectedCommunity(arg0, arg1, arg2)
	local registerVal3 = CoDShared.IsGametypeTeamBased()
	if arg1.oldTeamBased ~= nil and arg1.oldTeamBased ~= registerVal3 then
		Engine.SetDvar("bot_friends", 0.000000)
		Engine.SetDvar("bot_enemies", 0.000000)
	end
	Engine.Exec(arg2, "xupdatepartystate")
	Engine.PartyHostClearUIState()
	Engine.CommitProfileChanges(arg2)
	Engine.SystemNeedsUpdate(nil, "lobby")
	local registerVal6 = {}
	registerVal6.lobbyType = Enum.LobbyType.LOBBY_TYPE_GAME
	registerVal6.lobbyModule = Enum.LobbyModule.LOBBY_MODULE_HOST
	Engine.LobbyVM_CallFunc("OnGametypeSettingsChange", registerVal6)
end

function CustomGameHandleKeyboardComplete(arg0, arg1, arg2, arg3)
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_FILESHARE_PUBLISH_NAME then
		local registerVal5 = Engine.GetGlobalModel()
		local registerVal4 = Engine.CreateModel(registerVal5, "CustomGamesRoot")
		local registerVal6 = Engine.CreateModel(registerVal4, "gameName")
		Engine.SetModelValue(registerVal6, arg3.input)
	else
		if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_FILESHARE_PUBLISH_DESCRIPTION then
			registerVal5 = Engine.GetGlobalModel()
			registerVal4 = Engine.CreateModel(registerVal5, "CustomGamesRoot")
			registerVal6 = Engine.CreateModel(registerVal4, "gameDescription")
			Engine.SetModelValue(registerVal6, arg3.input)
		end
	end
end

function CustomGamesShowLoadSuccessToast(arg0, arg1, arg2)
	local registerVal3 = Engine.Localize("MENU_CUSTOMGAMES_LOADED")
	if arg1 or arg2 == "" then
		local registerVal6 = Engine.GetGlobalModel()
		local registerVal5 = Engine.CreateModel(registerVal6, "SelectedCustomGame")
		registerVal6 = Engine.GetModel(registerVal5, "gameName")
		if registerVal6 then
			local registerVal7 = Engine.GetModelValue(registerVal6)
		else
		end
	end
	registerVal5 = arg0:getModel(arg1, "isOfficial")
	registerVal6 = Engine.GetModelValue(registerVal5)
	if registerVal5 and registerVal6 == true then
		registerVal6 = Engine.Localize(arg2)
	end
	CoD.OverlayUtility.ShowToast("Fileshare", registerVal3, registerVal6, "uie_t7_mp_icon_header_customgames", "uie_t7_mp_icon_header_customgames")
end

function CustomGamesShowLoadFailureToast(arg0, arg1, arg2)
	local registerVal3 = Engine.Localize("MENU_CUSTOMGAMES_LOADED_ERROR")
	if not arg2 then
		local registerVal6 = Engine.GetGlobalModel()
		local registerVal5 = Engine.CreateModel(registerVal6, "CustomGamesRoot")
		registerVal6 = Engine.GetModel(registerVal5, "gameName")
		if registerVal6 then
			local registerVal7 = Engine.GetModelValue(registerVal6)
		else
		end
	end
	registerVal5 = arg0:getModel(arg1, "isOfficial")
	registerVal6 = Engine.GetModelValue(registerVal5)
	if registerVal5 and registerVal6 == true then
		registerVal6 = Engine.Localize(arg2)
	end
	CoD.OverlayUtility.ShowToast("Fileshare", registerVal3, registerVal6, "uie_t7_icon_error_overlays", "uie_t7_icon_error_overlays")
end

function CustomGamesShowSaveSuccessToast(arg0, arg1, arg2)
	local registerVal3 = Engine.Localize("MENU_CUSTOMGAME_SAVED")
	if arg1 or arg2 == "" then
		local registerVal6 = Engine.GetGlobalModel()
		local registerVal5 = Engine.CreateModel(registerVal6, "SelectedCustomGame")
		registerVal6 = Engine.GetModelValue(registerVal5, "gameName")
		if registerVal6 then
		else
		end
	end
	CoD.OverlayUtility.ShowToast("Fileshare", registerVal3, arg2, "uie_t7_mp_icon_header_customgames", "uie_t7_mp_icon_header_customgames")
end

function CustomGamesShowSaveFailureToast(arg0, arg1, arg2)
	local registerVal3 = Engine.Localize("MENU_CUSTOMGAME_SAVE_ERROR")
	if arg1 or arg2 == "" then
		local registerVal6 = Engine.GetGlobalModel()
		local registerVal5 = Engine.CreateModel(registerVal6, "SelectedCustomGame")
		registerVal6 = Engine.GetModelValue(registerVal5, "gameName")
		if registerVal6 then
		else
		end
	end
	CoD.OverlayUtility.ShowToast("Fileshare", registerVal3, arg2, "uie_t7_icon_error_overlays", "uie_t7_icon_error_overlays")
end

function CycleContracts(arg0)
	LuaUtils.CycleContracts()
end

function PlaylistSelected(arg0, arg1, arg2)
	if arg1.playlist then
	end
	if not arg1.playlist.index then
		return 
	end
	if not CoD.PlaylistCategoryFilter then
	end
	Engine.SetPlaylistID(arg1.playlist.index)
	Engine.SetProfileVar(arg2, ("playlist_" .. ""), tostring(arg1.playlist.index))
	Engine.PartyHostClearUIState()
	CoD.LobbyBase.SetPlaylistName(arg1.playlist.name)
	GoBack(arg0, arg2)
	if arg0.occludedMenu then
		local registerVal8 = {}
		registerVal8.name = "playlist_selected"
		registerVal8.controller = arg2
		registerVal8.itemInfo = arg1.playlist
		arg0.occludedMenu:processEvent(registerVal8)
	end
end

function PlaylistCategorySelected(arg0, arg1, arg2)
	SetElementPropertyOnPerControllerTable(arg2, "playlistCategory", arg1, "category")
	UpdateElementDataSource(arg0, "playlistList")
	SetMenuState(arg0, "SelectingPlaylist")
	SetLoseFocusToElement(arg0, "playlistCategoriesList", arg2)
	MakeElementNotFocusable(arg0, "playlistCategoriesList", arg2)
	MakeElementFocusable(arg0, "playlistList", arg2)
	SetFocusToElement(arg0, "playlistList", arg2)
end

function BlockGameFromKeyEvent(arg0)
	Engine.BlockGameFromKeyEvent()
end

function ToggleScoreboardClientMute(arg0, arg1)
	Engine.BlockGameFromKeyEvent()
	local registerVal2 = arg0:getModel(arg1, "clientNum")
	if not registerVal2 then
		return 
	end
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4 = Engine.GetClientNum(arg1)
	if registerVal3 and 0.000000 <= registerVal3 and registerVal4 ~= registerVal3 then
		Engine.TogglePlayerMute(arg1, registerVal3)
		UpdateScoreboardClientMuteButtonPrompt(arg0, arg1)
	end
end

function UpdateScoreboardClientMuteButtonPrompt(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "clientNum")
	if not registerVal2 then
		return 
	end
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.CreateModel(registerVal5, "scoreboardInfo.muteButtonPromptVisible")
	local registerVal6 = Engine.GetModelForController(arg1)
	registerVal5 = Engine.CreateModel(registerVal6, "scoreboardInfo.muteButtonPromptText")
	Engine.SetModelValue(registerVal4, false)
	if registerVal3 and 0.000000 <= registerVal3 then
		registerVal6 = Engine.GetClientNum(arg1)
		if registerVal6 == registerVal3 then
			return 
		end
		Engine.SetModelValue(registerVal4, true)
		registerVal6 = Engine.IsPlayerMutedByClientNum(arg1, Enum.LobbyType.LOBBY_TYPE_GAME, registerVal3)
		if registerVal6 then
			Engine.SetModelValue(registerVal5, "MENU_UNMUTE_CAPS")
		else
			Engine.SetModelValue(registerVal5, "MENU_MUTE_CAPS")
		end
	end
end

function ShowGamerCardForScoreboardRow(arg0, arg1)
	local registerVal3 = arg1:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "clientNum")
	registerVal3 = Engine.IsVisibilityBitSet(arg0, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
	local registerVal4 = Engine.GetModelForController(arg0)
	registerVal3 = CoD.SafeGetModelValue(registerVal4, "forceScoreboard")
	if not registerVal3 and registerVal3 ~= 1.000000 then
		return 
	end
	Engine.ShowGamerCard(arg0, registerVal2)
end

function ShowAccountPicker(arg0)
	Engine.ShowAccountPicker(arg0)
end

function AdjustBrightness(arg0, arg1)
	local registerVal2 = arg0:getModel(arg1, "value")
	if registerVal2 then
		Engine.SetProfileVar(arg1, "r_sceneBrightness", Engine.GetModelValue(registerVal2))
		Engine.Exec(arg1, "updategamerprofile")
	end
end

function PurchaseDWSKU(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "skuId")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	Engine.PurchaseDWSKU(arg2, registerVal4)
	local registerVal5 = Engine.GetMarketplaceSize()
	if registerVal3 and registerVal5 == 0.000000 then
		local registerVal7 = {}
		registerVal7.name = "lose_focus"
		registerVal7.controller = arg2
		arg0.MarketplaceList:processEvent(registerVal7)
		registerVal7 = {}
		registerVal7.name = "gain_focus"
		registerVal7.controller = arg2
		arg0.PlayerInventoryList:processEvent(registerVal7)
	end
end

function RemoveFromPlayerInventory(arg0, arg1, arg2)
	local registerVal3 = arg1:getModel(arg2, "itemId")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	Engine.RemoveItemFromInventory(arg2, registerVal4, 1.000000)
	local registerVal6 = Engine.GetPlayerInventorySize(arg2)
	if registerVal3 and registerVal6 == 0.000000 then
		local registerVal8 = {}
		registerVal8.name = "gain_focus"
		registerVal8.controller = arg2
		arg0.MarketplaceList:processEvent(registerVal8)
		registerVal8 = {}
		registerVal8.name = "lose_focus"
		registerVal8.controller = arg2
		arg0.PlayerInventoryList:processEvent(registerVal8)
	end
end

function ReportItemUsageTime(arg0, arg1, arg2)
	Engine.ReportItemUsageTime(arg2, 10.000000)
end

function AccountLink_SetAccountLinkViewed(arg0, arg1, arg2)
	Engine.SetAccountLinkViewed(arg2, true)
end

function AccountLink_HandleLoginKeyboardComplete(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.GetModel(registerVal5, "AccountLinkLogin")
	if not registerVal4 then
		return 
	end
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_EMAIL then
		local registerVal7 = Engine.GetModel(registerVal4, "email")
	end
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_PASSWORD then
		registerVal7 = Engine.GetModel(registerVal4, "password")
	end
	if registerVal7 then
		Engine.SetModelValue(registerVal7, arg3.input)
	end
	if registerVal7 then
		Engine.SetModelValue(registerVal7, arg3.input)
		local registerVal9 = string.len(arg3.input)
		for index8=0.000000, (registerVal9 - 1.000000), 1.000000 do
		end
		registerVal9 = Engine.GetModel(registerVal4, "stars")
		Engine.SetModelValue(registerVal9, ("" .. "*"))
	end
end

function AccountLink_Login(arg0, arg1, arg2)
	local registerVal3 = GoBack(arg0, arg2)
	local registerVal4 = registerVal3:openOverlay("Spinner", arg2)
	local function __FUNC_A14F3_(arg0, arg1)
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "OptInSuccess")
		arg0:close()
	end

	registerVal4:registerEventHandler("optin_success", __FUNC_A14F3_)
	local function __FUNC_A15B1_(arg0, arg1, arg3)
		FinishRegistrationFlow(arg0, arg2, arg0)
	end

	registerVal4:registerEventHandler("registration_failure", __FUNC_A15B1_)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, "AccountLinkLogin")
	registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal5, "password"))
	local registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal5, "email"))
	local registerVal10 = tostring(registerVal7)
	Engine.AccountLinkLogin(arg2, registerVal10, tostring(registerVal6))
end

function AccountLink_HandleRegisterKeyboardComplete(arg0, arg1, arg2, arg3)
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "AccountLinkRegister")
	if not registerVal4 then
		return 
	end
	local registerVal12 = Engine.GetModel(registerVal4, "firstName")
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_REGISTER_FIRST_NAME and registerVal12 then
		Engine.SetModelValue(registerVal12, arg3.input)
	end
	registerVal12 = Engine.GetModel(registerVal4, "lastName")
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_REGISTER_LAST_NAME and registerVal12 then
		Engine.SetModelValue(registerVal12, arg3.input)
	end
	registerVal12 = Engine.GetModel(registerVal4, "zipCode")
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_REGISTER_ZIP_CODE and registerVal12 then
		Engine.SetModelValue(registerVal12, arg3.input)
	end
	registerVal12 = Engine.GetModel(registerVal4, "username")
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_REGISTER_USERNAME and registerVal12 then
		Engine.SetModelValue(registerVal12, arg3.input)
	end
	registerVal12 = Engine.GetModel(registerVal4, "email")
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_REGISTER_EMAIL and registerVal12 then
		Engine.SetModelValue(registerVal12, arg3.input)
	end
	registerVal12 = Engine.GetModel(registerVal4, "password")
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_REGISTER_PASSWORD and registerVal12 then
		Engine.SetModelValue(registerVal12, arg3.input)
		local registerVal14 = string.len(arg3.input)
		for index13=0.000000, (registerVal14 - 1.000000), 1.000000 do
		end
		registerVal14 = Engine.GetModel(registerVal4, "stars")
		Engine.SetModelValue(registerVal14, ("" .. "*"))
	end
	registerVal12 = Engine.GetModel(registerVal4, "confirmPass")
	if arg3.type == Enum.KeyboardType.KEYBOARD_TYPE_CONFIRM_PASSWORD and registerVal12 then
		Engine.SetModelValue(registerVal12, arg3.input)
		registerVal14 = string.len(arg3.input)
		for index13=0.000000, (registerVal14 - 1.000000), 1.000000 do
		end
		registerVal14 = Engine.GetModel(registerVal4, "confirmStars")
		Engine.SetModelValue(registerVal14, ("" .. "*"))
	end
end

function AccountLink_SelectRegion(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "itemName"))
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "AccountLinkRegister")
	local registerVal6 = Engine.GetModel(registerVal4, "region")
	Engine.SetModelValue(registerVal6, registerVal3)
end

function AccountLink_SelectGender(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "gender"))
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "AccountLinkRegister")
	local registerVal6 = Engine.GetModel(registerVal4, "gender")
	Engine.SetModelValue(registerVal6, registerVal3)
end

function AccountLink_SelectMonth(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "month"))
	local registerVal4 = Engine.GetModelValue(arg1:getModel(arg2, "monthIndex"))
	local registerVal6 = Engine.GetModelForController(arg2)
	local registerVal5 = Engine.GetModel(registerVal6, "AccountLinkRegister")
	local registerVal7 = Engine.GetModel(registerVal5, "month")
	Engine.SetModelValue(registerVal7, registerVal3)
	registerVal7 = Engine.GetModel(registerVal5, "monthIndex")
	Engine.SetModelValue(registerVal7, registerVal4)
end

function AccountLink_SelectDay(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "day"))
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "AccountLinkRegister")
	local registerVal6 = Engine.GetModel(registerVal4, "day")
	Engine.SetModelValue(registerVal6, registerVal3)
end

function AccountLink_SelectYear(arg0, arg1, arg2)
	local registerVal3 = Engine.GetModelValue(arg1:getModel(arg2, "year"))
	local registerVal5 = Engine.GetModelForController(arg2)
	local registerVal4 = Engine.GetModel(registerVal5, "AccountLinkRegister")
	local registerVal6 = Engine.GetModel(registerVal4, "year")
	Engine.SetModelValue(registerVal6, registerVal3)
end

function AccountLink_Register(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg2)
	local registerVal3 = Engine.GetModel(registerVal4, "AccountLinkRegister")
	registerVal4 = Engine.GetModelValue(Engine.GetModel(registerVal3, "firstName"))
	local registerVal5 = Engine.GetModelValue(Engine.GetModel(registerVal3, "lastName"))
	local registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal3, "zipCode"))
	local registerVal7 = Engine.GetModelValue(Engine.GetModel(registerVal3, "region"))
	local registerVal8 = Engine.GetModelValue(Engine.GetModel(registerVal3, "username"))
	local registerVal9 = Engine.GetModelValue(Engine.GetModel(registerVal3, "email"))
	local registerVal10 = Engine.GetModelValue(Engine.GetModel(registerVal3, "password"))
	local registerVal11 = Engine.GetModelValue(Engine.GetModel(registerVal3, "confirmPass"))
	local registerVal12 = Engine.GetModelValue(Engine.GetModel(registerVal3, "gender"))
	local registerVal13 = Engine.GetModelValue(Engine.GetModel(registerVal3, "monthIndex"))
	local registerVal14 = Engine.GetModelValue(Engine.GetModel(registerVal3, "day"))
	local registerVal15 = Engine.GetModelValue(Engine.GetModel(registerVal3, "year"))
	local registerVal17 = tostring(registerVal4)
	{}.firstName = registerVal17
	registerVal17 = tostring(registerVal5)
	{}.lastName = registerVal17
	registerVal17 = tostring(registerVal6)
	{}.zipCode = registerVal17
	registerVal17 = tostring(registerVal7)
	{}.region = registerVal17
	registerVal17 = tostring(registerVal8)
	{}.username = registerVal17
	registerVal17 = tostring(registerVal9)
	{}.email = registerVal17
	registerVal17 = tostring(registerVal10)
	{}.password = registerVal17
	registerVal17 = tostring(registerVal11)
	{}.confirmPass = registerVal17
	registerVal17 = tostring(registerVal12)
	{}.gender = registerVal17
	{}.month = registerVal13
	{}.day = registerVal14
	{}.year = registerVal15
	if registerVal4 == nil then
		OpenGenericSmallPopup(arg0, arg2, "Please enter a valid first name", "Specific Name Constriants Here.", nil, "MENU_OK")
		return 
	end
	if registerVal5 == nil then
		OpenGenericSmallPopup(arg0, arg2, "Please enter a valid last name", "Specific Name Constriants Here.", nil, "MENU_OK")
		return 
	end
	if registerVal7 == nil then
		OpenGenericSmallPopup(arg0, arg2, "Please select a region", "Please select a region", nil, "MENU_OK")
		return 
	end
	registerVal17 = string.len(registerVal6)
	if registerVal6 == nil or registerVal17 ~= 5.000000 then
		OpenGenericSmallPopup(arg0, arg2, "Please enter a valid zip code", "Specific Zip Code Constriants Here.", nil, "MENU_OK")
		return 
	end
	if registerVal8 == nil then
		OpenGenericSmallPopup(arg0, arg2, "Please enter a valid username", "Specific Username Constriants Here.", nil, "MENU_OK")
		return 
	end
	if registerVal10 == nil then
		OpenGenericSmallPopup(arg0, arg2, "Please enter a valid password", "Specific Password Constriants Here.", nil, "MENU_OK")
		return 
	end
	if registerVal11 == nil or registerVal10 ~= registerVal11 then
		OpenGenericSmallPopup(arg0, arg2, "Please confirm your password", "Please confirm your password.", nil, "MENU_OK")
		return 
	end
	if registerVal12 == nil then
		OpenGenericSmallPopup(arg0, arg2, "Please select a gender", "Please select a gender.", nil, "MENU_OK")
		return 
	end
	if registerVal13 == nil then
		OpenGenericSmallPopup(arg0, arg2, "Please select a month", "Please select a month.", nil, "MENU_OK")
		return 
	end
	if registerVal14 == nil then
		OpenGenericSmallPopup(arg0, arg2, "Please select a day", "Please select a day.", nil, "MENU_OK")
		return 
	end
	if registerVal15 == nil then
		OpenGenericSmallPopup(arg0, arg2, "Please select a year", "Please select a year.", nil, "MENU_OK")
		return 
	end
	Engine.AccountLinkRegister(arg2, {})
end

function OpenRegistrationFlow(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetMarketingMessage(arg2, "registration")
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.GetModel(registerVal6, "MtxCommsRegistration")
	registerVal6 = Engine.GetModelValue(Engine.GetModel(registerVal5, "locationID"))
	if registerVal4 == nil or registerVal6 == 1.000000 then
		local registerVal7 = Engine.GetMarketingMessage(arg2, "motd")
		local registerVal8 = LUI.startswith(registerVal7.bannerAction, "store")
		registerVal8 = GoBack(arg0, arg2)
		CoD.StoreUtility.SetupFocusCategory(arg2, registerVal7.bannerAction)
		OpenStore(arg0, arg1, arg2, "MOTDBanner", registerVal8)
		if registerVal7 ~= nil and registerVal7.bannerAction ~= nil and registerVal8 and registerVal4.action ~= nil then
			LUI.CoDMetrics.CRMMessageInteraction(arg0, arg2, "registration")
			if registerVal4.action == "registration" then
				registerVal8 = GoBack(arg0, arg2)
				local registerVal9 = registerVal8:openOverlay("InGameRegistration", arg2)
				registerVal9.crm_message_id = registerVal4.messageID
			else
				if registerVal4.action == "opt-in" then
					registerVal8 = GoBack(arg0, arg2)
					registerVal9 = registerVal8:openOverlay("InGameOptIn", arg2)
					registerVal9.crm_message_id = registerVal4.messageID
				else
					registerVal8 = LUI.startswith(registerVal4.action, "store")
					if registerVal8 then
						registerVal8 = GoBack(arg0, arg2)
						if registerVal4.content_long == "" then
							if CoD.isPC then
								OpenSteamStore(arg0, arg1, arg2, "MOTDBanner", registerVal8)
							else
								CoD.StoreUtility.SetupFocusCategory(arg2, registerVal4.action)
								OpenStore(arg0, arg1, arg2, "MOTDBanner", registerVal8)
							else
								OpenCRMFeaturedPopup(arg0, arg1, arg2, "MOTDBanner", registerVal8)
							else
								if registerVal4.action == "blackmarket" then
									registerVal8 = GoBack(arg0, arg2)
									if registerVal4.content_long == "" then
										local registerVal11 = Engine.GetGlobalModel()
										local registerVal10 = Engine.CreateModel(registerVal11, "blackmarketOpenSource")
										Engine.SetModelValue(registerVal10, Engine.GetCurrentMode())
										Engine.SwitchMode(arg2, "mp")
										OpenBlackMarket(registerVal8, nil, arg2)
									else
										OpenCRMFeaturedPopup(arg0, arg1, arg2, "MOTDBanner", registerVal8)
									else
										if registerVal4.action == "drmonty" then
											registerVal8 = GoBack(arg0, arg2)
											if registerVal4.content_long == "" then
												registerVal11 = Engine.GetGlobalModel()
												registerVal10 = Engine.CreateModel(registerVal11, "megachewOpenSource")
												Engine.SetModelValue(registerVal10, Engine.GetCurrentMode())
												Engine.SwitchMode(arg2, "zm")
												OpenMegaChewFactorymenu(arg0, arg1, arg2, registerVal8.name, registerVal8)
											else
												OpenCRMFeaturedPopup(arg0, arg1, arg2, "MOTDBanner", registerVal8)
											else
												if registerVal4.action == "contracts" then
													registerVal8 = GoBack(arg0, arg2)
													if registerVal4.content_long == "" then
														registerVal11 = Engine.GetGlobalModel()
														registerVal10 = Engine.CreateModel(registerVal11, "contractsOpenSource")
														Engine.SetModelValue(registerVal10, Engine.GetCurrentMode())
														Engine.SwitchMode(arg2, "mp")
														LuaUtils.CycleContracts()
														OpenOverlay(registerVal8, "BM_Contracts", arg2)
													else
														OpenCRMFeaturedPopup(arg0, arg1, arg2, "MOTDBanner", registerVal8)
													else
														if registerVal4.action == "promo" then
															registerVal8 = GoBack(arg0, arg2)
															if registerVal4.content_long == "" then
																registerVal11 = Engine.GetGlobalModel()
																registerVal10 = Engine.CreateModel(registerVal11, "promoOpenSource")
																Engine.SetModelValue(registerVal10, Engine.GetCurrentMode())
																Engine.SwitchMode(arg2, "mp")
																OpenOverlay(registerVal8, "ZMHD_Community_Theme", arg2, "", "")
															else
																OpenCRMFeaturedPopup(arg0, arg1, arg2, "MOTDBanner", registerVal8)
															else
																if registerVal4.action == "expand" then
																	registerVal8 = GoBack(arg0, arg2)
																	OpenCRMFeaturedPopup(arg0, arg1, arg2, "MOTDBanner", registerVal8)
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

function OpenRegistrationBrowser(arg0, arg1, arg2, arg3)
	local registerVal4 = GoBack(arg0, arg2)
	local registerVal5 = registerVal4:openOverlay("Spinner", arg2)
	local function __FUNC_A3B85_(arg0, arg1)
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "RegistrationSuccess")
		arg0:close()
	end

	registerVal5:registerEventHandler("registration_success", __FUNC_A3B85_)
	local function __FUNC_A3C4C_(arg0, arg1, arg3)
		FinishRegistrationFlow(arg0, arg2, arg0)
	end

	registerVal5:registerEventHandler("registration_failure", __FUNC_A3C4C_)
	Engine.OpenRegistrationBrowser(arg2)
end

function OptInToEmailMarketing(arg0, arg1, arg2, arg3)
	local registerVal4 = GoBack(arg0, arg2)
	local registerVal5 = registerVal4:openOverlay("Spinner", arg2)
	local function __FUNC_A3DF0_(arg0, arg1)
		CoD.OverlayUtility.CreateOverlay(arg2, arg0, "OptInSuccess")
		arg0:close()
	end

	registerVal5:registerEventHandler("optin_success", __FUNC_A3DF0_)
	local function __FUNC_A3EB1_(arg0, arg1, arg3)
		FinishRegistrationFlow(arg0, arg2, arg0)
	end

	registerVal5:registerEventHandler("registration_failure", __FUNC_A3EB1_)
	Engine.OptInToEmailMarketing(arg2)
end

function FinishRegistrationFlow(arg0, arg1, arg2)
	local registerVal3 = Dvar.ui_execdemo_beta:get()
	if registerVal3 then
		registerVal3 = IsFirstTimeSetup(arg1, Enum.eModes.MODE_MULTIPLAYER)
		if registerVal3 then
			OpenMPFirstTimeFlow(arg0, nil, arg1, nil, arg2)
		else
			registerVal3 = LobbyData:GetCurrentMenuTarget()
			if registerVal3.id == LobbyData.UITargets.UI_MAIN.id then
				NavigateToLobby_FirstTimeFlowMP(arg0, nil, arg1, arg2)
			else
				GoBackToMenu(arg2, arg1, "Lobby")
			else
				local registerVal4 = Engine.GetModelForController(arg1)
				registerVal3 = Engine.CreateModel(registerVal4, "MOTDMenu.ActionSource")
				registerVal4 = Engine.GetModelValue(registerVal3)
				if registerVal4 == "FeaturedWidget" then
					GoBack(arg2, arg1)
					return 
				else
					NavigateToLobby(arg0, "ModeSelect", false, arg1)
				end
			end
		end
	end
	SendClientScriptMenuChangeNotify(arg1, arg2, false)
	Close(arg0, arg1)
end

function ChatClientInputStart(arg0, arg1, arg2, arg3)
	local registerVal4 = ChatClientIsAvailable(arg0, arg1, arg2)
	if not registerVal4 then
		return 
	end
	ChatClientInputChannelSet(arg0, arg1, arg2, arg3)
	Engine.ChatClient_InputStart(arg2)
end

function ChatClientInputChannelSet(arg0, arg1, arg2, arg3)
	local registerVal4 = CoD.ChatClientUtility.GetChannelFromString(arg3)
	if registerVal4 ~= nil then
		Engine.ChatClient_InputChannelSet(arg2, registerVal4)
	end
end

function ChatClientResetSubMenus(arg0, arg1, arg2)
	CoD.ChatClientUtility.ResetSettingsMenu()
	CoD.ChatClientUtility.ResetInputChannelSelectorMenu()
end

function ChatClientInputArrangeText(arg0, arg1, arg2)
	if arg0 and arg0.arrangeText ~= nil then
		arg0.arrangeText(arg0)
		return 
	end
	local registerVal3 = arg0:getParent()
	if registerVal3 and registerVal3.arrangeText ~= nil then
		registerVal3.arrangeText(registerVal3)
	end
end

function ChatClientInputTextFieldUpdatePrompt(arg0, arg1, arg2)
	local registerVal3 = Engine.ChatClient_IsChatting(arg2)
	if registerVal3 then
		registerVal3 = Engine.ChatClient_InputChannelGet(arg2)
		local registerVal4 = Engine.Localize(Engine.ChatClient_ChannelStringGet(registerVal3))
		local registerVal5 = Engine.ChatClient_ChannelColorGet(arg2, registerVal3)
		local registerVal7 = CoD.ChatClientUtility.GetInputChannelColorModel()
		Engine.SetModelValue(registerVal7, registerVal5)
		registerVal7 = CoD.ChatClientUtility.GetInputChannelTextModel()
		Engine.SetModelValue(registerVal7, (registerVal4 .. ": "))
		return 
	else
		registerVal4 = CoD.ChatClientUtility.GetInputChannelTextModel()
		Engine.SetModelValue(registerVal4, "")
	end
	registerVal3 = Engine.IsInGame()
	if registerVal3 then
		registerVal4 = CoD.ChatClientUtility.GetInputTextModel()
		Engine.SetModelValue(registerVal4, "")
		registerVal4 = CoD.ChatClientUtility.GetInputChannelTextModel()
		Engine.SetModelValue(registerVal4, "")
		return 
	end
	registerVal3 = ChatClientEnabled(arg2)
	if not registerVal3 then
		registerVal4 = CoD.ChatClientUtility.GetInputTextModel()
		Engine.SetModelValue(registerVal4, Engine.Localize("PLATFORM_CHAT_DISABLED"))
		return 
	end
	registerVal3 = ChatClientIsAvailable(arg0, arg1, arg2)
	if not registerVal3 then
		registerVal4 = CoD.ChatClientUtility.GetInputTextModel()
		Engine.SetModelValue(registerVal4, Engine.Localize("PLATFORM_CHAT_NOT_AVAILABLE"))
		return 
	end
	registerVal4 = CoD.ChatClientUtility.GetInputTextModel()
	Engine.SetModelValue(registerVal4, Engine.Localize("PLATFORM_CHAT_CLICK_TO_ENTER_CHAT"))
end

function ChatClientFilterChannelSet(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.ChatClientUtility.GetChannelFromString(arg3)
	local registerVal6 = Engine.GetModelValue(arg4)
	if registerVal5 ~= nil and registerVal6 ~= nil then
		Engine.ChatClient_FilterChannelSet(arg2, registerVal5, registerVal6)
	end
end

function ChatClientShowTimestampsSet(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetModelValue(arg3)
	return Engine.ChatClient_ShowTimestampsSet(arg2, registerVal4)
end

function ChatClientShowChannelSet(arg0, arg1, arg2, arg3)
	local registerVal4 = Engine.GetModelValue(arg3)
	return Engine.ChatClient_ShowChannelSet(arg2, registerVal4)
end

function ChatClientInputChannelSelectorHide(arg0, arg1, arg2)
	CoD.ChatClientUtility.ResetInputChannelSelectorMenu()
end

function ChatClientResetState(arg0, arg1, arg2)
	Engine.ChatClient_ResetState(arg2)
end

function RestrictVoiceChatForClient(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "xuid")
	if registerVal3 then
		Engine.RestrictVoiceChatForClient(Enum.LobbyType.LOBBY_TYPE_GAME, registerVal3)
	end
end

function AllowVoiceChatForClient(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "xuid")
	if registerVal3 then
		Engine.AllowVoiceChatForClient(Enum.LobbyType.LOBBY_TYPE_GAME, registerVal3)
	end
end

function ResetControlsToDefault(arg0, arg1, arg2, arg3)
	Engine.Exec(arg2, "resetprofilecommon")
	Engine.Exec(arg2, "updategamerprofile")
	Engine.Exec(arg2, "storagereset stats_mp_offline")
	local registerVal6 = {}
	registerVal6.menuName = "SystemOverlay_Compact"
	registerVal6.title = "MENU_RESET_TO_DEFAULT_CAPS"
	registerVal6.description = "MENU_RESET_TO_DEFAULTS_SUCCESSFUL"
	registerVal6[CoD.OverlayUtility.GoBackPropertyName] = CoD.OverlayUtility.DefaultGoBack
	registerVal6.categoryType = CoD.OverlayUtility.OverlayTypes.GenericMessage
	local function __FUNC_A5532_()
		local function __FUNC_A5610_(arg0)
			local registerVal1 = {}
			local registerVal2 = {}
			local registerVal3 = {}
			registerVal3.displayText = "Yes"
			registerVal2.models = registerVal3
			registerVal3 = {}
			local function __FUNC_A56BE_(arg0, arg1, arg2, arg3, arg4)
				GoBack(arg2)
			end

			registerVal3.action = __FUNC_A56BE_
			registerVal2.properties = registerVal3
			registerVal1 = {registerVal2}
			return registerVal1
		end

		local registerVal1 = DataSourceHelpers.ListSetup("ResetControlsToDefault_List", __FUNC_A5610_, true, nil)
		DataSources.TestPopup_List = registerVal1
		return "ResetControlsToDefault_List"
	end

	registerVal6.listDatasource = __FUNC_A5532_
	CoD.OverlayUtility.AddSystemOverlay("ResetControlsToDefault", registerVal6)
	CoD.OverlayUtility.CreateOverlay(arg2, arg3, "ResetControlsToDefault")
end

function ChangeLanguage(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = Engine.GetLanguage()
	if arg3 == registerVal5 then
		GoBack(arg0, arg2)
		return 
	end
	Engine.SetLanguage(arg3)
	local registerVal8 = {}
	registerVal8.menuName = "SystemOverlay_Compact"
	local registerVal9 = Engine.Localize("MENU_NOTICE")
	registerVal8.title = registerVal9
	registerVal9 = Engine.Localize("MENU_RESTART_WARNING")
	registerVal8.description = registerVal9
	registerVal8.categoryType = CoD.OverlayUtility.OverlayTypes.Alert
	local function __FUNC_A59E8_()
		local function __FUNC_A5AA2_(arg0)
			local registerVal1 = {}
			local registerVal2 = {}
			local registerVal3 = {}
			registerVal3.displayText = "OK"
			registerVal2.models = registerVal3
			registerVal3 = {}
			local function __FUNC_A5B4D_(arg0, arg1, arg2, arg3, arg4)
				Engine.RebootGame()
			end

			registerVal3.action = __FUNC_A5B4D_
			registerVal2.properties = registerVal3
			registerVal1 = {registerVal2}
			return registerVal1
		end

		local registerVal1 = DataSourceHelpers.ListSetup("Restart_Popup", __FUNC_A5AA2_, true, nil)
		DataSources.Restart_Popup = registerVal1
		return "Restart_Popup"
	end

	registerVal8.listDatasource = __FUNC_A59E8_
	CoD.OverlayUtility.AddSystemOverlay("Restart_Popup", registerVal8)
	CoD.OverlayUtility.CreateOverlay(arg2, arg4, "Restart_Popup")
	return true
end

function SetDownloadPreference(arg0, arg1)
	Engine.ChoosePreferredDownloadOrder(arg0, arg1)
end

function SetFirstTimeDurangoDownloadSettingDisplayed(arg0)
	CoD.LobbyBase.DisplayedFirstTimeDurangoDownloadSetting = true
end

function ResetCampaign(arg0, arg1, arg2)
	local registerVal9 = {}
	registerVal9 = {"MPUI_YES", "MPUI_NO"}
	local function __FUNC_A5D96_(arg0)
		if arg0 == 0.000000 then
			Engine.ResetCampaign()
		end
		return true
	end

	arg2:OpenModalDialog(arg0, arg1, "MENU_RESET_CAMPAIGN", "MENU_RESET_CAMPAIGN_WARNING", registerVal9, __FUNC_A5D96_)
end

function CombatRecordShowModelForItemIndex(arg0, arg1)
	local registerVal3 = arg1:getModel(arg0, "itemIndex")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
	end
	registerVal4 = Engine.GetLoadoutSlotForItem(registerVal4, CoD.GetCombatRecordMode())
	local registerVal5 = Engine.GetItemRef(registerVal4, CoD.GetCombatRecordMode())
	local registerVal8 = CoD.GetCombatRecordModeAbbreviation()
	local registerVal10 = CoD.GetLocalClientAdjustedNum(arg0)
	Engine.SendClientScriptNotify(arg0, ("CustomClass_update" .. registerVal10), registerVal4, (registerVal5 .. "_" .. registerVal8), "select01", "0,0,0", nil, true)
end

function CombatRecordShowModelForBubblegumBuff(arg0, arg1)
	local registerVal3 = arg1:getModel(arg0, "itemIndex")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
	end
	registerVal4 = Engine.GetItemGroup(registerVal4, Enum.eModes.MODE_ZOMBIES)
	local registerVal7 = Engine.GetItemRef(registerVal4, Enum.eModes.MODE_ZOMBIES)
	local registerVal10 = CoD.GetLocalClientAdjustedNum(arg0)
	Engine.SendClientScriptNotify(arg0, ("CustomClass_update" .. registerVal10), registerVal4, ("p7_" .. registerVal7 .. "_ui"), "select01")
end

function CombatRecordShowCybercoreModelForItemIndex(arg0, arg1)
	local registerVal3 = arg1:getModel(arg0, "cybercoreIndex")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
	end
	registerVal4 = Engine.GetLoadoutSlotForItem(registerVal4, CoD.GetCombatRecordMode())
	local registerVal5 = CoD.CACUtility.GetCybercoreXModel(registerVal4, CoD.GetCombatRecordMode())
	local registerVal9 = CoD.GetLocalClientAdjustedNum(arg0)
	Engine.SendClientScriptNotify(arg0, ("CustomClass_update" .. registerVal9), registerVal4, registerVal5, "select01", "0,0,0", nil, true)
end

function CombatRecordShowHero(arg0, arg1)
	local registerVal3 = arg1:getModel(arg0, "heroIndex")
	if registerVal3 then
		local registerVal4 = Engine.GetModelValue(registerVal3)
	end
	local registerVal7 = CoD.GetLocalClientAdjustedNum(arg0)
	Engine.SendClientScriptNotify(arg0, (CoD.CCUtility.Heroes.heroUpdateEvent .. registerVal7), "changeHero", registerVal4, CoD.GetCombatRecordMode())
	registerVal4 = CoD.GetCombatRecordMode()
	registerVal4 = LuaUtils.GetBlackjackHeroIndex(CoD.GetCombatRecordMode())
	local registerVal5 = arg1:getModel()
	registerVal4 = CoD.SafeGetModelValue(registerVal5, "type")
	if registerVal4 == Enum.eModes.MODE_MULTIPLAYER and registerVal4 == registerVal4 and registerVal4 then
		local registerVal8 = CoD.GetLocalClientAdjustedNum(arg0)
		local registerVal10 = CoD.GetCombatRecordMode()
		Engine.SendClientScriptNotify(arg0, (CoD.CCUtility.Heroes.heroUpdateEvent .. registerVal8), "changeHelmet", registerVal4, registerVal10, true)
	end
end

function CombatRecordUpdateCollectibles(arg0, arg1, arg2)
	local registerVal4 = arg2:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "id")
	CoD.perController[arg1].inspectingMap = registerVal3
	arg0.Collectibles:updateDataSource()
end

function CombatRecordTabChanged(arg0, arg1, arg2)
	if not CoD.CombatRecordPreventModeChange then
		CoD.CombatRecordMode = arg1.tabId
	end
end

function CombatRecordMedalsTabChanged(arg0, arg1, arg2)
	CoD.CombatRecordMedalCategory = arg1.tabId
	CoD.CombatRecordMedalSortFunc = arg1.sortFunc
	if arg0.MedalsGrid then
		arg0.MedalsGrid:updateDataSource()
	end
end

function CombatRecordAccoladesChangeMap(arg0, arg1, arg2, arg3)
	local registerVal7 = Engine.GetModelForController(arg1)
	local registerVal8 = Engine.GetModel(registerVal7, "CombatRecordAccolades")
	local function __FUNC_A6F58_(arg0, arg1)
		if CoD.mapsTable[arg0].unique_id >= CoD.mapsTable[arg1].unique_id then
		end
		return true
	end

	local registerVal10, registerVal11, registerVal12 = LUI.IterateTableBySortedKeys(CoD.mapsTable, __FUNC_A6F58_, nil)
	for index13,value14 in registerVal10, registerVal11, registerVal12 do
		if value14.session_mode == Enum.eModes.MODE_CAMPAIGN and value14.campaign_mode == 0.000000 and value14.dlc_pack ~= -1.000000 and value14.isSubLevel == false then
			table.insert({}, value14.unique_id)
			local registerVal15 = CoD.SafeGetModelValue(registerVal8, "unique_id")
			if registerVal15 == value14.unique_id then
			end
		end
	end
	registerVal11 = Engine.GetModel(registerVal8, "unique_id")
	Engine.SetModelValue(registerVal11, {}[(((0.000000 + arg3) % (0.000000 + 1.000000)) + 1.000000)])
end

function CombatRecordOpenCallingCards(arg0, arg1, arg2, arg3)
	local registerVal4 = arg2:openOverlay("CallingCards", arg1)
	local registerVal5 = arg3:getModel(arg1, "slotIndex")
	if registerVal5 then
		local registerVal6 = Engine.GetModelValue(registerVal5)
		registerVal4.callingCardShowcaseSlot = registerVal6
	end
end

function CombatRecordClearCallingCard(arg0, arg1, arg2)
	local registerVal4 = arg1:getModel()
	local registerVal3 = CoD.SafeGetModelValue(registerVal4, "slotIndex")
	Engine.SetCombatRecordBackgroundId(arg2, 0.000000, registerVal3)
	local registerVal5 = Engine.GetGlobalModel()
	registerVal4 = Engine.GetModel(registerVal5, "CallingCardShowcaseUpdated")
	if registerVal3 and registerVal4 then
		Engine.ForceNotifyModelSubscriptions(registerVal4)
	end
end

function CombatRecordOpenProfileSnapshot(arg0, arg1)
	CoD.perController[arg1].combatRecordProfileSnapshot = true
	OpenLocalScreenshots(arg0, arg1)
end

function CombatRecordProfileSnapshotFullscreenView(arg0, arg1)
	local registerVal2 = DataSources.CombatRecordProfileSnapshot.getModel(arg1)
	CoD.FileshareUtility.SetSelectedItem(registerVal2)
	CoD.perController[arg1].combatRecordProfileSnapshot = true
	CoD.FileshareUtility.SetCurrentCategory("screenshot_private")
	OpenOverlay(arg0, "Fileshare_ScreenshotDetailsView", arg1)
end

function CombatRecordSetProfileSnapshot(arg0)
	local registerVal1 = CoD.FileshareUtility.GetSelectedItemProperty("codeIndex")
	local registerVal2 = CoD.FileshareUtility.GetCurrentCategory()
	local registerVal3, registerVal4 = CoD.FileshareUtility.GetCurrentFilter()
	local registerVal5 = Engine.FileshareGetSlotData(arg0, registerVal2, registerVal3, registerVal4, registerVal1)
	if registerVal5 then
		if not registerVal5.fileId then
			local registerVal6 = Engine.DefaultID64Value()
		end
		if not registerVal5.fileSize then
		end
		Engine.SetCombatRecordScreenshotInfo(arg0, registerVal6, 0.000000, registerVal5.fileName)
		DataSources.CombatRecordProfileSnapshot.getModel(arg0)
	end
end

function CombatRecordClearProfileSnapshot(arg0)
	local registerVal1 = Engine.DefaultID64Value()
	Engine.SetCombatRecordScreenshotInfo(arg0, registerVal1, registerVal1, "")
	DataSources.CombatRecordProfileSnapshot.getModel(arg0)
end

function CombatRecordProfileSnapshotDownloadScreenshot(arg0)
	local registerVal1 = DataSources.CombatRecordProfileSnapshot.getModel(arg0)
	if registerVal1 then
		local registerVal2 = CoD.SafeGetModelValue(registerVal1, "fileId")
		if not registerVal2 then
			registerVal2 = Engine.DefaultID64Value()
		end
		if registerVal2 ~= CoD.currentScreenshot then
			local registerVal3 = Engine.IsScreenshotReady(Enum.ScreenshotViewType.UI_SCREENSHOT_TYPE_SCREENSHOT, registerVal2)
			if not registerVal3 then
				Engine.DestroyScreenshot(arg0)
			else
				CombatRecordProfileSnapshotDestroyScreenshot(arg0)
			end
			local registerVal4 = CoD.SafeGetModelValue(registerVal1, "fileSize")
			local registerVal5 = Engine.DefaultID64Value()
			registerVal5 = Engine.DefaultID64Value()
			if registerVal2 ~= registerVal5 and registerVal4 ~= registerVal5 then
				Engine.DownloadScreenshot(arg0, registerVal2, registerVal4)
				CoD.currentScreenshot = registerVal2
			end
		end
	end
end

function CombatRecordProfileSnapshotDestroyScreenshot(arg0)
	local registerVal1 = IsCombatRecordForRemotePlayer()
	if not arg0 or CoD.currentScreenshot then
		Engine.DestroyScreenshot(arg0)
		CoD.currentScreenshot = nil
	end
end

function CombatRecordSetHeadingKickerTextToCombatRecordGameMode()
	local registerVal0 = SessionModeToLocalizedSessionMode(CoD.GetCombatRecordMode())
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.headingKickerText")
	if registerVal1 then
		Engine.SetModelValue(registerVal1, Engine.Localize(registerVal0))
	end
end

function CombatRecordSetHeadingKickerTextToCombatRecordMode()
	local registerVal0 = CoD.GetCombatRecordMode()
	if registerVal0 ~= Enum.eModes.MODE_MULTIPLAYER then
		CombatRecordSetHeadingKickerTextToCombatRecordGameMode()
		return 
	end
	registerVal0 = Engine.Localize("MPUI_SUMMARY_CAPS")
	if CoD.CombatRecordMode == "public" then
		local registerVal1 = Engine.Localize("MENU_COMBAT_RECORD_TAB_PUBLIC_CAPS")
	else
		if CoD.CombatRecordMode == "arena" then
			registerVal1 = Engine.Localize("MENU_ARENA_CAPS")
		end
	end
	local registerVal2 = Engine.GetGlobalModel()
	registerVal1 = Engine.CreateModel(registerVal2, "lobbyRoot.headingKickerText")
	if registerVal1 then
		Engine.SetModelValue(registerVal1, registerVal1)
	end
end

function CombatRecordSetXUIDForLocalController(arg0)
	local registerVal2 = Engine.GetXUID64(arg0)
	CoD.CombatRecordXUID = registerVal2
	CoD.CombatRecordOtherPlayerStats = false
end

function CombatRecordSetXUIDFromSelectedFriend(arg0)
	local registerVal1 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal1, "Social.selectedFriendXUID")
	if registerVal2 then
		local registerVal4 = Engine.GetModelValue(registerVal2)
		CoD.CombatRecordXUID = registerVal4
		CoD.CombatRecordMode = "public"
	end
end

function CombatRecordOpenFromPlayerDetails(arg0, arg1, arg2, arg3, arg4)
	CombatRecordSetMenuForPostStatsLoad(arg0, "ViewRemoteCombatRecord")
	CombatRecordSetXUIDFromSelectedFriend(arg2)
	OpenPopup(arg0, "Social_InspectPlayerPopupLoading", arg2)
	CombatRecordReadOtherPlayerStats(arg2)
end

function CombatRecordSetMenuForPostStatsLoad(arg0, arg1)
	CoD.CombatRecordPostStatsLoadMenuName = arg1
end

function CombatRecordGoBackAndOpenOverlayForPostStatsLoad(arg0, arg1)
	GoBackAndOpenOverlayOnParent(arg0, CoD.CombatRecordPostStatsLoadMenuName, arg1)
end

function CombatRecordReadOtherPlayerStats(arg0)
	CoD.CombatRecordOtherPlayerStats = true
	Engine.ReadOtherPlayerStats(arg0, CoD.CombatRecordXUID, CoD.GetCombatRecordMode())
end

function CombatRecordCompareAgainstLocalPlayer(arg0)
	local registerVal2 = Engine.GetGlobalModel()
	local registerVal1 = Engine.CreateModel(registerVal2, "OtherPlayerStats")
	if registerVal1 then
		registerVal2 = Engine.GetGamertagForController(arg0)
		local registerVal3 = Engine.CreateModel(registerVal1, "gamertag")
		if registerVal2 and registerVal3 then
			Engine.SetModelValue(registerVal3, registerVal2)
		end
		registerVal3 = Engine.GetXUID64(arg0)
		local registerVal4 = Engine.CreateModel(registerVal1, "xuid")
		if registerVal3 and registerVal4 then
			Engine.SetModelValue(registerVal4, registerVal3)
		end
	end
end

function CombatRecordSelectFriend(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "OtherPlayerStats")
	local registerVal5 = arg1:getModel(arg2, "identityBadge.gamertag")
	if registerVal3 and registerVal5 then
		local registerVal6 = Engine.GetModelValue(registerVal5)
	end
	registerVal5 = Engine.CreateModel(registerVal3, "gamertag")
	if registerVal6 and registerVal5 then
		Engine.SetModelValue(registerVal5, registerVal6)
	end
	registerVal6 = arg1:getModel(arg2, "identityBadge.xuid")
	if registerVal6 then
		local registerVal7 = Engine.GetModelValue(registerVal6)
	end
	if registerVal7 then
		registerVal7 = Engine.CreateModel(registerVal3, "XUID")
		if registerVal3 and registerVal7 then
			Engine.SetModelValue(registerVal7, registerVal7)
		end
		Engine.ReadOtherPlayerStats(arg2, registerVal7, CoD.GetCombatRecordMode())
	end
end

function CombatRecordSetComparing(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "CombatRecordComparing")
	if registerVal3 then
		Engine.SetModelValue(registerVal3, arg2)
	end
end

function CombatRecordUpdateSelfIdentityWidget(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.GetModel(registerVal3, "socialPlayerInfo")
	local registerVal5 = Engine.GetModel(registerVal3, "socialPlayerInfo.identityBadge")
	if CoD.CombatRecordOtherPlayerStats == true and arg0.MenuFrame and registerVal4 and registerVal5 then
		if arg0.MenuFrame.SelfIdentityBadge then
			arg0.MenuFrame.SelfIdentityBadge:setModel(registerVal5, arg1)
		end
		if arg0.MenuFrame.SelfIdentityBadge.CallingCard.CallingCardsFrameWidget then
			arg0.MenuFrame.SelfIdentityBadge.CallingCard.CallingCardsFrameWidget:setModel(registerVal4, arg1)
		end
	end
end

function ShowcaseUpdateSelfIdentityWidget(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.GetModel(registerVal3, "socialPlayerInfo")
	local registerVal5 = Engine.GetModel(registerVal3, "socialPlayerInfo.identityBadge")
	if CoD.ShowcaseOtherPlayerStats == true and arg0.SelfIdentityBadge and registerVal4 and registerVal5 then
		if arg0.SelfIdentityBadge then
			arg0.SelfIdentityBadge:setModel(registerVal5, arg1)
		end
		if arg0.SelfIdentityBadge.CallingCard.CallingCardsFrameWidget then
			arg0.SelfIdentityBadge.CallingCard.CallingCardsFrameWidget:setModel(registerVal4, arg1)
		end
	end
end

function SetNetworkMode(arg0, arg1)
	LuaUtils.SetNetworkMode(arg0, arg1)
end

function Mods_OpenLoadMenu(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CheckNavRestrictions(arg0, arg1, arg2, arg4)
	if registerVal5 then
		return 
	end
	OpenPopup(arg4, "MenuModsLoad", arg2)
end

function Mods_LoadMod(arg0, arg1)
	local registerVal3 = arg1:getModel()
	local registerVal2 = CoD.SafeGetModelValue(registerVal3, "ugcName")
	{}.ugcName = registerVal2
	{}.ugcType = LuaEnums.MODS_BASE_PATH
	{}.ugcVersion = 1.000000
	Engine.LobbyVM_CallFunc("LoadMod", {})
end

function Mods_Unload(arg0, arg1)
	{}.ugcName = ""
	{}.ugcType = LuaEnums.MODS_BASE_PATH
	{}.ugcVersion = 1.000000
	Engine.LobbyVM_CallFunc("LoadMod", {})
end

function Mods_RefreshListMods(arg0, arg1)
	CoD.ModsUtility.Mods_Lists_Refresh(LuaEnums.MODS_BASE_PATH)
end

function Mods_RefreshListUsermaps(arg0, arg1)
	CoD.ModsUtility.Mods_Lists_Refresh(LuaEnums.USERMAP_BASE_PATH)
end

function Mods_Enabled()
	return CoD.ModsUtility.ModsEnabled()
end

function StarterParckPurchase(arg0, arg1, arg2)
	CoD.StarterPackUtil.UpgradeNotice(arg0, arg1, arg2)
end

function StartLiveEvent(arg0, arg1)
	local registerVal3 = Engine.TableLookup(nil, "gamedata/tables/common/live_event_streamers.csv", 0.000000, 0.000000, 1.000000)
	if not registerVal3 then
	end
	Engine.Exec(arg0, ("setliveevent " .. ""))
end

function SelectLiveEventQuality(arg0)
	SelectLiveEventQuality_Internal(arg0.qualityId)
end

function ValidateMPLootWeapons(arg0)
	CoD.CACUtility.ValidateMPLootWeapons(arg0)
end

function ActivateSpecialContract(arg0, arg1, arg2)
	if not arg1.contractIndex then
		local registerVal4 = arg1:getModel()
		local registerVal5 = tonumber(Engine.GetModelValue(Engine.GetModel(registerVal4, "index")))
	end
	registerVal4 = Engine.StorageGetBuffer(arg2, Enum.StorageFileType.STORAGE_MP_STATS_ONLINE)
	registerVal4.contracts[LuaUtils.BMContracts.specialContractIndex].active:set(1.000000)
	registerVal4.contracts[LuaUtils.BMContracts.specialContractIndex].award_given:set(0.000000)
	registerVal4.contracts[LuaUtils.BMContracts.specialContractIndex].index:set(registerVal5)
	registerVal4.contracts[LuaUtils.BMContracts.specialContractIndex].progress:set(0.000000)
	registerVal4.weaponContractData.currentValue:set(0.000000)
	registerVal4.weaponContractData.matchesPlayed:set(0.000000)
	registerVal4.weaponContractData.startTimestamp:set(0.000000)
end

function ValidateBlackjackPurchase(arg0)
	LuaUtils.ValidateBlackjackPurchaseForController(arg0)
end

function RedeemRewardAction(arg0, arg1, arg2, arg3)
	local registerVal4 = {}
	registerVal4 = {CoD.BlackMarketUtility.mar2018_challenge_reward_sku_tier1, CoD.BlackMarketUtility.mar2018_challenge_reward_sku_tier2, CoD.BlackMarketUtility.mar2018_challenge_reward_sku_tier3, CoD.BlackMarketUtility.mar2018_challenge_reward_sku_tier4}
	local registerVal5 = {}
	registerVal5 = {"RedeemBtn0", "RedeemBtn1", "RedeemBtn2", "RedeemBtn3"}
	local registerVal6 = tonumber(arg3)
	local registerVal8 = Engine.PurchaseDWSKU(arg1, registerVal4[registerVal6])
	if registerVal4[registerVal6] ~= nil and registerVal4[registerVal6] == 0.000000 or not registerVal8 then
		LuaUtils.UI_ShowErrorMessageDialog(arg1, "GROUPS_GENERIC_ERROR_MSG", "")
		return 
	end
	if not arg0.ProcessingWidget then
		GoBack(arg2, arg1)
	end
	arg0:setState("Purchasing")
	arg0.ProcessingWidget:playClip("StartPurchasing")
	arg0.ProcessingWidget.nextClip = "Purchasing"
	DisableAllMenuInput(arg2, true)
	CoD.Menu.UpdateAllButtonPrompts(arg2, arg1)
	local function __FUNC_AA35E_(arg3, arg4)
		local registerVal2 = Engine.IsInventoryBusy(arg1)
		registerVal2 = Engine.GetPurchaseDWSKUResult(arg1)
		if not arg4 or registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
			LUI.UIElement.clipOver(arg3, arg4)
		else
			arg3:playClip("StopPurchasing")
			local function __FUNC_AA573_(arg3, arg4)
				arg3:registerEventHandler("clip_over", LUI.UIElement.clipOver)
				arg0:setState("DefaultState")
				DisableAllMenuInput(arg2, false)
				local registerVal2 = Engine.GetPurchaseDWSKUResult(arg1)
				if registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_SUCCESS then
					CoD.OverlayUtility.CreateOverlay(arg1, arg2, "WinterCCRedeemRewardSuccessOverlay", arg1, actionParam)
					MakeElementNotFocusable(arg2.PromoZMHDCommunityWidget.PromoZMHDThermometerAndRewards, registerVal5[registerVal6], arg1)
					HideElement(arg2.PromoZMHDCommunityWidget.PromoZMHDThermometerAndRewards, registerVal5[registerVal6])
					CoD.TurnOnRedeemBtnFocus()
				else
					LuaUtils.UI_ShowErrorMessageDialog(arg1, "GROUPS_GENERIC_ERROR_MSG", "")
				end
			end

			arg3:registerEventHandler("clip_over", __FUNC_AA573_)
		end
	end

	arg0.ProcessingWidget:registerEventHandler("clip_over", __FUNC_AA35E_)
end

function RedeemLoginRewardAction(arg0, arg1, arg2)
	local registerVal4 = Engine.PurchaseDWSKU(arg1, CoD.LoginRewardSKU)
	if CoD.LoginRewardSKU ~= nil and CoD.LoginRewardSKU == 0.000000 or not registerVal4 then
		local registerVal6 = Engine.Localize("GROUPS_SERVICE_NOT_AVAILABLE")
		CoD.OverlayUtility.ShowToast("LootBonusCallingCard", registerVal6, nil, nil, nil, nil, nil)
		Close(arg0, arg1)
		NavigateToLobby(arg0, "ModeSelect", false, arg1)
		SendClientScriptMenuChangeNotify(arg1, arg2, false)
		return 
	end
	if not arg0.ProcessingWidget then
		GoBack(arg2, arg1)
	end
	arg0:setState("Purchasing")
	arg0.ProcessingWidget:playClip("StartPurchasing")
	arg0.ProcessingWidget.nextClip = "Purchasing"
	DisableAllMenuInput(arg2, true)
	CoD.Menu.UpdateAllButtonPrompts(arg2, arg1)
	local function __FUNC_AAD82_(arg3, arg4)
		local registerVal2 = Engine.IsInventoryBusy(arg1)
		registerVal2 = Engine.GetPurchaseDWSKUResult(arg1)
		if not arg4 or registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_INPROGRESS then
			LUI.UIElement.clipOver(arg3, arg4)
		else
			arg3:playClip("StopPurchasing")
			local function __FUNC_AAF8F_(arg3, arg4)
				arg3:registerEventHandler("clip_over", LUI.UIElement.clipOver)
				arg0:setState("DefaultState")
				DisableAllMenuInput(arg2, false)
				Close(arg0, arg1)
				NavigateToLobby(arg0, "ModeSelect", false, arg1)
				SendClientScriptMenuChangeNotify(arg1, arg2, false)
				local registerVal2 = Engine.GetPurchaseDWSKUResult(arg1)
				if registerVal2 == Enum.InventoryPurchaseResult.INVENTORY_PURCHASE_RESULT_SUCCESS then
					if CoD.LoginRewardCamo == true then
						local registerVal8 = Engine.Localize(Engine.TableLookup(nil, CoD.attachmentTable, 21.000000, CoD.LoginRewardEntitlementString, 7.000000))
						local registerVal9 = Engine.Localize("MPUI_CAMO")
						local registerVal10 = Engine.TableLookup(nil, CoD.attachmentTable, 21.000000, CoD.LoginRewardEntitlementString, 6.000000)
						CoD.OverlayUtility.ShowToast("LootBonusCamo", registerVal8, registerVal9, registerVal10, nil, nil, nil)
					else
						registerVal9 = Engine.Localize("MPUI_BM_BRIBE_CALLINGCARD")
						CoD.OverlayUtility.ShowToast("LootBonusCallingCard", "", registerVal9, nil, nil, nil, CoD.LoginRewardToastImage)
					else
						if CodD.LoginRewardCamo == true then
							local registerVal4 = Engine.Localize("GROUPS_SERVICE_NOT_AVAILABLE")
							CoD.OverlayUtility.ShowToast("LootBonusCamo", registerVal4, nil, nil, nil, nil, nil)
						else
							registerVal4 = Engine.Localize("GROUPS_SERVICE_NOT_AVAILABLE")
							CoD.OverlayUtility.ShowToast("LootBonusCallingCard", registerVal4, nil, nil, nil, nil, nil)
						end
					end
				end
			end

			arg3:registerEventHandler("clip_over", __FUNC_AAF8F_)
		end
	end

	arg0.ProcessingWidget:registerEventHandler("clip_over", __FUNC_AAD82_)
end

function CheckAndShowBonusCryptoKeys(arg0, arg1)
	local registerVal2 = IsModelValueGreaterThan(arg1, "CryptoKeyProgress.bonusKeysAwarded", 0.000000)
	if registerVal2 then
		SetElementStateByElementName(arg0, "BMDecryptionBonusKeys", arg1, "Bonus")
	end
end

function CheckAndShowGunMeter(arg0, arg1, arg2)
	local registerVal3 = ShouldShowGunMeter(arg0, arg1)
	if registerVal3 then
		arg0.BMGunMeter0:setAlpha(1.000000)
	end
end

function SetFocusToSpecialistOutfit(arg0, arg1)
	if arg0.productList and arg0.productList.itemStencil then
		local registerVal3, registerVal4, registerVal5 = ipairs(CoD.BlackMarketUtility.UniqueSpecialistOutfits)
		for index6,value7 in registerVal3, registerVal4, registerVal5 do
			local registerVal8 = string.find(CoD.StoreUtility.HighlightOutfit, value7.specialist)
			if registerVal8 then
				registerVal8 = Dvar.store_hideOutfitPurchase:exists()
				registerVal8 = Dvar.store_hideOutfitPurchase:get()
				if registerVal8 and registerVal8 == "1" then
				else
				else
				end
			end
		end
		registerVal5 = {}
		local registerVal6 = tostring(value7.skuId)
		registerVal5.skuID = registerVal6
		registerVal3 = arg0.productList:findItem(registerVal5, nil, true, 0.000000)
	end
end

function OpenOutfitStore(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = DisableStore()
	if arg1 or CoD.isPC then
		CoD.StoreUtility.HighlightOutfit = ""
		registerVal5 = Engine.GetModelForController(arg2)
		local registerVal6 = Engine.GetModel(registerVal5, "HeroCustomizationOptionList")
		local registerVal7 = Engine.GetModel(registerVal6, "1")
		local registerVal8 = Engine.GetModel(registerVal7, "image")
		if registerVal5 and registerVal6 and registerVal7 and registerVal8 then
			local registerVal10 = Engine.GetModelValue(registerVal8)
			CoD.StoreUtility.HighlightOutfit = registerVal10
		end
		registerVal6 = OpenOverlay(arg4, "Store_Outfits", arg2)
		registerVal7 = LobbyData:GetCurrentMenuTarget()
		LUI.CoDMetrics.StoreEntry(arg4, arg2, arg3, registerVal7)
		registerVal8 = Engine.GetModelForController(arg2)
		local registerVal9 = Engine.CreateModel(registerVal8, "StoreRoot")
		local registerVal11 = Engine.CreateModel(registerVal9, "actionSource", true)
		Engine.SetModelValue(registerVal11, arg3)
		registerVal11 = Engine.CreateModel(registerVal9, "storeSource", true)
		Engine.SetModelValue(registerVal11, registerVal7.name)
		if CoD.StoreUtility.HighlightOutfit ~= "" then
			SetFocusToSpecialistOutfit(registerVal6.StoreNonFeaturedFrame, arg2)
		end
	end
end

function OnPrivacySettingItemFocusChange(arg0, arg1, arg2)
	local registerVal3 = DataSources.PrivacySettingManagementForm.getModel(arg0)
	if arg1.descTextList then
		arg2._currentPrivacySettingDescTextList = arg1.descTextList
		local registerVal5 = Engine.GetModel(registerVal3, "descText")
		if not arg1.descTextList[1.000000] then
		end
		Engine.SetModelValue(registerVal5, "")
		registerVal5 = Engine.GetModel(registerVal3, "currentPage")
		Engine.SetModelValue(registerVal5, 1.000000)
		registerVal5 = Engine.GetModel(registerVal3, "lastPage")
		Engine.SetModelValue(registerVal5, #arg1.descTextList)
	else
		arg2._currentPrivacySettingDescTextList = {}
		registerVal5 = Engine.GetModel(registerVal3, "descText")
		Engine.SetModelValue(registerVal5, "")
		registerVal5 = Engine.GetModel(registerVal3, "currentPage")
		Engine.SetModelValue(registerVal5, 1.000000)
		registerVal5 = Engine.GetModel(registerVal3, "lastPage")
		Engine.SetModelValue(registerVal5, 1.000000)
	end
end

function ChangePrivacySettingDescPage(arg0, arg1, arg2)
	local registerVal3 = DataSources.PrivacySettingManagementForm.getModel(arg0)
	local registerVal4 = Engine.GetModel(registerVal3, "currentPage")
	local registerVal5 = Engine.GetModelValue(registerVal4)
	local registerVal6 = tonumber(arg2)
	if not registerVal6 then
	end
	if arg1._currentPrivacySettingDescTextList and arg1._currentPrivacySettingDescTextList[(registerVal5 + 0.000000)] then
		local registerVal8 = Engine.GetModel(registerVal3, "descText")
		Engine.SetModelValue(registerVal8, arg1._currentPrivacySettingDescTextList[(registerVal5 + 0.000000)])
		Engine.SetModelValue(registerVal4, (registerVal5 + 0.000000))
	end
end


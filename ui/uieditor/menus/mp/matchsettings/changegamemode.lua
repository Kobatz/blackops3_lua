-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.List1Button_Playlist")
require("ui.uieditor.widgets.MP.MatchSettings.matchSettingsInfo")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.CustomGames.CustomGameOfficial")
local function __FUNC_428_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "CustomGamesRoot", false)
	Engine.CreateModel(registerVal2, "dirty", false)
end

local function __FUNC_509_(arg0, arg1)
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_5D2_(arg0, arg1)
		if not arg1.occluded then
			CoD.FileshareUtility.SetShowCreateButton(false)
		end
		arg0.originalOcclusionChange(arg0, arg1)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_5D2_)
end

local function __FUNC_6C3_(arg0)
	local registerVal2 = Engine.GetGametypesBase()
	local registerVal3 = Engine.DvarString(nil, "ui_gametype")
	local registerVal4 = IsLive()
	if registerVal4 then
		CoD.FileshareUtility.SetCurrentCategory("customgame")
		local registerVal6 = {}
		local registerVal7 = {}
		local registerVal8 = Engine.Localize("MENU_TAB_COMMUNITY_CAPS")
		registerVal7.text = registerVal8
		registerVal8 = Engine.Localize("MENU_TAB_COMMUNITY_CAPS")
		registerVal7.buttonText = registerVal8
		registerVal7.image = "uie_t7_mp_icon_header_customgames_large"
		registerVal8 = Engine.Localize("MENU_FILESHARE_PUBLISH_DESCRIPTION")
		registerVal7.description = registerVal8
		registerVal6.models = registerVal7
		registerVal7 = {}
		registerVal7.community = true
		registerVal6.properties = registerVal7
		table.insert({}, registerVal6)
		registerVal6 = {}
		registerVal7 = {}
		registerVal8 = Engine.Localize("MENU_MEDIA_MYSHOWCASE")
		registerVal7.text = registerVal8
		registerVal8 = Engine.Localize("MENU_MEDIA_MYSHOWCASE")
		registerVal7.buttonText = registerVal8
		registerVal7.image = "uie_t7_mp_icon_header_customgames_large"
		registerVal8 = Engine.Localize("MENU_FILESHARE_PUBLISH_DESCRIPTION")
		registerVal7.description = registerVal8
		registerVal7.category = "customgame"
		registerVal6.models = registerVal7
		registerVal7 = {}
		registerVal7.showcase = true
		registerVal6.properties = registerVal7
		table.insert({}, registerVal6)
	end
	registerVal4, registerVal5, registerVal6 = pairs(registerVal2)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = CoD.AllowGameType(value8.gametype)
		if value8.category == "standard" and registerVal9 then
			local registerVal11 = {}
			local registerVal12 = {}
			local registerVal13 = Engine.Localize(value8.name)
			registerVal12.text = registerVal13
			registerVal13 = Engine.Localize(value8.name)
			registerVal12.buttonText = registerVal13
			registerVal13 = Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", value8.gametype, "image")
			registerVal12.image = registerVal13
			registerVal13 = Engine.Localize(Engine.StructTableLookupString(CoDShared.gametypesStructTable, "name", value8.gametype, "description"))
			registerVal12.description = registerVal13
			registerVal11.models = registerVal12
			registerVal12 = {}
			registerVal12.gametype = value8.gametype
			if value8.gametype ~= registerVal3 then
			end
			registerVal12.selectIndex = true
			registerVal11.properties = registerVal12
			table.insert({}, registerVal11)
		end
	end
	return {}
end

local registerVal4 = DataSourceHelpers.ListSetup("ChangeGameModeModes", __FUNC_6C3_, true)
DataSources.ChangeGameModeModes = registerVal4
local function __FUNC_CDA_(arg0, arg1)
	local function __FUNC_E15_(arg1, arg2)
		local registerVal2 = IsSelfInState(arg0, "Secondary")
		if registerVal2 then
			arg0.gameModeList:setMouseDisabled(true)
			arg0.gamesList:setMouseDisabled(false)
			arg0.m_modeSet = false
		else
			arg0.gameModeList:setMouseDisabled(false)
			arg0.gamesList:setMouseDisabled(true)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_E15_)
	arg0.gamesList:setMouseDisabled(true)
	local function __FUNC_F56_(arg2, arg3)
		local registerVal2 = IsSelfInState(arg0, "Secondary")
		if registerVal2 and arg0.m_modeSet then
			CoD.PCUtil.SimulateButtonPress(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE)
		end
		arg0.m_modeSet = true
		return true
	end

	arg0.gamesList:registerEventHandler("leftclick_outside", __FUNC_F56_)
end

local function __FUNC_10B8_(arg0, arg1)
	if CoD.isPC then
		__FUNC_CDA_(arg0, arg1)
	end
	__FUNC_509_(arg0, arg1)
end

local function __FUNC_1137_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ChangeGameMode")
	if __FUNC_428_ then
		__FUNC_428_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ChangeGameMode.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, -45.000000, 35.000000)
	registerVal3:setTopBottom(true, true, -43.000000, 102.000000)
	registerVal3:setRGB(0.310000, 0.310000, 0.310000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = CoD.LobbyStreamerBlackFade.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Transparent"
	local function __FUNC_26D0_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal8.condition = __FUNC_26D0_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "hideWorldForStreamer")
	local function __FUNC_275E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_275E_)
	registerVal1:addElement(registerVal4)
	registerVal1.FadeForStreamer = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MPUI_CHANGE_GAME_MODE_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_CHANGE_GAME_MODE_CAPS"))
	registerVal1:addElement(registerVal5)
	registerVal1.frame = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 64.000000, 344.000000)
	registerVal6:setTopBottom(true, false, 109.000000, 651.000000)
	registerVal6:setWidgetType(CoD.List1Button_Playlist)
	registerVal6:setVerticalCount(16.000000)
	registerVal6:setDataSource("ChangeGameModeModes")
	local function __FUNC_2886_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:linkToElementModel(registerVal6, "disabled", true, __FUNC_2886_)
	local function __FUNC_2A41_(arg0, arg1)
		return nil
	end

	registerVal6:registerEventHandler("list_item_lose_focus", __FUNC_2A41_)
	local function __FUNC_2A74_(arg1, arg2)
		SetCurrentUIGameType(arg1, arg0)
		SetElementModelToFocusedElementModel(registerVal1, arg1, "gameModeInfo")
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_2A74_)
	local function __FUNC_2B2E_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_2B2E_)
	local function __FUNC_2CBF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_2CBF_)
	local function __FUNC_2D8E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementPropertyValue(arg0, "showcase", true)
		if registerVal4 then
			CustomGamesOpenMyShowcase(registerVal1, arg2)
			return true
		else
			registerVal4 = IsMenuInState(arg1, "DefaultState")
			if registerVal4 then
				SetState(registerVal1, "Secondary")
				SetLoseFocusToElement(registerVal1, "gameModeList", arg2)
				MakeElementNotFocusable(registerVal1, "gameModeList", arg2)
				MakeElementFocusable(registerVal1, "gamesList", arg2)
				SetFocusToElement(registerVal1, "gamesList", arg2)
				return true
			else
				registerVal4 = IsDisabled(arg0, arg2)
				registerVal4 = AlwaysFalse()
				if not registerVal4 and registerVal4 then
					GameModeSelected(arg0, arg2)
					GoBack(registerVal1, arg2)
					ClearSavedState(registerVal1, arg2)
					PlaySoundSetSound(registerVal1, "action")
					return true
				end
			end
		end
	end

	local function __FUNC_30C4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsElementPropertyValue(arg0, "showcase", true)
		if registerVal3 then
			return true
		else
			registerVal3 = IsMenuInState(arg1, "DefaultState")
			if registerVal3 then
				return true
			else
				registerVal3 = IsDisabled(arg0, arg2)
				registerVal3 = AlwaysFalse()
				if not registerVal3 and registerVal3 then
					return true
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2D8E_, __FUNC_30C4_, true)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Disabled_NoListFocus"
	local function __FUNC_32C6_(arg1, arg2, arg3)
		local registerVal3 = IsParentListInFocus(arg2)
		if not registerVal3 then
			registerVal3 = IsDisabled(arg2, arg0)
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_32C6_
	local registerVal11 = {}
	registerVal11.stateName = "NoListFocus"
	local function __FUNC_3355_(arg0, arg1, arg2)
		local registerVal3 = IsParentListInFocus(arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_3355_
	registerVal9 = {registerVal10, registerVal11}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_33B1_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "disabled", true, __FUNC_33B1_)
	registerVal1:addElement(registerVal6)
	registerVal1.gameModeList = registerVal6
	registerVal7 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 375.000000, 655.000000)
	registerVal7:setTopBottom(true, false, 109.000000, 651.000000)
	registerVal7:setWidgetType(CoD.List1Button_Playlist)
	registerVal7:setVerticalCount(16.000000)
	registerVal7:setDataSource("CustomGamesList")
	local function __FUNC_34CE_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "disabled"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "disabled", true, __FUNC_34CE_)
	local function __FUNC_3689_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isOfficial"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal7:linkToElementModel(registerVal7, "isOfficial", true, __FUNC_3689_)
	local function __FUNC_3841_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isCommunityOption"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal7:linkToElementModel(registerVal7, "isCommunityOption", true, __FUNC_3841_)
	local function __FUNC_3A00_(arg1, arg2)
		SetSelectedCustomGame(arg1, arg0)
		CustomGameSelectorLoseFocus(registerVal1, arg1, arg0, registerVal1)
		UpdateElementState(registerVal1, "CustomGameOfficial", arg0)
		SetElementModelToFocusedElementModel(registerVal1, arg1, "gameModeInfo")
		return nil
	end

	registerVal7:registerEventHandler("list_item_gain_focus", __FUNC_3A00_)
	local function __FUNC_3B44_(arg1, arg2)
		UpdateElementState(registerVal1, "CustomGameOfficial", arg0)
		return nil
	end

	registerVal7:registerEventHandler("lose_list_focus", __FUNC_3B44_)
	local function __FUNC_3BC4_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_3BC4_)
	local function __FUNC_3DB6_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_3DB6_)
	local function __FUNC_3E86_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCustomGameCommunityOption()
		if registerVal4 then
			ProcessListAction(registerVal1, arg0, arg2)
			return true
		else
			registerVal4 = IsDisabled(arg0, arg2)
			if not registerVal4 then
				LoadCustomGame(arg0, arg2)
				SetCurrentCustomGame(arg0, arg2)
				GameModeSelected(arg0, arg2)
				SetPrimaryControllerPerControllerTableProperty("gamesettingsUpdated", true)
				GoBack(registerVal1, arg2)
				ClearSavedState(registerVal1, arg2)
				PlaySoundSetSound(registerVal1, "action")
				return true
			end
		end
	end

	local function __FUNC_40BD_(arg0, arg1, arg2)
		local registerVal3 = IsCustomGameCommunityOption()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsDisabled(arg0, arg2)
			if not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3E86_, __FUNC_40BD_, false)
	local function __FUNC_4273_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isOfficial")
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isCommunityOption")
		if not registerVal4 and not registerVal4 then
			CustomGamesOpenOptions(registerVal1, arg2, arg1)
			return true
		end
	end

	local function __FUNC_435D_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isOfficial")
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isCommunityOption")
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_4273_, __FUNC_435D_, false)
	local function __FUNC_44E2_(arg1)
		UpdateDataSource(registerVal1, registerVal7, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "CustomGamesRoot", "dirty", __FUNC_44E2_)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "Disabled_NoListFocus"
	local function __FUNC_453E_(arg1, arg2, arg3)
		local registerVal3 = IsParentListInFocus(arg2)
		if not registerVal3 then
			registerVal3 = IsDisabled(arg2, arg0)
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_453E_
	local registerVal12 = {}
	registerVal12.stateName = "NoListFocus"
	local function __FUNC_45CD_(arg0, arg1, arg2)
		local registerVal3 = IsParentListInFocus(arg1)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_45CD_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_4629_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "disabled", true, __FUNC_4629_)
	registerVal1:addElement(registerVal7)
	registerVal1.gamesList = registerVal7
	registerVal8 = CoD.matchSettingsInfo.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 687.000000, 1137.000000)
	registerVal8:setTopBottom(true, false, 109.000000, 659.000000)
	registerVal8.FRBestTime.BestTimeValueText:setText(Engine.Localize("--:--:--"))
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "AspectRatio_1x1"
	local function __FUNC_4746_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal12.condition = __FUNC_4746_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal1:addElement(registerVal8)
	registerVal1.gameModeInfo = registerVal8
	registerVal9 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal9:setTopBottom(true, false, 84.000000, 701.250000)
	registerVal1:addElement(registerVal9)
	registerVal1.FEMenuLeftGraphics = registerVal9
	registerVal10 = CoD.CustomGameOfficial.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 687.000000, 817.000000)
	registerVal10:setTopBottom(true, false, 615.530000, 635.530000)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Visible"
	local function __FUNC_4790_(arg1, arg2, arg3)
		local registerVal3 = IsCustomMPLobby()
		registerVal3 = IsSelfModelValueTrue(arg2, arg0, "isOfficial")
		if registerVal3 and registerVal3 then
			registerVal3 = IsWidgetInFocus(registerVal1, "gamesList", arg3)
		end
		return registerVal3
	end

	registerVal14.condition = __FUNC_4790_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.lobbyNav")
	local function __FUNC_4877_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_4877_)
	local function __FUNC_499C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isOfficial"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "isOfficial", true, __FUNC_499C_)
	registerVal1:addElement(registerVal10)
	registerVal1.CustomGameOfficial = registerVal10
	local function __FUNC_4ABC_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:linkToElementModel(registerVal6, nil, false, __FUNC_4ABC_)
	local function __FUNC_4B0E_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:linkToElementModel(registerVal7, nil, false, __FUNC_4B0E_)
	registerVal11 = {}
	registerVal11.right = registerVal7
	registerVal6.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal6
	registerVal7.navigation = registerVal11
	registerVal11 = {}
	registerVal12 = {}
	local function __FUNC_4B5E_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal1.frame:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.gameModeList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.gamesList:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.gameModeInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
	end

	registerVal12.DefaultClip = __FUNC_4B5E_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_4D69_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal7:completeAnimation()
		registerVal1.gamesList:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
	end

	registerVal12.DefaultClip = __FUNC_4D69_
	registerVal11.Secondary = registerVal12
	registerVal1.clipsPerState = registerVal11
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_4E64_(arg1, arg2)
		SetElementStateByElementName(registerVal1, "frame", arg0, "Update")
		local registerVal5 = {}
		registerVal5.elementName = "frame"
		registerVal5.clipName = "Intro"
		PlayClipOnElement(registerVal1, registerVal5, arg0)
		PlayClip(registerVal1, "Intro", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_4E64_)
	local function __FUNC_4FC1_(arg1, arg2)
		MakeElementNotFocusable(registerVal1, "gamesList", arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_4FC1_)
	local function __FUNC_5075_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuInState(arg1, "Secondary")
		if registerVal4 then
			SetElementState(registerVal1, arg0, arg2, "DefaultState")
			SetState(registerVal1, "DefaultState")
			SetLoseFocusToElement(registerVal1, "gamesList", arg2)
			MakeElementNotFocusable(registerVal1, "gamesList", arg2)
			MakeElementFocusable(registerVal1, "gameModeList", arg2)
			SetFocusToElement(registerVal1, "gameModeList", arg2)
			return true
		else
			GoBack(registerVal1, arg2)
			ClearSavedState(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_529A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_5075_, __FUNC_529A_, true)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "gameModeList"
	registerVal7.id = "gamesList"
	registerVal13 = {}
	registerVal13.name = "menu_loaded"
	registerVal13.controller = arg0
	registerVal1:processEvent(registerVal13)
	registerVal13 = {}
	registerVal13.name = "update_state"
	registerVal13.menu = registerVal1
	registerVal1:processEvent(registerVal13)
	registerVal11 = registerVal1:restoreState()
	if not registerVal11 then
		registerVal13 = {}
		registerVal13.name = "gain_focus"
		registerVal13.controller = arg0
		registerVal1.gameModeList:processEvent(registerVal13)
	end
	local function __FUNC_5395_(arg1)
		arg1.LeftPanel:close()
		arg1.FadeForStreamer:close()
		arg1.frame:close()
		arg1.gameModeList:close()
		arg1.gamesList:close()
		arg1.gameModeInfo:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.CustomGameOfficial:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ChangeGameMode.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_5395_)
	if __FUNC_10B8_ then
		__FUNC_10B8_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ChangeGameMode = __FUNC_1137_

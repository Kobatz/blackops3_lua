-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.CodCaster.codcaster_options_slider")
require("ui.uieditor.widgets.CodCaster.CodCasterTeamIdentityInformationPanel")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.Scorestreaks.scorestreaks_TitleBox")
require("ui.uieditor.widgets.GameSettings.GameSettings_Optionstextbox")
require("ui.uieditor.widgets.Theater.Theater_HintText")
local function __FUNC_43E_(arg0, arg1)
	local registerVal2 = DataSources.TeamIdentity.getModel(arg1)
	local registerVal3 = Engine.CreateModel(registerVal2, "team")
	local registerVal4 = Engine.GetModelValue(registerVal3)
	if not registerVal4 then
		Engine.SetModelValue(registerVal3, "team")
	end
	CoD.SetupTeamIdentityInformation(arg0, arg1, "team1")
	CoD.SetupTeamIdentityInformation(arg0, arg1, "team2")
end

local function __FUNC_613_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("EditCodCasterSettings")
	if __FUNC_43E_ then
		__FUNC_43E_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "EditCodCasterSettings.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.310000, 0.310000, 0.310000)
	registerVal1:addElement(registerVal3)
	registerVal1.FEButtonPanelShaderContainer0 = registerVal3
	local registerVal4 = CoD.LobbyStreamerBlackFade.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Transparent"
	local function __FUNC_1D94_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal8.condition = __FUNC_1D94_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "hideWorldForStreamer")
	local function __FUNC_1E22_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_1E22_)
	registerVal1:addElement(registerVal4)
	registerVal1.FadeForStreamer = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_EDIT_CODCASTER_SETTINGS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_EDIT_CODCASTER_SETTINGS"))
	registerVal1:addElement(registerVal5)
	registerVal1.GenericMenuFrame = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 27.000000, 697.000000)
	registerVal6:setTopBottom(true, false, 172.000000, 442.000000)
	registerVal6:setWidgetType(CoD.codcaster_options_slider)
	registerVal6:setVerticalCount(8.000000)
	registerVal6:setDataSource("EditCodCasterSettingsButtonList")
	local function __FUNC_1F4A_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_1F4A_)
	local function __FUNC_20DB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_20DB_)
	local function __FUNC_21AA_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasProperty(arg0, "action")
		if registerVal4 then
			ProcessListAction(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_2248_(arg0, arg1, arg2)
		local registerVal3 = HasProperty(arg0, "action")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_21AA_, __FUNC_2248_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.ButtonList = registerVal6
	registerVal7 = CoD.CodCasterTeamIdentityInformationPanel.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 600.000000, 1170.500000)
	registerVal7:setTopBottom(true, false, 232.500000, 592.500000)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "ShowBoth"
	local function __FUNC_238B_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "showTeam1Info")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg0, "showTeam2Info")
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_238B_
	local registerVal12 = {}
	registerVal12.stateName = "ShowTeam1Only"
	local function __FUNC_2434_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "showTeam1Info")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg0, "showTeam2Info")
		end
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_2434_
	local registerVal13 = {}
	registerVal13.stateName = "ShowTeam2Only"
	local function __FUNC_24E4_(arg1, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg0, "showTeam1Info")
		if not registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg0, "showTeam2Info")
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_24E4_
	registerVal10 = {registerVal11, registerVal12, registerVal13}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_259C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "showTeam1Info"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "showTeam1Info", true, __FUNC_259C_)
	local function __FUNC_26BF_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "showTeam2Info"
		registerVal1:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "showTeam2Info", true, __FUNC_26BF_)
	registerVal1:addElement(registerVal7)
	registerVal1.CodCasterTeamIdentityInformationPanel = registerVal7
	registerVal8 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal8.titleLabel:setText(LocalizeToUpperString("MENU_EDIT_CODCASTER_SETTINGS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(LocalizeToUpperString("MENU_EDIT_CODCASTER_SETTINGS"))
	registerVal8.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_codcaster"))
	registerVal1:addElement(registerVal8)
	registerVal1.GenericMenuFrame0 = registerVal8
	local registerVal9 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal9:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal9)
	registerVal1.FEMenuLeftGraphics = registerVal9
	registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 68.000000, 145.000000)
	registerVal10:setTopBottom(true, false, 145.000000, 165.000000)
	registerVal10:setText(Engine.Localize("MENU_SETTINGS_CAPS"))
	registerVal10:setTTF("fonts/escom.ttf")
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal10:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setLetterSpacing(1.000000)
	local function __FUNC_27DF_(arg0, arg1)
		ScaleWidgetToLabel(registerVal1, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal10, "setText", __FUNC_27DF_)
	registerVal1:addElement(registerVal10)
	registerVal1.DescTitle = registerVal10
	registerVal11 = LUI.UITightText.new()
	registerVal11:setLeftRight(true, false, 68.000000, 171.000000)
	registerVal11:setTopBottom(true, false, 327.000000, 347.000000)
	registerVal11:setText(LocalizeToUpperString("CODCASTER_TEAM_IDENTITY"))
	registerVal11:setTTF("fonts/escom.ttf")
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal11:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setLetterSpacing(1.000000)
	local function __FUNC_283D_(arg0, arg1)
		ScaleWidgetToLabel(registerVal1, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal11, "setText", __FUNC_283D_)
	registerVal1:addElement(registerVal11)
	registerVal1.DescTitle0 = registerVal11
	registerVal12 = CoD.scorestreaks_TitleBox.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 601.000000, 852.000000)
	registerVal12:setTopBottom(true, false, 137.500000, 172.500000)
	registerVal12.TitleGlow1:setAlpha(0.900000)
	registerVal1:addElement(registerVal12)
	registerVal1.TitleBox = registerVal12
	registerVal13 = CoD.GameSettings_Optionstextbox.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 601.000000, 1048.500000)
	registerVal13:setTopBottom(true, false, 175.910000, 197.910000)
	registerVal1:addElement(registerVal13)
	registerVal1.GameSettingsOptionstextbox = registerVal13
	local registerVal14 = CoD.Theater_HintText.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 64.000000, 344.000000)
	registerVal14:setTopBottom(true, false, 506.000000, 531.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.TheaterHintText = registerVal14
	local function __FUNC_289D_(arg1)
		registerVal7:setModel(arg1, arg0)
	end

	registerVal7:linkToElementModel(registerVal6, nil, false, __FUNC_289D_)
	local function __FUNC_28EE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.ScorestreaksLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal6, "displayText", true, __FUNC_28EE_)
	local function __FUNC_29CD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.TextBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal6, "hintText", true, __FUNC_29CD_)
	local function __FUNC_2AA3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.ItemHintText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal6, "hintText", true, __FUNC_2AA3_)
	local function __FUNC_2B7C_(arg1, arg2)
		ShowHeaderKickerAndIcon(registerVal1)
		SetElementStateByElementName(registerVal1, "GenericMenuFrame0", arg0, "Update")
		PlayClip(registerVal1, "intro", arg0)
		SetHeadingKickerText("MENU_CUSTOM_GAMES")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2B7C_)
	local function __FUNC_2CF9_(arg0, arg1, arg2, arg3)
		SaveShoutcasterSettings(registerVal1, arg0, arg2)
		RefreshLobbyGameClient(registerVal1, arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2DB1_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2CF9_, __FUNC_2DB1_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "ButtonList"
	registerVal8:setModel(registerVal1.buttonModel, arg0)
	local registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	local registerVal15 = registerVal1:restoreState()
	if not registerVal15 then
		registerVal17 = {}
		registerVal17.name = "gain_focus"
		registerVal17.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal17)
	end
	local function __FUNC_2EAD_(arg1)
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.FadeForStreamer:close()
		arg1.GenericMenuFrame:close()
		arg1.ButtonList:close()
		arg1.CodCasterTeamIdentityInformationPanel:close()
		arg1.GenericMenuFrame0:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.TitleBox:close()
		arg1.GameSettingsOptionstextbox:close()
		arg1.TheaterHintText:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "EditCodCasterSettings.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2EAD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.EditCodCasterSettings = __FUNC_613_

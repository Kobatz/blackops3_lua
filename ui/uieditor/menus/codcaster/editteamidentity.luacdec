-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.InputButton")
require("ui.uieditor.widgets.CodCaster.codcaster_color_element")
require("ui.uieditor.widgets.CodCaster.CodCasterTeamLogoButton")
require("ui.uieditor.menus.CodCaster.EditTeamLogo")
require("ui.uieditor.widgets.CodCaster.CodCasterFakeMap")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_409_(arg0, arg1)
	local registerVal4 = DataSources.TeamIdentity.getModel(arg1)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "team"))
	CoD.SetupTeamIdentityInformation(arg0, arg1, registerVal2)
	local function __FUNC_579_()
	end

	arg0.restoreState = __FUNC_579_
end

local function __FUNC_5A4_(arg0, arg1)
	local registerVal4 = DataSources.TeamIdentity.getModel(arg1)
	local registerVal2 = Engine.GetModelValue(Engine.GetModel(registerVal4, "team"))
	local registerVal3 = Engine.ToUpper(Engine.Localize(("CODCASTER_" .. registerVal2 .. "_SETTINGS")))
	arg0.GenericMenuFrame.titleLabel:setText(registerVal3)
	arg0.GenericMenuFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(registerVal3)
end

local function __FUNC_850_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("EditTeamIdentity")
	if __FUNC_409_ then
		__FUNC_409_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "EditTeamIdentity.buttonPrompts")
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
	local function __FUNC_2065_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal8.condition = __FUNC_2065_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "hideWorldForStreamer")
	local function __FUNC_20F2_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_20F2_)
	registerVal1:addElement(registerVal4)
	registerVal1.FadeForStreamer = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_NEW"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU"))
	registerVal1:addElement(registerVal5)
	registerVal1.GenericMenuFrame = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 68.000000, 268.000000)
	registerVal6:setTopBottom(true, false, 145.000000, 165.000000)
	registerVal6:setText(Engine.Localize(LocalizeToUpperString("CODCASTER_TEAM_LOGO_COLON")))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(1.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.TeamLogoTitle = registerVal6
	registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 68.000000, 268.000000)
	registerVal7:setTopBottom(true, false, 417.000000, 436.630000)
	registerVal7:setText(Engine.Localize(LocalizeToUpperString("CODCASTER_TEAM_NAME_COLON")))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal7:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setLetterSpacing(1.000000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.TeamNameTitle = registerVal7
	registerVal8 = CoD.InputButton.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 79.000000, 493.000000)
	registerVal8:setTopBottom(true, false, 445.630000, 479.630000)
	local function __FUNC_221A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.Text:setText(registerVal1)
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "TeamIdentityInformation", "teamName", __FUNC_221A_)
	local function __FUNC_22C6_(arg1, arg2)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_22C6_)
	local function __FUNC_2457_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_2457_)
	local function __FUNC_2526_(arg0, arg1, arg2, arg3)
		ShowKeyboard(registerVal1, arg0, arg2, "KEYBOARD_TYPE_TEAM_IDENTITY_TEAMNAME")
		return true
	end

	local function __FUNC_25B4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2526_, __FUNC_25B4_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.TeamNameInputButton = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 68.000000, 268.000000)
	registerVal9:setTopBottom(true, false, 510.000000, 530.000000)
	registerVal9:setText(Engine.Localize(LocalizeToUpperString("CODCASTER_TEAM_COLOR_COLON")))
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal9:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setLetterSpacing(0.080000)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal9)
	registerVal1.TeamColorTitle = registerVal9
	local registerVal10 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal10:makeFocusable()
	registerVal10:setLeftRight(true, false, 79.000000, 493.000000)
	registerVal10:setTopBottom(true, false, 539.000000, 641.000000)
	registerVal10:setDataSource("TeamIdentityColorList")
	registerVal10:setWidgetType(CoD.codcaster_color_element)
	registerVal10:setHorizontalCount(8.000000)
	registerVal10:setVerticalCount(2.000000)
	local function __FUNC_26B2_(arg1, arg2)
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

	registerVal10:registerEventHandler("gain_focus", __FUNC_26B2_)
	local function __FUNC_2843_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_2843_)
	local function __FUNC_2912_(arg0, arg1, arg2, arg3)
		UpdateSelectedTeamIdentityColorElement(registerVal1, arg0, arg2)
		SetTeamIdentityTeamColor(registerVal1, arg0, arg2)
		SetTeamIdentityProfileValue(registerVal1, arg0, arg2, "color")
		return true
	end

	local function __FUNC_2A0A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2912_, __FUNC_2A0A_, false)
	registerVal1:addElement(registerVal10)
	registerVal1.TeamColorList = registerVal10
	local registerVal11 = CoD.CodCasterTeamLogoButton.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 79.000000, 385.000000)
	registerVal11:setTopBottom(true, false, 179.570000, 376.290000)
	registerVal11.BoxButtonLrgInactive:setAlpha(0.560000)
	local function __FUNC_2AFB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.unfocused:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg0, "TeamIdentityInformation", "teamLogo", __FUNC_2AFB_)
	local function __FUNC_2BCB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.LabelButton.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:subscribeToGlobalModel(arg0, "TeamIdentityInformation", "teamLogoName", __FUNC_2BCB_)
	local function __FUNC_2CC1_(arg1, arg2)
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

	registerVal11:registerEventHandler("gain_focus", __FUNC_2CC1_)
	local function __FUNC_2E53_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_2E53_)
	local function __FUNC_2F22_(arg0, arg1, arg2, arg3)
		NavigateToMenu(registerVal1, "EditTeamLogo", true, arg2)
		return true
	end

	local function __FUNC_2F9A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal11, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2F22_, __FUNC_2F9A_, false)
	registerVal1:addElement(registerVal11)
	registerVal1.TeamLogoImageButton = registerVal11
	local registerVal12 = CoD.CodCasterFakeMap.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 600.000000, 1124.000000)
	registerVal12:setTopBottom(true, false, 59.000000, 661.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.CodCasterFakeMap = registerVal12
	local registerVal13 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal13:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal13)
	registerVal1.FEMenuLeftGraphics = registerVal13
	local registerVal14 = {}
	registerVal14.up = registerVal11
	registerVal14.down = registerVal10
	registerVal8.navigation = registerVal14
	registerVal14 = {}
	registerVal14.up = registerVal8
	registerVal10.navigation = registerVal14
	registerVal14 = {}
	registerVal14.down = registerVal8
	registerVal11.navigation = registerVal14
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_3096_(arg1, arg2)
		HandleTeamIdentityKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_3096_)
	local function __FUNC_3145_(arg0, arg1, arg2, arg3)
		SaveShoutcasterSettings(registerVal1, arg0, arg2)
		RefreshLobbyGameClient(registerVal1, arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_31FD_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3145_, __FUNC_31FD_, false)
	local function __FUNC_32F9_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_332C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_32F9_, __FUNC_332C_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal8.id = "TeamNameInputButton"
	registerVal10.id = "TeamColorList"
	registerVal11.id = "TeamLogoImageButton"
	local registerVal16 = {}
	registerVal16.name = "menu_loaded"
	registerVal16.controller = arg0
	registerVal1:processEvent(registerVal16)
	registerVal16 = {}
	registerVal16.name = "update_state"
	registerVal16.menu = registerVal1
	registerVal1:processEvent(registerVal16)
	registerVal14 = registerVal1:restoreState()
	if not registerVal14 then
		registerVal16 = {}
		registerVal16.name = "gain_focus"
		registerVal16.controller = arg0
		registerVal1.TeamLogoImageButton:processEvent(registerVal16)
	end
	local function __FUNC_342A_(arg1)
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.FadeForStreamer:close()
		arg1.GenericMenuFrame:close()
		arg1.TeamNameInputButton:close()
		arg1.TeamColorList:close()
		arg1.TeamLogoImageButton:close()
		arg1.CodCasterFakeMap:close()
		arg1.FEMenuLeftGraphics:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "EditTeamIdentity.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_342A_)
	if __FUNC_5A4_ then
		__FUNC_5A4_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.EditTeamIdentity = __FUNC_850_

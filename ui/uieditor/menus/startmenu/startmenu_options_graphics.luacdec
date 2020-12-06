-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider")
require("ui.uieditor.widgets.StartMenu.StartMenu_OptionHighlight")
require("ui.uieditor.widgets.StartMenu.StartMenu_Option_IconContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Graphics_ColorBlindMinimapPreview")
local function __FUNC_425_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = Engine.Localize("MENU_SAFE_AREA")
	registerVal2.name = registerVal3
	registerVal3 = Engine.Localize("MENU_SAFE_AREA_DESC")
	registerVal2.desc = registerVal3
	registerVal2.altText = "PLATFORM_SAFE_AREA_OPEN_TYPE"
	registerVal3 = RegisterMaterial("")
	registerVal2.image = registerVal3
	local function __FUNC_5E5_(arg0, arg1, arg2, arg3, arg4)
		NavigateToMenu(arg4, "StartMenu_Options_Graphics_SafeArea", true, arg2)
	end

	registerVal2.action = __FUNC_5E5_
	registerVal1.models = registerVal2
	registerVal2 = {}
	registerVal2.disabled = false
	registerVal1.properties = registerVal2
	return registerVal1
end

local function __FUNC_66D_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = Engine.Localize("MENU_BRIGHTNESS")
	registerVal2.name = registerVal3
	registerVal3 = Engine.Localize("MENU_BRIGHTNESS_DESC")
	registerVal2.desc = registerVal3
	registerVal2.altText = "MENU_CHANGE"
	registerVal3 = RegisterMaterial("")
	registerVal2.image = registerVal3
	local function __FUNC_81E_(arg0, arg1, arg2, arg3, arg4)
		NavigateToMenu(arg4, "FirstTimeBrightnessSetting", true, arg2)
	end

	registerVal2.action = __FUNC_81E_
	registerVal1.models = registerVal2
	registerVal2 = {}
	registerVal2.disabled = false
	registerVal1.properties = registerVal2
	return registerVal1
end

local function __FUNC_89C_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_DISABLED")
	registerVal3.name = registerVal4
	registerVal3.value = 0.000000
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_ENABLED")
	registerVal4.name = registerVal5
	registerVal4.value = 1.000000
	registerVal2 = {registerVal3, registerVal4}
	registerVal3 = {}
	registerVal4 = {}
	registerVal5 = Engine.Localize("MENU_DUAL_VIEW_SETTINGS")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("MENU_DUAL_VIEW_SETTINGS_DESC")
	registerVal4.desc = registerVal5
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "GraphicsOptions_DualView", registerVal2, "start_in_3d")
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "start_in_3d")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal4 = {}
	registerVal4.disabled = true
	registerVal3.properties = registerVal4
	return registerVal3
end

local function __FUNC_BE8_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_INDICATOR_FULL")
	registerVal3.name = registerVal4
	registerVal3.value = Enum.SettingTeamIndicator.SettingTeamIndicator_FULL
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_INDICATOR_ABBREVIATED")
	registerVal4.name = registerVal5
	registerVal4.value = Enum.SettingTeamIndicator.SettingTeamIndicator_ABBREVIATED
	registerVal5 = {}
	local registerVal6 = Engine.Localize("MENU_INDICATOR_ICON")
	registerVal5.name = registerVal6
	registerVal5.value = Enum.SettingTeamIndicator.SettingTeamIndicator_ICON
	registerVal2 = {registerVal3, registerVal4, registerVal5}
	registerVal3 = {}
	registerVal4 = {}
	registerVal5 = Engine.Localize("PLATFORM_TEAM_INDICATOR")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("PLATFORM_TEAM_INDICATOR_DESC")
	registerVal4.desc = registerVal5
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "GraphicsOptions_Indicator", registerVal2, "team_indicator")
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "team_indicator")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal4 = {}
	registerVal4.disabled = false
	registerVal3.properties = registerVal4
	return registerVal3
end

local function __FUNC_1073_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_OFF")
	registerVal3.name = registerVal4
	registerVal3.value = Enum.ColorVisionDeficiencies.CVD_OFF
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_COLORBLIND_DEUTERANOPIA")
	registerVal4.name = registerVal5
	registerVal4.value = Enum.ColorVisionDeficiencies.CVD_DEUTERANOMALY
	registerVal5 = {}
	local registerVal6 = Engine.Localize("MENU_COLORBLIND_PROTANOPIA")
	registerVal5.name = registerVal6
	registerVal5.value = Enum.ColorVisionDeficiencies.CVD_PROTANOMALY
	registerVal6 = {}
	local registerVal7 = Engine.Localize("MENU_COLORBLIND_TRITANOPIA")
	registerVal6.name = registerVal7
	registerVal6.value = Enum.ColorVisionDeficiencies.CVD_TRITANOMALY
	registerVal2 = {registerVal3, registerVal4, registerVal5, registerVal6}
	registerVal3 = {}
	registerVal4 = {}
	registerVal5 = Engine.Localize("MENU_COLORBLIND_MODE")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("MENU_COLORBLIND_MODE_DESC")
	registerVal4.desc = registerVal5
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "GraphicsOptions_ColorBlindMode", registerVal2, "colorblindMode")
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "colorblindMode")
	registerVal4.currentSelection = registerVal5
	registerVal4.minimapAlpha = 1.000000
	registerVal3.models = registerVal4
	registerVal4 = {}
	registerVal4.disabled = false
	registerVal3.properties = registerVal4
	return registerVal3
end

local function __FUNC_156C_(arg0)
	local registerVal2 = Engine.GetPrimaryController()
	if arg0 == registerVal2 then
		table.insert({}, __FUNC_66D_(arg0))
	end
	table.insert({}, __FUNC_BE8_(arg0))
	registerVal2 = IsSplitscreenAndInGame(arg0)
	if not registerVal2 then
		table.insert({}, __FUNC_425_(arg0))
	end
	registerVal2 = IsLuaCodeVersionAtLeast(17.000000)
	if registerVal2 then
		table.insert({}, __FUNC_1073_(arg0))
	end
	registerVal2, registerVal3, registerVal4 = ipairs({})
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if not value6.models.minimapAlpha then
		end
		value6.models.minimapAlpha = 0.000000
	end
	return {}
end

local registerVal7 = DataSourceHelpers.ListSetup("OptionGraphicsList", __FUNC_156C_, true)
DataSources.OptionGraphicsList = registerVal7
local function __FUNC_178E_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_17E1_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_Graphics")
	if __FUNC_178E_ then
		__FUNC_178E_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_Graphics.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.060000, 0.060000, 0.060000)
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, 134.000000, 380.000000)
	registerVal5:setTopBottom(true, false, 180.000000, 202.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.Desc = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, -11.000000, 13.000000)
	registerVal6:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal6:setRGB(0.900000, 0.900000, 0.900000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal6)
	registerVal1.CategoryListLine = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(false, false, -608.000000, 62.000000)
	registerVal7:setTopBottom(true, false, 137.500000, 591.500000)
	registerVal7:setWidgetType(CoD.StartMenu_Options_Slider)
	registerVal7:setVerticalCount(8.000000)
	registerVal7:setDataSource("OptionGraphicsList")
	local function __FUNC_2A2D_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_2A2D_)
	local function __FUNC_2BBF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_2BBF_)
	local function __FUNC_2C8E_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2CEF_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2C8E_, __FUNC_2CEF_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.ButtonList = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -11.000000, 13.000000)
	registerVal8:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal8:setRGB(0.900000, 0.900000, 0.900000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal8)
	registerVal1.CategoryListLine0 = registerVal8
	local registerVal9 = CoD.StartMenu_OptionHighlight.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, false, 134.000000, 280.000000)
	registerVal9:setTopBottom(true, false, 141.500000, 181.500000)
	registerVal1:addElement(registerVal9)
	registerVal1.StartMenuOptionHighlight = registerVal9
	local registerVal10 = CoD.StartMenu_Option_IconContainer.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, 19.000000, 126.000000)
	registerVal10:setTopBottom(true, false, 139.500000, 246.500000)
	registerVal1:addElement(registerVal10)
	registerVal1.StartMenuOptionIconContainer = registerVal10
	local registerVal11 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal11.titleLabel:setText(Engine.Localize("MENU_GRAPHICS_CAPS"))
	registerVal11.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_GRAPHICS_CAPS"))
	registerVal11.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_option"))
	registerVal1:addElement(registerVal11)
	registerVal1.MenuFrame = registerVal11
	local registerVal12 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal12:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal12)
	registerVal1.FEMenuLeftGraphics0 = registerVal12
	local registerVal13 = CoD.StartMenu_Options_Graphics_ColorBlindMinimapPreview.new(registerVal1, arg0)
	registerVal13:setLeftRight(false, false, 19.000000, 519.000000)
	registerVal13:setTopBottom(true, false, 331.500000, 591.500000)
	registerVal1:addElement(registerVal13)
	registerVal1.StartMenuOptionsGraphicsColorBlindMinimapPreview0 = registerVal13
	local function __FUNC_2DEA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal7, "desc", true, __FUNC_2DEA_)
	local function __FUNC_2EA2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.DescTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal7, "name", true, __FUNC_2EA2_)
	local function __FUNC_2F79_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setAlpha(registerVal1)
		end
	end

	registerVal13:linkToElementModel(registerVal7, "minimapAlpha", true, __FUNC_2F79_)
	local function __FUNC_300D_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_300D_)
	local function __FUNC_30A1_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		UpdateGamerprofile(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_3124_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_30A1_, __FUNC_3124_, false)
	registerVal7.id = "ButtonList"
	registerVal11:setModel(registerVal1.buttonModel, arg0)
	local registerVal16 = {}
	registerVal16.name = "menu_loaded"
	registerVal16.controller = arg0
	registerVal1:processEvent(registerVal16)
	registerVal16 = {}
	registerVal16.name = "update_state"
	registerVal16.menu = registerVal1
	registerVal1:processEvent(registerVal16)
	local registerVal14 = registerVal1:restoreState()
	if not registerVal14 then
		registerVal16 = {}
		registerVal16.name = "gain_focus"
		registerVal16.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal16)
	end
	local function __FUNC_3221_(arg1)
		arg1.ButtonList:close()
		arg1.StartMenuOptionHighlight:close()
		arg1.StartMenuOptionIconContainer:close()
		arg1.MenuFrame:close()
		arg1.FEMenuLeftGraphics0:close()
		arg1.StartMenuOptionsGraphicsColorBlindMinimapPreview0:close()
		arg1.Desc:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_Graphics.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3221_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Options_Graphics = __FUNC_17E1_

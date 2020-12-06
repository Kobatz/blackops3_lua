-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider")
require("ui.uieditor.widgets.StartMenu.StartMenu_OptionHighlight")
require("ui.uieditor.widgets.StartMenu.StartMenu_Option_IconContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_3BA_(arg0)
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
	registerVal4.name = "MENU_GRAPHIC_CONTENT"
	registerVal4.desc = "MENU_GRAPHIC_CONTENT_DESC"
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = CoD.OptionsUtility.CreateOptionDataSource(arg0, "GraphicsOptions_GraphicContent", registerVal2, "cg_mature")
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "cg_mature")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal4 = {}
	registerVal5 = Dvar.ui_execdemo:get()
	registerVal4.disabled = registerVal5
	registerVal3.properties = registerVal4
	return registerVal3
end

local function __FUNC_718_(arg0)
	if Engine.IsDeviceRestrictingContent then
		local registerVal1 = Engine.IsDeviceRestrictingContent(arg0)
	end
	if registerVal1 then
		local registerVal2 = {}
		local registerVal3 = {}
		registerVal3.name = "MENU_USER_GENERATED_CONTENT"
		registerVal3.desc = "PLATFORM_USER_GENERATED_CONTENT_DISABLED"
		local registerVal4 = RegisterMaterial("")
		registerVal3.image = registerVal4
		registerVal3.altText = "MENU_NOT_AVAILABLE"
		registerVal2.models = registerVal3
		return registerVal2
	else
		return CoD.OptionsUtility.CreateEnabledDisabledProfileVar(arg0, "MENU_USER_GENERATED_CONTENT", "MENU_USER_GENERATED_CONTENT_DESC", "cg_enableUGC", "GraphicsOptions_UserGeneratedContent")
	end
end

local function __FUNC_9B7_(arg0)
	local registerVal1 = {}
	local registerVal2 = {}
	local registerVal3 = Engine.Localize("MENU_RESET_ZOMBIES")
	registerVal2.name = registerVal3
	registerVal3 = Engine.Localize("MENU_RESET_ZOMBIES_DESC")
	registerVal2.desc = registerVal3
	registerVal2.altText = "MENU_RESET"
	registerVal3 = RegisterMaterial("")
	registerVal2.image = registerVal3
	local function __FUNC_B9E_(arg0, arg1, arg2, arg3, arg4)
		local registerVal11 = {}
		registerVal11 = {"MPUI_YES", "MPUI_NO"}
		local function __FUNC_C6A_(arg0)
			if arg0 == 0.000000 then
				local registerVal1 = {}
				local registerVal2 = Engine.GetPrimaryController()
				registerVal1.controller = registerVal2
				registerVal1.signoutUsers = false
				Engine.LobbyVM_CallFunc("ErrorShutdown", registerVal1)
			end
			return true
		end

		arg4:OpenModalDialog(arg0, arg2, "MENU_WARNING", "MENU_RESET_ZOMBIES_WARNING", registerVal11, __FUNC_C6A_)
	end

	registerVal2.action = __FUNC_B9E_
	registerVal1.models = registerVal2
	registerVal2 = {}
	registerVal2.disabled = (not CoD.isFrontend)
	registerVal1.properties = registerVal2
	return registerVal1
end

local function __FUNC_D70_(arg0)
	local registerVal2 = IsCurrentTextLanguageEnglish()
	if registerVal2 then
		table.insert({}, __FUNC_3BA_(arg0))
	end
	table.insert({}, __FUNC_718_(arg0))
	return {}
end

local registerVal5 = DataSourceHelpers.ListSetup("OptionGraphicContentList", __FUNC_D70_, true)
DataSources.OptionGraphicContentList = registerVal5
local function __FUNC_E41_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_E95_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_GraphicContent")
	if __FUNC_E41_ then
		__FUNC_E41_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_GraphicContent.buttonPrompts")
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
	registerVal7:setDataSource("OptionGraphicContentList")
	registerVal7:setWidgetType(CoD.StartMenu_Options_Slider)
	registerVal7:setVerticalCount(8.000000)
	local function __FUNC_2007_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_2007_)
	local function __FUNC_2197_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_2197_)
	local function __FUNC_2266_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_22C7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2266_, __FUNC_22C7_, false)
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
	registerVal11.titleLabel:setText(Engine.Localize(LocalizeToUpperString("MENU_CONTENT_FILTER")))
	registerVal11.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(LocalizeToUpperString("MENU_CONTENT_FILTER")))
	registerVal11.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_option"))
	registerVal1:addElement(registerVal11)
	registerVal1.MenuFrame = registerVal11
	local registerVal12 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal12:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal12)
	registerVal1.FEMenuLeftGraphics0 = registerVal12
	local function __FUNC_23C2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal7, "desc", true, __FUNC_23C2_)
	local function __FUNC_247A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.DescTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal7, "name", true, __FUNC_247A_)
	local function __FUNC_2551_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2551_)
	local function __FUNC_25E5_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		UpdateGamerprofile(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2668_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_25E5_, __FUNC_2668_, false)
	registerVal7.id = "ButtonList"
	registerVal11:setModel(registerVal1.buttonModel, arg0)
	local registerVal15 = {}
	registerVal15.name = "menu_loaded"
	registerVal15.controller = arg0
	registerVal1:processEvent(registerVal15)
	registerVal15 = {}
	registerVal15.name = "update_state"
	registerVal15.menu = registerVal1
	registerVal1:processEvent(registerVal15)
	local registerVal13 = registerVal1:restoreState()
	if not registerVal13 then
		registerVal15 = {}
		registerVal15.name = "gain_focus"
		registerVal15.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal15)
	end
	local function __FUNC_2765_(arg1)
		arg1.ButtonList:close()
		arg1.StartMenuOptionHighlight:close()
		arg1.StartMenuOptionIconContainer:close()
		arg1.MenuFrame:close()
		arg1.FEMenuLeftGraphics0:close()
		arg1.Desc:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_GraphicContent.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2765_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Options_GraphicContent = __FUNC_E95_

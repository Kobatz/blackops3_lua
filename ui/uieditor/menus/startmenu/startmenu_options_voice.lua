-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.StartMenu.StartMenu_Option_IconContainer")
require("ui.uieditor.widgets.StartMenu.StartMenu_OptionHighlight")
local function __FUNC_3A4_(arg0, arg1, arg2, arg3, arg4)
	Engine.SetProfileVar(arg2, arg3, arg1.value)
end

local function __FUNC_42E_(arg0)
	local registerVal2 = {}
	local registerVal3 = {}
	local registerVal4 = Engine.Localize("MENU_OFF")
	registerVal3.name = registerVal4
	registerVal3.value = 0.000000
	registerVal4 = {}
	local registerVal5 = Engine.Localize("MENU_ON")
	registerVal4.name = registerVal5
	registerVal4.value = 1.000000
	registerVal2 = {registerVal3, registerVal4}
	registerVal3 = {}
	registerVal4 = {}
	registerVal5 = Engine.Localize("MENU_MUTE_ALL_EXCEPT_PARTY_OPTION")
	registerVal4.name = registerVal5
	registerVal5 = Engine.Localize("MENU_MUTE_ALL_EXCEPT_PARTY_OPTION_DESC")
	registerVal4.desc = registerVal5
	registerVal5 = RegisterMaterial("")
	registerVal4.image = registerVal5
	registerVal5 = CoD.OptionsUtility.CreateCustomOptionDataSource(arg0, "ChatOptions_MuteAllButParty", registerVal2, "mute_all_except_party", nil, __FUNC_3A4_)
	registerVal4.optionsDatasource = registerVal5
	registerVal5 = CoD.OptionsUtility.GetProfileSelection(arg0, registerVal2, "mute_all_except_party")
	registerVal4.currentSelection = registerVal5
	registerVal3.models = registerVal4
	registerVal4 = {}
	registerVal4.disabled = false
	registerVal3.properties = registerVal4
	return registerVal3
end

local function __FUNC_79D_(arg0)
	table.insert({}, __FUNC_42E_(arg0))
	return {}
end

local registerVal4 = DataSourceHelpers.ListSetup("OptionVoiceList", __FUNC_79D_, true)
DataSources.OptionVoiceList = registerVal4
local function __FUNC_813_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_865_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_Voice")
	if __FUNC_813_ then
		__FUNC_813_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_Voice.buttonPrompts")
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
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(false, false, -608.000000, 62.000000)
	registerVal5:setTopBottom(true, false, 137.500000, 648.500000)
	registerVal5:setDataSource("OptionVoiceList")
	registerVal5:setWidgetType(CoD.StartMenu_Options_Slider)
	registerVal5:setVerticalCount(9.000000)
	local function __FUNC_1931_(arg1, arg2)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_1931_)
	local function __FUNC_1AC3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_1AC3_)
	local function __FUNC_1B92_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1BF3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1B92_, __FUNC_1BF3_, false)
	registerVal1:addElement(registerVal5)
	registerVal1.ButtonList = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 1375.000000, 1499.000000)
	registerVal6:setTopBottom(true, false, -282.790000, -158.790000)
	registerVal6:setAlpha(0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.Image = registerVal6
	local registerVal7 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7.titleLabel:setText(Engine.Localize("MENU_VOICE"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_VOICE"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_option"))
	registerVal1:addElement(registerVal7)
	registerVal1.MenuFrame = registerVal7
	local registerVal8 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal8:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal8)
	registerVal1.FEMenuLeftGraphics0 = registerVal8
	local registerVal9 = CoD.StartMenu_Option_IconContainer.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, false, 18.000000, 125.000000)
	registerVal9:setTopBottom(true, false, 140.000000, 246.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.StartMenuOptionIconContainer0 = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, false, 133.000000, 380.000000)
	registerVal10:setTopBottom(true, false, 184.000000, 206.000000)
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal10)
	registerVal1.Desc0 = registerVal10
	local registerVal11 = CoD.StartMenu_OptionHighlight.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, 133.000000, 279.000000)
	registerVal11:setTopBottom(true, false, 137.500000, 177.500000)
	registerVal1:addElement(registerVal11)
	registerVal1.StartMenuOptionHighlight = registerVal11
	local function __FUNC_1CEE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal5, "image", true, __FUNC_1CEE_)
	local function __FUNC_1DA0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal5, "desc", true, __FUNC_1DA0_)
	local function __FUNC_1E5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.DescTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal5, "name", true, __FUNC_1E5A_)
	local function __FUNC_1F31_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1F31_)
	local function __FUNC_1FC5_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		UpdateGamerprofile(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2048_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1FC5_, __FUNC_2048_, false)
	local function __FUNC_2145_(arg0, arg1, arg2, arg3)
		CloseStartMenu(arg1, arg2)
		return true
	end

	local function __FUNC_21A0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_DISMISS_MENU")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "M", __FUNC_2145_, __FUNC_21A0_, false)
	registerVal5.id = "ButtonList"
	registerVal7:setModel(registerVal1.buttonModel, arg0)
	local registerVal14 = {}
	registerVal14.name = "menu_loaded"
	registerVal14.controller = arg0
	registerVal1:processEvent(registerVal14)
	registerVal14 = {}
	registerVal14.name = "update_state"
	registerVal14.menu = registerVal1
	registerVal1:processEvent(registerVal14)
	local registerVal12 = registerVal1:restoreState()
	if not registerVal12 then
		registerVal14 = {}
		registerVal14.name = "gain_focus"
		registerVal14.controller = arg0
		registerVal1.ButtonList:processEvent(registerVal14)
	end
	local function __FUNC_229E_(arg1)
		arg1.ButtonList:close()
		arg1.MenuFrame:close()
		arg1.FEMenuLeftGraphics0:close()
		arg1.StartMenuOptionIconContainer0:close()
		arg1.StartMenuOptionHighlight:close()
		arg1.Image:close()
		arg1.Desc0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_Voice.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_229E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Options_Voice = __FUNC_865_

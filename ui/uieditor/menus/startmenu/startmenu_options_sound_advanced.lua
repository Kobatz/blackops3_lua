-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_lineGraphics_Options")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.StartMenu.StartMenu_Option_IconContainer")
require("ui.uieditor.widgets.StartMenu.StartMenu_OptionHighlight")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
local function __FUNC_3E8_(arg0)
	table.insert({}, CoD.AudioSettings.CreateModels_Volume(arg0, "MENU_VOICE_VOLUME", "MENU_VOICE_VOLUME_DESC", "", "Voice", "snd_menu_voice"))
	table.insert({}, CoD.AudioSettings.CreateModels_Volume(arg0, "MENU_MUSIC_VOLUME", "MENU_MUSIC_VOLUME_DESC", "", "Music", "snd_menu_music"))
	table.insert({}, CoD.AudioSettings.CreateModels_Volume(arg0, "MENU_SFX_VOLUME", "MENU_SFX_VOLUME_DESC", "", "SFX", "snd_menu_sfx"))
	table.insert({}, CoD.AudioSettings.CreateModels_Volume(arg0, "MENU_CINEMATICS_VOLUME", "MENU_CINEMATICS_VOLUME_DESC", "", "Cinematics", "snd_menu_cinematic"))
	return {}
end

local registerVal2 = DataSourceHelpers.ListSetup("OptionAdvancedSoundList", __FUNC_3E8_, true)
DataSources.OptionAdvancedSoundList = registerVal2
function LUI.createMenu.StartMenu_Options_Sound_Advanced(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_Sound_Advanced")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_Sound_Advanced.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -2.000000, 1278.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.060000, 0.060000, 0.060000)
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 773.000000, 1020.000000)
	registerVal4:setTopBottom(true, false, 154.000000, 176.000000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal4)
	registerVal1.Desc = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal5:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal5:setRGB(0.900000, 0.900000, 0.900000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal5)
	registerVal1.CategoryListLine = registerVal5
	local registerVal6 = CoD.StartMenu_lineGraphics_Options.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 1.000000, 69.000000)
	registerVal6:setTopBottom(true, false, -13.000000, 657.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.StartMenulineGraphicsOptions0 = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 32.000000, 702.000000)
	registerVal7:setTopBottom(true, false, 107.500000, 618.500000)
	registerVal7:setDataSource("OptionAdvancedSoundList")
	registerVal7:setWidgetType(CoD.StartMenu_Options_Slider)
	registerVal7:setVerticalCount(9.000000)
	registerVal7:setVerticalCounter(CoD.verticalCounter)
	local function __FUNC_1A89_(arg1, arg2)
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

	registerVal7:registerEventHandler("gain_focus", __FUNC_1A89_)
	local function __FUNC_1C1B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_1C1B_)
	local function __FUNC_1CEA_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1D4B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1CEA_, __FUNC_1D4B_, false)
	registerVal1:addElement(registerVal7)
	registerVal1.ButtonList = registerVal7
	local registerVal8 = CoD.StartMenu_Option_IconContainer.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 658.000000, 765.000000)
	registerVal8:setTopBottom(true, false, 110.000000, 216.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.StartMenuOptionIconContainer = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal9:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal9:setRGB(0.900000, 0.900000, 0.900000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal9)
	registerVal1.CategoryListLine0 = registerVal9
	local registerVal10 = CoD.StartMenu_OptionHighlight.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 773.000000, 919.000000)
	registerVal10:setTopBottom(true, false, 107.500000, 147.500000)
	registerVal1:addElement(registerVal10)
	registerVal1.StartMenuOptionHighlight = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 640.000000, 656.000000)
	registerVal11:setTopBottom(true, false, 107.500000, 115.500000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal11)
	registerVal1.Image00000 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 640.000000, 656.000000)
	registerVal12:setTopBottom(true, false, 209.500000, 217.500000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal12)
	registerVal1.Image000000 = registerVal12
	local registerVal13 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal13.titleLabel:setText(Engine.Localize(LocalizeToUpperString("MENU_ADVANCED_VOLUME")))
	registerVal13.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(LocalizeToUpperString("MENU_ADVANCED_VOLUME")))
	registerVal13.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_option"))
	registerVal1:addElement(registerVal13)
	registerVal1.MenuFrame = registerVal13
	local function __FUNC_1E46_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal7, "desc", true, __FUNC_1E46_)
	local function __FUNC_1EFE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.DescTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:linkToElementModel(registerVal7, "name", true, __FUNC_1EFE_)
	local function __FUNC_1FD5_(arg0, arg1)
		ShowHeaderIconOnly(registerVal1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1FD5_)
	local function __FUNC_2069_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		UpdateGamerprofile(registerVal1, arg0, arg2)
		StopSoundAlias("tst_test_system")
		return true
	end

	local function __FUNC_2129_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2069_, __FUNC_2129_, false)
	registerVal7.id = "ButtonList"
	registerVal13:setModel(registerVal1.buttonModel, arg0)
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
	local function __FUNC_2225_(arg1)
		arg1.StartMenulineGraphicsOptions0:close()
		arg1.ButtonList:close()
		arg1.StartMenuOptionIconContainer:close()
		arg1.StartMenuOptionHighlight:close()
		arg1.MenuFrame:close()
		arg1.Desc:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_Sound_Advanced.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2225_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end


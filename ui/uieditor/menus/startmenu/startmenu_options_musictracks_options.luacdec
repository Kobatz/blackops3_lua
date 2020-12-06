-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_MusicTracks_FilterFlyout")
require("ui.uieditor.widgets.Footer.fe_footerRighSlideIn")
local function __FUNC_234_(arg0, arg1)
	arg0.animateInFromOffset = 380.000000
end

local function __FUNC_286_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("StartMenu_Options_MusicTracks_Options")
	if __FUNC_234_ then
		__FUNC_234_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "StartMenu_Options_MusicTracks_Options.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -262.000000, 11.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.350000)
	registerVal1:addElement(registerVal3)
	registerVal1.Blackfade = registerVal3
	local registerVal4 = CoD.StartMenu_MusicTracks_FilterFlyout.new(registerVal1, arg0)
	registerVal4:setLeftRight(false, true, -530.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.FiltersFlyout = registerVal4
	local registerVal5 = CoD.fe_footerRighSlideIn.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, true, -640.000000, -208.000000)
	registerVal5:setTopBottom(false, true, -75.000000, -43.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.fefooterRighSlideIn = registerVal5
	local function __FUNC_ABF_(arg0, arg1, arg2, arg3)
		Close(registerVal1, arg2)
		return true
	end

	local function __FUNC_B0F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_ABF_, __FUNC_B0F_, false)
	local function __FUNC_C09_(arg0, arg1, arg2, arg3)
		Close(registerVal1, arg2)
		return true
	end

	local function __FUNC_C5B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_C09_, __FUNC_C5B_, false)
	local function __FUNC_D45_(arg1)
		ClearSavedState(registerVal1, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_D45_)
	registerVal4.id = "FiltersFlyout"
	registerVal5.buttons:setModel(registerVal1.buttonModel, arg0)
	local registerVal8 = {}
	registerVal8.name = "menu_loaded"
	registerVal8.controller = arg0
	registerVal1:processEvent(registerVal8)
	registerVal8 = {}
	registerVal8.name = "update_state"
	registerVal8.menu = registerVal1
	registerVal1:processEvent(registerVal8)
	local registerVal6 = registerVal1:restoreState()
	if not registerVal6 then
		registerVal8 = {}
		registerVal8.name = "gain_focus"
		registerVal8.controller = arg0
		registerVal1.FiltersFlyout:processEvent(registerVal8)
	end
	local function __FUNC_D99_(arg1)
		arg1.FiltersFlyout:close()
		arg1.fefooterRighSlideIn:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "StartMenu_Options_MusicTracks_Options.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_D99_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.StartMenu_Options_MusicTracks_Options = __FUNC_286_

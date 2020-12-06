-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.PC.Utility.TextInputWidget")
local function __FUNC_1D4_(arg0, arg1)
	local function __FUNC_26C_(arg0)
		Engine.Exec(arg1, "ui_keyboard_cancel")
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_26C_)
end

local function __FUNC_2EE_(arg0, arg1)
	if CoD.isPC then
		__FUNC_1D4_(arg0, arg1)
	end
end

local function __FUNC_35B_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("KeyboardInputOverlay")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "FrontendMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "KeyboardInputOverlay.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.fullBackground = registerVal3
	local registerVal4 = CoD.TextInputWidget.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 390.000000, 890.000000)
	registerVal4:setTopBottom(true, false, 210.500000, 460.500000)
	registerVal1:addElement(registerVal4)
	registerVal1.textInput = registerVal4
	local function __FUNC_9E6_(arg0, arg1, arg2, arg3)
		UIKeyboardCancel(registerVal1, arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_A62_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_9E6_, __FUNC_A62_, false)
	local function __FUNC_B5D_(arg0, arg1, arg2, arg3)
		UIKeyboardComplete(registerVal1, arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_BDC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_OK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_B5D_, __FUNC_BDC_, false)
	registerVal4:setModel(registerVal1.buttonModel, arg0)
	local registerVal7 = {}
	registerVal7.name = "menu_loaded"
	registerVal7.controller = arg0
	registerVal1:processEvent(registerVal7)
	registerVal7 = {}
	registerVal7.name = "update_state"
	registerVal7.menu = registerVal1
	registerVal1:processEvent(registerVal7)
	local function __FUNC_CD6_(arg1)
		arg1.textInput:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "KeyboardInputOverlay.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_CD6_)
	if __FUNC_2EE_ then
		__FUNC_2EE_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.KeyboardInputOverlay = __FUNC_35B_

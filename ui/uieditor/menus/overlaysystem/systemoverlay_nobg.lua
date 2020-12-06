-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Compact_Layout")
local function __FUNC_1E3_(arg0, arg1)
	local registerVal2 = DataSources.MessageDialog.getModel(arg1)
	local registerVal3 = CoD.SafeGetModelValue(registerVal2, "controller")
	local registerVal4 = CoD.SafeGetModelValue(registerVal2, "anyControllerAllowed")
	if registerVal4 == true then
		arg0.anyControllerAllowed = true
	else
		if registerVal3 ~= nil then
			arg0:setOwner(registerVal3)
			arg0.anyControllerAllowed = false
		end
	end
end

local function __FUNC_33F_(arg0, arg1)
	arg0.disableDarkenElement = true
	arg0.disableBlur = true
	local registerVal2 = DataSources.MessageDialog.getModel(arg1)
	local registerVal3 = Engine.GetModelValue(Engine.GetModel(registerVal2, "message"))
	if registerVal3 ~= nil then
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, ("MessageDialogBox: Opened with '" .. registerVal3 .. "'.
"))
	else
		Engine.PrintInfo(Enum.consoleLabel.LABEL_LOBBY, "MessageDialogBox: Opened with no message.
")
	end
end

local function __FUNC_5B8_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("SystemOverlay_NoBG")
	if __FUNC_1E3_ then
		__FUNC_1E3_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "SystemOverlay_NoBG.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.systemOverlay_Compact_Layout.new(registerVal1, arg0)
	registerVal3:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal3:setAlpha(0.990000)
	registerVal3.background:setAlpha(0.000000)
	local function __FUNC_D17_(arg1)
		registerVal3:setModel(arg1, arg0)
	end

	registerVal3:linkToElementModel(registerVal1, nil, false, __FUNC_D17_)
	registerVal1:addElement(registerVal3)
	registerVal1.layout = registerVal3
	local function __FUNC_D66_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_D98_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_D66_, __FUNC_D98_, false)
	local function __FUNC_E8B_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasOverlayBackAction(arg1)
		if registerVal4 then
			PerformOverlayBack(registerVal1, arg0, arg2, arg1)
			return true
		end
	end

	local function __FUNC_F22_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		local registerVal3 = HasOverlayBackAction(arg1)
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_E8B_, __FUNC_F22_, false)
	local function __FUNC_1057_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_1088_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_1057_, __FUNC_1088_, false)
	local function __FUNC_117C_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_11B0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_117C_, __FUNC_11B0_, false)
	registerVal3.buttons:setModel(registerVal1.buttonModel, arg0)
	registerVal3.id = "layout"
	local registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	local registerVal4 = registerVal1:restoreState()
	if not registerVal4 then
		registerVal6 = {}
		registerVal6.name = "gain_focus"
		registerVal6.controller = arg0
		registerVal1.layout:processEvent(registerVal6)
	end
	local function __FUNC_12A6_(arg1)
		arg1.layout:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "SystemOverlay_NoBG.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_12A6_)
	if __FUNC_33F_ then
		__FUNC_33F_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.SystemOverlay_NoBG = __FUNC_5B8_

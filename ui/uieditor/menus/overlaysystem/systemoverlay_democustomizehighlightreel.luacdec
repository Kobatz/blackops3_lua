-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_DemoCustomizeHighlightReel_Layout")
function LUI.createMenu.SystemOverlay_DemoCustomizeHighlightReel(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("SystemOverlay_DemoCustomizeHighlightReel")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "SystemOverlay_DemoCustomizeHighlightReel.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.systemOverlay_DemoCustomizeHighlightReel_Layout.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -360.000000, 360.000000)
	local function __FUNC_97F_(arg1)
		registerVal3:setModel(arg1, arg0)
	end

	registerVal3:linkToElementModel(registerVal1, nil, false, __FUNC_97F_)
	registerVal1:addElement(registerVal3)
	registerVal1.layout = registerVal3
	local function __FUNC_9CE_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasOverlayContinueAction(arg1)
		if registerVal4 then
			PerformOverlayContinue(registerVal1, arg0, arg2, arg1)
			return true
		end
	end

	local function __FUNC_A6E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_CONTINUE")
		local registerVal3 = HasOverlayContinueAction(arg1)
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_9CE_, __FUNC_A6E_, false)
	local function __FUNC_BAA_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasOverlayBackAction(arg1)
		if registerVal4 then
			PerformOverlayBack(registerVal1, arg0, arg2, arg1)
			return true
		end
	end

	local function __FUNC_C42_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		local registerVal3 = HasOverlayBackAction(arg1)
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_BAA_, __FUNC_C42_, false)
	local function __FUNC_D77_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_DA8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_D77_, __FUNC_DA8_, false)
	local function __FUNC_E9C_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_ED0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_E9C_, __FUNC_ED0_, false)
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
	local function __FUNC_FC6_(arg1)
		arg1.layout:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "SystemOverlay_DemoCustomizeHighlightReel.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_FC6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end


-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Full_Layout_Pregame")
function LUI.createMenu.SystemOverlay_Pregame(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("SystemOverlay_Pregame")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "SystemOverlay_Pregame.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.systemOverlay_Full_Layout_Pregame.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_91D_(arg1)
		registerVal3:setModel(arg1, arg0)
	end

	registerVal3:linkToElementModel(registerVal1, nil, false, __FUNC_91D_)
	registerVal1:addElement(registerVal3)
	registerVal1.layout = registerVal3
	local function __FUNC_96E_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasOverlayContinueAction(arg1)
		if registerVal4 then
			PerformOverlayContinue(registerVal1, arg0, arg2, arg1)
			return true
		end
	end

	local function __FUNC_A0E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_CONTINUE")
		local registerVal3 = HasOverlayContinueAction(arg1)
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_96E_, __FUNC_A0E_, false)
	local function __FUNC_B4A_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasOverlayBackAction(arg1)
		if registerVal4 then
			PerformOverlayBack(registerVal1, arg0, arg2, arg1)
			return true
		end
	end

	local function __FUNC_BE2_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		local registerVal3 = HasOverlayBackAction(arg1)
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_B4A_, __FUNC_BE2_, false)
	local function __FUNC_D17_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_D48_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_D17_, __FUNC_D48_, false)
	local function __FUNC_E3C_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_E70_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_E3C_, __FUNC_E70_, false)
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
	local function __FUNC_F66_(arg1)
		arg1.layout:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "SystemOverlay_Pregame.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_F66_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end


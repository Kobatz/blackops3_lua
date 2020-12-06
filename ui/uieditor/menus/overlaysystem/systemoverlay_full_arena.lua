-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Full_Arena_Layout")
local function __FUNC_1E4_(arg0)
	arg0.disablePopupOpenCloseAnim = true
	arg0.disableBlur = true
end

local function __FUNC_252_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("SystemOverlay_Full_Arena")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "SystemOverlay_Full_Arena.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.systemOverlay_Full_Arena_Layout.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_999_(arg1)
		registerVal3:setModel(arg1, arg0)
	end

	registerVal3:linkToElementModel(registerVal1, nil, false, __FUNC_999_)
	registerVal1:addElement(registerVal3)
	registerVal1.systemOverlayFullArenaLayout = registerVal3
	local function __FUNC_9EA_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasOverlayContinueAction(arg1)
		if registerVal4 then
			PerformOverlayContinue(registerVal1, arg0, arg2, arg1)
			return true
		end
	end

	local function __FUNC_A8A_(arg0, arg1, arg2)
		local registerVal3 = HasOverlayContinueAction(arg1)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_CONTINUE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_9EA_, __FUNC_A8A_, false)
	local function __FUNC_BC6_(arg0, arg1, arg2, arg3)
		local registerVal4 = HasOverlayBackAction(arg1)
		if registerVal4 then
			PerformOverlayBack(registerVal1, arg0, arg2, arg1)
			return true
		end
	end

	local function __FUNC_C5E_(arg0, arg1, arg2)
		local registerVal3 = HasOverlayBackAction(arg1)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_BC6_, __FUNC_C5E_, false)
	local function __FUNC_D93_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_DC4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, nil, __FUNC_D93_, __FUNC_DC4_, false)
	local function __FUNC_EB8_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_EEC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_EB8_, __FUNC_EEC_, false)
	registerVal3.buttons:setModel(registerVal1.buttonModel, arg0)
	registerVal3.id = "systemOverlayFullArenaLayout"
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
		registerVal1.systemOverlayFullArenaLayout:processEvent(registerVal6)
	end
	local function __FUNC_FE2_(arg1)
		arg1.systemOverlayFullArenaLayout:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "SystemOverlay_Full_Arena.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_FE2_)
	if __FUNC_1E4_ then
		__FUNC_1E4_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.SystemOverlay_Full_Arena = __FUNC_252_

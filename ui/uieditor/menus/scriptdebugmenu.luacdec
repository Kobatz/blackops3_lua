-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.ScriptDebugMenuListWidget")
local function __FUNC_1E2_(arg0, arg1)
	GoBack(arg0, arg1.controller)
	SendClientScriptDebugMenuCloseMenuNotify(arg0, nil, arg1.controller)
end

local function __FUNC_296_(arg0)
	arg0:registerEventHandler("close_ScriptDebugMenu", __FUNC_1E2_)
end

local function __FUNC_30D_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("ScriptDebugMenu")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "ScriptDebugMenu.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 99.000000, 699.000000)
	registerVal3:setTopBottom(true, false, 257.000000, 511.000000)
	registerVal3:setDataSource("ClientscriptDebugMenu")
	registerVal3:setWidgetType(CoD.ScriptDebugMenuListWidget)
	registerVal3:setVerticalCount(8.000000)
	local function __FUNC_A5A_(arg1, arg2)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_A5A_)
	local function __FUNC_BEB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_BEB_)
	local function __FUNC_CBA_(arg0, arg1, arg2, arg3)
		SendClientScriptDebugMenuNotify(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_D29_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal3, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_CBA_, __FUNC_D29_, false)
	registerVal1:addElement(registerVal3)
	registerVal1.cscDebugMenuList = registerVal3
	local function __FUNC_E26_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		SendClientScriptDebugMenuCloseMenuNotify(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_EBE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_E26_, __FUNC_EBE_, false)
	registerVal3.id = "cscDebugMenuList"
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
		registerVal1.cscDebugMenuList:processEvent(registerVal6)
	end
	local function __FUNC_FB0_(arg1)
		arg1.cscDebugMenuList:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "ScriptDebugMenu.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_FB0_)
	if __FUNC_296_ then
		__FUNC_296_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.ScriptDebugMenu = __FUNC_30D_

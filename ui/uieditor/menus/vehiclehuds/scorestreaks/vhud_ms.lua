-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_Internal")
local function __FUNC_1CC_(arg0, arg1)
	arg0.m_inputDisabled = true
end

local function __FUNC_217_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("VHUD_MS")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "VHUD_MS.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.vhud_ms_Internal.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_6D6_(arg1)
		registerVal3:setModel(arg1, arg0)
	end

	registerVal3:subscribeToGlobalModel(arg0, "PerController", "vehicle", __FUNC_6D6_)
	registerVal1:addElement(registerVal3)
	registerVal1.vhudmsInternal0 = registerVal3
	local registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	local function __FUNC_726_(arg1)
		arg1.vhudmsInternal0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "VHUD_MS.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_726_)
	if __FUNC_1CC_ then
		__FUNC_1CC_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.VHUD_MS = __FUNC_217_

-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.DialogSpinner")
local function __FUNC_1C3_(arg0, arg1)
	local function __FUNC_20C_(arg1)
		arg0.waitMessage:setText(Engine.Localize(arg1))
	end

	arg0.setMessage = __FUNC_20C_
end

local function __FUNC_2B0_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("WaitDialog")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "none"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "WaitDialog.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.DialogSpinner.new(registerVal1, arg0)
	registerVal3:setLeftRight(false, true, -102.000000, -64.000000)
	registerVal3:setTopBottom(false, true, -74.000000, -36.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.WaitSpinner = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, true, -367.500000, -109.000000)
	registerVal4:setTopBottom(false, true, -63.000000, -47.000000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setText(Engine.Localize("PLATFORM_PLEASEWAIT"))
	registerVal4:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal4)
	registerVal1.waitMessage = registerVal4
	local registerVal7 = {}
	registerVal7.name = "menu_loaded"
	registerVal7.controller = arg0
	registerVal1:processEvent(registerVal7)
	registerVal7 = {}
	registerVal7.name = "update_state"
	registerVal7.menu = registerVal1
	registerVal1:processEvent(registerVal7)
	local function __FUNC_930_(arg1)
		arg1.WaitSpinner:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "WaitDialog.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_930_)
	if __FUNC_1C3_ then
		__FUNC_1C3_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.WaitDialog = __FUNC_2B0_

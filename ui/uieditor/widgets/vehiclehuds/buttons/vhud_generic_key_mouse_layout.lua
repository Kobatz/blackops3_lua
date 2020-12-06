-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_ButtonWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_generic_key_mouse_layout = registerVal1
function CoD.vhud_generic_key_mouse_layout.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_generic_key_mouse_layout)
	registerVal2.id = "vhud_generic_key_mouse_layout"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -151.000000, -65.000000)
	registerVal3:setTopBottom(false, true, -144.000000, -35.000000)
	registerVal3:setYRot(-50.000000)
	registerVal3:setZRot(-10.000000)
	local function __FUNC_BA2_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, "RIGHT_0", false, __FUNC_BA2_)
	registerVal2:addElement(registerVal3)
	registerVal2.Right0 = registerVal3
	local registerVal4 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -150.000000, -64.000000)
	registerVal4:setTopBottom(false, true, -227.500000, -118.500000)
	registerVal4:setYRot(-50.000000)
	registerVal4:setZRot(-10.000000)
	local function __FUNC_BF2_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, "RIGHT_1", false, __FUNC_BF2_)
	registerVal2:addElement(registerVal4)
	registerVal2.Right1 = registerVal4
	local registerVal5 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -151.000000, -65.000000)
	registerVal5:setTopBottom(false, true, -312.500000, -203.500000)
	registerVal5:setYRot(-50.000000)
	registerVal5:setZRot(-10.000000)
	local function __FUNC_C42_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, "RIGHT_2", false, __FUNC_C42_)
	registerVal2:addElement(registerVal5)
	registerVal2.Right3 = registerVal5
	local registerVal6 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -151.000000, -65.000000)
	registerVal6:setTopBottom(false, true, -395.000000, -286.000000)
	registerVal6:setYRot(-50.000000)
	registerVal6:setZRot(-10.000000)
	local function __FUNC_C92_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, "RIGHT_3", false, __FUNC_C92_)
	registerVal2:addElement(registerVal6)
	registerVal2.Right4 = registerVal6
	local registerVal7 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 64.000000, 150.000000)
	registerVal7:setTopBottom(false, true, -145.000000, -36.000000)
	registerVal7:setYRot(50.000000)
	registerVal7:setZRot(10.000000)
	local function __FUNC_CE2_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, "LEFT_0", false, __FUNC_CE2_)
	registerVal2:addElement(registerVal7)
	registerVal2.Left00 = registerVal7
	local registerVal8 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 64.000000, 150.000000)
	registerVal8:setTopBottom(false, true, -228.500000, -119.500000)
	registerVal8:setYRot(50.000000)
	registerVal8:setZRot(10.000000)
	local function __FUNC_D32_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "LEFT_1", false, __FUNC_D32_)
	registerVal2:addElement(registerVal8)
	registerVal2.Left10 = registerVal8
	local registerVal9 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 64.000000, 150.000000)
	registerVal9:setTopBottom(false, true, -313.500000, -204.500000)
	registerVal9:setYRot(50.000000)
	registerVal9:setZRot(10.000000)
	local function __FUNC_D82_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, "LEFT_2", false, __FUNC_D82_)
	registerVal2:addElement(registerVal9)
	registerVal2.Left20 = registerVal9
	local registerVal10 = CoD.vhud_ms_ButtonWidget.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 64.000000, 150.000000)
	registerVal10:setTopBottom(false, true, -395.000000, -286.000000)
	registerVal10:setYRot(50.000000)
	registerVal10:setZRot(10.000000)
	local function __FUNC_DD2_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "LEFT_3", false, __FUNC_DD2_)
	registerVal2:addElement(registerVal10)
	registerVal2.Left30 = registerVal10
	local function __FUNC_E22_(arg0)
		arg0.Right0:close()
		arg0.Right1:close()
		arg0.Right3:close()
		arg0.Right4:close()
		arg0.Left00:close()
		arg0.Left10:close()
		arg0.Left20:close()
		arg0.Left30:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E22_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


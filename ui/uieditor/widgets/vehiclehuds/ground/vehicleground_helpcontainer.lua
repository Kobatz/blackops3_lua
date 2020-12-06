-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_HelpButtonContainer")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_HelpButtonContainerRight")
require("ui.uieditor.widgets.VehicleHUDs.Buttons.vhud_generic_key_mouse_layout")
local function __FUNC_301_(arg0, arg1, arg2)
	if not CoD.isPC then
		arg0.vhudgenerickeymouselayout:close()
		return 
	end
	arg0.leftBottom:close()
	arg0.leftMiddle:close()
	arg0.leftTop:close()
	arg0.rightBottom:close()
	arg0.rightMiddle:close()
	arg0.rightTop:close()
end

local function __FUNC_496_(arg0, arg1, arg2)
	__FUNC_301_(arg0, arg1, arg2)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.VehicleGround_HelpContainer = registerVal3
local function __FUNC_4D4_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.VehicleGround_HelpContainer)
	registerVal2.id = "VehicleGround_HelpContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.VehicleGround_HelpButtonContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -35.000000, 260.000000)
	registerVal3:setTopBottom(false, true, -109.000000, 0.000000)
	registerVal3:setXRot(26.000000)
	registerVal3:setYRot(51.000000)
	registerVal3:setZRot(12.000000)
	registerVal3:setZoom(-400.000000)
	local function __FUNC_F1D_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, "bottomLeftButton", false, __FUNC_F1D_)
	registerVal2:addElement(registerVal3)
	registerVal2.leftBottom = registerVal3
	local registerVal4 = CoD.VehicleGround_HelpButtonContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -80.000000, 215.000000)
	registerVal4:setTopBottom(false, true, -204.000000, -95.000000)
	registerVal4:setXRot(26.000000)
	registerVal4:setYRot(51.000000)
	registerVal4:setZRot(10.000000)
	registerVal4:setZoom(-400.000000)
	local function __FUNC_F6E_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, "middleLeftButton", false, __FUNC_F6E_)
	registerVal2:addElement(registerVal4)
	registerVal2.leftMiddle = registerVal4
	local registerVal5 = CoD.VehicleGround_HelpButtonContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -102.000000, 193.000000)
	registerVal5:setTopBottom(false, true, -300.000000, -191.000000)
	registerVal5:setXRot(26.000000)
	registerVal5:setYRot(51.000000)
	registerVal5:setZRot(7.000000)
	registerVal5:setZoom(-400.000000)
	local function __FUNC_FBE_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, "topLeftButton", false, __FUNC_FBE_)
	registerVal2:addElement(registerVal5)
	registerVal2.leftTop = registerVal5
	local registerVal6 = CoD.VehicleGround_HelpButtonContainerRight.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -257.000000, 38.000000)
	registerVal6:setTopBottom(false, true, -109.000000, 0.000000)
	registerVal6:setXRot(26.000000)
	registerVal6:setYRot(-51.000000)
	registerVal6:setZRot(-12.000000)
	registerVal6:setZoom(-400.000000)
	local function __FUNC_100E_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, "bottomRightButton", false, __FUNC_100E_)
	registerVal2:addElement(registerVal6)
	registerVal2.rightBottom = registerVal6
	local registerVal7 = CoD.VehicleGround_HelpButtonContainerRight.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -212.000000, 83.000000)
	registerVal7:setTopBottom(false, true, -204.000000, -95.000000)
	registerVal7:setXRot(26.000000)
	registerVal7:setYRot(-51.000000)
	registerVal7:setZRot(-10.000000)
	registerVal7:setZoom(-400.000000)
	local function __FUNC_105E_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, "middleRightButton", false, __FUNC_105E_)
	registerVal2:addElement(registerVal7)
	registerVal2.rightMiddle = registerVal7
	local registerVal8 = CoD.VehicleGround_HelpButtonContainerRight.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -194.000000, 101.000000)
	registerVal8:setTopBottom(false, true, -300.000000, -191.000000)
	registerVal8:setXRot(26.000000)
	registerVal8:setYRot(-51.000000)
	registerVal8:setZRot(-7.000000)
	registerVal8:setZoom(-400.000000)
	local function __FUNC_10AE_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "topRightButton", false, __FUNC_10AE_)
	registerVal2:addElement(registerVal8)
	registerVal2.rightTop = registerVal8
	local registerVal9 = CoD.vhud_generic_key_mouse_layout.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 720.000000)
	local function __FUNC_10FE_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:subscribeToGlobalModel(arg1, "PerController", "vehicle.bindings", __FUNC_10FE_)
	registerVal2:addElement(registerVal9)
	registerVal2.vhudgenerickeymouselayout = registerVal9
	local function __FUNC_114E_(arg0)
		arg0.leftBottom:close()
		arg0.leftMiddle:close()
		arg0.leftTop:close()
		arg0.rightBottom:close()
		arg0.rightMiddle:close()
		arg0.rightTop:close()
		arg0.vhudgenerickeymouselayout:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_114E_)
	if __FUNC_496_ then
		__FUNC_496_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.VehicleGround_HelpContainer.new = __FUNC_4D4_

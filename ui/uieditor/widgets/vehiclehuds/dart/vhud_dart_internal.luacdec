-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_reticle")
require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_Iris")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteContainer")
require("ui.uieditor.widgets.VehicleHUDs.Buttons.vhud_generic_button_layout")
require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_Timebar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_dart_internal = registerVal1
function CoD.vhud_dart_internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_dart_internal)
	registerVal2.id = "vhud_dart_internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -202.500000, 202.500000)
	registerVal3:setTopBottom(true, true, -117.910000, 109.910000)
	registerVal3:setAlpha(0.100000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_backgroundtint"))
	registerVal2:addElement(registerVal3)
	registerVal2.vignetteCenter = registerVal3
	local registerVal4 = CoD.vhud_dart_reticle.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -15.830000, 15.830000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_BD8_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_BD8_)
	registerVal2:addElement(registerVal4)
	registerVal2.vhuddartreticle = registerVal4
	local registerVal5 = CoD.vhud_dart_Iris.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(0.950000, 0.870000, 0.340000)
	registerVal5:setScale(0.900000)
	registerVal2:addElement(registerVal5)
	registerVal2.vhuddartIris = registerVal5
	local registerVal6 = CoD.VehicleGround_VignetteContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setAlpha(0.500000)
	registerVal2:addElement(registerVal6)
	registerVal2.VignetteContainer = registerVal6
	local registerVal7 = CoD.vhud_generic_button_layout.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_C2A_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, "bindings", false, __FUNC_C2A_)
	local function __FUNC_C7A_(arg0, arg2)
		SizeToSafeArea(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("menu_loaded", __FUNC_C7A_)
	registerVal2:addElement(registerVal7)
	registerVal2.vhudmsButtonContainerNew0 = registerVal7
	local registerVal8 = CoD.vhud_dart_Timebar.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -289.170000, 60.830000)
	registerVal8:setTopBottom(true, false, 80.910000, 89.910000)
	registerVal8:setAlpha(0.700000)
	registerVal8:setYRot(-20.000000)
	local function __FUNC_D0D_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_D0D_)
	registerVal2:addElement(registerVal8)
	registerVal2.vhuddartTimebar = registerVal8
	local function __FUNC_D5E_(arg0)
		arg0.vhuddartreticle:close()
		arg0.vhuddartIris:close()
		arg0.VignetteContainer:close()
		arg0.vhudmsButtonContainerNew0:close()
		arg0.vhuddartTimebar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D5E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


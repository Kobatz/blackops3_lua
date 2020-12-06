-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteContainer")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_Iris")
require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_Reticle")
require("ui.uieditor.widgets.VehicleHUDs.Buttons.vhud_generic_button_layout")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_Internal = registerVal1
function CoD.vhud_ms_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_Internal)
	registerVal2.id = "vhud_ms_Internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.VehicleGround_VignetteContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.100000)
	registerVal2:addElement(registerVal3)
	registerVal2.VignetteContainer = registerVal3
	local registerVal4 = CoD.vhud_ms_Iris.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal4:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal4:setRGB(1.000000, 0.350000, 0.350000)
	registerVal4:setAlpha(0.800000)
	local function __FUNC_AEF_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_AEF_)
	local function __FUNC_B3E_(arg0, arg2)
		local registerVal5 = {}
		registerVal5.elementName = "VehicleGroundIris"
		registerVal5.clipName = "StartUp"
		PlayClipOnElement(registerVal2, registerVal5, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_B3E_)
	registerVal2:addElement(registerVal4)
	registerVal2.VehicleGroundIris = registerVal4
	local registerVal5 = CoD.vhud_ms_Reticle.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(1.000000, 0.590000, 0.590000)
	registerVal5:setAlpha(0.380000)
	local function __FUNC_C33_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_C33_)
	local function __FUNC_C82_(arg0, arg2)
		local registerVal5 = {}
		registerVal5.elementName = "dpsVehicleReticle"
		registerVal5.clipName = "StartUp"
		PlayClipOnElement(registerVal2, registerVal5, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_loaded", __FUNC_C82_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Zoom"
	local function __FUNC_D77_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "zoomed")
	end

	registerVal9.condition = __FUNC_D77_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_DE6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "zoomed"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "zoomed", true, __FUNC_DE6_)
	registerVal2:addElement(registerVal5)
	registerVal2.dpsVehicleReticle = registerVal5
	local registerVal6 = CoD.vhud_generic_button_layout.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_F00_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, "bindings", false, __FUNC_F00_)
	local function __FUNC_F52_(arg0, arg2)
		SizeToSafeArea(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("menu_loaded", __FUNC_F52_)
	registerVal2:addElement(registerVal6)
	registerVal2.vhudagrButtonContainer = registerVal6
	local registerVal7 = {}
	registerVal8 = {}
	local function __FUNC_FE5_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.VignetteContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.VehicleGroundIris:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.VehicleGroundIris:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.dpsVehicleReticle:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.dpsVehicleReticle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.vhudagrButtonContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_FE5_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_1267_(arg0)
		arg0.VignetteContainer:close()
		arg0.VehicleGroundIris:close()
		arg0.dpsVehicleReticle:close()
		arg0.vhudagrButtonContainer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1267_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


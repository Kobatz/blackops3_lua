-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteContainer")
require("ui.uieditor.widgets.VehicleHUDs.Buttons.vhud_generic_button_layout")
require("ui.uieditor.widgets.VehicleHUDs.Turret.vhud_turret_reticle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_turret_internal = registerVal1
function CoD.vhud_turret_internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_turret_internal)
	registerVal2.id = "vhud_turret_internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -200.000000, 200.000000)
	registerVal3:setTopBottom(true, true, -125.000000, 125.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_backgroundtint"))
	registerVal2:addElement(registerVal3)
	registerVal2.vignetteCenter = registerVal3
	local registerVal4 = CoD.VehicleGround_VignetteContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setScale(1.200000)
	registerVal2:addElement(registerVal4)
	registerVal2.VignetteContainer = registerVal4
	local registerVal5 = CoD.vhud_generic_button_layout.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_A13_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, "bindings", false, __FUNC_A13_)
	local function __FUNC_A62_(arg0, arg2)
		SizeToSafeArea(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_loaded", __FUNC_A62_)
	registerVal2:addElement(registerVal5)
	registerVal2.buttons = registerVal5
	local registerVal6 = CoD.vhud_turret_reticle.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_AF5_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_AF5_)
	local function __FUNC_B46_(arg0, arg2)
		local registerVal5 = {}
		registerVal5.elementName = "vhudturretreticle"
		registerVal5.clipName = "StartUp"
		PlayClipOnElement(registerVal2, registerVal5, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("menu_loaded", __FUNC_B46_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Zoom"
	local function __FUNC_C3B_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "zoomed")
	end

	registerVal10.condition = __FUNC_C3B_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_CAA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "zoomed"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "zoomed", true, __FUNC_CAA_)
	registerVal2:addElement(registerVal6)
	registerVal2.vhudturretreticle = registerVal6
	local function __FUNC_DC4_(arg0)
		arg0.VignetteContainer:close()
		arg0.buttons:close()
		arg0.vhudturretreticle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DC4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


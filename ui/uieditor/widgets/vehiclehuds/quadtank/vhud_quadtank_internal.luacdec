-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.quadtank.vhud_quadtank_reticle")
require("ui.uieditor.widgets.VehicleHUDs.Buttons.vhud_generic_button_layout")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_quadtank_internal = registerVal1
function CoD.vhud_quadtank_internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_quadtank_internal)
	registerVal2.id = "vhud_quadtank_internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -200.000000, 200.000000)
	registerVal3:setTopBottom(true, true, -125.000000, 125.000000)
	registerVal3:setAlpha(0.600000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_backgroundtint"))
	registerVal2:addElement(registerVal3)
	registerVal2.vignetteCenter = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.850000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_textureoverlayvignette"))
	registerVal2:addElement(registerVal4)
	registerVal2.Vignette = registerVal4
	local registerVal5 = CoD.vhud_quadtank_reticle.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal5:setTopBottom(false, false, -360.000000, 360.000000)
	local function __FUNC_B74_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_B74_)
	local function __FUNC_BC6_(arg0, arg2)
		local registerVal5 = {}
		registerVal5.elementName = "vhudquadtankreticle"
		registerVal5.clipName = "StartUp"
		PlayClipOnElement(registerVal2, registerVal5, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_loaded", __FUNC_BC6_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Zoom"
	local function __FUNC_CBD_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "zoomed")
	end

	registerVal9.condition = __FUNC_CBD_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_D2E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "zoomed"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "zoomed", true, __FUNC_D2E_)
	registerVal2:addElement(registerVal5)
	registerVal2.vhudquadtankreticle = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -300.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal6:setAlpha(0.200000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_vignette"))
	registerVal2:addElement(registerVal6)
	registerVal2.vignetteRight = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal7:setTopBottom(false, false, -360.000000, 360.000000)
	registerVal7:setAlpha(0.200000)
	registerVal7:setYRot(-180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_vehicle_agr_vignette"))
	registerVal2:addElement(registerVal7)
	registerVal2.vignetteLeft = registerVal7
	registerVal8 = CoD.vhud_generic_button_layout.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_E48_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "bindings", false, __FUNC_E48_)
	local function __FUNC_E9A_(arg0, arg2)
		SizeToSafeArea(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("menu_loaded", __FUNC_E9A_)
	registerVal2:addElement(registerVal8)
	registerVal2.vhudagrButtonContainer = registerVal8
	local function __FUNC_F2D_(arg0)
		arg0.vhudquadtankreticle:close()
		arg0.vhudagrButtonContainer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F2D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


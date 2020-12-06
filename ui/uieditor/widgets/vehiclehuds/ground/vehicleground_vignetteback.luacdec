-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VehicleGround_VignetteBack = registerVal1
function CoD.VehicleGround_VignetteBack.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.VehicleGround_VignetteBack)
	registerVal2.id = "VehicleGround_VignetteBack"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 656.000000)
	registerVal3:setTopBottom(false, false, 0.000000, 380.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette2"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal3)
	registerVal2.VignetteLL = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -656.000000, 0.000000)
	registerVal4:setTopBottom(false, false, 0.000000, 380.000000)
	registerVal4:setYRot(-180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette2"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal4)
	registerVal2.VignetteLR = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 656.000000)
	registerVal5:setTopBottom(false, false, -380.000000, 0.000000)
	registerVal5:setXRot(-180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette2"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal5)
	registerVal2.VignetteUL = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -656.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -380.000000, 0.000000)
	registerVal6:setXRot(-180.000000)
	registerVal6:setYRot(-180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette2"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiplyinverse"))
	registerVal2:addElement(registerVal6)
	registerVal2.VignetteUR = registerVal6
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "LeavingOperationalZone"
	local function __FUNC_8A1_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "outOfRange")
	end

	registerVal10.condition = __FUNC_8A1_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_916_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "outOfRange"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "outOfRange", true, __FUNC_916_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VehicleGround_VignetteFore = registerVal1
function CoD.VehicleGround_VignetteFore.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.VehicleGround_VignetteFore)
	registerVal2.id = "VehicleGround_VignetteFore"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal3:setTopBottom(false, true, -344.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -400.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -344.000000, 0.000000)
	registerVal4:setYRot(-180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 344.000000)
	registerVal5:setXRot(-180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -400.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 344.000000)
	registerVal6:setXRot(-180.000000)
	registerVal6:setYRot(-180.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_vignette"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image3 = registerVal6
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "LeavingOperationalZone"
	local function __FUNC_794_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "outOfRange")
	end

	registerVal10.condition = __FUNC_794_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_80A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "outOfRange"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "outOfRange", true, __FUNC_80A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


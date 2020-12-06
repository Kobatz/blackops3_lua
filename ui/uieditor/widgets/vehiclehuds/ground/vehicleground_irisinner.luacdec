-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VehicleGround_IrisInner = registerVal1
function CoD.VehicleGround_IrisInner.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.VehicleGround_IrisInner)
	registerVal2.id = "VehicleGround_IrisInner"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 128.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -630.500000, -502.500000)
	registerVal3:setTopBottom(false, false, -317.000000, 307.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_irisinner"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.IrisInner1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, 500.500000, 628.500000)
	registerVal4:setTopBottom(false, false, -293.000000, 331.000000)
	registerVal4:setZRot(-180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_irisinner"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.IrisInner2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -327.500000, -199.500000)
	registerVal5:setTopBottom(false, false, -808.000000, -184.000000)
	registerVal5:setZRot(-61.000000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_irisinner"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.IrisInner3 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, 263.500000, 391.500000)
	registerVal6:setTopBottom(false, false, -768.000000, -144.000000)
	registerVal6:setZRot(-124.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_irisinner"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.IrisInner4 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -327.500000, -199.500000)
	registerVal7:setTopBottom(false, false, 186.000000, 810.000000)
	registerVal7:setXRot(-180.000000)
	registerVal7:setZRot(-61.000000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_irisinner"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.IrisInner5 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, 264.500000, 392.500000)
	registerVal8:setTopBottom(false, false, 148.000000, 772.000000)
	registerVal8:setXRot(-180.000000)
	registerVal8:setZRot(-124.000000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_irisinner"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.IrisInner6 = registerVal8
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Hidden"
	local function __FUNC_A72_(arg0, arg2, arg3)
		return HideVehicleReticle(registerVal2, arg1, arg3)
	end

	registerVal12.condition = __FUNC_A72_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	local function __FUNC_AD0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "vehicleType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "vehicleType", true, __FUNC_AD0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


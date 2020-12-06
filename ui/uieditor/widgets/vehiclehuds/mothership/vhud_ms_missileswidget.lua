-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.mothership.vhud_ms_missile")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_missilesWidget = registerVal1
function CoD.vhud_ms_missilesWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_missilesWidget)
	registerVal2.id = "vhud_ms_missilesWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 62.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 57.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.vhud_ms_missile.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -31.000000, 17.000000)
	registerVal3:setTopBottom(false, false, -28.500000, -10.500000)
	registerVal3:setZRot(-90.000000)
	local function __FUNC_D69_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_D69_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Armed"
	local function __FUNC_DBA_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammoReady", 1.000000)
	end

	registerVal7.condition = __FUNC_DBA_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_E46_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammoReady"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "ammoReady", true, __FUNC_E46_)
	registerVal2:addElement(registerVal3)
	registerVal2.vhudmsmissile = registerVal3
	local registerVal4 = CoD.vhud_ms_missile.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -16.560000, 31.440000)
	registerVal4:setTopBottom(false, false, -28.500000, -10.500000)
	registerVal4:setZRot(-90.000000)
	local function __FUNC_F63_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_F63_)
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Armed"
	local function __FUNC_FB2_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammoReady", 1.000000)
	end

	registerVal8.condition = __FUNC_FB2_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_103E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammoReady"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "ammoReady", true, __FUNC_103E_)
	registerVal2:addElement(registerVal4)
	registerVal2.vhudmsmissile0 = registerVal4
	local registerVal5 = CoD.vhud_ms_missile.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -31.000000, 17.000000)
	registerVal5:setTopBottom(false, false, 10.500000, 28.500000)
	registerVal5:setZRot(-90.000000)
	local function __FUNC_115B_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_115B_)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Armed"
	local function __FUNC_11AA_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammoReady", 1.000000)
	end

	registerVal9.condition = __FUNC_11AA_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_1236_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammoReady"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "ammoReady", true, __FUNC_1236_)
	registerVal2:addElement(registerVal5)
	registerVal2.vhudmsmissile1 = registerVal5
	registerVal6 = CoD.vhud_ms_missile.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -16.560000, 31.440000)
	registerVal6:setTopBottom(false, false, 10.500000, 28.500000)
	registerVal6:setZRot(-90.000000)
	local function __FUNC_1353_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_1353_)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Armed"
	local function __FUNC_13A2_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammoReady", 1.000000)
	end

	registerVal10.condition = __FUNC_13A2_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_142E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammoReady"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "ammoReady", true, __FUNC_142E_)
	registerVal2:addElement(registerVal6)
	registerVal2.vhudmsmissile2 = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -16.560000, 16.440000)
	registerVal7:setTopBottom(false, false, 40.800000, 45.210000)
	registerVal7:setRGB(0.740000, 0.940000, 0.990000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_timebar"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Bar = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -16.560000, 16.440000)
	registerVal8:setTopBottom(false, false, 40.800000, 45.210000)
	registerVal8:setRGB(0.740000, 0.940000, 0.990000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_timebarsolid"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_154B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal8:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "ammoReady", true, __FUNC_154B_)
	registerVal2:addElement(registerVal8)
	registerVal2.solidbar = registerVal8
	registerVal9 = {}
	registerVal10 = {}
	local function __FUNC_16A0_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal2.Bar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.solidbar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_16A0_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_17F1_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal2.Bar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.solidbar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_17F1_
	registerVal9.Charging = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Charging"
	local function __FUNC_1941_(arg0, arg2, arg3)
		return IsSelfModelValueLessThan(arg2, arg1, "ammoReady", 1.000000)
	end

	registerVal12.condition = __FUNC_1941_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	local function __FUNC_19C2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammoReady"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "ammoReady", true, __FUNC_19C2_)
	local function __FUNC_1ADF_(arg0)
		arg0.vhudmsmissile:close()
		arg0.vhudmsmissile0:close()
		arg0.vhudmsmissile1:close()
		arg0.vhudmsmissile2:close()
		arg0.solidbar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1ADF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.agr.vhud_agr_missile")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_agr_NotificationMissiles = registerVal1
function CoD.vhud_agr_NotificationMissiles.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.vhud_agr_NotificationMissiles)
	registerVal2.id = "vhud_agr_NotificationMissiles"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 84.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 83.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.vhud_agr_missile.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -42.000000, 42.000000)
	registerVal3:setTopBottom(false, false, -38.640000, -4.360000)
	local function __FUNC_BB7_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_BB7_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Armed"
	local function __FUNC_C06_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammo", 3.000000)
	end

	registerVal7.condition = __FUNC_C06_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_C8D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammo"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "ammo", true, __FUNC_C8D_)
	registerVal2:addElement(registerVal3)
	registerVal2.firstMissile0 = registerVal3
	local registerVal4 = CoD.vhud_agr_missile.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -42.000000, 42.000000)
	registerVal4:setTopBottom(false, false, -20.500000, 10.780000)
	local function __FUNC_DA6_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_DA6_)
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Armed"
	local function __FUNC_DF6_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammo", 2.000000)
	end

	registerVal8.condition = __FUNC_DF6_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_E7D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammo"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "ammo", true, __FUNC_E7D_)
	registerVal2:addElement(registerVal4)
	registerVal2.secondMissile = registerVal4
	local registerVal5 = CoD.vhud_agr_missile.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -42.000000, 42.000000)
	registerVal5:setTopBottom(false, false, -4.860000, 27.410000)
	local function __FUNC_F96_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_F96_)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Armed"
	local function __FUNC_FE6_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammo", 1.000000)
	end

	registerVal9.condition = __FUNC_FE6_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_106D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammo"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "ammo", true, __FUNC_106D_)
	registerVal2:addElement(registerVal5)
	registerVal2.thirdMissile = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -18.500000, 18.500000)
	registerVal6:setTopBottom(false, false, 24.210000, 28.610000)
	registerVal6:setRGB(0.740000, 0.990000, 0.840000)
	registerVal6:setYRot(130.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_timebar"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Bar = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -18.500000, 18.500000)
	registerVal7:setTopBottom(false, false, 24.210000, 28.620000)
	registerVal7:setRGB(0.740000, 0.990000, 0.840000)
	registerVal7:setYRot(-50.000000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_timebarsolid"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1186_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal7:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "ammoReady", true, __FUNC_1186_)
	registerVal2:addElement(registerVal7)
	registerVal2.solidbar = registerVal7
	local function __FUNC_12DC_(arg0)
		arg0.firstMissile0:close()
		arg0.secondMissile:close()
		arg0.thirdMissile:close()
		arg0.solidbar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_12DC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


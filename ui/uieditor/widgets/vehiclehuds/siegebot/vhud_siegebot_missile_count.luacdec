-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.siegebot.vhud_siegebot_missile_icon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_siegebot_missile_count = registerVal1
function CoD.vhud_siegebot_missile_count.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.vhud_siegebot_missile_count)
	registerVal2.id = "vhud_siegebot_missile_count"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 84.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 83.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -18.500000, 18.500000)
	registerVal3:setTopBottom(false, false, 24.210000, 28.610000)
	registerVal3:setRGB(0.740000, 0.990000, 0.840000)
	registerVal3:setYRot(130.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_timebar"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Bar = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -18.500000, 18.500000)
	registerVal4:setTopBottom(false, false, 24.210000, 28.620000)
	registerVal4:setRGB(0.740000, 0.990000, 0.840000)
	registerVal4:setYRot(-50.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_timebarsolid"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_C16_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "ammoReady", true, __FUNC_C16_)
	registerVal2:addElement(registerVal4)
	registerVal2.solidbar = registerVal4
	local registerVal5 = CoD.vhud_siegebot_missile_icon.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -8.000000, 92.000000)
	registerVal5:setTopBottom(true, false, 37.280000, 68.280000)
	registerVal5:setYRot(180.000000)
	local function __FUNC_D6C_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_D6C_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Armed"
	local function __FUNC_DBE_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammo", 1.000000)
	end

	registerVal9.condition = __FUNC_DBE_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_E45_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammo"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "ammo", true, __FUNC_E45_)
	registerVal2:addElement(registerVal5)
	registerVal2.vhudsiegebotmissileicon1 = registerVal5
	local registerVal6 = CoD.vhud_siegebot_missile_icon.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -8.000000, 92.000000)
	registerVal6:setTopBottom(true, false, 21.140000, 52.140000)
	registerVal6:setYRot(180.000000)
	local function __FUNC_F5E_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_F5E_)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Armed"
	local function __FUNC_FAE_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammo", 2.000000)
	end

	registerVal10.condition = __FUNC_FAE_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_1035_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammo"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "ammo", true, __FUNC_1035_)
	registerVal2:addElement(registerVal6)
	registerVal2.vhudsiegebotmissileicon2 = registerVal6
	local registerVal7 = CoD.vhud_siegebot_missile_icon.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -8.000000, 92.000000)
	registerVal7:setTopBottom(true, false, 4.860000, 35.860000)
	registerVal7:setYRot(180.000000)
	local function __FUNC_114E_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_114E_)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Armed"
	local function __FUNC_119E_(arg0, arg2, arg3)
		return IsSelfModelValueGreaterThanOrEqualTo(arg2, arg1, "ammo", 3.000000)
	end

	registerVal11.condition = __FUNC_119E_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_1225_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ammo"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "ammo", true, __FUNC_1225_)
	registerVal2:addElement(registerVal7)
	registerVal2.vhudsiegebotmissileicon3 = registerVal7
	local function __FUNC_133E_(arg0)
		arg0.vhudsiegebotmissileicon1:close()
		arg0.vhudsiegebotmissileicon2:close()
		arg0.vhudsiegebotmissileicon3:close()
		arg0.solidbar:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_133E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


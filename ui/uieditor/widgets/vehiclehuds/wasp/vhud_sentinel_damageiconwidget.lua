-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.genericVHUDdamageArea")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_sentinel_DamageIconWidget = registerVal1
function CoD.vhud_sentinel_DamageIconWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_sentinel_DamageIconWidget)
	registerVal2.id = "vhud_sentinel_DamageIconWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 158.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 71.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -79.220000, 79.220000)
	registerVal3:setTopBottom(false, false, -35.650000, 35.650000)
	registerVal3:setRGB(0.600000, 0.820000, 0.910000)
	registerVal3:setAlpha(0.300000)
	registerVal3:setZoom(-20.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_damageiconline"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.DamageIconLine0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -79.220000, 79.220000)
	registerVal4:setTopBottom(false, false, -35.650000, 35.650000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_damageiconred"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_CEE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "damage", true, __FUNC_CEE_)
	registerVal2:addElement(registerVal4)
	registerVal2.DamageIconRed = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -79.220000, 79.220000)
	registerVal5:setTopBottom(false, false, -35.650000, 35.650000)
	registerVal5:setRGB(0.600000, 0.820000, 0.910000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_damageiconline"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.DamageIconLine = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -79.220000, 79.220000)
	registerVal6:setTopBottom(false, false, -35.650000, 35.650000)
	registerVal6:setRGB(0.600000, 0.820000, 0.910000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_wasp_damageicondots"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.DamageIconDots = registerVal6
	local registerVal7 = CoD.genericVHUDdamageArea.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 29.000000, 129.000000)
	registerVal7:setTopBottom(true, false, -14.500000, 85.500000)
	registerVal7:setAlpha(0.000000)
	local function __FUNC_E44_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_E44_)
	registerVal2:addElement(registerVal7)
	registerVal2.genericVHUDdamageArea0 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_E96_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.DamageIconLine0:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DamageIconRed:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DamageIconLine:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DamageIconDots:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.genericVHUDdamageArea0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_E96_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_111C_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.DamageIconLine0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DamageIconRed:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.DamageIconLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.DamageIconDots:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.genericVHUDdamageArea0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_111C_
	registerVal8.RAPS = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "RAPS"
	local function __FUNC_139F_(arg0, arg2, arg3)
		local registerVal3 = IsCampaign()
		if registerVal3 then
			registerVal3 = IsVehicleOfType(arg1, "raps")
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_139F_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "vehicle.vehicleType")
	local function __FUNC_1427_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "vehicle.vehicleType"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_1427_)
	local function __FUNC_154D_(arg0)
		arg0.genericVHUDdamageArea0:close()
		arg0.DamageIconRed:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_154D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


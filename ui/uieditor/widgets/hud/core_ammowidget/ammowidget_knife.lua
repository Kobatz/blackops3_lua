-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_Knife = registerVal1
function CoD.AmmoWidget_Knife.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_Knife)
	registerVal2.id = "AmmoWidget_Knife"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 86.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 26.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -25.200000, -60.260000)
	registerVal3:setTopBottom(false, true, -49.800000, 23.800000)
	registerVal3:setZRot(-90.000000)
	local function __FUNC_690_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(SecondaryMeleeIcon(registerVal1)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentWeapon", "equippedWeaponReference", __FUNC_690_)
	registerVal2:addElement(registerVal3)
	registerVal2.Knife = registerVal3
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Wide"
	local function __FUNC_768_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "currentWeapon.equippedWeaponReference", "melee_knuckles_mp")
	end

	registerVal7.condition = __FUNC_768_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "currentWeapon.equippedWeaponReference")
	local function __FUNC_813_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.equippedWeaponReference"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_813_)
	local function __FUNC_94B_(arg0)
		arg0.Knife:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_94B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.lmgInfiniteReticle_Extras = registerVal1
function CoD.lmgInfiniteReticle_Extras.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.lmgInfiniteReticle_Extras)
	registerVal2.id = "lmgInfiniteReticle_Extras"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 118.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 23.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 10.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_weapon_lmg_screen_extras1"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.extras = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 62.000000, 85.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 10.000000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setImage(RegisterImage("uie_t7_weapon_lmg_screen_extras1"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.extras0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 1.000000, 20.000000)
	registerVal5:setTopBottom(true, false, 7.000000, 17.000000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setImage(RegisterImage("uie_t7_weapon_lmg_screen_extras1"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.extras00 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 63.000000, 82.000000)
	registerVal6:setTopBottom(true, false, 7.000000, 17.000000)
	registerVal6:setAlpha(0.500000)
	registerVal6:setImage(RegisterImage("uie_t7_weapon_lmg_screen_extras1"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.extras000 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 66.090000, 117.590000)
	registerVal7:setTopBottom(true, false, 2.350000, 9.650000)
	registerVal7:setAlpha(0.750000)
	registerVal7:setImage(RegisterImage("uie_t7_weapon_lmg_screen_extras4"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.extras001 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 66.090000, 101.520000)
	registerVal8:setTopBottom(true, false, 10.000000, 17.700000)
	registerVal8:setAlpha(0.750000)
	registerVal8:setImage(RegisterImage("uie_t7_weapon_lmg_screen_extras6"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.extras0010 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 4.290000, 39.290000)
	registerVal9:setTopBottom(true, false, 3.350000, 9.350000)
	registerVal9:setAlpha(0.750000)
	registerVal9:setImage(RegisterImage("uie_t7_weapon_lmg_screen_extras3"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.extras00100 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 4.290000, 40.290000)
	registerVal10:setTopBottom(true, false, 10.000000, 17.700000)
	registerVal10:setAlpha(0.750000)
	registerVal10:setImage(RegisterImage("uie_t7_weapon_lmg_screen_extras5"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.extras001000 = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_DA9_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal12.DefaultClip = __FUNC_DA9_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_E0A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal12.DefaultClip = __FUNC_E0A_
	registerVal11.Printing = registerVal12
	registerVal12 = {}
	local function __FUNC_E6A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal12.DefaultClip = __FUNC_E6A_
	local function __FUNC_ECA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal12.Printing = __FUNC_ECA_
	registerVal11.WeaponFiring = registerVal12
	registerVal12 = {}
	local function __FUNC_F2A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal12.DefaultClip = __FUNC_F2A_
	registerVal11.MagazineFull = registerVal12
	registerVal12 = {}
	local function __FUNC_F8A_()
		registerVal2:setupElementClipCounter(0.000000)
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal12.DefaultClip = __FUNC_F8A_
	registerVal11.EmptyMagazine = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Printing"
	local function __FUNC_1019_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "lmgInfiniteState", Enum.LMGInfiniteState.LMG_INFINITE_STATE_PRINTING)
	end

	registerVal14.condition = __FUNC_1019_
	local registerVal15 = {}
	registerVal15.stateName = "WeaponFiring"
	local function __FUNC_1104_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "lmgInfiniteState", Enum.LMGInfiniteState.LMG_INFINITE_STATE_FIRING)
	end

	registerVal15.condition = __FUNC_1104_
	local registerVal16 = {}
	registerVal16.stateName = "MagazineFull"
	local function __FUNC_11EE_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "lmgInfiniteState", Enum.LMGInfiniteState.LMG_INFINITE_STATE_FULL)
	end

	registerVal16.condition = __FUNC_11EE_
	local registerVal17 = {}
	registerVal17.stateName = "EmptyMagazine"
	local function __FUNC_12D4_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "lmgInfiniteState", Enum.LMGInfiniteState.LMG_INFINITE_STATE_EMPTY)
	end

	registerVal17.condition = __FUNC_12D4_
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17}
	registerVal2:mergeStateConditions(registerVal13)
	local function __FUNC_13BD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lmgInfiniteState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "lmgInfiniteState", true, __FUNC_13BD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SystemOverlay_WeaponPrestigeStar = registerVal1
function CoD.SystemOverlay_WeaponPrestigeStar.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SystemOverlay_WeaponPrestigeStar)
	registerVal2.id = "SystemOverlay_WeaponPrestigeStar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 22.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 22.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal3:setRGB(0.970000, 0.930000, 0.070000)
	registerVal3:setImage(RegisterImage("uie_t7_arena_star_lrg_white"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5F1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setRGB(0.970000, 0.930000, 0.070000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_5F1_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6FE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setRGB(0.590000, 0.360000, 0.890000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6FE_
	registerVal4.DoubleWeaponXP = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "DoubleWeaponXP"
	local function __FUNC_80A_(arg0, arg2, arg3)
		return IsDoubleWeaponXP(arg1)
	end

	registerVal7.condition = __FUNC_80A_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


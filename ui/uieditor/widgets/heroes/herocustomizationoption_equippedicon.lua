-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.heroCustomizationOption_EquippedIcon = registerVal1
function CoD.heroCustomizationOption_EquippedIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.heroCustomizationOption_EquippedIcon)
	registerVal2.id = "heroCustomizationOption_EquippedIcon"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -16.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 16.000000)
	registerVal3:setRGB(0.550000, 0.770000, 0.250000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal3)
	registerVal2.equippedIcon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_642_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.equippedIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_642_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_744_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.equippedIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_744_
	local function __FUNC_843_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Focus = __FUNC_843_
	registerVal4.Equipped = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Equipped"
	local function __FUNC_8A2_(arg0, arg2, arg3)
		return IsCurrentSelectedHeroOption(registerVal2, arg1)
	end

	registerVal7.condition = __FUNC_8A2_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


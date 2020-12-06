-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponMeterBacking = registerVal1
function CoD.WeaponMeterBacking.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponMeterBacking)
	registerVal2.id = "WeaponMeterBacking"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 165.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 165.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.Meterbacking = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -5.310000, 165.000000)
	registerVal4:setTopBottom(true, false, 11.000000, 12.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.middleBar = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6E4_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Meterbacking:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.middleBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_6E4_
	local function __FUNC_844_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Intro = __FUNC_844_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_8A6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Meterbacking:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.middleBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8A6_
	local function __FUNC_A04_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Intro = __FUNC_A04_
	registerVal5.DisplayLevel = registerVal6
	registerVal6 = {}
	local function __FUNC_A66_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Meterbacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.middleBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A66_
	registerVal5.MaxLevel = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "DisplayLevel"
	local function __FUNC_BBF_(arg0, arg2, arg3)
		local registerVal3 = IsCurrentMenuWeaponType(arg0)
		registerVal3 = IsCACGunLevelExists(registerVal2, arg2, arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsCACGunLevelMax(registerVal2, arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_BBF_
	local registerVal9 = {}
	registerVal9.stateName = "MaxLevel"
	local function __FUNC_C8C_(arg0, arg2, arg3)
		local registerVal3 = IsCurrentMenuWeaponType(arg0)
		registerVal3 = IsCACGunLevelExists(registerVal2, arg2, arg1)
		if registerVal3 and registerVal3 then
			registerVal3 = IsCACGunLevelMax(registerVal2, arg2, arg1)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_C8C_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_D58_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_D58_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


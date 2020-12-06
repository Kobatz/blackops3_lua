-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PrimaryOffhandIcon = registerVal1
function CoD.PrimaryOffhandIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.PrimaryOffhandIcon)
	registerVal2.id = "PrimaryOffhandIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal3:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal3:setAlpha(0.750000)
	local function __FUNC_672_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_672_)
	registerVal2:addElement(registerVal3)
	registerVal2.offhandIcon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_724_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_724_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_786_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_786_
	registerVal4.InvisibleGrenadeCountThree = registerVal5
	registerVal5 = {}
	local function __FUNC_7E6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_7E6_
	registerVal4.InvisibleGrenadeCountOne = registerVal5
	registerVal5 = {}
	local function __FUNC_846_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_846_
	registerVal4.InvisibleGrenadeCountTwo = registerVal5
	registerVal5 = {}
	local function __FUNC_8A6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.offhandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8A6_
	registerVal4.Invisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_9A7_(arg0)
		arg0.offhandIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9A7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


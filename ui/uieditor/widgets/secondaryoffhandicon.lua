-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SecondaryOffhandIcon = registerVal1
function CoD.SecondaryOffhandIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.SecondaryOffhandIcon)
	registerVal2.id = "SecondaryOffhandIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal3:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal3:setAlpha(0.750000)
	local function __FUNC_67C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_67C_)
	registerVal2:addElement(registerVal3)
	registerVal2.offhandIcon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_730_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_730_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_792_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_792_
	registerVal4.InvisibleGrenadeCountThree = registerVal5
	registerVal5 = {}
	local function __FUNC_7F2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_7F2_
	registerVal4.InvisibleGrenadeCountOne = registerVal5
	registerVal5 = {}
	local function __FUNC_852_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_852_
	registerVal4.InvisibleGrenadeCountTwo = registerVal5
	registerVal5 = {}
	local function __FUNC_8B2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.offhandIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8B2_
	registerVal4.Invisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_9B3_(arg0)
		arg0.offhandIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9B3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


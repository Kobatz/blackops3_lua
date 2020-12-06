-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Bundle_Count = registerVal1
function CoD.BM_Bundle_Count.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Bundle_Count)
	registerVal2.id = "BM_Bundle_Count"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal3:setRGB(0.970000, 0.950000, 0.680000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setScale(1.700000)
	registerVal3:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_76A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(StringOverrideIfLess(1.000000, "5", StringOverrideIfLess(0.000000, "", registerVal1))))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CryptoKeyProgress", "bundles", __FUNC_76A_)
	registerVal2:addElement(registerVal3)
	registerVal2.BundleCount = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_87F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.BundleCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_87F_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_97F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.BundleCount:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_97F_
	registerVal4.VisibleNotActive = registerVal5
	registerVal5 = {}
	local function __FUNC_A7F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.BundleCount:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A7F_
	registerVal4.VisibleActive = registerVal5
	registerVal5 = {}
	local function __FUNC_B7F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.BundleCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_B7F_
	registerVal4.Off = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_C7F_(arg0)
		arg0.BundleCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C7F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


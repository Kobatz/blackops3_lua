-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.KillcamWidgetNumbers = registerVal1
function CoD.KillcamWidgetNumbers.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.KillcamWidgetNumbers)
	registerVal2.id = "KillcamWidgetNumbers"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 160.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 70.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -80.000000, 80.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.590000, 0.640000, 0.740000)
	registerVal3:setText(Engine.Localize("XX"))
	registerVal3:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Numbers = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6B9_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_6B9_
	local function __FUNC_71A_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_7FD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Numbers:setAlpha(0.000000)
		__FUNC_7FD_(registerVal3, {})
	end

	registerVal5.Start = __FUNC_71A_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_9B1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Numbers:setRGB(0.050000, 1.000000, 0.000000)
		registerVal2.Numbers:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_9B1_
	registerVal4.WinTime = registerVal5
	registerVal5 = {}
	local function __FUNC_AED_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Numbers:setRGB(1.000000, 0.010000, 0.000000)
		registerVal2.Numbers:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_AED_
	registerVal4.LossTime = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


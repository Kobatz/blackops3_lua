-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_TradeAgainFocus = registerVal1
function CoD.BM_TradeAgainFocus.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_TradeAgainFocus)
	registerVal2.id = "BM_TradeAgainFocus"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 384.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 384.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_framefocus"))
	registerVal2:addElement(registerVal3)
	registerVal2.Framefocus = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_583_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Framefocus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_583_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_682_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_768_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Framefocus:setAlpha(0.000000)
		__FUNC_768_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_682_
	registerVal4.Highlighted = registerVal5
	registerVal5 = {}
	local function __FUNC_91D_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_A04_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Framefocus:setAlpha(0.700000)
		__FUNC_A04_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_91D_
	registerVal4.Off = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


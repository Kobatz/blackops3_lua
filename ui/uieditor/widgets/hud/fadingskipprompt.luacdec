-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FadingSkipPrompt = registerVal1
function CoD.FadingSkipPrompt.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FadingSkipPrompt)
	registerVal2.id = "FadingSkipPrompt"
	registerVal2.soundSet = "Omnipedia"
	registerVal2:setLeftRight(true, false, 0.000000, 900.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, true, -900.000000, -3.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 22.000000)
	registerVal3:setText(Engine.Localize("PLATFORM_SKIP"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.pressXtext = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_659_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.pressXtext:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_659_
	local function __FUNC_75A_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_840_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.pressXtext:setAlpha(0.000000)
		__FUNC_840_(registerVal3, {})
	end

	registerVal5.Show = __FUNC_75A_
	local function __FUNC_9F5_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_AD7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.pressXtext:setAlpha(1.000000)
		__FUNC_AD7_(registerVal3, {})
	end

	registerVal5.Hide = __FUNC_9F5_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


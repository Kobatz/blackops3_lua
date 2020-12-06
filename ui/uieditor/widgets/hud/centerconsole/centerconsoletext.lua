-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CenterConsoleText = registerVal1
function CoD.CenterConsoleText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CenterConsoleText)
	registerVal2.id = "CenterConsoleText"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 330.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 900.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setText(Engine.Localize("[CLAN]XXXXXXXXXXXXXXXX"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal3:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Text = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6FE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_6FE_
	local function __FUNC_75E_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_839_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		__FUNC_839_(registerVal3, {})
	end

	registerVal5.FadeOut = __FUNC_75E_
	local function __FUNC_9ED_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_ACE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Text:setAlpha(0.000000)
		__FUNC_ACE_(registerVal3, {})
	end

	registerVal5.FadeIn = __FUNC_9ED_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


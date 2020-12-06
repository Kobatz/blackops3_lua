-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemPulseLayerWidget = registerVal1
function CoD.EmblemPulseLayerWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemPulseLayerWidget)
	registerVal2.id = "EmblemPulseLayerWidget"
	registerVal2.soundSet = "CustomizationEditor"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 314.000000)
	local registerVal3 = LUI.UIElement.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.emblemHiddenPulseLayer = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_4FA_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_620_(arg0, arg1)
			local function __FUNC_7C9_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.000000, 0.000000, 1.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7C9_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.000000, 0.000000, 1.000000)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C9_)
		end

		registerVal3:completeAnimation()
		registerVal2.emblemHiddenPulseLayer:setRGB(1.000000, 1.000000, 0.000000)
		registerVal2.emblemHiddenPulseLayer:setAlpha(1.000000)
		__FUNC_620_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_4FA_
	local function __FUNC_9A6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.emblemHiddenPulseLayer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.Hide = __FUNC_9A6_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


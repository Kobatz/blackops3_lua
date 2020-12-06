-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemLayerArrows = registerVal1
function CoD.EmblemLayerArrows.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemLayerArrows)
	registerVal2.id = "EmblemLayerArrows"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -87.500000, -53.500000)
	registerVal3:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal3:setRGB(0.930000, 0.450000, 0.050000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setZRot(270.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_minimap_arrow"))
	registerVal2:addElement(registerVal3)
	registerVal2.leftArrow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, 52.500000, 84.500000)
	registerVal4:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal4:setRGB(0.930000, 0.450000, 0.050000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZRot(90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_minimap_arrow"))
	registerVal2:addElement(registerVal4)
	registerVal2.rightArrow = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6BF_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.leftArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.rightArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_6BF_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_815_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_954_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.leftArrow:setAlpha(0.000000)
		__FUNC_954_(registerVal3, {})
		local function __FUNC_B09_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.rightArrow:setAlpha(1.000000)
		__FUNC_B09_(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_815_
	registerVal5.RightButtonPressed = registerVal6
	registerVal6 = {}
	local function __FUNC_CBD_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_DFC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.leftArrow:setAlpha(1.000000)
		__FUNC_DFC_(registerVal3, {})
		local function __FUNC_FB1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.rightArrow:setAlpha(0.000000)
		__FUNC_FB1_(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_CBD_
	registerVal5.LeftButtonPressed = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


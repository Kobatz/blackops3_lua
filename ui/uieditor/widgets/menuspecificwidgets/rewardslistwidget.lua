-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RewardsListWidget = registerVal1
function CoD.RewardsListWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RewardsListWidget)
	registerVal2.id = "RewardsListWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 210.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 210.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.160000, 0.160000, 0.160000)
	registerVal2:addElement(registerVal3)
	registerVal2.backgroundImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal4:setTopBottom(true, true, 5.000000, -5.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.iconImage = registerVal4
	local function __FUNC_69A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.iconImage:linkToElementModel(registerVal2, "rewardImage", true, __FUNC_69A_)
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_74C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.backgroundImage:setRGB(0.160000, 0.160000, 0.160000)
		registerVal2.backgroundImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.iconImage:setLeftRight(true, true, 5.000000, -5.000000)
		registerVal2.iconImage:setTopBottom(true, true, 5.000000, -5.000000)
		registerVal2.iconImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_74C_
	local function __FUNC_969_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_B71_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.160000, 0.160000, 0.160000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.backgroundImage:setRGB(0.160000, 0.160000, 0.160000)
		registerVal2.backgroundImage:setAlpha(1.000000)
		__FUNC_B71_(registerVal3, {})
		local function __FUNC_D4E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 5.000000, -5.000000)
			arg0:setTopBottom(true, true, 5.000000, -5.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.iconImage:setLeftRight(true, true, 5.000000, -5.000000)
		registerVal2.iconImage:setTopBottom(true, true, -40.000000, -50.000000)
		registerVal2.iconImage:setAlpha(1.000000)
		__FUNC_D4E_(registerVal4, {})
	end

	registerVal6.GainFocus = __FUNC_969_
	local function __FUNC_F67_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_11AB_(arg0, arg1)
			local function __FUNC_1323_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 501.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 0.640000, 0.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1323_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1323_)
		end

		registerVal3:completeAnimation()
		registerVal2.backgroundImage:setRGB(1.000000, 0.640000, 0.000000)
		registerVal2.backgroundImage:setAlpha(1.000000)
		__FUNC_11AB_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.iconImage:setLeftRight(true, true, 5.000000, -5.000000)
		registerVal2.iconImage:setTopBottom(true, true, 5.000000, -5.000000)
		registerVal2.iconImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal6.Focus = __FUNC_F67_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_1503_(arg0)
		arg0.iconImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1503_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


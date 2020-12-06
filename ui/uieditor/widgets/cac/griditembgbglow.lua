-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GridItemBGBGlow = registerVal1
function CoD.GridItemBGBGlow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GridItemBGBGlow)
	registerVal2.id = "GridItemBGBGlow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 149.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 149.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setScale(0.970000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_zm_bgb_purpleglow"))
	registerVal2:addElement(registerVal3)
	registerVal2.Purple = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setScale(0.970000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_zm_bgb_greenglow"))
	registerVal2:addElement(registerVal4)
	registerVal2.Green = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setScale(0.970000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_zm_bgb_blueglow"))
	registerVal2:addElement(registerVal5)
	registerVal2.Blue = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setScale(0.970000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_zm_bgb_orangeglow"))
	registerVal2:addElement(registerVal6)
	registerVal2.Orange = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_90E_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Purple:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Green:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Blue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Orange:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_90E_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_B03_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Purple:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Green:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Blue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_D27_(arg0, arg1)
			local function __FUNC_E9F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 999.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E9F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9F_)
		end

		registerVal6:completeAnimation()
		registerVal2.Orange:setAlpha(0.500000)
		__FUNC_D27_(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_B03_
	registerVal7.Orange = registerVal8
	registerVal8 = {}
	local function __FUNC_1051_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Purple:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Green:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_1277_(arg0, arg1)
			local function __FUNC_13EF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 999.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_13EF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13EF_)
		end

		registerVal5:completeAnimation()
		registerVal2.Blue:setAlpha(0.500000)
		__FUNC_1277_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Orange:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_1051_
	registerVal7.Blue = registerVal8
	registerVal8 = {}
	local function __FUNC_15A1_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Purple:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_17C7_(arg0, arg1)
			local function __FUNC_193F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 999.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_193F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_193F_)
		end

		registerVal4:completeAnimation()
		registerVal2.Green:setAlpha(0.500000)
		__FUNC_17C7_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Blue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Orange:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_15A1_
	registerVal7.Green = registerVal8
	registerVal8 = {}
	local function __FUNC_1AF1_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_1D17_(arg0, arg1)
			local function __FUNC_1E8F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 999.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1E8F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E8F_)
		end

		registerVal3:completeAnimation()
		registerVal2.Purple:setAlpha(0.500000)
		__FUNC_1D17_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Green:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Blue:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Orange:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_1AF1_
	registerVal7.Purple = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Orange"
	local function __FUNC_2041_(arg0, arg2, arg3)
		local registerVal3 = IsBubbleGumType(arg2, arg1, "event")
		if registerVal3 then
			registerVal3 = IsCACItemConsumable(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_2041_
	local registerVal11 = {}
	registerVal11.stateName = "Blue"
	local function __FUNC_20E5_(arg0, arg2, arg3)
		local registerVal3 = IsBubbleGumType(arg2, arg1, "round")
		if registerVal3 then
			registerVal3 = IsCACItemConsumable(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal11.condition = __FUNC_20E5_
	local registerVal12 = {}
	registerVal12.stateName = "Green"
	local function __FUNC_2189_(arg0, arg2, arg3)
		local registerVal3 = IsBubbleGumType(arg2, arg1, "time")
		if registerVal3 then
			registerVal3 = IsCACItemConsumable(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_2189_
	local registerVal13 = {}
	registerVal13.stateName = "Purple"
	local function __FUNC_222C_(arg0, arg2, arg3)
		local registerVal3 = IsBubbleGumType(arg2, arg1, "activated")
		if registerVal3 then
			registerVal3 = IsCACItemConsumable(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_222C_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_22D5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_22D5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


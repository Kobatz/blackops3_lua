-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CybercoreNodeLinkWidget = registerVal1
function CoD.CybercoreNodeLinkWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CybercoreNodeLinkWidget)
	registerVal2.id = "CybercoreNodeLinkWidget"
	registerVal2.soundSet = "CAC_LethalGrenade"
	registerVal2:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, 12.000000, -12.000000)
	registerVal3:setTopBottom(true, true, 36.000000, -36.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_link_cybercore_tree"))
	registerVal2:addElement(registerVal3)
	registerVal2.ActiveImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -12.000000, 12.000000)
	registerVal4:setTopBottom(true, true, 36.000000, -36.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_link_cybercore_tree"))
	registerVal2:addElement(registerVal4)
	registerVal2.InactiveImage = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_81E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ActiveImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.InactiveImage:setAlpha(0.000000)
		registerVal2.InactiveImage:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_81E_
	local function __FUNC_A17_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ActiveImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.InactiveImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Active = __FUNC_A17_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_B77_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ActiveImage:setAlpha(0.000000)
		registerVal2.ActiveImage:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.InactiveImage:setAlpha(0.250000)
		registerVal2.InactiveImage:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B77_
	local function __FUNC_DB0_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ActiveImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_FA7_(arg0, arg1)
			local function __FUNC_111F_(arg0, arg1)
				local function __FUNC_1297_(arg0, arg1)
					local function __FUNC_140F_(arg0, arg1)
						local function __FUNC_1587_(arg0, arg1)
							local function __FUNC_16FF_(arg0, arg1)
								local function __FUNC_1877_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(1.000000)
									arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1877_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1877_)
							end

							if arg1.interrupted then
								__FUNC_16FF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.260000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16FF_)
						end

						if arg1.interrupted then
							__FUNC_1587_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1587_)
					end

					if arg1.interrupted then
						__FUNC_140F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.010000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_140F_)
				end

				if arg1.interrupted then
					__FUNC_1297_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1297_)
			end

			if arg1.interrupted then
				__FUNC_111F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.370000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_111F_)
		end

		registerVal4:completeAnimation()
		registerVal2.InactiveImage:setAlpha(0.000000)
		registerVal2.InactiveImage:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		__FUNC_FA7_(registerVal4, {})
	end

	registerVal6.Inactive = __FUNC_DB0_
	local function __FUNC_1AB6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ActiveImage:setAlpha(0.000000)
		registerVal2.ActiveImage:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.Active = __FUNC_1AB6_
	registerVal5.Inactive = registerVal6
	registerVal6 = {}
	local function __FUNC_1C54_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ActiveImage:setRGB(0.330000, 0.760000, 0.100000)
		registerVal2.ActiveImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.InactiveImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1C54_
	registerVal5.ActiveMartial = registerVal6
	registerVal6 = {}
	local function __FUNC_1DFA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ActiveImage:setRGB(0.960000, 0.360000, 0.070000)
		registerVal2.ActiveImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.InactiveImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1DFA_
	registerVal5.ActiveChaos = registerVal6
	registerVal6 = {}
	local function __FUNC_1F9E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.ActiveImage:setRGB(0.070000, 0.780000, 0.960000)
		registerVal2.ActiveImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.InactiveImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1F9E_
	registerVal5.ActiveControl = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Inactive"
	local function __FUNC_2142_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "purchased")
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_2142_
	local registerVal9 = {}
	registerVal9.stateName = "ActiveMartial"
	local function __FUNC_21B9_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "core", "cybercore_martial")
	end

	registerVal9.condition = __FUNC_21B9_
	local registerVal10 = {}
	registerVal10.stateName = "ActiveChaos"
	local function __FUNC_224A_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "core", "cybercore_chaos")
	end

	registerVal10.condition = __FUNC_224A_
	local registerVal11 = {}
	registerVal11.stateName = "ActiveControl"
	local function __FUNC_22D8_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "core", "cybercore_control")
	end

	registerVal11.condition = __FUNC_22D8_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_236A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "purchased"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "purchased", true, __FUNC_236A_)
	local function __FUNC_2487_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "core"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "core", true, __FUNC_2487_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


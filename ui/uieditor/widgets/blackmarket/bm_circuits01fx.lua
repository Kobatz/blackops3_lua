-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Circuits01FX = registerVal1
function CoD.BM_Circuits01FX.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Circuits01FX)
	registerVal2.id = "BM_Circuits01FX"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 476.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 476.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_limited_circuits_bright"))
	registerVal2:addElement(registerVal3)
	registerVal2.Pixels04 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 476.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_pixelanim_mask2"))
	registerVal2:addElement(registerVal4)
	registerVal2.mask = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_5F1_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_757_(arg0, arg1)
			local function __FUNC_8AC_(arg0, arg1)
				local function __FUNC_A27_(arg0, arg1)
					local function __FUNC_B7C_(arg0, arg1)
						local function __FUNC_CF7_(arg0, arg1)
							local function __FUNC_E4C_(arg0, arg1)
								local function __FUNC_FC7_(arg0, arg1)
									local function __FUNC_111C_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 459.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_111C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_111C_)
								end

								if arg1.interrupted then
									__FUNC_FC7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC7_)
							end

							if arg1.interrupted then
								__FUNC_E4C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E4C_)
						end

						if arg1.interrupted then
							__FUNC_CF7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 770.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF7_)
					end

					if arg1.interrupted then
						__FUNC_B7C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B7C_)
				end

				if arg1.interrupted then
					__FUNC_A27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A27_)
			end

			if arg1.interrupted then
				__FUNC_8AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AC_)
		end

		registerVal3:completeAnimation()
		registerVal2.Pixels04:setAlpha(0.000000)
		__FUNC_757_(registerVal3, {})
		local function __FUNC_12D1_(arg0, arg1)
			local function __FUNC_1428_(arg0, arg1)
				local function __FUNC_15A3_(arg0, arg1)
					local function __FUNC_171B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 859.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						arg0:setScale(1.700000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_171B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_171B_)
				end

				if arg1.interrupted then
					__FUNC_15A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1170.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(1.700000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15A3_)
			end

			if arg1.interrupted then
				__FUNC_1428_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1428_)
		end

		registerVal4:completeAnimation()
		registerVal2.mask:setAlpha(1.000000)
		registerVal2.mask:setScale(1.000000)
		__FUNC_12D1_(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_5F1_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


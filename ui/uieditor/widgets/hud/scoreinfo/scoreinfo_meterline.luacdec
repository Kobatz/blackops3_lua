-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreInfo_MeterLine = registerVal1
function CoD.ScoreInfo_MeterLine.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreInfo_MeterLine)
	registerVal2.id = "ScoreInfo_MeterLine"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 51.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 23.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 51.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 23.000000)
	registerVal3:setRGB(1.000000, 0.760000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_scorewidget_meterline"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.Line = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_64B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Line:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_64B_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_744_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_85F_(arg0, arg1)
			local function __FUNC_9B4_(arg0, arg1)
				local function __FUNC_B2F_(arg0, arg1)
					local function __FUNC_C84_(arg0, arg1)
						local function __FUNC_DFF_(arg0, arg1)
							local function __FUNC_F54_(arg0, arg1)
								local function __FUNC_10CF_(arg0, arg1)
									local function __FUNC_1224_(arg0, arg1)
										local function __FUNC_139F_(arg0, arg1)
											local function __FUNC_14F4_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setRGB(0.000000, 0.000000, 0.000000)
												arg0:setAlpha(1.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_14F4_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14F4_)
										end

										if arg1.interrupted then
											__FUNC_139F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_139F_)
									end

									if arg1.interrupted then
										__FUNC_1224_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1224_)
								end

								if arg1.interrupted then
									__FUNC_10CF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.300000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10CF_)
							end

							if arg1.interrupted then
								__FUNC_F54_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F54_)
						end

						if arg1.interrupted then
							__FUNC_DFF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DFF_)
					end

					if arg1.interrupted then
						__FUNC_C84_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C84_)
				end

				if arg1.interrupted then
					__FUNC_B2F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2F_)
			end

			if arg1.interrupted then
				__FUNC_9B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B4_)
		end

		registerVal3:completeAnimation()
		registerVal2.Line:setRGB(1.000000, 0.760000, 0.000000)
		registerVal2.Line:setAlpha(1.000000)
		__FUNC_85F_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_744_
	registerVal4.Active = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Active"
	local function __FUNC_16D2_(arg0, arg1, arg2)
		local registerVal3 = HideScoreMeterDueToGameType()
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_16D2_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


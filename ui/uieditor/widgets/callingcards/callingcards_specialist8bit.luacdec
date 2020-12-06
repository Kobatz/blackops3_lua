-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_Specialist8bit_Reaper")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Specialist8bit = registerVal1
function CoD.CallingCards_Specialist8bit.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_Specialist8bit)
	registerVal2.id = "CallingCards_Specialist8bit"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_specialist8bit_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_mp_specialist8bit_bg2"))
	registerVal2:addElement(registerVal4)
	registerVal2.bg2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -128.000000, 0.000000)
	registerVal5:setTopBottom(true, false, -112.000000, 231.000000)
	registerVal5:setRGB(0.270000, 0.270000, 0.270000)
	registerVal2:addElement(registerVal5)
	registerVal2.mask = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 266.000000, 277.000000)
	registerVal6:setTopBottom(true, false, 59.220000, 63.780000)
	registerVal6:setRGB(0.410000, 0.410000, 0.410000)
	registerVal2:addElement(registerVal6)
	registerVal2.white = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 266.000000, 277.000000)
	registerVal7:setTopBottom(true, false, 88.220000, 92.780000)
	registerVal7:setRGB(0.410000, 0.410000, 0.410000)
	registerVal2:addElement(registerVal7)
	registerVal2.Image4 = registerVal7
	local registerVal8 = CoD.CallingCards_Specialist8bit_Reaper.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 10.000000, 480.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.CallingCardsSpecialist8bitReaper = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_986_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_D16_(arg0, arg1)
			local function __FUNC_E8F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 899.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E8F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.660000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E8F_)
		end

		registerVal4:completeAnimation()
		registerVal2.bg2:setAlpha(0.000000)
		__FUNC_D16_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.mask:setRGB(0.240000, 0.240000, 0.240000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_1041_(arg0, arg1)
			local function __FUNC_11BB_(arg0, arg1)
				local function __FUNC_1310_(arg0, arg1)
					local function __FUNC_148B_(arg0, arg1)
						local function __FUNC_1603_(arg0, arg1)
							local function __FUNC_1758_(arg0, arg1)
								local function __FUNC_18D3_(arg0, arg1)
									local function __FUNC_1A4B_(arg0, arg1)
										local function __FUNC_1BA0_(arg0, arg1)
											local function __FUNC_1D1B_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 266.000000, 277.000000)
												arg0:setTopBottom(true, false, 57.720000, 62.280000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_1D1B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D1B_)
										end

										if arg1.interrupted then
											__FUNC_1BA0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BA0_)
									end

									if arg1.interrupted then
										__FUNC_1A4B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A4B_)
								end

								if arg1.interrupted then
									__FUNC_18D3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18D3_)
							end

							if arg1.interrupted then
								__FUNC_1758_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1758_)
						end

						if arg1.interrupted then
							__FUNC_1603_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1603_)
					end

					if arg1.interrupted then
						__FUNC_148B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_148B_)
				end

				if arg1.interrupted then
					__FUNC_1310_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1310_)
			end

			if arg1.interrupted then
				__FUNC_11BB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11BB_)
		end

		registerVal6:completeAnimation()
		registerVal2.white:setLeftRight(true, false, 266.000000, 277.000000)
		registerVal2.white:setTopBottom(true, false, 57.720000, 62.280000)
		registerVal2.white:setAlpha(1.000000)
		__FUNC_1041_(registerVal6, {})
		local function __FUNC_1F3D_(arg0, arg1)
			local function __FUNC_20B7_(arg0, arg1)
				local function __FUNC_220C_(arg0, arg1)
					local function __FUNC_2387_(arg0, arg1)
						local function __FUNC_24FF_(arg0, arg1)
							local function __FUNC_2654_(arg0, arg1)
								local function __FUNC_27CF_(arg0, arg1)
									local function __FUNC_2947_(arg0, arg1)
										local function __FUNC_2A9C_(arg0, arg1)
											local function __FUNC_2C17_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_2C17_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C17_)
										end

										if arg1.interrupted then
											__FUNC_2A9C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A9C_)
									end

									if arg1.interrupted then
										__FUNC_2947_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2947_)
								end

								if arg1.interrupted then
									__FUNC_27CF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27CF_)
							end

							if arg1.interrupted then
								__FUNC_2654_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2654_)
						end

						if arg1.interrupted then
							__FUNC_24FF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24FF_)
					end

					if arg1.interrupted then
						__FUNC_2387_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2387_)
				end

				if arg1.interrupted then
					__FUNC_220C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_220C_)
			end

			if arg1.interrupted then
				__FUNC_20B7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20B7_)
		end

		registerVal7:completeAnimation()
		registerVal2.Image4:setAlpha(1.000000)
		__FUNC_1F3D_(registerVal7, {})
		local function __FUNC_2DC9_(arg0, arg1)
			local function __FUNC_2F58_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 789.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 10.000000, 480.000000)
				arg0:setTopBottom(true, false, 0.000000, 120.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2F58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -6.000000, 464.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F58_)
		end

		registerVal8:completeAnimation()
		registerVal2.CallingCardsSpecialist8bitReaper:setLeftRight(true, false, 10.000000, 480.000000)
		registerVal2.CallingCardsSpecialist8bitReaper:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.CallingCardsSpecialist8bitReaper:setAlpha(1.000000)
		__FUNC_2DC9_(registerVal8, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal10.DefaultClip = __FUNC_986_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_317D_(arg0)
		arg0.CallingCardsSpecialist8bitReaper:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_317D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_SurvivalistWidget = registerVal1
function CoD.CallingCards_SurvivalistWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_SurvivalistWidget)
	registerVal2.id = "CallingCards_SurvivalistWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_survivalist_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 189.750000, 369.750000)
	registerVal4:setTopBottom(true, false, 0.000000, 72.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_survivalist_cloud4"))
	registerVal2:addElement(registerVal4)
	registerVal2.cloud4 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 210.750000, 390.750000)
	registerVal5:setTopBottom(true, false, 0.000000, 72.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_survivalist_cloud4"))
	registerVal2:addElement(registerVal5)
	registerVal2.cloud40 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_survivalist_mountain_flipbook"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal6:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 7.169999, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.mountains = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 228.000000, 480.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_survivalist_cloud1"))
	registerVal2:addElement(registerVal7)
	registerVal2.cloud10 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 221.000000, 473.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_survivalist_cloud1"))
	registerVal2:addElement(registerVal8)
	registerVal2.cloud1 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 288.000000, 480.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcard_survivalist_cloud2"))
	registerVal2:addElement(registerVal9)
	registerVal2.cloud2 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 313.000000, 505.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal10:setAlpha(0.640000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcard_survivalist_cloud2"))
	registerVal2:addElement(registerVal10)
	registerVal2.cloud20 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 240.000000, 480.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal11:setImage(RegisterImage("uie_t7_callingcard_survivalist_man"))
	registerVal2:addElement(registerVal11)
	registerVal2.man = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 90.000000, 276.000000)
	registerVal12:setTopBottom(true, false, 49.450000, 120.000000)
	registerVal12:setImage(RegisterImage("uie_t7_callingcard_survivalist_car"))
	registerVal2:addElement(registerVal12)
	registerVal2.car = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_C4E_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_11A0_(arg0, arg1)
			local function __FUNC_1330_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 880.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 180.000000, 360.000000)
				arg0:setTopBottom(true, false, 0.000000, 72.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1330_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2119.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 189.020000, 369.020000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1330_)
		end

		registerVal4:completeAnimation()
		registerVal2.cloud4:setLeftRight(true, false, 210.750000, 390.750000)
		registerVal2.cloud4:setTopBottom(true, false, 0.000000, 72.000000)
		registerVal2.cloud4:setAlpha(1.000000)
		__FUNC_11A0_(registerVal4, {})
		local function __FUNC_1550_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1549.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:beginAnimation("keyframe", 1450.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_1550_)
		registerVal7:completeAnimation()
		registerVal2.cloud10:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_1705_(arg0, arg1)
			local function __FUNC_187F_(arg0, arg1)
				local function __FUNC_19D4_(arg0, arg1)
					local function __FUNC_1B4F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1B4F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 679.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B4F_)
				end

				if arg1.interrupted then
					__FUNC_19D4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 660.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19D4_)
			end

			if arg1.interrupted then
				__FUNC_187F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 939.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_187F_)
		end

		registerVal8:completeAnimation()
		registerVal2.cloud1:setAlpha(1.000000)
		__FUNC_1705_(registerVal8, {})
		local function __FUNC_1D01_(arg0, arg1)
			local function __FUNC_1E7B_(arg0, arg1)
				local function __FUNC_1FF3_(arg0, arg1)
					local function __FUNC_216B_(arg0, arg1)
						local function __FUNC_22E3_(arg0, arg1)
							local function __FUNC_245B_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 410.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 313.000000, 505.000000)
								arg0:setTopBottom(true, false, 0.000000, 120.000000)
								arg0:setAlpha(0.640000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_245B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 470.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_245B_)
						end

						if arg1.interrupted then
							__FUNC_22E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 669.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22E3_)
					end

					if arg1.interrupted then
						__FUNC_216B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_216B_)
				end

				if arg1.interrupted then
					__FUNC_1FF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FF3_)
			end

			if arg1.interrupted then
				__FUNC_1E7B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E7B_)
		end

		registerVal9:completeAnimation()
		registerVal2.cloud2:setLeftRight(true, false, 313.000000, 505.000000)
		registerVal2.cloud2:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.cloud2:setAlpha(0.640000)
		__FUNC_1D01_(registerVal9, {})
		local function __FUNC_267D_(arg0, arg1)
			local function __FUNC_27D4_(arg0, arg1)
				local function __FUNC_294F_(arg0, arg1)
					local function __FUNC_2AC7_(arg0, arg1)
						local function __FUNC_2C3F_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 470.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 288.000000, 480.000000)
							arg0:setTopBottom(true, false, 0.000000, 120.000000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2C3F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 669.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C3F_)
					end

					if arg1.interrupted then
						__FUNC_2AC7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AC7_)
				end

				if arg1.interrupted then
					__FUNC_294F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_294F_)
			end

			if arg1.interrupted then
				__FUNC_27D4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 469.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27D4_)
		end

		registerVal10:completeAnimation()
		registerVal2.cloud20:setLeftRight(true, false, 288.000000, 480.000000)
		registerVal2.cloud20:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.cloud20:setAlpha(0.000000)
		__FUNC_267D_(registerVal10, {})
		local function __FUNC_2E5C_(arg0, arg1)
			local function __FUNC_2FEC_(arg0, arg1)
				local function __FUNC_317C_(arg0, arg1)
					local function __FUNC_330C_(arg0, arg1)
						local function __FUNC_349C_(arg0, arg1)
							local function __FUNC_362C_(arg0, arg1)
								local function __FUNC_37BC_(arg0, arg1)
									local function __FUNC_394C_(arg0, arg1)
										local function __FUNC_3ADC_(arg0, arg1)
											local function __FUNC_3C6C_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 90.000000, 276.000000)
												arg0:setTopBottom(true, false, 49.450000, 120.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_3C6C_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 240.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 84.000000, 270.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C6C_)
										end

										if arg1.interrupted then
											__FUNC_3ADC_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 559.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 102.000000, 288.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ADC_)
									end

									if arg1.interrupted then
										__FUNC_394C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 91.500000, 277.500000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_394C_)
								end

								if arg1.interrupted then
									__FUNC_37BC_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 99.060000, 285.060000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37BC_)
							end

							if arg1.interrupted then
								__FUNC_362C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 87.750000, 273.750000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_362C_)
						end

						if arg1.interrupted then
							__FUNC_349C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 96.750000, 282.750000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_349C_)
					end

					if arg1.interrupted then
						__FUNC_330C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 84.000000, 270.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_330C_)
				end

				if arg1.interrupted then
					__FUNC_317C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 91.500000, 277.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_317C_)
			end

			if arg1.interrupted then
				__FUNC_2FEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 84.000000, 270.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FEC_)
		end

		registerVal12:completeAnimation()
		registerVal2.car:setLeftRight(true, false, 90.000000, 276.000000)
		registerVal2.car:setTopBottom(true, false, 49.450000, 120.000000)
		__FUNC_2E5C_(registerVal12, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal14.DefaultClip = __FUNC_C4E_
	registerVal13.DefaultState = registerVal14
	registerVal2.clipsPerState = registerVal13
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


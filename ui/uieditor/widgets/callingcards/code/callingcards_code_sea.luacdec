-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CODE.CallingCards_code_sea_sub")
require("ui.uieditor.widgets.CallingCards.CODE.CallingCards_code_sea_diver")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_code_sea = registerVal1
function CoD.CallingCards_code_sea.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_code_sea)
	registerVal2.id = "CallingCards_code_sea"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_sea_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcards_sea_bg2"))
	registerVal2:addElement(registerVal4)
	registerVal2.bg2 = registerVal4
	local registerVal5 = CoD.CallingCards_code_sea_sub.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 512.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.CallingCardscodeseasub = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 169.000000, 412.200000)
	registerVal6:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcards_sea_light"))
	registerVal2:addElement(registerVal6)
	registerVal2.light = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 266.000000, 126.200000)
	registerVal7:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal7:setAlpha(0.200000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcards_sea_light"))
	registerVal2:addElement(registerVal7)
	registerVal2.light0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 272.000000, 320.000000)
	registerVal8:setTopBottom(true, false, 4.000000, 52.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcards_sea_diver4"))
	registerVal2:addElement(registerVal8)
	registerVal2.diver4 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 384.000000, 480.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 87.000000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcards_sea_diver3"))
	registerVal2:addElement(registerVal9)
	registerVal2.diver3 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 218.000000, 326.000000)
	registerVal10:setTopBottom(true, false, 19.000000, 115.000000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcards_sea_diver2"))
	registerVal2:addElement(registerVal10)
	registerVal2.diver2 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal11:setImage(RegisterImage("uie_t7_callingcards_sea_particles"))
	registerVal2:addElement(registerVal11)
	registerVal2.particles = registerVal11
	local registerVal12 = CoD.CallingCards_code_sea_diver.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 300.000000, 480.000000)
	registerVal12:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.CallingCardscodeseadiver = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 174.500000, 261.500000)
	registerVal13:setTopBottom(true, false, 54.500000, 141.500000)
	registerVal13:setImage(RegisterImage("uie_t7_callingcards_sea_fish"))
	registerVal2:addElement(registerVal13)
	registerVal2.Image0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 113.500000, 183.500000)
	registerVal14:setTopBottom(true, false, 37.000000, 107.000000)
	registerVal14:setAlpha(0.500000)
	registerVal14:setImage(RegisterImage("uie_t7_callingcards_sea_fish"))
	registerVal2:addElement(registerVal14)
	registerVal2.Image00 = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_E36_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_1501_(arg0, arg1)
			local function __FUNC_167B_(arg0, arg1)
				local function __FUNC_17F3_(arg0, arg1)
					local function __FUNC_196B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_196B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 380.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_196B_)
				end

				if arg1.interrupted then
					__FUNC_17F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1509.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17F3_)
			end

			if arg1.interrupted then
				__FUNC_167B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_167B_)
		end

		registerVal4:completeAnimation()
		registerVal2.bg2:setAlpha(1.000000)
		__FUNC_1501_(registerVal4, {})
		local function __FUNC_1B1D_(arg0, arg1)
			local function __FUNC_1CCF_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1569.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 0.000000, 512.000000)
				arg0:setTopBottom(true, false, 0.000000, 128.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1CCF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1549.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, -1.970000, 126.030000)
			arg0:setAlpha(0.950000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CCF_)
		end

		registerVal5:completeAnimation()
		registerVal2.CallingCardscodeseasub:setLeftRight(true, false, 0.000000, 512.000000)
		registerVal2.CallingCardscodeseasub:setTopBottom(true, false, 0.000000, 128.000000)
		registerVal2.CallingCardscodeseasub:setAlpha(1.000000)
		__FUNC_1B1D_(registerVal5, {})
		local function __FUNC_1EEC_(arg0, arg1)
			local function __FUNC_2067_(arg0, arg1)
				local function __FUNC_21DF_(arg0, arg1)
					local function __FUNC_2357_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.200000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2357_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2357_)
				end

				if arg1.interrupted then
					__FUNC_21DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1440.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21DF_)
			end

			if arg1.interrupted then
				__FUNC_2067_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 779.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2067_)
		end

		registerVal6:completeAnimation()
		registerVal2.light:setAlpha(0.200000)
		__FUNC_1EEC_(registerVal6, {})
		local function __FUNC_2509_(arg0, arg1)
			local function __FUNC_2683_(arg0, arg1)
				local function __FUNC_27FB_(arg0, arg1)
					local function __FUNC_2973_(arg0, arg1)
						local function __FUNC_2AC8_(arg0, arg1)
							local function __FUNC_2C43_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.100000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2C43_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.200000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C43_)
						end

						if arg1.interrupted then
							__FUNC_2AC8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AC8_)
					end

					if arg1.interrupted then
						__FUNC_2973_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2973_)
				end

				if arg1.interrupted then
					__FUNC_27FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.150000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27FB_)
			end

			if arg1.interrupted then
				__FUNC_2683_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.260000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2683_)
		end

		registerVal7:completeAnimation()
		registerVal2.light0:setAlpha(0.100000)
		__FUNC_2509_(registerVal7, {})
		local function __FUNC_2DF5_(arg0, arg1)
			local function __FUNC_2F84_(arg0, arg1)
				local function __FUNC_3114_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1069.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 272.000000, 320.000000)
					arg0:setTopBottom(true, false, 9.000000, 57.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3114_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1159.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 15.610000, 63.610000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3114_)
			end

			if arg1.interrupted then
				__FUNC_2F84_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 3.660000, 51.660000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F84_)
		end

		registerVal8:completeAnimation()
		registerVal2.diver4:setLeftRight(true, false, 272.000000, 320.000000)
		registerVal2.diver4:setTopBottom(true, false, 9.000000, 57.000000)
		__FUNC_2DF5_(registerVal8, {})
		local function __FUNC_3316_(arg0, arg1)
			local function __FUNC_34A4_(arg0, arg1)
				local function __FUNC_3634_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 869.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 384.000000, 480.000000)
					arg0:setTopBottom(true, false, 0.000000, 87.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3634_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 450.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 12.500000, 99.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3634_)
			end

			if arg1.interrupted then
				__FUNC_34A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1799.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 16.500000, 103.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34A4_)
		end

		registerVal9:completeAnimation()
		registerVal2.diver3:setLeftRight(true, false, 384.000000, 480.000000)
		registerVal2.diver3:setTopBottom(true, false, 0.000000, 87.000000)
		__FUNC_3316_(registerVal9, {})
		local function __FUNC_3836_(arg0, arg1)
			local function __FUNC_39C4_(arg0, arg1)
				local function __FUNC_3B54_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1249.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 218.000000, 326.000000)
					arg0:setTopBottom(true, false, 12.000000, 108.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3B54_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 20.000000, 116.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B54_)
			end

			if arg1.interrupted then
				__FUNC_39C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 24.000000, 120.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39C4_)
		end

		registerVal10:completeAnimation()
		registerVal2.diver2:setLeftRight(true, false, 218.000000, 326.000000)
		registerVal2.diver2:setTopBottom(true, false, 12.000000, 108.000000)
		__FUNC_3836_(registerVal10, {})
		local function __FUNC_3D56_(arg0, arg1)
			local function __FUNC_3EAC_(arg0, arg1)
				local function __FUNC_4027_(arg0, arg1)
					local function __FUNC_419F_(arg0, arg1)
						local function __FUNC_4317_(arg0, arg1)
							local function __FUNC_448F_(arg0, arg1)
								local function __FUNC_4607_(arg0, arg1)
									local function __FUNC_477F_(arg0, arg1)
										local function __FUNC_48F7_(arg0, arg1)
											local function __FUNC_4A6F_(arg0, arg1)
												local function __FUNC_4BE7_(arg0, arg1)
													local function __FUNC_4D5F_(arg0, arg1)
														local function __FUNC_4ED7_(arg0, arg1)
															if not arg1.interrupted then
																arg0:beginAnimation("keyframe", 689.000000, false, false, CoD.TweenType.Linear)
															end
															arg0:setAlpha(0.000000)
															if arg1.interrupted then
																registerVal2.clipFinished(arg0, arg1)
															else
																arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
															end
														end

														if arg1.interrupted then
															__FUNC_4ED7_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
														arg0:setAlpha(1.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4ED7_)
													end

													if arg1.interrupted then
														__FUNC_4D5F_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D5F_)
												end

												if arg1.interrupted then
													__FUNC_4BE7_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BE7_)
											end

											if arg1.interrupted then
												__FUNC_4A6F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A6F_)
										end

										if arg1.interrupted then
											__FUNC_48F7_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48F7_)
									end

									if arg1.interrupted then
										__FUNC_477F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_477F_)
								end

								if arg1.interrupted then
									__FUNC_4607_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4607_)
							end

							if arg1.interrupted then
								__FUNC_448F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_448F_)
						end

						if arg1.interrupted then
							__FUNC_4317_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4317_)
					end

					if arg1.interrupted then
						__FUNC_419F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_419F_)
				end

				if arg1.interrupted then
					__FUNC_4027_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 249.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4027_)
			end

			if arg1.interrupted then
				__FUNC_3EAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EAC_)
		end

		registerVal11:completeAnimation()
		registerVal2.particles:setAlpha(0.000000)
		__FUNC_3D56_(registerVal11, {})
		local function __FUNC_5089_(arg0, arg1)
			local function __FUNC_5218_(arg0, arg1)
				local function __FUNC_53A8_(arg0, arg1)
					local function __FUNC_5538_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 300.000000, 480.000000)
						arg0:setTopBottom(true, false, 7.000000, 127.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5538_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1459.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 13.000000, 133.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5538_)
				end

				if arg1.interrupted then
					__FUNC_53A8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, -10.000000, 110.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53A8_)
			end

			if arg1.interrupted then
				__FUNC_5218_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, -13.000000, 107.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5218_)
		end

		registerVal12:completeAnimation()
		registerVal2.CallingCardscodeseadiver:setLeftRight(true, false, 300.000000, 480.000000)
		registerVal2.CallingCardscodeseadiver:setTopBottom(true, false, 7.000000, 127.000000)
		__FUNC_5089_(registerVal12, {})
		local function __FUNC_573A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 3119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -125.500000, 27.000000)
			arg0:setTopBottom(true, false, -6.000000, 146.500000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 145.500000, 232.500000)
		registerVal2.Image0:setTopBottom(true, false, 51.500000, 138.500000)
		registerVal2.Image0:setAlpha(0.000000)
		__FUNC_573A_(registerVal13, {})
		local function __FUNC_595D_(arg0, arg1)
			local function __FUNC_5B47_(arg0, arg1)
				local function __FUNC_5D0C_(arg0, arg1)
					local function __FUNC_5EF7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 48.250000, 118.250000)
						arg0:setTopBottom(true, false, 21.080000, 91.080000)
						arg0:setAlpha(0.500000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5EF7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 86.880000, 156.880000)
					arg0:setTopBottom(true, false, 28.700000, 98.700000)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EF7_)
				end

				if arg1.interrupted then
					__FUNC_5D0C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 134.000000, 204.000000)
				arg0:setTopBottom(true, false, 38.000000, 108.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D0C_)
			end

			if arg1.interrupted then
				__FUNC_5B47_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1129.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -13.000000, 57.000000)
			arg0:setTopBottom(true, false, 9.000000, 79.000000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B47_)
		end

		registerVal14:completeAnimation()
		registerVal2.Image00:setLeftRight(true, false, 48.250000, 118.250000)
		registerVal2.Image00:setTopBottom(true, false, 21.080000, 91.080000)
		registerVal2.Image00:setAlpha(0.500000)
		__FUNC_595D_(registerVal14, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal16.DefaultClip = __FUNC_E36_
	registerVal15.DefaultState = registerVal16
	registerVal2.clipsPerState = registerVal15
	local function __FUNC_6119_(arg0)
		arg0.CallingCardscodeseasub:close()
		arg0.CallingCardscodeseadiver:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6119_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Perk2Widget = registerVal1
function CoD.CallingCards_Perk2Widget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_Perk2Widget)
	registerVal2.id = "CallingCards_Perk2Widget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -35.000000, 515.000000)
	registerVal3:setTopBottom(true, false, -35.680000, 155.680000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_perk2_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 163.600000, 451.210000)
	registerVal4:setTopBottom(true, false, -135.660000, 310.080000)
	registerVal4:setRGB(1.000000, 0.270000, 0.270000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZRot(80.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.GlowOrangeOver = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 207.550000, 472.000000)
	registerVal5:setTopBottom(true, false, -11.660000, 133.000000)
	registerVal5:setAlpha(0.900000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_perk2_boat"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal2:addElement(registerVal5)
	registerVal2.boat = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 256.490000, 492.000000)
	registerVal6:setTopBottom(true, false, -35.680000, 155.680000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_perk2_sails"))
	registerVal2:addElement(registerVal6)
	registerVal2.sails = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 102.600000, 265.360000)
	registerVal7:setTopBottom(true, false, -126.120000, 126.120000)
	registerVal7:setRGB(1.000000, 0.970000, 0.880000)
	registerVal7:setAlpha(0.300000)
	registerVal7:setZRot(80.000000)
	registerVal7:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.GlowOrangeOver0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -34.640000, 515.000000)
	registerVal8:setTopBottom(true, false, -41.390000, 150.980000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_perk2_octopus"))
	registerVal2:addElement(registerVal8)
	registerVal2.octo = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 10.610000, 293.180000)
	registerVal9:setTopBottom(true, false, -23.680000, 169.290000)
	registerVal9:setAlpha(0.490000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcard_perk2_splash"))
	registerVal2:addElement(registerVal9)
	registerVal2.splash = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 446.000000, 496.000000)
	registerVal10:setTopBottom(true, false, 29.950000, 72.810000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcard_perk2_octopus2"))
	registerVal2:addElement(registerVal10)
	registerVal2.octoright = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 388.000000, 432.970000)
	registerVal11:setTopBottom(true, false, -22.660000, 29.810000)
	registerVal11:setImage(RegisterImage("uie_t7_callingcard_perk2_octopus3"))
	registerVal2:addElement(registerVal11)
	registerVal2.octoleft = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_CCE_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_1089_(arg0, arg1)
			local function __FUNC_11E0_(arg0, arg1)
				local function __FUNC_135B_(arg0, arg1)
					local function __FUNC_14D3_(arg0, arg1)
						local function __FUNC_164B_(arg0, arg1)
							local function __FUNC_17C3_(arg0, arg1)
								local function __FUNC_1918_(arg0, arg1)
									local function __FUNC_1A93_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 1410.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_1A93_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.350000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A93_)
								end

								if arg1.interrupted then
									__FUNC_1918_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1918_)
							end

							if arg1.interrupted then
								__FUNC_17C3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17C3_)
						end

						if arg1.interrupted then
							__FUNC_164B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_164B_)
					end

					if arg1.interrupted then
						__FUNC_14D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D3_)
				end

				if arg1.interrupted then
					__FUNC_135B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_135B_)
			end

			if arg1.interrupted then
				__FUNC_11E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 930.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E0_)
		end

		registerVal4:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		__FUNC_1089_(registerVal4, {})
		local function __FUNC_1C45_(arg0, arg1)
			local function __FUNC_1DBE_(arg0, arg1)
				local function __FUNC_1F36_(arg0, arg1)
					local function __FUNC_20AE_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1010.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 207.550000, 472.000000)
						arg0:setTopBottom(true, false, -11.660000, 133.000000)
						arg0:setZRot(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_20AE_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 990.000000, false, false, CoD.TweenType.Linear)
					arg0:setZRot(-8.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20AE_)
				end

				if arg1.interrupted then
					__FUNC_1F36_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
				arg0:setZRot(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F36_)
			end

			if arg1.interrupted then
				__FUNC_1DBE_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setZRot(-8.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DBE_)
		end

		registerVal5:completeAnimation()
		registerVal2.boat:setLeftRight(true, false, 207.550000, 472.000000)
		registerVal2.boat:setTopBottom(true, false, -11.660000, 133.000000)
		registerVal2.boat:setZRot(0.000000)
		__FUNC_1C45_(registerVal5, {})
		local function __FUNC_22D0_(arg0, arg1)
			local function __FUNC_244A_(arg0, arg1)
				local function __FUNC_25C2_(arg0, arg1)
					local function __FUNC_273A_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1010.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setZRot(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_273A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 990.000000, false, false, CoD.TweenType.Linear)
					arg0:setZRot(-8.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_273A_)
				end

				if arg1.interrupted then
					__FUNC_25C2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
				arg0:setZRot(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25C2_)
			end

			if arg1.interrupted then
				__FUNC_244A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setZRot(-8.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_244A_)
		end

		registerVal6:completeAnimation()
		registerVal2.sails:setZRot(0.000000)
		__FUNC_22D0_(registerVal6, {})
		local function __FUNC_28EC_(arg0, arg1)
			local function __FUNC_2A66_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setZRot(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2A66_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2009.000000, false, false, CoD.TweenType.Linear)
			arg0:setZRot(4.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A66_)
		end

		registerVal8:completeAnimation()
		registerVal2.octo:setZRot(0.000000)
		__FUNC_28EC_(registerVal8, {})
		local function __FUNC_2C18_(arg0, arg1)
			local function __FUNC_2DB5_(arg0, arg1)
				local function __FUNC_2F51_(arg0, arg1)
					local function __FUNC_30ED_(arg0, arg1)
						local function __FUNC_3289_(arg0, arg1)
							local function __FUNC_3425_(arg0, arg1)
								local function __FUNC_35C1_(arg0, arg1)
									local function __FUNC_375D_(arg0, arg1)
										local function __FUNC_38F9_(arg0, arg1)
											local function __FUNC_3A95_(arg0, arg1)
												local function __FUNC_3C31_(arg0, arg1)
													local function __FUNC_3DCD_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setAlpha(0.500000)
														arg0:setZRot(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_3DCD_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 619.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.370000)
													arg0:setZRot(0.720000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DCD_)
												end

												if arg1.interrupted then
													__FUNC_3C31_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.500000)
												arg0:setZRot(1.330000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C31_)
											end

											if arg1.interrupted then
												__FUNC_3A95_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.800000)
											arg0:setZRot(1.410000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A95_)
										end

										if arg1.interrupted then
											__FUNC_38F9_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.350000)
										arg0:setZRot(1.490000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38F9_)
									end

									if arg1.interrupted then
										__FUNC_375D_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.450000)
									arg0:setZRot(1.990000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_375D_)
								end

								if arg1.interrupted then
									__FUNC_35C1_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:setZRot(1.720000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35C1_)
							end

							if arg1.interrupted then
								__FUNC_3425_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.800000)
							arg0:setZRot(1.620000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3425_)
						end

						if arg1.interrupted then
							__FUNC_3289_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 640.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.680000)
						arg0:setZRot(1.550000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3289_)
					end

					if arg1.interrupted then
						__FUNC_30ED_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:setZRot(0.920000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30ED_)
				end

				if arg1.interrupted then
					__FUNC_2F51_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.300000)
				arg0:setZRot(0.330000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F51_)
			end

			if arg1.interrupted then
				__FUNC_2DB5_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.660000)
			arg0:setZRot(0.230000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DB5_)
		end

		registerVal9:completeAnimation()
		registerVal2.splash:setAlpha(0.500000)
		registerVal2.splash:setZRot(0.000000)
		__FUNC_2C18_(registerVal9, {})
		local function __FUNC_3FA3_(arg0, arg1)
			local function __FUNC_411A_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setZRot(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_411A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2009.000000, false, false, CoD.TweenType.Linear)
			arg0:setZRot(-18.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_411A_)
		end

		registerVal10:completeAnimation()
		registerVal2.octoright:setZRot(0.000000)
		__FUNC_3FA3_(registerVal10, {})
		local function __FUNC_42CC_(arg0, arg1)
			local function __FUNC_4446_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 2000.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setZRot(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4446_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2009.000000, false, false, CoD.TweenType.Linear)
			arg0:setZRot(27.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4446_)
		end

		registerVal11:completeAnimation()
		registerVal2.octoleft:setZRot(0.000000)
		__FUNC_42CC_(registerVal11, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal13.DefaultClip = __FUNC_CCE_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


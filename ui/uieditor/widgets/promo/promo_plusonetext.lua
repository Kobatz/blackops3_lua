-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Promo_PlusOneText = registerVal1
function CoD.Promo_PlusOneText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Promo_PlusOneText)
	registerVal2.id = "Promo_PlusOneText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 18.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, -2.000000, 23.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3:setRGB(0.670000, 0.950000, 1.000000)
	registerVal3:setText(Engine.Localize("+1"))
	registerVal3:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.Label0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -30.000000, 48.000000)
	registerVal4:setTopBottom(true, false, -26.500000, 51.500000)
	registerVal4:setAlpha(0.320000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse"))
	registerVal2:addElement(registerVal4)
	registerVal2.GlowPulse = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -121.080000, 139.080000)
	registerVal5:setTopBottom(true, false, 12.500000, 139.600000)
	registerVal5:setZRot(90.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.GlowPulse0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -121.080000, 139.080000)
	registerVal6:setTopBottom(true, false, -123.500000, -57.400000)
	registerVal6:setAlpha(0.590000)
	registerVal6:setZRot(90.000000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_promo_meter_glowpulse"))
	registerVal2:addElement(registerVal6)
	registerVal2.GlowPulse00 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_8D3_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Label0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GlowPulse:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GlowPulse0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GlowPulse00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_8D3_
	local function __FUNC_AD6_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_E51_(arg0, arg1)
			local function __FUNC_1026_(arg0, arg1)
				local function __FUNC_11D7_(arg0, arg1)
					local function __FUNC_13AA_(arg0, arg1)
						local function __FUNC_157E_(arg0, arg1)
							local function __FUNC_1752_(arg0, arg1)
								local function __FUNC_1926_(arg0, arg1)
									local function __FUNC_1AFA_(arg0, arg1)
										local function __FUNC_1CCE_(arg0, arg1)
											local function __FUNC_1EA2_(arg0, arg1)
												local function __FUNC_2076_(arg0, arg1)
													local function __FUNC_2227_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(true, false, -95.000000, -77.000000)
														arg0:setTopBottom(true, false, 0.000000, 25.000000)
														arg0:setAlpha(0.000000)
														arg0:setScale(2.800000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_2227_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
													arg0:setLeftRight(true, false, -85.510000, -67.510000)
													arg0:setScale(2.490000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2227_)
												end

												if arg1.interrupted then
													__FUNC_2076_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, -65.970000, -47.960000)
												arg0:setAlpha(1.000000)
												arg0:setScale(1.850000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2076_)
											end

											if arg1.interrupted then
												__FUNC_1EA2_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, -63.730000, -45.730000)
											arg0:setAlpha(0.090000)
											arg0:setScale(1.780000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EA2_)
										end

										if arg1.interrupted then
											__FUNC_1CCE_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, -62.060000, -44.050000)
										arg0:setAlpha(1.000000)
										arg0:setScale(1.730000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CCE_)
									end

									if arg1.interrupted then
										__FUNC_1AFA_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, -60.660000, -42.650000)
									arg0:setAlpha(0.050000)
									arg0:setScale(1.680000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AFA_)
								end

								if arg1.interrupted then
									__FUNC_1926_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, -59.550000, -41.540000)
								arg0:setAlpha(1.000000)
								arg0:setScale(1.650000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1926_)
							end

							if arg1.interrupted then
								__FUNC_1752_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, -58.430000, -40.420000)
							arg0:setAlpha(0.230000)
							arg0:setScale(1.610000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1752_)
						end

						if arg1.interrupted then
							__FUNC_157E_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, -57.310000, -39.300000)
						arg0:setAlpha(1.000000)
						arg0:setScale(1.570000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_157E_)
					end

					if arg1.interrupted then
						__FUNC_13AA_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -56.200000, -38.190000)
					arg0:setAlpha(0.250000)
					arg0:setScale(1.540000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13AA_)
				end

				if arg1.interrupted then
					__FUNC_11D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -55.080000, -37.070000)
				arg0:setScale(1.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D7_)
			end

			if arg1.interrupted then
				__FUNC_1026_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -28.990000, -10.980000)
			arg0:setAlpha(1.000000)
			arg0:setScale(0.880000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1026_)
		end

		registerVal3:completeAnimation()
		registerVal2.Label0:setLeftRight(true, false, 0.000000, 18.000000)
		registerVal2.Label0:setTopBottom(true, false, 0.000000, 25.000000)
		registerVal2.Label0:setAlpha(0.000000)
		registerVal2.Label0:setScale(0.200000)
		__FUNC_E51_(registerVal3, {})
		local function __FUNC_2467_(arg0, arg1)
			local function __FUNC_264F_(arg0, arg1)
				local function __FUNC_2837_(arg0, arg1)
					local function __FUNC_2A1F_(arg0, arg1)
						local function __FUNC_2C07_(arg0, arg1)
							local function __FUNC_2DEF_(arg0, arg1)
								local function __FUNC_2FB4_(arg0, arg1)
									local function __FUNC_31C2_(arg0, arg1)
										local function __FUNC_33AB_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setLeftRight(true, false, -104.000000, -26.000000)
											arg0:setTopBottom(true, false, -30.500000, 47.500000)
											arg0:setAlpha(0.000000)
											arg0:setScale(2.800000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_33AB_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, -93.640000, -15.640000)
										arg0:setTopBottom(true, false, -29.940000, 48.060000)
										arg0:setAlpha(0.600000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33AB_)
									end

									if arg1.interrupted then
										__FUNC_31C2_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, -91.420000, -13.420000)
									arg0:setTopBottom(true, false, -29.820000, 48.180000)
									arg0:setAlpha(1.000000)
									arg0:setScale(1.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31C2_)
								end

								if arg1.interrupted then
									__FUNC_2FB4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 969.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, -90.310000, -12.310000)
								arg0:setTopBottom(true, false, -29.760000, 48.240000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FB4_)
							end

							if arg1.interrupted then
								__FUNC_2DEF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, -54.420000, 23.580000)
							arg0:setTopBottom(true, false, -27.820000, 50.180000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DEF_)
						end

						if arg1.interrupted then
							__FUNC_2C07_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, -41.100000, 36.900000)
						arg0:setTopBottom(true, false, -27.100000, 50.900000)
						arg0:setAlpha(0.320000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C07_)
					end

					if arg1.interrupted then
						__FUNC_2A1F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -35.550000, 42.450000)
					arg0:setTopBottom(true, false, -26.800000, 51.200000)
					arg0:setAlpha(0.720000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A1F_)
				end

				if arg1.interrupted then
					__FUNC_2837_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -34.810000, 43.190000)
				arg0:setTopBottom(true, false, -26.760000, 51.240000)
				arg0:setAlpha(0.350000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2837_)
			end

			if arg1.interrupted then
				__FUNC_264F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -33.700000, 44.300000)
			arg0:setTopBottom(true, false, -26.700000, 51.300000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_264F_)
		end

		registerVal4:completeAnimation()
		registerVal2.GlowPulse:setLeftRight(true, false, -30.000000, 48.000000)
		registerVal2.GlowPulse:setTopBottom(true, false, -26.500000, 51.500000)
		registerVal2.GlowPulse:setAlpha(0.000000)
		registerVal2.GlowPulse:setScale(1.000000)
		__FUNC_2467_(registerVal4, {})
		local function __FUNC_35F0_(arg0, arg1)
			local function __FUNC_376B_(arg0, arg1)
				local function __FUNC_38E3_(arg0, arg1)
					local function __FUNC_3A5B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3A5B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A5B_)
				end

				if arg1.interrupted then
					__FUNC_38E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.220000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38E3_)
			end

			if arg1.interrupted then
				__FUNC_376B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_376B_)
		end

		registerVal5:completeAnimation()
		registerVal2.GlowPulse0:setAlpha(0.000000)
		__FUNC_35F0_(registerVal5, {})
		local function __FUNC_3C0D_(arg0, arg1)
			local function __FUNC_3D64_(arg0, arg1)
				local function __FUNC_3EDF_(arg0, arg1)
					local function __FUNC_408F_(arg0, arg1)
						local function __FUNC_423F_(arg0, arg1)
							local function __FUNC_43EF_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, -121.080000, 139.080000)
								arg0:setTopBottom(true, false, -274.000000, -207.900000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_43EF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, -213.770000, -46.780000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43EF_)
						end

						if arg1.interrupted then
							__FUNC_423F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, -196.290000, 0.000000)
						arg0:setAlpha(0.170000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_423F_)
					end

					if arg1.interrupted then
						__FUNC_408F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, -62.940000, 3.160000)
					arg0:setAlpha(0.540000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_408F_)
				end

				if arg1.interrupted then
					__FUNC_3EDF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EDF_)
			end

			if arg1.interrupted then
				__FUNC_3D64_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D64_)
		end

		registerVal6:completeAnimation()
		registerVal2.GlowPulse00:setLeftRight(true, false, -121.080000, 139.080000)
		registerVal2.GlowPulse00:setTopBottom(true, false, 25.000000, 91.100000)
		registerVal2.GlowPulse00:setAlpha(0.000000)
		__FUNC_3C0D_(registerVal6, {})
	end

	registerVal8.PlayAfterIntro = __FUNC_AD6_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


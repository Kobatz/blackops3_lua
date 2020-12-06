-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_MeterPanel")
require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_NumberMove")
require("ui.uieditor.widgets.HUD.MP_ScoreStreakWidget.ScrStk_MeterInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScrStk_Meter = registerVal1
function CoD.ScrStk_Meter.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScrStk_Meter)
	registerVal2.id = "ScrStk_Meter"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 130.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScrStk_MeterPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 31.000000, 39.000000)
	registerVal3:setTopBottom(true, false, 10.000000, 129.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ScrStkMeterPanel0 = registerVal3
	local registerVal4 = CoD.ScrStk_NumberMove.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -10.000000, 45.000000)
	registerVal4:setTopBottom(true, false, 10.000000, 31.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.ScrStkNumberMove0 = registerVal4
	local registerVal5 = CoD.ScrStk_MeterInternal.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -24.000000, 96.000000)
	registerVal5:setTopBottom(true, false, 10.000000, 130.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal5.Back:setRGB(1.000000, 0.910000, 0.310000)
	registerVal5.Fill:setRGB(1.000000, 0.910000, 0.310000)
	registerVal2:addElement(registerVal5)
	registerVal2.Meter = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 26.500000, 39.500000)
	registerVal6:setTopBottom(true, false, 6.500000, 19.500000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZRot(84.000000)
	registerVal6:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringdeplete"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image00 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 26.500000, 39.500000)
	registerVal7:setTopBottom(true, false, 6.500000, 19.500000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringdeplete"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Image0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 28.500000, 41.500000)
	registerVal8:setTopBottom(true, false, -63.050000, 193.050000)
	registerVal8:setRGB(0.000000, 0.600000, 1.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_tacmode_glow"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Glow = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -8.460000, 76.460000)
	registerVal9:setTopBottom(true, false, -39.150000, 169.150000)
	registerVal9:setRGB(0.160000, 0.000000, 1.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Glow2 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 5.000000, 67.000000)
	registerVal10:setTopBottom(true, false, -18.500000, 48.670000)
	registerVal10:setRGB(0.000000, 0.300000, 1.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Glow20 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -71.300000, 141.310000)
	registerVal11:setTopBottom(true, false, 7.850000, 20.980000)
	registerVal11:setRGB(1.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Glow200 = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_1143_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal4.TextBox:completeAnimation()
		registerVal2.ScrStkNumberMove0.TextBox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal5.Back:completeAnimation()
		registerVal5.Fill:completeAnimation()
		registerVal2.Meter:setAlpha(1.000000)
		registerVal2.Meter.Back:setRGB(0.510000, 0.550000, 0.640000)
		registerVal2.Meter.Fill:setRGB(0.510000, 0.550000, 0.640000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Image00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Glow20:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_1143_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_154B_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal4.TextBox:completeAnimation()
		registerVal2.ScrStkNumberMove0.TextBox:setRGB(0.580000, 0.890000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_1CE6_(arg0, arg1)
			local function __FUNC_1F4C_(arg0, arg1)
				local function __FUNC_20A4_(arg0, arg1)
					local function __FUNC_230C_(arg0, arg1)
						local function __FUNC_2574_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
								arg0.Back:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
								arg0.Fill:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							arg0.Back:setRGB(0.850000, 0.690000, 0.000000)
							arg0.Fill:setRGB(0.850000, 0.690000, 0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2574_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
						arg0.Back:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
						arg0.Fill:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
						arg0.Back:setRGB(1.000000, 0.910000, 0.310000)
						arg0.Fill:setRGB(1.000000, 0.910000, 0.310000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2574_)
					end

					if arg1.interrupted then
						__FUNC_230C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
					arg0.Back:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
					arg0.Fill:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
					arg0.Back:setRGB(0.850000, 0.690000, 0.000000)
					arg0.Fill:setRGB(0.850000, 0.690000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_230C_)
				end

				if arg1.interrupted then
					__FUNC_20A4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20A4_)
			end

			if arg1.interrupted then
				__FUNC_1F4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0.Back:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0.Fill:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0.Back:setRGB(1.000000, 0.910000, 0.310000)
			arg0.Fill:setRGB(1.000000, 0.910000, 0.310000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F4C_)
		end

		registerVal5:completeAnimation()
		registerVal5.Back:completeAnimation()
		registerVal5.Fill:completeAnimation()
		registerVal2.Meter:setAlpha(1.000000)
		registerVal2.Meter.Back:setRGB(0.850000, 0.690000, 0.000000)
		registerVal2.Meter.Fill:setRGB(0.850000, 0.690000, 0.000000)
		__FUNC_1CE6_(registerVal5, {})
		local function __FUNC_2839_(arg0, arg1)
			local function __FUNC_2A45_(arg0, arg1)
				local function __FUNC_2C2E_(arg0, arg1)
					local function __FUNC_2E49_(arg0, arg1)
						local function __FUNC_3088_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 8.750000, 59.250000)
							arg0:setTopBottom(true, false, -10.170000, 40.330000)
							arg0:setRGB(0.000000, 0.430000, 1.000000)
							arg0:setAlpha(0.000000)
							arg0:setZRot(157.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_3088_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 380.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 9.040000, 58.930000)
						arg0:setTopBottom(true, false, -9.890000, 39.990000)
						arg0:setRGB(0.020000, 0.430000, 0.980000)
						arg0:setAlpha(0.000000)
						arg0:setZRot(157.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3088_)
					end

					if arg1.interrupted then
						__FUNC_2E49_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 14.570000, 52.770000)
					arg0:setTopBottom(true, false, -4.700000, 33.500000)
					arg0:setRGB(0.390000, 0.580000, 0.610000)
					arg0:setZRot(133.880000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E49_)
				end

				if arg1.interrupted then
					__FUNC_2C2E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 23.590000, 42.740000)
				arg0:setTopBottom(true, false, 3.770000, 22.920000)
				arg0:setZRot(96.170000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C2E_)
			end

			if arg1.interrupted then
				__FUNC_2A45_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 25.920000, 40.150000)
			arg0:setTopBottom(true, false, 5.950000, 20.180000)
			arg0:setAlpha(1.000000)
			arg0:setZRot(86.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A45_)
		end

		registerVal6:completeAnimation()
		registerVal2.Image00:setLeftRight(true, false, 26.500000, 39.500000)
		registerVal2.Image00:setTopBottom(true, false, 6.500000, 19.500000)
		registerVal2.Image00:setRGB(1.000000, 0.830000, 0.000000)
		registerVal2.Image00:setAlpha(0.000000)
		registerVal2.Image00:setZRot(84.000000)
		__FUNC_2839_(registerVal6, {})
		local function __FUNC_32FD_(arg0, arg1)
			local function __FUNC_3537_(arg0, arg1)
				local function __FUNC_3751_(arg0, arg1)
					local function __FUNC_396D_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -9.500000, 77.500000)
						arg0:setTopBottom(true, false, -30.500000, 56.500000)
						arg0:setRGB(0.000000, 0.560000, 1.000000)
						arg0:setAlpha(0.000000)
						arg0:setZRot(-126.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_396D_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 390.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -3.540000, 71.420000)
					arg0:setTopBottom(true, false, -24.510000, 50.450000)
					arg0:setRGB(0.000000, 0.500000, 1.000000)
					arg0:setZRot(-104.240000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_396D_)
				end

				if arg1.interrupted then
					__FUNC_3751_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 8.690000, 58.940000)
				arg0:setTopBottom(true, false, -12.200000, 38.050000)
				arg0:setRGB(0.000000, 0.360000, 1.000000)
				arg0:setZRot(-59.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3751_)
			end

			if arg1.interrupted then
				__FUNC_3537_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 23.750000, 43.580000)
			arg0:setTopBottom(true, false, 2.940000, 22.770000)
			arg0:setRGB(0.920000, 0.950000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setZRot(-4.580000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3537_)
		end

		registerVal7:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 25.000000, 42.300000)
		registerVal2.Image0:setTopBottom(true, false, 4.200000, 21.500000)
		registerVal2.Image0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.Image0:setZRot(0.000000)
		__FUNC_32FD_(registerVal7, {})
		local function __FUNC_3BE1_(arg0, arg1)
			local function __FUNC_3D5B_(arg0, arg1)
				local function __FUNC_3EB0_(arg0, arg1)
					local function __FUNC_402B_(arg0, arg1)
						local function __FUNC_4180_(arg0, arg1)
							local function __FUNC_42FB_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(0.000000, 0.600000, 1.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_42FB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42FB_)
						end

						if arg1.interrupted then
							__FUNC_4180_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4180_)
					end

					if arg1.interrupted then
						__FUNC_402B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_402B_)
				end

				if arg1.interrupted then
					__FUNC_3EB0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EB0_)
			end

			if arg1.interrupted then
				__FUNC_3D5B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D5B_)
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(0.000000, 0.600000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_3BE1_(registerVal8, {})
		local function __FUNC_44DB_(arg0, arg1)
			local function __FUNC_4686_(arg0, arg1)
				local function __FUNC_4832_(arg0, arg1)
					local function __FUNC_49BB_(arg0, arg1)
						local function __FUNC_4B61_(arg0, arg1)
							local function __FUNC_4CEB_(arg0, arg1)
								local function __FUNC_4EE3_(arg0, arg1)
									local function __FUNC_50FE_(arg0, arg1)
										local function __FUNC_52F7_(arg0, arg1)
											local function __FUNC_550D_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 840.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, -8.460000, 76.460000)
												arg0:setTopBottom(true, false, -39.150000, 169.150000)
												arg0:setRGB(0.160000, 0.000000, 1.000000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_550D_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 20.900000, 48.960000)
											arg0:setTopBottom(true, false, -9.610000, 141.480000)
											arg0:setRGB(0.020000, 0.470000, 1.000000)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_550D_)
										end

										if arg1.interrupted then
											__FUNC_52F7_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 21.250000, 48.640000)
										arg0:setTopBottom(true, false, -9.260000, 141.150000)
										arg0:setRGB(0.020000, 0.470000, 1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52F7_)
									end

									if arg1.interrupted then
										__FUNC_50FE_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 21.950000, 47.980000)
									arg0:setTopBottom(true, false, -8.550000, 140.490000)
									arg0:setRGB(0.020000, 0.480000, 1.000000)
									arg0:setAlpha(0.420000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50FE_)
								end

								if arg1.interrupted then
									__FUNC_4EE3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 22.300000, 47.650000)
								arg0:setTopBottom(true, false, -8.200000, 140.160000)
								arg0:setRGB(0.020000, 0.490000, 1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EE3_)
							end

							if arg1.interrupted then
								__FUNC_4CEB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setRGB(0.010000, 0.500000, 1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CEB_)
						end

						if arg1.interrupted then
							__FUNC_4B61_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(0.010000, 0.510000, 1.000000)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B61_)
					end

					if arg1.interrupted then
						__FUNC_49BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(0.010000, 0.510000, 1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49BB_)
				end

				if arg1.interrupted then
					__FUNC_4832_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.010000, 0.520000, 1.000000)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4832_)
			end

			if arg1.interrupted then
				__FUNC_4686_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.010000, 0.530000, 1.000000)
			arg0:setAlpha(0.590000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4686_)
		end

		registerVal9:completeAnimation()
		registerVal2.Glow2:setLeftRight(true, false, 23.000000, 47.000000)
		registerVal2.Glow2:setTopBottom(true, false, -7.500000, 139.500000)
		registerVal2.Glow2:setRGB(0.000000, 0.550000, 1.000000)
		registerVal2.Glow2:setAlpha(0.000000)
		__FUNC_44DB_(registerVal9, {})
		local function __FUNC_575F_(arg0, arg1)
			local function __FUNC_5975_(arg0, arg1)
				local function __FUNC_5B6F_(arg0, arg1)
					local function __FUNC_5D67_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 5.000000, 67.000000)
						arg0:setTopBottom(true, false, -18.500000, 48.670000)
						arg0:setRGB(0.000000, 0.300000, 1.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5D67_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 15.650000, 55.070000)
					arg0:setTopBottom(true, false, -6.700000, 36.010000)
					arg0:setRGB(0.000000, 0.590000, 1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D67_)
				end

				if arg1.interrupted then
					__FUNC_5B6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 17.670000, 52.820000)
				arg0:setTopBottom(true, false, -4.470000, 33.620000)
				arg0:setRGB(0.000000, 0.640000, 1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B6F_)
			end

			if arg1.interrupted then
				__FUNC_5975_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Bounce)
			arg0:setLeftRight(true, false, 20.540000, 49.590000)
			arg0:setTopBottom(true, false, -1.280000, 30.200000)
			arg0:setRGB(0.710000, 0.900000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5975_)
		end

		registerVal10:completeAnimation()
		registerVal2.Glow20:setLeftRight(true, false, 21.700000, 48.310000)
		registerVal2.Glow20:setTopBottom(true, false, 0.000000, 28.830000)
		registerVal2.Glow20:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow20:setAlpha(0.000000)
		__FUNC_575F_(registerVal10, {})
		local function __FUNC_5FB7_(arg0, arg1)
			local function __FUNC_615D_(arg0, arg1)
				local function __FUNC_630A_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 849.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -71.300000, 141.310000)
					arg0:setTopBottom(true, false, 7.850000, 20.980000)
					arg0:setRGB(1.000000, 0.000000, 0.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_630A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(0.000000, 0.290000, 1.000000)
				arg0:setAlpha(0.990000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_630A_)
			end

			if arg1.interrupted then
				__FUNC_615D_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(0.000000, 0.280000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_615D_)
		end

		registerVal11:completeAnimation()
		registerVal2.Glow200:setLeftRight(true, false, -71.300000, 141.310000)
		registerVal2.Glow200:setTopBottom(true, false, 7.850000, 20.980000)
		registerVal2.Glow200:setRGB(0.000000, 0.240000, 1.000000)
		registerVal2.Glow200:setAlpha(0.000000)
		__FUNC_5FB7_(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_154B_
	local function __FUNC_6556_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_6758_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0.Back:beginAnimation("subkeyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0.Fill:beginAnimation("subkeyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0.Back:setRGB(0.510000, 0.550000, 0.640000)
			arg0.Fill:setRGB(0.510000, 0.550000, 0.640000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal5.Back:completeAnimation()
		registerVal5.Fill:completeAnimation()
		registerVal2.Meter:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Meter.Back:setRGB(0.850000, 0.690000, 0.000000)
		registerVal2.Meter.Fill:setRGB(0.850000, 0.690000, 0.000000)
		__FUNC_6758_(registerVal5, {})
		local function __FUNC_6A13_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_6A13_(registerVal8, {})
	end

	registerVal13.DefaultState = __FUNC_6556_
	registerVal12.ReadyCombat = registerVal13
	registerVal13 = {}
	local function __FUNC_6BC5_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal4.TextBox:completeAnimation()
		registerVal2.ScrStkNumberMove0.TextBox:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_716A_(arg0, arg1)
			local function __FUNC_73D0_(arg0, arg1)
				local function __FUNC_7528_(arg0, arg1)
					local function __FUNC_7790_(arg0, arg1)
						local function __FUNC_79F8_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
								arg0.Back:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
								arg0.Fill:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							arg0.Back:setRGB(0.850000, 0.690000, 0.000000)
							arg0.Fill:setRGB(0.850000, 0.690000, 0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_79F8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
						arg0.Back:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
						arg0.Fill:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
						arg0.Back:setRGB(1.000000, 0.910000, 0.310000)
						arg0.Fill:setRGB(1.000000, 0.910000, 0.310000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_79F8_)
					end

					if arg1.interrupted then
						__FUNC_7790_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
					arg0.Back:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
					arg0.Fill:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
					arg0.Back:setRGB(0.850000, 0.690000, 0.000000)
					arg0.Fill:setRGB(0.850000, 0.690000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7790_)
				end

				if arg1.interrupted then
					__FUNC_7528_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7528_)
			end

			if arg1.interrupted then
				__FUNC_73D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0.Back:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0.Fill:beginAnimation("subkeyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0.Back:setRGB(1.000000, 0.910000, 0.310000)
			arg0.Fill:setRGB(1.000000, 0.910000, 0.310000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73D0_)
		end

		registerVal5:completeAnimation()
		registerVal5.Back:completeAnimation()
		registerVal5.Fill:completeAnimation()
		registerVal2.Meter:setAlpha(1.000000)
		registerVal2.Meter.Back:setRGB(0.850000, 0.690000, 0.000000)
		registerVal2.Meter.Fill:setRGB(0.850000, 0.690000, 0.000000)
		__FUNC_716A_(registerVal5, {})
		registerVal6:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal7:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		local function __FUNC_7CBD_(arg0, arg1)
			local function __FUNC_7E37_(arg0, arg1)
				local function __FUNC_7F8C_(arg0, arg1)
					local function __FUNC_8107_(arg0, arg1)
						local function __FUNC_825C_(arg0, arg1)
							local function __FUNC_83D7_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 590.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setRGB(1.000000, 0.740000, 0.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_83D7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_83D7_)
						end

						if arg1.interrupted then
							__FUNC_825C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_825C_)
					end

					if arg1.interrupted then
						__FUNC_8107_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8107_)
				end

				if arg1.interrupted then
					__FUNC_7F8C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F8C_)
			end

			if arg1.interrupted then
				__FUNC_7E37_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E37_)
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.740000, 0.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_7CBD_(registerVal8, {})
		local function __FUNC_85B7_(arg0, arg1)
			local function __FUNC_8762_(arg0, arg1)
				local function __FUNC_890E_(arg0, arg1)
					local function __FUNC_8A97_(arg0, arg1)
						local function __FUNC_8C3D_(arg0, arg1)
							local function __FUNC_8DC7_(arg0, arg1)
								local function __FUNC_8FBF_(arg0, arg1)
									local function __FUNC_91DA_(arg0, arg1)
										local function __FUNC_93D3_(arg0, arg1)
											local function __FUNC_95E9_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 840.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, -8.460000, 76.460000)
												arg0:setTopBottom(true, false, -39.150000, 169.150000)
												arg0:setRGB(1.000000, 0.030000, 0.000000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_95E9_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 20.900000, 48.960000)
											arg0:setTopBottom(true, false, -9.610000, 141.480000)
											arg0:setRGB(1.000000, 0.700000, 0.000000)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95E9_)
										end

										if arg1.interrupted then
											__FUNC_93D3_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 21.250000, 48.640000)
										arg0:setTopBottom(true, false, -9.260000, 141.150000)
										arg0:setRGB(1.000000, 0.710000, 0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_93D3_)
									end

									if arg1.interrupted then
										__FUNC_91DA_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 21.950000, 47.980000)
									arg0:setTopBottom(true, false, -8.550000, 140.490000)
									arg0:setRGB(1.000000, 0.720000, 0.000000)
									arg0:setAlpha(0.420000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91DA_)
								end

								if arg1.interrupted then
									__FUNC_8FBF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 22.300000, 47.650000)
								arg0:setTopBottom(true, false, -8.200000, 140.160000)
								arg0:setRGB(1.000000, 0.730000, 0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FBF_)
							end

							if arg1.interrupted then
								__FUNC_8DC7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setRGB(1.000000, 0.750000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8DC7_)
						end

						if arg1.interrupted then
							__FUNC_8C3D_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(1.000000, 0.760000, 0.000000)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C3D_)
					end

					if arg1.interrupted then
						__FUNC_8A97_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(1.000000, 0.760000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8A97_)
				end

				if arg1.interrupted then
					__FUNC_890E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(1.000000, 0.780000, 0.000000)
				arg0:setAlpha(0.300000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_890E_)
			end

			if arg1.interrupted then
				__FUNC_8762_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(1.000000, 0.790000, 0.000000)
			arg0:setAlpha(0.590000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8762_)
		end

		registerVal9:completeAnimation()
		registerVal2.Glow2:setLeftRight(true, false, 23.000000, 47.000000)
		registerVal2.Glow2:setTopBottom(true, false, -7.500000, 139.500000)
		registerVal2.Glow2:setRGB(1.000000, 0.820000, 0.000000)
		registerVal2.Glow2:setAlpha(0.000000)
		__FUNC_85B7_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Glow20:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal13.DefaultClip = __FUNC_6BC5_
	local function __FUNC_983B_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_9A13_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0.Back:beginAnimation("subkeyframe", 200.000000, false, false, CoD.TweenType.Linear)
				arg0.Fill:beginAnimation("subkeyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0.Back:setRGB(0.510000, 0.550000, 0.640000)
			arg0.Fill:setRGB(0.510000, 0.550000, 0.640000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal5.Back:completeAnimation()
		registerVal5.Fill:completeAnimation()
		registerVal2.Meter.Back:setRGB(0.850000, 0.690000, 0.000000)
		registerVal2.Meter.Fill:setRGB(0.850000, 0.690000, 0.000000)
		__FUNC_9A13_(registerVal5, {})
		local function __FUNC_9CB2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_9CB2_(registerVal8, {})
	end

	registerVal13.DefaultState = __FUNC_983B_
	registerVal12.Ready = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "ReadyCombat"
	local function __FUNC_9E65_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "killstreaks.momentumPercentage", 1.000000)
		if registerVal3 then
			registerVal3 = HasPerk(arg1, "specialty_combat_efficiency")
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_9E65_
	local registerVal16 = {}
	registerVal16.stateName = "Ready"
	local function __FUNC_9F40_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "killstreaks.momentumPercentage", 1.000000)
	end

	registerVal16.condition = __FUNC_9F40_
	registerVal14 = {registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "killstreaks.momentumPercentage")
	local function __FUNC_9FCE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "killstreaks.momentumPercentage"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_9FCE_)
	registerVal15 = Engine.GetModelForController(arg1)
	registerVal14 = Engine.GetModel(registerVal15, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_A100_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_A100_)
	local function __FUNC_A23B_(arg0)
		arg0.ScrStkMeterPanel0:close()
		arg0.ScrStkNumberMove0:close()
		arg0.Meter:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A23B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


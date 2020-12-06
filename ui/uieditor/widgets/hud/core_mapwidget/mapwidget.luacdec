-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_MapWidget.MapWidget_BarTop")
require("ui.uieditor.widgets.HUD.core_MapWidget.MapWidget_Element")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_Dot")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_BackCircleOutter")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_ArrowFull")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MapWidget = registerVal1
function CoD.MapWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MapWidget)
	registerVal2.id = "MapWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 283.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 204.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 12.000000, 321.330000)
	registerVal3:setTopBottom(true, false, 17.000000, 198.330000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_mapwidget_uiglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.UIGlow = registerVal3
	local registerVal4 = CoD.MapWidget_BarTop.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 16.000000, 268.000000)
	registerVal4:setTopBottom(true, false, 96.880000, 99.550000)
	registerVal4:setAlpha(0.300000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.150000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BarTop = registerVal4
	local registerVal5 = CoD.MapWidget_BarTop.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 16.000000, 268.000000)
	registerVal5:setTopBottom(true, false, 97.100000, 99.770000)
	registerVal5:setAlpha(0.170000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.150000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BarBase = registerVal5
	local registerVal6 = CoD.MapWidget_Element.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 131.340000, 152.670000)
	registerVal6:setTopBottom(true, false, 109.910000, 122.240000)
	registerVal6:setAlpha(0.170000)
	registerVal6:setZRot(180.000000)
	registerVal6:setZoom(-3.000000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal6:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BaseElement = registerVal6
	local registerVal7 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 133.350000, 137.350000)
	registerVal7:setTopBottom(true, false, 96.000000, 100.000000)
	registerVal7:setAlpha(0.330000)
	registerVal7:setZoom(5.000000)
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal7:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Dot1 = registerVal7
	local registerVal8 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 146.600000, 150.600000)
	registerVal8:setTopBottom(true, false, 96.000000, 100.000000)
	registerVal8:setAlpha(0.330000)
	registerVal8:setZoom(5.000000)
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal8:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Dot2 = registerVal8
	local registerVal9 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 133.350000, 137.350000)
	registerVal9:setTopBottom(true, false, 97.000000, 101.000000)
	registerVal9:setAlpha(0.330000)
	registerVal9:setZoom(5.000000)
	registerVal9:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal9:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.Dot3 = registerVal9
	local registerVal10 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 146.600000, 150.600000)
	registerVal10:setTopBottom(true, false, 97.000000, 101.000000)
	registerVal10:setAlpha(0.330000)
	registerVal10:setZoom(5.000000)
	registerVal10:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal10:setShaderVector(0.000000, 0.200000, 1.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.Dot4 = registerVal10
	local registerVal11 = CoD.DamageWidget_BackCircleOutter.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 88.500000, 195.500000)
	registerVal11:setTopBottom(true, false, 38.570000, 142.570000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.BackCircleOutter = registerVal11
	local registerVal12 = CoD.AmmoWidget_ArrowFull.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 136.500000, 146.500000)
	registerVal12:setTopBottom(true, false, 65.570000, 75.570000)
	registerVal12:setAlpha(0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.ArrowFull = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 17.900000, 265.000000)
	registerVal13:setTopBottom(true, false, 21.000000, 160.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.Image0 = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1572_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.UIGlow:setLeftRight(true, false, -8.000000, 275.000000)
		registerVal2.UIGlow:setTopBottom(true, false, 6.000000, 178.330000)
		registerVal2.UIGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BarTop:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarTop:setTopBottom(true, false, 97.000000, 99.670000)
		registerVal2.BarTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BarBase:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarBase:setTopBottom(true, false, 97.000000, 99.670000)
		registerVal2.BarBase:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BaseElement:setLeftRight(true, false, 131.340000, 152.670000)
		registerVal2.BaseElement:setTopBottom(true, false, 103.000000, 115.330000)
		registerVal2.BaseElement:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Dot1:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot1:setTopBottom(true, false, 96.000000, 100.000000)
		registerVal2.Dot1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Dot2:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot2:setTopBottom(true, false, 96.000000, 100.000000)
		registerVal2.Dot2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot3:setTopBottom(true, false, 97.000000, 101.000000)
		registerVal2.Dot3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Dot4:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot4:setTopBottom(true, false, 97.000000, 101.000000)
		registerVal2.Dot4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ArrowFull:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal15.DefaultClip = __FUNC_1572_
	local function __FUNC_1C6E_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_24FE_(arg0, arg1)
			local function __FUNC_2654_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -8.000000, 275.000000)
				arg0:setTopBottom(true, false, 6.000000, 178.330000)
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2654_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2654_)
		end

		registerVal3:completeAnimation()
		registerVal2.UIGlow:setLeftRight(true, false, -8.000000, 275.000000)
		registerVal2.UIGlow:setTopBottom(true, false, 6.000000, 178.330000)
		registerVal2.UIGlow:setAlpha(0.000000)
		__FUNC_24FE_(registerVal3, {})
		local function __FUNC_2879_(arg0, arg1)
			local function __FUNC_2A2B_(arg0, arg1)
				local function __FUNC_2BDB_(arg0, arg1)
					local function __FUNC_2D8B_(arg0, arg1)
						local function __FUNC_2F18_(arg0, arg1)
							local function __FUNC_30CB_(arg0, arg1)
								local function __FUNC_327B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 840.000000, true, true, CoD.TweenType.Back)
									end
									arg0:setLeftRight(true, false, 16.000000, 268.000000)
									arg0:setTopBottom(true, false, 20.000000, 22.670000)
									arg0:setAlpha(0.700000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_327B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 69.630000, 72.300000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_327B_)
							end

							if arg1.interrupted then
								__FUNC_30CB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 75.600000, 78.270000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30CB_)
						end

						if arg1.interrupted then
							__FUNC_2F18_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 83.440000, 86.110000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F18_)
					end

					if arg1.interrupted then
						__FUNC_2D8B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 87.800000, 90.470000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D8B_)
				end

				if arg1.interrupted then
					__FUNC_2BDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 94.110000, 96.780000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BDB_)
			end

			if arg1.interrupted then
				__FUNC_2A2B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 95.950000, 98.620000)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A2B_)
		end

		registerVal4:completeAnimation()
		registerVal2.BarTop:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarTop:setTopBottom(true, false, 97.000000, 99.670000)
		registerVal2.BarTop:setAlpha(0.000000)
		__FUNC_2879_(registerVal4, {})
		local function __FUNC_349B_(arg0, arg1)
			local function __FUNC_364B_(arg0, arg1)
				local function __FUNC_37FB_(arg0, arg1)
					local function __FUNC_39AB_(arg0, arg1)
						local function __FUNC_3B38_(arg0, arg1)
							local function __FUNC_3CEB_(arg0, arg1)
								local function __FUNC_3E9B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 840.000000, true, true, CoD.TweenType.Back)
									end
									arg0:setLeftRight(true, false, 16.000000, 268.000000)
									arg0:setTopBottom(true, false, 160.000000, 162.670000)
									arg0:setAlpha(0.400000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_3E9B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 119.390000, 122.060000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E9B_)
							end

							if arg1.interrupted then
								__FUNC_3CEB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 114.510000, 117.180000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CEB_)
						end

						if arg1.interrupted then
							__FUNC_3B38_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 108.090000, 110.760000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B38_)
					end

					if arg1.interrupted then
						__FUNC_39AB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 104.530000, 107.200000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39AB_)
				end

				if arg1.interrupted then
					__FUNC_37FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 99.370000, 102.040000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37FB_)
			end

			if arg1.interrupted then
				__FUNC_364B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 97.860000, 100.530000)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_364B_)
		end

		registerVal5:completeAnimation()
		registerVal2.BarBase:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarBase:setTopBottom(true, false, 97.000000, 99.670000)
		registerVal2.BarBase:setAlpha(0.000000)
		__FUNC_349B_(registerVal5, {})
		local function __FUNC_40BB_(arg0, arg1)
			local function __FUNC_426B_(arg0, arg1)
				local function __FUNC_43F8_(arg0, arg1)
					local function __FUNC_4588_(arg0, arg1)
						local function __FUNC_4718_(arg0, arg1)
							local function __FUNC_48CB_(arg0, arg1)
								local function __FUNC_4A7B_(arg0, arg1)
									local function __FUNC_4C06_(arg0, arg1)
										local function __FUNC_4D7F_(arg0, arg1)
											local function __FUNC_4F17_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 131.340000, 152.670000)
												arg0:setTopBottom(true, false, 166.000000, 178.330000)
												arg0:setAlpha(0.700000)
												arg0:setZRot(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_4F17_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 110.000000, false, true, CoD.TweenType.Back)
											arg0:setAlpha(0.560000)
											arg0:setZRot(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F17_)
										end

										if arg1.interrupted then
											__FUNC_4D7F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.510000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D7F_)
									end

									if arg1.interrupted then
										__FUNC_4C06_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 430.000000, false, true, CoD.TweenType.Back)
									arg0:setTopBottom(true, false, 166.000000, 178.330000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C06_)
								end

								if arg1.interrupted then
									__FUNC_4A7B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 167.070000, 179.400000)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A7B_)
							end

							if arg1.interrupted then
								__FUNC_48CB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 159.360000, 171.690000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48CB_)
						end

						if arg1.interrupted then
							__FUNC_4718_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 150.440000, 162.770000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4718_)
					end

					if arg1.interrupted then
						__FUNC_4588_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 145.530000, 157.860000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4588_)
				end

				if arg1.interrupted then
					__FUNC_43F8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 129.000000, 141.330000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43F8_)
			end

			if arg1.interrupted then
				__FUNC_426B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 122.910000, 135.240000)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_426B_)
		end

		registerVal6:completeAnimation()
		registerVal2.BaseElement:setLeftRight(true, false, 131.340000, 152.670000)
		registerVal2.BaseElement:setTopBottom(true, false, 103.000000, 115.330000)
		registerVal2.BaseElement:setAlpha(0.000000)
		registerVal2.BaseElement:setZRot(180.000000)
		__FUNC_40BB_(registerVal6, {})
		local function __FUNC_515B_(arg0, arg1)
			local function __FUNC_530B_(arg0, arg1)
				local function __FUNC_54BB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Elastic)
					end
					arg0:setLeftRight(true, false, 7.000000, 11.000000)
					arg0:setTopBottom(true, false, 19.000000, 23.000000)
					arg0:setAlpha(0.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_54BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 7.000000, 11.000000)
				arg0:setAlpha(0.490000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54BB_)
			end

			if arg1.interrupted then
				__FUNC_530B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 120.050000, 124.050000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_530B_)
		end

		registerVal7:completeAnimation()
		registerVal2.Dot1:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot1:setTopBottom(true, false, 96.000000, 100.000000)
		registerVal2.Dot1:setAlpha(0.000000)
		__FUNC_515B_(registerVal7, {})
		local function __FUNC_56DE_(arg0, arg1)
			local function __FUNC_588F_(arg0, arg1)
				local function __FUNC_5A3F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Elastic)
					end
					arg0:setLeftRight(true, false, 272.000000, 276.000000)
					arg0:setTopBottom(true, false, 19.000000, 23.000000)
					arg0:setAlpha(0.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5A3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 272.000000, 276.000000)
				arg0:setAlpha(0.490000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A3F_)
			end

			if arg1.interrupted then
				__FUNC_588F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 159.800000, 163.800000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_588F_)
		end

		registerVal8:completeAnimation()
		registerVal2.Dot2:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot2:setTopBottom(true, false, 96.000000, 100.000000)
		registerVal2.Dot2:setAlpha(0.000000)
		__FUNC_56DE_(registerVal8, {})
		local function __FUNC_5C62_(arg0, arg1)
			local function __FUNC_5E13_(arg0, arg1)
				local function __FUNC_5FC3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Elastic)
					end
					arg0:setLeftRight(true, false, 7.000000, 11.000000)
					arg0:setTopBottom(true, false, 160.000000, 164.000000)
					arg0:setAlpha(0.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_5FC3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 7.000000, 11.000000)
				arg0:setAlpha(0.490000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FC3_)
			end

			if arg1.interrupted then
				__FUNC_5E13_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 120.050000, 124.050000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E13_)
		end

		registerVal9:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot3:setTopBottom(true, false, 97.000000, 101.000000)
		registerVal2.Dot3:setAlpha(0.000000)
		__FUNC_5C62_(registerVal9, {})
		local function __FUNC_61E6_(arg0, arg1)
			local function __FUNC_6397_(arg0, arg1)
				local function __FUNC_6547_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Elastic)
					end
					arg0:setLeftRight(true, false, 272.000000, 276.000000)
					arg0:setTopBottom(true, false, 160.000000, 164.000000)
					arg0:setAlpha(0.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6547_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 272.000000, 276.000000)
				arg0:setAlpha(0.490000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6547_)
			end

			if arg1.interrupted then
				__FUNC_6397_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 159.800000, 163.800000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6397_)
		end

		registerVal10:completeAnimation()
		registerVal2.Dot4:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot4:setTopBottom(true, false, 97.000000, 101.000000)
		registerVal2.Dot4:setAlpha(0.000000)
		__FUNC_61E6_(registerVal10, {})
		local function __FUNC_676A_(arg0, arg1)
			local function __FUNC_68C0_(arg0, arg1)
				local function __FUNC_6A3B_(arg0, arg1)
					local function __FUNC_6B90_(arg0, arg1)
						local function __FUNC_6D0B_(arg0, arg1)
							local function __FUNC_6E60_(arg0, arg1)
								local function __FUNC_6FDB_(arg0, arg1)
									local function __FUNC_718B_(arg0, arg1)
										local function __FUNC_72E0_(arg0, arg1)
											local function __FUNC_745B_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 88.500000, 195.500000)
												arg0:setTopBottom(true, false, 85.720000, 189.720000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_745B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_745B_)
										end

										if arg1.interrupted then
											__FUNC_72E0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72E0_)
									end

									if arg1.interrupted then
										__FUNC_718B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setTopBottom(true, false, 85.720000, 189.720000)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_718B_)
								end

								if arg1.interrupted then
									__FUNC_6FDB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FDB_)
							end

							if arg1.interrupted then
								__FUNC_6E60_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E60_)
						end

						if arg1.interrupted then
							__FUNC_6D0B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D0B_)
					end

					if arg1.interrupted then
						__FUNC_6B90_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B90_)
				end

				if arg1.interrupted then
					__FUNC_6A3B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A3B_)
			end

			if arg1.interrupted then
				__FUNC_68C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68C0_)
		end

		registerVal11:completeAnimation()
		registerVal2.BackCircleOutter:setLeftRight(true, false, 88.500000, 195.500000)
		registerVal2.BackCircleOutter:setTopBottom(true, false, 38.570000, 142.570000)
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		__FUNC_676A_(registerVal11, {})
		local function __FUNC_767D_(arg0, arg1)
			local function __FUNC_77F7_(arg0, arg1)
				local function __FUNC_794C_(arg0, arg1)
					local function __FUNC_7AC7_(arg0, arg1)
						local function __FUNC_7C1C_(arg0, arg1)
							local function __FUNC_7DF1_(arg0, arg1)
								local function __FUNC_7F48_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, false, 136.500000, 146.500000)
									arg0:setTopBottom(true, false, 142.570000, 152.570000)
									arg0:setAlpha(0.000000)
									arg0:setZRot(180.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_7F48_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F48_)
							end

							if arg1.interrupted then
								__FUNC_7DF1_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 142.570000, 152.570000)
							arg0:setAlpha(1.000000)
							arg0:setZRot(180.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7DF1_)
						end

						if arg1.interrupted then
							__FUNC_7C1C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C1C_)
					end

					if arg1.interrupted then
						__FUNC_7AC7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AC7_)
				end

				if arg1.interrupted then
					__FUNC_794C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_794C_)
			end

			if arg1.interrupted then
				__FUNC_77F7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77F7_)
		end

		registerVal12:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setLeftRight(true, false, 136.500000, 146.500000)
		registerVal12:setTopBottom(true, false, 65.570000, 75.570000)
		registerVal12:setAlpha(0.000000)
		registerVal12:setZRot(0.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_767D_)
		registerVal2.nextClip = "HudStart"
	end

	registerVal15.HudStart = __FUNC_1C6E_
	local function __FUNC_818F_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_88F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -8.000000, 275.000000)
			arg0:setTopBottom(true, false, 6.000000, 178.330000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.UIGlow:setLeftRight(true, false, -8.000000, 275.000000)
		registerVal2.UIGlow:setTopBottom(true, false, 6.000000, 178.330000)
		registerVal2.UIGlow:setAlpha(0.600000)
		__FUNC_88F1_(registerVal3, {})
		local function __FUNC_8B15_(arg0, arg1)
			local function __FUNC_8CC5_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 16.000000, 268.000000)
				arg0:setTopBottom(true, false, 100.000000, 102.670000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_8CC5_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 100.000000, 102.670000)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CC5_)
		end

		registerVal4:completeAnimation()
		registerVal2.BarTop:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarTop:setTopBottom(true, false, 20.000000, 22.670000)
		registerVal2.BarTop:setAlpha(0.700000)
		__FUNC_8B15_(registerVal4, {})
		local function __FUNC_8EE9_(arg0, arg1)
			local function __FUNC_9099_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 16.000000, 268.000000)
				arg0:setTopBottom(true, false, 100.000000, 102.670000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_9099_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 100.000000, 102.670000)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9099_)
		end

		registerVal5:completeAnimation()
		registerVal2.BarBase:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarBase:setTopBottom(true, false, 160.000000, 162.670000)
		registerVal2.BarBase:setAlpha(0.400000)
		__FUNC_8EE9_(registerVal5, {})
		local function __FUNC_92BD_(arg0, arg1)
			local function __FUNC_946D_(arg0, arg1)
				local function __FUNC_95E7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 131.340000, 152.670000)
					arg0:setTopBottom(true, false, 106.000000, 118.330000)
					arg0:setAlpha(0.000000)
					arg0:setZRot(180.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_95E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95E7_)
			end

			if arg1.interrupted then
				__FUNC_946D_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 106.000000, 118.330000)
			arg0:setAlpha(0.530000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_946D_)
		end

		registerVal6:completeAnimation()
		registerVal2.BaseElement:setLeftRight(true, false, 131.340000, 152.670000)
		registerVal2.BaseElement:setTopBottom(true, false, 166.000000, 178.330000)
		registerVal2.BaseElement:setAlpha(0.700000)
		registerVal2.BaseElement:setZRot(0.000000)
		__FUNC_92BD_(registerVal6, {})
		local function __FUNC_982B_(arg0, arg1)
			local function __FUNC_99DC_(arg0, arg1)
				local function __FUNC_9B6A_(arg0, arg1)
					local function __FUNC_9D1B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 140.000000, 144.000000)
						arg0:setTopBottom(true, false, 99.000000, 103.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_9D1B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 140.000000, 144.000000)
					arg0:setAlpha(0.080000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D1B_)
				end

				if arg1.interrupted then
					__FUNC_9B6A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 64.000000, 68.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B6A_)
			end

			if arg1.interrupted then
				__FUNC_99DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Elastic)
			arg0:setTopBottom(true, false, 99.000000, 103.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99DC_)
		end

		registerVal7:completeAnimation()
		registerVal2.Dot1:setLeftRight(true, false, 7.000000, 11.000000)
		registerVal2.Dot1:setTopBottom(true, false, 19.000000, 23.000000)
		registerVal2.Dot1:setAlpha(0.600000)
		__FUNC_982B_(registerVal7, {})
		local function __FUNC_9F3D_(arg0, arg1)
			local function __FUNC_A0F0_(arg0, arg1)
				local function __FUNC_A27E_(arg0, arg1)
					local function __FUNC_A42F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 140.000000, 144.000000)
						arg0:setTopBottom(true, false, 99.000000, 103.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_A42F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 140.000000, 144.000000)
					arg0:setAlpha(0.080000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A42F_)
				end

				if arg1.interrupted then
					__FUNC_A27E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 215.430000, 219.430000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A27E_)
			end

			if arg1.interrupted then
				__FUNC_A0F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Elastic)
			arg0:setTopBottom(true, false, 99.000000, 103.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A0F0_)
		end

		registerVal8:completeAnimation()
		registerVal2.Dot2:setLeftRight(true, false, 272.000000, 276.000000)
		registerVal2.Dot2:setTopBottom(true, false, 19.000000, 23.000000)
		registerVal2.Dot2:setAlpha(0.600000)
		__FUNC_9F3D_(registerVal8, {})
		local function __FUNC_A651_(arg0, arg1)
			local function __FUNC_A804_(arg0, arg1)
				local function __FUNC_A992_(arg0, arg1)
					local function __FUNC_AB43_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 140.000000, 144.000000)
						arg0:setTopBottom(true, false, 100.000000, 104.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_AB43_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 140.000000, 144.000000)
					arg0:setAlpha(0.080000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB43_)
				end

				if arg1.interrupted then
					__FUNC_A992_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 64.000000, 68.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A992_)
			end

			if arg1.interrupted then
				__FUNC_A804_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Elastic)
			arg0:setTopBottom(true, false, 100.000000, 104.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A804_)
		end

		registerVal9:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 7.000000, 11.000000)
		registerVal2.Dot3:setTopBottom(true, false, 160.000000, 164.000000)
		registerVal2.Dot3:setAlpha(0.600000)
		__FUNC_A651_(registerVal9, {})
		local function __FUNC_AD65_(arg0, arg1)
			local function __FUNC_AF18_(arg0, arg1)
				local function __FUNC_B0A6_(arg0, arg1)
					local function __FUNC_B257_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 140.000000, 144.000000)
						arg0:setTopBottom(true, false, 100.000000, 104.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_B257_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 140.000000, 144.000000)
					arg0:setAlpha(0.080000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B257_)
				end

				if arg1.interrupted then
					__FUNC_B0A6_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 215.430000, 219.430000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B0A6_)
			end

			if arg1.interrupted then
				__FUNC_AF18_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Elastic)
			arg0:setTopBottom(true, false, 100.000000, 104.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AF18_)
		end

		registerVal10:completeAnimation()
		registerVal2.Dot4:setLeftRight(true, false, 272.000000, 276.000000)
		registerVal2.Dot4:setTopBottom(true, false, 160.000000, 164.000000)
		registerVal2.Dot4:setAlpha(0.600000)
		__FUNC_AD65_(registerVal10, {})
		local function __FUNC_B479_(arg0, arg1)
			local function __FUNC_B5F3_(arg0, arg1)
				local function __FUNC_B748_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_B748_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B748_)
			end

			if arg1.interrupted then
				__FUNC_B5F3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5F3_)
		end

		registerVal12:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setAlpha(0.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_B479_)
	end

	registerVal15.HudStop = __FUNC_818F_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_B8FD_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.UIGlow:setLeftRight(true, false, -8.000000, 275.000000)
		registerVal2.UIGlow:setTopBottom(true, false, 6.000000, 178.330000)
		registerVal2.UIGlow:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BarTop:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarTop:setTopBottom(true, false, 20.000000, 22.670000)
		registerVal2.BarTop:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BarBase:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarBase:setTopBottom(true, false, 160.000000, 162.670000)
		registerVal2.BarBase:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BaseElement:setLeftRight(true, false, 131.340000, 152.670000)
		registerVal2.BaseElement:setTopBottom(true, false, 166.000000, 178.330000)
		registerVal2.BaseElement:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Dot1:setLeftRight(true, false, 7.000000, 11.000000)
		registerVal2.Dot1:setTopBottom(true, false, 19.000000, 23.000000)
		registerVal2.Dot1:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Dot2:setLeftRight(true, false, 272.000000, 276.000000)
		registerVal2.Dot2:setTopBottom(true, false, 19.000000, 23.000000)
		registerVal2.Dot2:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 7.000000, 11.000000)
		registerVal2.Dot3:setTopBottom(true, false, 160.000000, 164.000000)
		registerVal2.Dot3:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Dot4:setLeftRight(true, false, 272.000000, 276.000000)
		registerVal2.Dot4:setTopBottom(true, false, 160.000000, 164.000000)
		registerVal2.Dot4:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Dot4:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ArrowFull:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Image0:setLeftRight(true, false, 17.900000, 265.010000)
		registerVal2.Image0:setTopBottom(true, false, 21.000000, 160.000000)
		registerVal2.Image0:setAlpha(0.270000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_B8FD_
	local function __FUNC_C104_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_C869_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -8.000000, 275.000000)
			arg0:setTopBottom(true, false, 6.000000, 178.330000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.UIGlow:setLeftRight(true, false, -8.000000, 275.000000)
		registerVal2.UIGlow:setTopBottom(true, false, 6.000000, 178.330000)
		registerVal2.UIGlow:setAlpha(0.600000)
		__FUNC_C869_(registerVal3, {})
		local function __FUNC_CA8D_(arg0, arg1)
			local function __FUNC_CC3D_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 16.000000, 268.000000)
				arg0:setTopBottom(true, false, 100.000000, 102.670000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_CC3D_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 100.000000, 102.670000)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC3D_)
		end

		registerVal4:completeAnimation()
		registerVal2.BarTop:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarTop:setTopBottom(true, false, 20.000000, 22.670000)
		registerVal2.BarTop:setAlpha(0.700000)
		__FUNC_CA8D_(registerVal4, {})
		local function __FUNC_CE61_(arg0, arg1)
			local function __FUNC_D011_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 16.000000, 268.000000)
				arg0:setTopBottom(true, false, 100.000000, 102.670000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_D011_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 100.000000, 102.670000)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D011_)
		end

		registerVal5:completeAnimation()
		registerVal2.BarBase:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarBase:setTopBottom(true, false, 160.000000, 162.670000)
		registerVal2.BarBase:setAlpha(0.400000)
		__FUNC_CE61_(registerVal5, {})
		local function __FUNC_D235_(arg0, arg1)
			local function __FUNC_D3E5_(arg0, arg1)
				local function __FUNC_D55F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 131.340000, 152.670000)
					arg0:setTopBottom(true, false, 106.000000, 118.330000)
					arg0:setAlpha(0.000000)
					arg0:setZRot(180.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_D55F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D55F_)
			end

			if arg1.interrupted then
				__FUNC_D3E5_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Back)
			arg0:setTopBottom(true, false, 106.000000, 118.330000)
			arg0:setAlpha(0.530000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D3E5_)
		end

		registerVal6:completeAnimation()
		registerVal2.BaseElement:setLeftRight(true, false, 131.340000, 152.670000)
		registerVal2.BaseElement:setTopBottom(true, false, 166.000000, 178.330000)
		registerVal2.BaseElement:setAlpha(0.700000)
		registerVal2.BaseElement:setZRot(0.000000)
		__FUNC_D235_(registerVal6, {})
		local function __FUNC_D7A3_(arg0, arg1)
			local function __FUNC_D954_(arg0, arg1)
				local function __FUNC_DAE2_(arg0, arg1)
					local function __FUNC_DC93_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 140.000000, 144.000000)
						arg0:setTopBottom(true, false, 99.000000, 103.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_DC93_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 140.000000, 144.000000)
					arg0:setAlpha(0.080000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC93_)
				end

				if arg1.interrupted then
					__FUNC_DAE2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 64.000000, 68.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DAE2_)
			end

			if arg1.interrupted then
				__FUNC_D954_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Elastic)
			arg0:setTopBottom(true, false, 99.000000, 103.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D954_)
		end

		registerVal7:completeAnimation()
		registerVal2.Dot1:setLeftRight(true, false, 7.000000, 11.000000)
		registerVal2.Dot1:setTopBottom(true, false, 19.000000, 23.000000)
		registerVal2.Dot1:setAlpha(0.600000)
		__FUNC_D7A3_(registerVal7, {})
		local function __FUNC_DEB5_(arg0, arg1)
			local function __FUNC_E068_(arg0, arg1)
				local function __FUNC_E1F6_(arg0, arg1)
					local function __FUNC_E3A7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 140.000000, 144.000000)
						arg0:setTopBottom(true, false, 99.000000, 103.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_E3A7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 140.000000, 144.000000)
					arg0:setAlpha(0.080000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E3A7_)
				end

				if arg1.interrupted then
					__FUNC_E1F6_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 215.430000, 219.430000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E1F6_)
			end

			if arg1.interrupted then
				__FUNC_E068_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Elastic)
			arg0:setTopBottom(true, false, 99.000000, 103.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E068_)
		end

		registerVal8:completeAnimation()
		registerVal2.Dot2:setLeftRight(true, false, 272.000000, 276.000000)
		registerVal2.Dot2:setTopBottom(true, false, 19.000000, 23.000000)
		registerVal2.Dot2:setAlpha(0.600000)
		__FUNC_DEB5_(registerVal8, {})
		local function __FUNC_E5C9_(arg0, arg1)
			local function __FUNC_E77C_(arg0, arg1)
				local function __FUNC_E90A_(arg0, arg1)
					local function __FUNC_EABB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 140.000000, 144.000000)
						arg0:setTopBottom(true, false, 100.000000, 104.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_EABB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 140.000000, 144.000000)
					arg0:setAlpha(0.080000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EABB_)
				end

				if arg1.interrupted then
					__FUNC_E90A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 64.000000, 68.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E90A_)
			end

			if arg1.interrupted then
				__FUNC_E77C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Elastic)
			arg0:setTopBottom(true, false, 100.000000, 104.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E77C_)
		end

		registerVal9:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 7.000000, 11.000000)
		registerVal2.Dot3:setTopBottom(true, false, 160.000000, 164.000000)
		registerVal2.Dot3:setAlpha(0.600000)
		__FUNC_E5C9_(registerVal9, {})
		local function __FUNC_ECDD_(arg0, arg1)
			local function __FUNC_EE90_(arg0, arg1)
				local function __FUNC_F01E_(arg0, arg1)
					local function __FUNC_F1CF_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 140.000000, 144.000000)
						arg0:setTopBottom(true, false, 100.000000, 104.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_F1CF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 140.000000, 144.000000)
					arg0:setAlpha(0.080000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F1CF_)
				end

				if arg1.interrupted then
					__FUNC_F01E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, true, CoD.TweenType.Back)
				arg0:setLeftRight(true, false, 215.430000, 219.430000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F01E_)
			end

			if arg1.interrupted then
				__FUNC_EE90_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 790.000000, false, true, CoD.TweenType.Elastic)
			arg0:setTopBottom(true, false, 100.000000, 104.000000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE90_)
		end

		registerVal10:completeAnimation()
		registerVal2.Dot4:setLeftRight(true, false, 272.000000, 276.000000)
		registerVal2.Dot4:setTopBottom(true, false, 160.000000, 164.000000)
		registerVal2.Dot4:setAlpha(0.600000)
		__FUNC_ECDD_(registerVal10, {})
		local function __FUNC_F3F1_(arg0, arg1)
			local function __FUNC_F56B_(arg0, arg1)
				local function __FUNC_F6C0_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_F6C0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F6C0_)
			end

			if arg1.interrupted then
				__FUNC_F56B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F56B_)
		end

		registerVal12:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setAlpha(0.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_F3F1_)
	end

	registerVal15.HudStop = __FUNC_C104_
	registerVal14.HudStart = registerVal15
	registerVal15 = {}
	local function __FUNC_F875_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.UIGlow:setLeftRight(true, false, -8.000000, 275.000000)
		registerVal2.UIGlow:setTopBottom(true, false, 6.000000, 178.330000)
		registerVal2.UIGlow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BarTop:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarTop:setTopBottom(true, false, 97.000000, 99.670000)
		registerVal2.BarTop:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BarBase:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarBase:setTopBottom(true, false, 97.000000, 99.670000)
		registerVal2.BarBase:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BaseElement:setLeftRight(true, false, 131.340000, 152.670000)
		registerVal2.BaseElement:setTopBottom(true, false, 103.000000, 115.330000)
		registerVal2.BaseElement:setAlpha(0.000000)
		registerVal2.BaseElement:setZRot(180.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Dot1:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot1:setTopBottom(true, false, 96.000000, 100.000000)
		registerVal2.Dot1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Dot2:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot2:setTopBottom(true, false, 96.000000, 100.000000)
		registerVal2.Dot2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot3:setTopBottom(true, false, 97.000000, 101.000000)
		registerVal2.Dot3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Dot4:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot4:setTopBottom(true, false, 97.000000, 101.000000)
		registerVal2.Dot4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ArrowFull:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal15.DefaultClip = __FUNC_F875_
	local function __FUNC_FFA4_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_1080A_(arg0, arg1)
			local function __FUNC_10960_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 769.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -8.000000, 275.000000)
				arg0:setTopBottom(true, false, 6.000000, 178.330000)
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_10960_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10960_)
		end

		registerVal3:completeAnimation()
		registerVal2.UIGlow:setLeftRight(true, false, -8.000000, 275.000000)
		registerVal2.UIGlow:setTopBottom(true, false, 6.000000, 178.330000)
		registerVal2.UIGlow:setAlpha(0.000000)
		__FUNC_1080A_(registerVal3, {})
		local function __FUNC_10B85_(arg0, arg1)
			local function __FUNC_10D37_(arg0, arg1)
				local function __FUNC_10EE7_(arg0, arg1)
					local function __FUNC_11097_(arg0, arg1)
						local function __FUNC_11224_(arg0, arg1)
							local function __FUNC_113D7_(arg0, arg1)
								local function __FUNC_11587_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 840.000000, true, true, CoD.TweenType.Back)
									end
									arg0:setLeftRight(true, false, 16.000000, 268.000000)
									arg0:setTopBottom(true, false, 20.000000, 22.670000)
									arg0:setAlpha(0.700000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_11587_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 69.630000, 72.300000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11587_)
							end

							if arg1.interrupted then
								__FUNC_113D7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 75.600000, 78.270000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_113D7_)
						end

						if arg1.interrupted then
							__FUNC_11224_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 83.440000, 86.110000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11224_)
					end

					if arg1.interrupted then
						__FUNC_11097_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 87.800000, 90.470000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11097_)
				end

				if arg1.interrupted then
					__FUNC_10EE7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 94.110000, 96.780000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10EE7_)
			end

			if arg1.interrupted then
				__FUNC_10D37_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 95.950000, 98.620000)
			arg0:setAlpha(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D37_)
		end

		registerVal4:completeAnimation()
		registerVal2.BarTop:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarTop:setTopBottom(true, false, 97.000000, 99.670000)
		registerVal2.BarTop:setAlpha(0.000000)
		__FUNC_10B85_(registerVal4, {})
		local function __FUNC_117A7_(arg0, arg1)
			local function __FUNC_11957_(arg0, arg1)
				local function __FUNC_11B07_(arg0, arg1)
					local function __FUNC_11CB7_(arg0, arg1)
						local function __FUNC_11E44_(arg0, arg1)
							local function __FUNC_11FF7_(arg0, arg1)
								local function __FUNC_121A7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 840.000000, true, true, CoD.TweenType.Back)
									end
									arg0:setLeftRight(true, false, 16.000000, 268.000000)
									arg0:setTopBottom(true, false, 160.000000, 162.670000)
									arg0:setAlpha(0.400000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_121A7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 119.390000, 122.060000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_121A7_)
							end

							if arg1.interrupted then
								__FUNC_11FF7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 114.510000, 117.180000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11FF7_)
						end

						if arg1.interrupted then
							__FUNC_11E44_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 108.090000, 110.760000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E44_)
					end

					if arg1.interrupted then
						__FUNC_11CB7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 104.530000, 107.200000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11CB7_)
				end

				if arg1.interrupted then
					__FUNC_11B07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 99.370000, 102.040000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11B07_)
			end

			if arg1.interrupted then
				__FUNC_11957_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 97.860000, 100.530000)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11957_)
		end

		registerVal5:completeAnimation()
		registerVal2.BarBase:setLeftRight(true, false, 16.000000, 268.000000)
		registerVal2.BarBase:setTopBottom(true, false, 97.000000, 99.670000)
		registerVal2.BarBase:setAlpha(0.000000)
		__FUNC_117A7_(registerVal5, {})
		local function __FUNC_123C7_(arg0, arg1)
			local function __FUNC_12577_(arg0, arg1)
				local function __FUNC_12704_(arg0, arg1)
					local function __FUNC_12894_(arg0, arg1)
						local function __FUNC_12A24_(arg0, arg1)
							local function __FUNC_12BD7_(arg0, arg1)
								local function __FUNC_12D87_(arg0, arg1)
									local function __FUNC_12F12_(arg0, arg1)
										local function __FUNC_1308B_(arg0, arg1)
											local function __FUNC_13223_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 131.340000, 152.670000)
												arg0:setTopBottom(true, false, 166.000000, 178.330000)
												arg0:setAlpha(0.700000)
												arg0:setZRot(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_13223_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 110.000000, false, true, CoD.TweenType.Back)
											arg0:setAlpha(0.560000)
											arg0:setZRot(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13223_)
										end

										if arg1.interrupted then
											__FUNC_1308B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.510000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1308B_)
									end

									if arg1.interrupted then
										__FUNC_12F12_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 430.000000, false, true, CoD.TweenType.Back)
									arg0:setTopBottom(true, false, 166.000000, 178.330000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12F12_)
								end

								if arg1.interrupted then
									__FUNC_12D87_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 167.070000, 179.400000)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12D87_)
							end

							if arg1.interrupted then
								__FUNC_12BD7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 159.360000, 171.690000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12BD7_)
						end

						if arg1.interrupted then
							__FUNC_12A24_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 150.440000, 162.770000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12A24_)
					end

					if arg1.interrupted then
						__FUNC_12894_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 145.530000, 157.860000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12894_)
				end

				if arg1.interrupted then
					__FUNC_12704_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 129.000000, 141.330000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12704_)
			end

			if arg1.interrupted then
				__FUNC_12577_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 122.910000, 135.240000)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12577_)
		end

		registerVal6:completeAnimation()
		registerVal2.BaseElement:setLeftRight(true, false, 131.340000, 152.670000)
		registerVal2.BaseElement:setTopBottom(true, false, 103.000000, 115.330000)
		registerVal2.BaseElement:setAlpha(0.000000)
		registerVal2.BaseElement:setZRot(180.000000)
		__FUNC_123C7_(registerVal6, {})
		local function __FUNC_13467_(arg0, arg1)
			local function __FUNC_13617_(arg0, arg1)
				local function __FUNC_137C7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Elastic)
					end
					arg0:setLeftRight(true, false, 7.000000, 11.000000)
					arg0:setTopBottom(true, false, 19.000000, 23.000000)
					arg0:setAlpha(0.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_137C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 7.000000, 11.000000)
				arg0:setAlpha(0.490000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_137C7_)
			end

			if arg1.interrupted then
				__FUNC_13617_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 120.050000, 124.050000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13617_)
		end

		registerVal7:completeAnimation()
		registerVal2.Dot1:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot1:setTopBottom(true, false, 96.000000, 100.000000)
		registerVal2.Dot1:setAlpha(0.000000)
		__FUNC_13467_(registerVal7, {})
		local function __FUNC_139EA_(arg0, arg1)
			local function __FUNC_13B9B_(arg0, arg1)
				local function __FUNC_13D4B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Elastic)
					end
					arg0:setLeftRight(true, false, 272.000000, 276.000000)
					arg0:setTopBottom(true, false, 19.000000, 23.000000)
					arg0:setAlpha(0.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_13D4B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 272.000000, 276.000000)
				arg0:setAlpha(0.490000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13D4B_)
			end

			if arg1.interrupted then
				__FUNC_13B9B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 159.800000, 163.800000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13B9B_)
		end

		registerVal8:completeAnimation()
		registerVal2.Dot2:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot2:setTopBottom(true, false, 96.000000, 100.000000)
		registerVal2.Dot2:setAlpha(0.000000)
		__FUNC_139EA_(registerVal8, {})
		local function __FUNC_13F6E_(arg0, arg1)
			local function __FUNC_1411F_(arg0, arg1)
				local function __FUNC_142CF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Elastic)
					end
					arg0:setLeftRight(true, false, 7.000000, 11.000000)
					arg0:setTopBottom(true, false, 160.000000, 164.000000)
					arg0:setAlpha(0.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_142CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 7.000000, 11.000000)
				arg0:setAlpha(0.490000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_142CF_)
			end

			if arg1.interrupted then
				__FUNC_1411F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 120.050000, 124.050000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1411F_)
		end

		registerVal9:completeAnimation()
		registerVal2.Dot3:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot3:setTopBottom(true, false, 97.000000, 101.000000)
		registerVal2.Dot3:setAlpha(0.000000)
		__FUNC_13F6E_(registerVal9, {})
		local function __FUNC_144F2_(arg0, arg1)
			local function __FUNC_146A3_(arg0, arg1)
				local function __FUNC_14853_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 800.000000, false, true, CoD.TweenType.Elastic)
					end
					arg0:setLeftRight(true, false, 272.000000, 276.000000)
					arg0:setTopBottom(true, false, 160.000000, 164.000000)
					arg0:setAlpha(0.600000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_14853_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 272.000000, 276.000000)
				arg0:setAlpha(0.490000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14853_)
			end

			if arg1.interrupted then
				__FUNC_146A3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 159.800000, 163.800000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_146A3_)
		end

		registerVal10:completeAnimation()
		registerVal2.Dot4:setLeftRight(true, false, 140.000000, 144.000000)
		registerVal2.Dot4:setTopBottom(true, false, 97.000000, 101.000000)
		registerVal2.Dot4:setAlpha(0.000000)
		__FUNC_144F2_(registerVal10, {})
		local function __FUNC_14A76_(arg0, arg1)
			local function __FUNC_14BCC_(arg0, arg1)
				local function __FUNC_14D47_(arg0, arg1)
					local function __FUNC_14E9C_(arg0, arg1)
						local function __FUNC_15017_(arg0, arg1)
							local function __FUNC_1516C_(arg0, arg1)
								local function __FUNC_152E7_(arg0, arg1)
									local function __FUNC_15497_(arg0, arg1)
										local function __FUNC_155EC_(arg0, arg1)
											local function __FUNC_15767_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 88.500000, 195.500000)
												arg0:setTopBottom(true, false, 85.720000, 189.720000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_15767_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15767_)
										end

										if arg1.interrupted then
											__FUNC_155EC_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_155EC_)
									end

									if arg1.interrupted then
										__FUNC_15497_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setTopBottom(true, false, 85.720000, 189.720000)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15497_)
								end

								if arg1.interrupted then
									__FUNC_152E7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_152E7_)
							end

							if arg1.interrupted then
								__FUNC_1516C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1516C_)
						end

						if arg1.interrupted then
							__FUNC_15017_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15017_)
					end

					if arg1.interrupted then
						__FUNC_14E9C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14E9C_)
				end

				if arg1.interrupted then
					__FUNC_14D47_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D47_)
			end

			if arg1.interrupted then
				__FUNC_14BCC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14BCC_)
		end

		registerVal11:completeAnimation()
		registerVal2.BackCircleOutter:setLeftRight(true, false, 88.500000, 195.500000)
		registerVal2.BackCircleOutter:setTopBottom(true, false, 38.570000, 142.570000)
		registerVal2.BackCircleOutter:setAlpha(0.000000)
		__FUNC_14A76_(registerVal11, {})
		local function __FUNC_15989_(arg0, arg1)
			local function __FUNC_15B03_(arg0, arg1)
				local function __FUNC_15C58_(arg0, arg1)
					local function __FUNC_15DD3_(arg0, arg1)
						local function __FUNC_15F28_(arg0, arg1)
							local function __FUNC_160FD_(arg0, arg1)
								local function __FUNC_16254_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, false, 136.500000, 146.500000)
									arg0:setTopBottom(true, false, 142.570000, 152.570000)
									arg0:setAlpha(0.000000)
									arg0:setZRot(180.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_16254_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16254_)
							end

							if arg1.interrupted then
								__FUNC_160FD_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 142.570000, 152.570000)
							arg0:setAlpha(1.000000)
							arg0:setZRot(180.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_160FD_)
						end

						if arg1.interrupted then
							__FUNC_15F28_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F28_)
					end

					if arg1.interrupted then
						__FUNC_15DD3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15DD3_)
				end

				if arg1.interrupted then
					__FUNC_15C58_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15C58_)
			end

			if arg1.interrupted then
				__FUNC_15B03_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15B03_)
		end

		registerVal12:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setLeftRight(true, false, 136.500000, 146.500000)
		registerVal12:setTopBottom(true, false, 65.570000, 75.570000)
		registerVal12:setAlpha(0.000000)
		registerVal12:setZRot(0.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", __FUNC_15989_)
	end

	registerVal15.HudStart = __FUNC_FFA4_
	registerVal14.HudStop = registerVal15
	registerVal2.clipsPerState = registerVal14
	local function __FUNC_1649B_(arg0)
		arg0.BarTop:close()
		arg0.BarBase:close()
		arg0.BaseElement:close()
		arg0.Dot1:close()
		arg0.Dot2:close()
		arg0.Dot3:close()
		arg0.Dot4:close()
		arg0.BackCircleOutter:close()
		arg0.ArrowFull:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1649B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


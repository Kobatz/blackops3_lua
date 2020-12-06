-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_IconGlowPanel")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_BackLine")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_NumbersInternal")
require("ui.uieditor.widgets.HUD.PrematchCountdown.PrematchCountdown_Title")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_Dot")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PrematchCountdown_Numbers = registerVal1
function CoD.PrematchCountdown_Numbers.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PrematchCountdown_Numbers)
	registerVal2.id = "PrematchCountdown_Numbers"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 70.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PrematchCountdown_IconGlowPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 507.500000, 782.000000)
	registerVal3:setTopBottom(true, false, -102.250000, 172.250000)
	registerVal2:addElement(registerVal3)
	registerVal2.GlowPanel = registerVal3
	local registerVal4 = CoD.AmmoWidget_BackLine.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal4:setTopBottom(false, false, 58.140000, 61.140000)
	registerVal4:setZRot(-90.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.LineBottom = registerVal4
	local registerVal5 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -70.000000, 70.000000)
	registerVal5:setTopBottom(false, false, -30.000000, 35.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.PanelAmmo = registerVal5
	local registerVal6 = CoD.PrematchCountdown_NumbersInternal.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -60.000000, 60.000000)
	registerVal6:setTopBottom(false, false, -30.000000, 40.000000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal6:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 7.720000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, -50.000000, -100.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 6.890000, 9.870000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.020000, 0.000000, 0.000000)
	registerVal6.Numbers:setText(Engine.Localize("XX"))
	registerVal2:addElement(registerVal6)
	registerVal2.Numbers = registerVal6
	local registerVal7 = CoD.PrematchCountdown_Title.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -116.000000, 116.000000)
	registerVal7:setTopBottom(true, false, -41.210000, -9.000000)
	registerVal7.MatchText:setText(Engine.Localize("MP_MATCH_STARTING_IN"))
	registerVal2:addElement(registerVal7)
	registerVal2.MatchText = registerVal7
	local registerVal8 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 572.000000, 576.000000)
	registerVal8:setTopBottom(true, false, 79.000000, 83.000000)
	registerVal8:setZoom(5.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Dot61 = registerVal8
	local registerVal9 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 705.000000, 709.000000)
	registerVal9:setTopBottom(true, false, 79.000000, 83.000000)
	registerVal9:setZoom(5.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.Dot600 = registerVal9
	local registerVal10 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 572.000000, 576.000000)
	registerVal10:setTopBottom(true, false, -58.000000, -54.000000)
	registerVal10:setZoom(5.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.Dot62 = registerVal10
	local registerVal11 = CoD.DamageWidget_Dot.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 705.000000, 709.000000)
	registerVal11:setTopBottom(true, false, -58.000000, -54.000000)
	registerVal11:setZoom(5.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.Dot601 = registerVal11
	local registerVal12 = CoD.AmmoWidget_BackLine.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -16.000000, 16.000000)
	registerVal12:setTopBottom(false, false, -109.860000, -106.860000)
	registerVal12:setZRot(-90.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.LineTop = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 577.000000, 705.000000)
	registerVal13:setTopBottom(true, false, -26.500000, 101.500000)
	registerVal13:setRGB(0.200000, 0.230000, 0.300000)
	registerVal13:setAlpha(0.680000)
	registerVal13:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Image0 = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_11C6_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.GlowPanel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LineBottom:setLeftRight(false, false, -16.000000, 16.000000)
		registerVal2.LineBottom:setTopBottom(false, false, 58.140000, 61.140000)
		registerVal2.LineBottom:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -70.000000, 70.000000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -30.000000, 35.000000)
		registerVal2.PanelAmmo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Numbers:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.Numbers:setTopBottom(false, false, -30.000000, 40.000000)
		registerVal2.Numbers:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.MatchText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Dot61:setLeftRight(true, false, 572.000000, 576.000000)
		registerVal2.Dot61:setTopBottom(true, false, 79.000000, 83.000000)
		registerVal2.Dot61:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Dot600:setLeftRight(true, false, 705.000000, 709.000000)
		registerVal2.Dot600:setTopBottom(true, false, 79.000000, 83.000000)
		registerVal2.Dot600:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Dot62:setLeftRight(true, false, 572.000000, 576.000000)
		registerVal2.Dot62:setTopBottom(true, false, -58.000000, -54.000000)
		registerVal2.Dot62:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Dot601:setLeftRight(true, false, 705.000000, 709.000000)
		registerVal2.Dot601:setTopBottom(true, false, -58.000000, -54.000000)
		registerVal2.Dot601:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.LineTop:setLeftRight(false, false, -16.000000, 16.000000)
		registerVal2.LineTop:setTopBottom(false, false, -109.860000, -106.860000)
		registerVal2.LineTop:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal15.DefaultClip = __FUNC_11C6_
	local function __FUNC_18DD_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_2016_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.630000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowPanel:setAlpha(0.000000)
		__FUNC_2016_(registerVal3, {})
		local function __FUNC_21C9_(arg0, arg1)
			local function __FUNC_237B_(arg0, arg1)
				local function __FUNC_252B_(arg0, arg1)
					local function __FUNC_26A3_(arg0, arg1)
						local function __FUNC_27F8_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(false, false, -16.000000, 16.000000)
							arg0:setTopBottom(false, false, 58.140000, 61.140000)
							arg0:setAlpha(1.000000)
							arg0:setZoom(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_27F8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27F8_)
					end

					if arg1.interrupted then
						__FUNC_26A3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26A3_)
				end

				if arg1.interrupted then
					__FUNC_252B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, true, CoD.TweenType.Linear)
				arg0:setTopBottom(false, false, 58.140000, 61.140000)
				arg0:setAlpha(0.760000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_252B_)
			end

			if arg1.interrupted then
				__FUNC_237B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(false, false, -81.860000, -78.860000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_237B_)
		end

		registerVal4:completeAnimation()
		registerVal2.LineBottom:setLeftRight(false, false, -16.000000, 16.000000)
		registerVal2.LineBottom:setTopBottom(false, false, -109.860000, -106.860000)
		registerVal2.LineBottom:setAlpha(0.000000)
		registerVal2.LineBottom:setZoom(0.000000)
		__FUNC_21C9_(registerVal4, {})
		local function __FUNC_2A3F_(arg0, arg1)
			local function __FUNC_2B94_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 110.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -70.000000, 70.000000)
				arg0:setTopBottom(false, false, -30.000000, 35.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2B94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B94_)
		end

		registerVal5:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -70.000000, 70.000000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -30.000000, -21.000000)
		registerVal2.PanelAmmo:setAlpha(0.000000)
		__FUNC_2A3F_(registerVal5, {})
		local function __FUNC_2DB9_(arg0, arg1)
			local function __FUNC_2F10_(arg0, arg1)
				local function __FUNC_30C3_(arg0, arg1)
					local function __FUNC_323B_(arg0, arg1)
						local function __FUNC_3390_(arg0, arg1)
							local function __FUNC_350B_(arg0, arg1)
								local function __FUNC_3660_(arg0, arg1)
									local function __FUNC_37DB_(arg0, arg1)
										local function __FUNC_3930_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setLeftRight(false, false, -60.000000, 60.000000)
											arg0:setTopBottom(false, false, -30.000000, 40.000000)
											arg0:setAlpha(1.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_3930_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3930_)
									end

									if arg1.interrupted then
										__FUNC_37DB_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37DB_)
								end

								if arg1.interrupted then
									__FUNC_3660_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3660_)
							end

							if arg1.interrupted then
								__FUNC_350B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_350B_)
						end

						if arg1.interrupted then
							__FUNC_3390_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3390_)
					end

					if arg1.interrupted then
						__FUNC_323B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_323B_)
				end

				if arg1.interrupted then
					__FUNC_30C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, true, CoD.TweenType.Linear)
				arg0:setTopBottom(false, false, -30.000000, 40.000000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30C3_)
			end

			if arg1.interrupted then
				__FUNC_2F10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 720.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F10_)
		end

		registerVal6:completeAnimation()
		registerVal2.Numbers:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.Numbers:setTopBottom(false, false, -30.000000, -26.000000)
		registerVal2.Numbers:setAlpha(0.000000)
		__FUNC_2DB9_(registerVal6, {})
		local function __FUNC_3B55_(arg0, arg1)
			local function __FUNC_3CAC_(arg0, arg1)
				local function __FUNC_3E27_(arg0, arg1)
					local function __FUNC_3F7C_(arg0, arg1)
						local function __FUNC_40F7_(arg0, arg1)
							local function __FUNC_424C_(arg0, arg1)
								local function __FUNC_43C7_(arg0, arg1)
									local function __FUNC_451C_(arg0, arg1)
										local function __FUNC_4697_(arg0, arg1)
											local function __FUNC_47EC_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(1.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_47EC_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47EC_)
										end

										if arg1.interrupted then
											__FUNC_4697_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.800000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4697_)
									end

									if arg1.interrupted then
										__FUNC_451C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_451C_)
								end

								if arg1.interrupted then
									__FUNC_43C7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43C7_)
							end

							if arg1.interrupted then
								__FUNC_424C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_424C_)
						end

						if arg1.interrupted then
							__FUNC_40F7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_40F7_)
					end

					if arg1.interrupted then
						__FUNC_3F7C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F7C_)
				end

				if arg1.interrupted then
					__FUNC_3E27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E27_)
			end

			if arg1.interrupted then
				__FUNC_3CAC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CAC_)
		end

		registerVal7:completeAnimation()
		registerVal2.MatchText:setAlpha(0.000000)
		__FUNC_3B55_(registerVal7, {})
		local function __FUNC_49A1_(arg0, arg1)
			local function __FUNC_4AF8_(arg0, arg1)
				local function __FUNC_4C73_(arg0, arg1)
					local function __FUNC_4DEB_(arg0, arg1)
						local function __FUNC_4F63_(arg0, arg1)
							local function __FUNC_50B8_(arg0, arg1)
								local function __FUNC_5248_(arg0, arg1)
									local function __FUNC_53A0_(arg0, arg1)
										local function __FUNC_5568_(arg0, arg1)
											local function __FUNC_56E3_(arg0, arg1)
												local function __FUNC_5838_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setLeftRight(true, false, 572.000000, 576.000000)
													arg0:setTopBottom(true, false, 79.000000, 83.000000)
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_5838_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5838_)
											end

											if arg1.interrupted then
												__FUNC_56E3_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56E3_)
										end

										if arg1.interrupted then
											__FUNC_5568_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 169.000000, true, true, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 572.000000, 576.000000)
										arg0:setTopBottom(true, false, 79.000000, 83.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5568_)
									end

									if arg1.interrupted then
										__FUNC_53A0_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53A0_)
								end

								if arg1.interrupted then
									__FUNC_5248_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 159.000000, true, true, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 576.000000, 580.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5248_)
							end

							if arg1.interrupted then
								__FUNC_50B8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50B8_)
						end

						if arg1.interrupted then
							__FUNC_4F63_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F63_)
					end

					if arg1.interrupted then
						__FUNC_4DEB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.430000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DEB_)
				end

				if arg1.interrupted then
					__FUNC_4C73_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C73_)
			end

			if arg1.interrupted then
				__FUNC_4AF8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AF8_)
		end

		registerVal8:completeAnimation()
		registerVal2.Dot61:setLeftRight(true, false, 638.000000, 642.000000)
		registerVal2.Dot61:setTopBottom(true, false, -58.000000, -54.000000)
		registerVal2.Dot61:setAlpha(1.000000)
		__FUNC_49A1_(registerVal8, {})
		local function __FUNC_5A5D_(arg0, arg1)
			local function __FUNC_5BB4_(arg0, arg1)
				local function __FUNC_5D2F_(arg0, arg1)
					local function __FUNC_5EA7_(arg0, arg1)
						local function __FUNC_601F_(arg0, arg1)
							local function __FUNC_6174_(arg0, arg1)
								local function __FUNC_6304_(arg0, arg1)
									local function __FUNC_645C_(arg0, arg1)
										local function __FUNC_65EC_(arg0, arg1)
											local function __FUNC_6767_(arg0, arg1)
												local function __FUNC_68BC_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setLeftRight(true, false, 705.000000, 709.000000)
													arg0:setTopBottom(true, false, 79.000000, 83.000000)
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_68BC_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68BC_)
											end

											if arg1.interrupted then
												__FUNC_6767_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6767_)
										end

										if arg1.interrupted then
											__FUNC_65EC_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 169.000000, true, true, CoD.TweenType.Linear)
										arg0:setTopBottom(true, false, 79.000000, 83.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65EC_)
									end

									if arg1.interrupted then
										__FUNC_645C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_645C_)
								end

								if arg1.interrupted then
									__FUNC_6304_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 159.000000, true, true, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 705.000000, 709.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6304_)
							end

							if arg1.interrupted then
								__FUNC_6174_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6174_)
						end

						if arg1.interrupted then
							__FUNC_601F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_601F_)
					end

					if arg1.interrupted then
						__FUNC_5EA7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.430000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EA7_)
				end

				if arg1.interrupted then
					__FUNC_5D2F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D2F_)
			end

			if arg1.interrupted then
				__FUNC_5BB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BB4_)
		end

		registerVal9:completeAnimation()
		registerVal2.Dot600:setLeftRight(true, false, 638.000000, 642.000000)
		registerVal2.Dot600:setTopBottom(true, false, -58.000000, -54.000000)
		registerVal2.Dot600:setAlpha(1.000000)
		__FUNC_5A5D_(registerVal9, {})
		local function __FUNC_6AE1_(arg0, arg1)
			local function __FUNC_6C38_(arg0, arg1)
				local function __FUNC_6DB3_(arg0, arg1)
					local function __FUNC_6F2B_(arg0, arg1)
						local function __FUNC_70A3_(arg0, arg1)
							local function __FUNC_71F8_(arg0, arg1)
								local function __FUNC_7388_(arg0, arg1)
									local function __FUNC_74E0_(arg0, arg1)
										local function __FUNC_7670_(arg0, arg1)
											local function __FUNC_77EB_(arg0, arg1)
												local function __FUNC_7940_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setLeftRight(true, false, 572.000000, 576.000000)
													arg0:setTopBottom(true, false, -58.000000, -54.000000)
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_7940_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7940_)
											end

											if arg1.interrupted then
												__FUNC_77EB_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_77EB_)
										end

										if arg1.interrupted then
											__FUNC_7670_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 169.000000, true, true, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 572.000000, 576.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7670_)
									end

									if arg1.interrupted then
										__FUNC_74E0_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_74E0_)
								end

								if arg1.interrupted then
									__FUNC_7388_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 150.000000, true, true, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 576.000000, 580.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7388_)
							end

							if arg1.interrupted then
								__FUNC_71F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71F8_)
						end

						if arg1.interrupted then
							__FUNC_70A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_70A3_)
					end

					if arg1.interrupted then
						__FUNC_6F2B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.430000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F2B_)
				end

				if arg1.interrupted then
					__FUNC_6DB3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DB3_)
			end

			if arg1.interrupted then
				__FUNC_6C38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C38_)
		end

		registerVal10:completeAnimation()
		registerVal2.Dot62:setLeftRight(true, false, 638.000000, 642.000000)
		registerVal2.Dot62:setTopBottom(true, false, -58.000000, -54.000000)
		registerVal2.Dot62:setAlpha(1.000000)
		__FUNC_6AE1_(registerVal10, {})
		local function __FUNC_7B65_(arg0, arg1)
			local function __FUNC_7CBC_(arg0, arg1)
				local function __FUNC_7E37_(arg0, arg1)
					local function __FUNC_7FAF_(arg0, arg1)
						local function __FUNC_8127_(arg0, arg1)
							local function __FUNC_827C_(arg0, arg1)
								local function __FUNC_840C_(arg0, arg1)
									local function __FUNC_8564_(arg0, arg1)
										local function __FUNC_86BC_(arg0, arg1)
											local function __FUNC_8837_(arg0, arg1)
												local function __FUNC_898C_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setLeftRight(true, false, 705.000000, 709.000000)
													arg0:setTopBottom(true, false, -58.000000, -54.000000)
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_898C_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_898C_)
											end

											if arg1.interrupted then
												__FUNC_8837_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8837_)
										end

										if arg1.interrupted then
											__FUNC_86BC_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 169.000000, true, true, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86BC_)
									end

									if arg1.interrupted then
										__FUNC_8564_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8564_)
								end

								if arg1.interrupted then
									__FUNC_840C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 159.000000, true, true, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 705.000000, 709.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_840C_)
							end

							if arg1.interrupted then
								__FUNC_827C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_827C_)
						end

						if arg1.interrupted then
							__FUNC_8127_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8127_)
					end

					if arg1.interrupted then
						__FUNC_7FAF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.430000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FAF_)
				end

				if arg1.interrupted then
					__FUNC_7E37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E37_)
			end

			if arg1.interrupted then
				__FUNC_7CBC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CBC_)
		end

		registerVal11:completeAnimation()
		registerVal2.Dot601:setLeftRight(true, false, 638.000000, 642.000000)
		registerVal2.Dot601:setTopBottom(true, false, -58.000000, -54.000000)
		registerVal2.Dot601:setAlpha(1.000000)
		__FUNC_7B65_(registerVal11, {})
		local function __FUNC_8BB1_(arg0, arg1)
			local function __FUNC_8D2B_(arg0, arg1)
				local function __FUNC_8E80_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, -16.000000, 16.000000)
					arg0:setTopBottom(false, false, -109.860000, -106.860000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_8E80_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 260.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E80_)
			end

			if arg1.interrupted then
				__FUNC_8D2B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D2B_)
		end

		registerVal12:completeAnimation()
		registerVal2.LineTop:setLeftRight(false, false, -16.000000, 16.000000)
		registerVal2.LineTop:setTopBottom(false, false, -109.860000, -106.860000)
		registerVal2.LineTop:setAlpha(0.000000)
		__FUNC_8BB1_(registerVal12, {})
		local function __FUNC_90A5_(arg0, arg1)
			local function __FUNC_91FC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.680000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_91FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_91FC_)
		end

		registerVal13:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		__FUNC_90A5_(registerVal13, {})
	end

	registerVal15.Start = __FUNC_18DD_
	local function __FUNC_93B1_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_9AE0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.GlowPanel:setAlpha(1.000000)
		__FUNC_9AE0_(registerVal3, {})
		local function __FUNC_9C95_(arg0, arg1)
			local function __FUNC_9DEC_(arg0, arg1)
				local function __FUNC_9F7C_(arg0, arg1)
					local function __FUNC_A0F7_(arg0, arg1)
						local function __FUNC_A24C_(arg0, arg1)
							local function __FUNC_A3C7_(arg0, arg1)
								local function __FUNC_A51C_(arg0, arg1)
									local function __FUNC_A697_(arg0, arg1)
										local function __FUNC_A7EC_(arg0, arg1)
											local function __FUNC_A967_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(false, false, -16.000000, 16.000000)
												arg0:setTopBottom(false, false, -19.860000, -16.860000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_A967_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.400000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A967_)
										end

										if arg1.interrupted then
											__FUNC_A7EC_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A7EC_)
									end

									if arg1.interrupted then
										__FUNC_A697_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A697_)
								end

								if arg1.interrupted then
									__FUNC_A51C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A51C_)
							end

							if arg1.interrupted then
								__FUNC_A3C7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.800000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3C7_)
						end

						if arg1.interrupted then
							__FUNC_A24C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A24C_)
					end

					if arg1.interrupted then
						__FUNC_A0F7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A0F7_)
				end

				if arg1.interrupted then
					__FUNC_9F7C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, true, true, CoD.TweenType.Linear)
				arg0:setTopBottom(false, false, -19.860000, -16.860000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9F7C_)
			end

			if arg1.interrupted then
				__FUNC_9DEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9DEC_)
		end

		registerVal4:completeAnimation()
		registerVal2.LineBottom:setLeftRight(false, false, -16.000000, 16.000000)
		registerVal2.LineBottom:setTopBottom(false, false, 58.140000, 61.140000)
		registerVal2.LineBottom:setAlpha(1.000000)
		__FUNC_9C95_(registerVal4, {})
		local function __FUNC_AB89_(arg0, arg1)
			local function __FUNC_ACE0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 129.000000, true, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -70.000000, 70.000000)
				arg0:setTopBottom(false, false, -30.000000, -28.000000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_ACE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACE0_)
		end

		registerVal5:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, false, -70.000000, 70.000000)
		registerVal2.PanelAmmo:setTopBottom(false, false, -30.000000, 35.000000)
		registerVal2.PanelAmmo:setAlpha(0.000000)
		__FUNC_AB89_(registerVal5, {})
		local function __FUNC_AF05_(arg0, arg1)
			local function __FUNC_B05C_(arg0, arg1)
				local function __FUNC_B1D7_(arg0, arg1)
					local function __FUNC_B32C_(arg0, arg1)
						local function __FUNC_B4A7_(arg0, arg1)
							local function __FUNC_B5FC_(arg0, arg1)
								local function __FUNC_B777_(arg0, arg1)
									local function __FUNC_B8CC_(arg0, arg1)
										local function __FUNC_BA47_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setLeftRight(false, false, -60.000000, 60.000000)
											arg0:setTopBottom(false, false, -30.000000, 40.000000)
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_BA47_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.400000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA47_)
									end

									if arg1.interrupted then
										__FUNC_B8CC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B8CC_)
								end

								if arg1.interrupted then
									__FUNC_B777_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B777_)
							end

							if arg1.interrupted then
								__FUNC_B5FC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5FC_)
						end

						if arg1.interrupted then
							__FUNC_B4A7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.780000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4A7_)
					end

					if arg1.interrupted then
						__FUNC_B32C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B32C_)
				end

				if arg1.interrupted then
					__FUNC_B1D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B1D7_)
			end

			if arg1.interrupted then
				__FUNC_B05C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B05C_)
		end

		registerVal6:completeAnimation()
		registerVal2.Numbers:setLeftRight(false, false, -60.000000, 60.000000)
		registerVal2.Numbers:setTopBottom(false, false, -30.000000, 40.000000)
		registerVal2.Numbers:setAlpha(1.000000)
		__FUNC_AF05_(registerVal6, {})
		local function __FUNC_BC69_(arg0, arg1)
			local function __FUNC_BDC0_(arg0, arg1)
				local function __FUNC_BF3B_(arg0, arg1)
					local function __FUNC_C090_(arg0, arg1)
						local function __FUNC_C20B_(arg0, arg1)
							local function __FUNC_C360_(arg0, arg1)
								local function __FUNC_C4DB_(arg0, arg1)
									local function __FUNC_C630_(arg0, arg1)
										local function __FUNC_C7AB_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_C7AB_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.400000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C7AB_)
									end

									if arg1.interrupted then
										__FUNC_C630_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C630_)
								end

								if arg1.interrupted then
									__FUNC_C4DB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C4DB_)
							end

							if arg1.interrupted then
								__FUNC_C360_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C360_)
						end

						if arg1.interrupted then
							__FUNC_C20B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C20B_)
					end

					if arg1.interrupted then
						__FUNC_C090_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C090_)
				end

				if arg1.interrupted then
					__FUNC_BF3B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF3B_)
			end

			if arg1.interrupted then
				__FUNC_BDC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BDC0_)
		end

		registerVal7:completeAnimation()
		registerVal2.MatchText:setAlpha(1.000000)
		__FUNC_BC69_(registerVal7, {})
		local function __FUNC_C95D_(arg0, arg1)
			local function __FUNC_CAB4_(arg0, arg1)
				local function __FUNC_CC7C_(arg0, arg1)
					local function __FUNC_CDD4_(arg0, arg1)
						local function __FUNC_CF64_(arg0, arg1)
							local function __FUNC_D0DF_(arg0, arg1)
								local function __FUNC_D234_(arg0, arg1)
									local function __FUNC_D3AF_(arg0, arg1)
										local function __FUNC_D504_(arg0, arg1)
											local function __FUNC_D67F_(arg0, arg1)
												local function __FUNC_D7D4_(arg0, arg1)
													local function __FUNC_D94F_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(true, false, 640.000000, 644.000000)
														arg0:setTopBottom(true, false, 16.000000, 20.000000)
														arg0:setAlpha(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_D94F_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.400000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D94F_)
												end

												if arg1.interrupted then
													__FUNC_D7D4_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D7D4_)
											end

											if arg1.interrupted then
												__FUNC_D67F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D67F_)
										end

										if arg1.interrupted then
											__FUNC_D504_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D504_)
									end

									if arg1.interrupted then
										__FUNC_D3AF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D3AF_)
								end

								if arg1.interrupted then
									__FUNC_D234_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D234_)
							end

							if arg1.interrupted then
								__FUNC_D0DF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D0DF_)
						end

						if arg1.interrupted then
							__FUNC_CF64_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, true, true, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 640.000000, 644.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF64_)
					end

					if arg1.interrupted then
						__FUNC_CDD4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CDD4_)
				end

				if arg1.interrupted then
					__FUNC_CC7C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, true, true, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 576.000000, 580.000000)
				arg0:setTopBottom(true, false, 16.000000, 20.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC7C_)
			end

			if arg1.interrupted then
				__FUNC_CAB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CAB4_)
		end

		registerVal8:completeAnimation()
		registerVal2.Dot61:setLeftRight(true, false, 572.000000, 576.000000)
		registerVal2.Dot61:setTopBottom(true, false, 79.000000, 83.000000)
		registerVal2.Dot61:setAlpha(1.000000)
		__FUNC_C95D_(registerVal8, {})
		local function __FUNC_DB71_(arg0, arg1)
			local function __FUNC_DCC8_(arg0, arg1)
				local function __FUNC_DE58_(arg0, arg1)
					local function __FUNC_DFB0_(arg0, arg1)
						local function __FUNC_E140_(arg0, arg1)
							local function __FUNC_E2BB_(arg0, arg1)
								local function __FUNC_E410_(arg0, arg1)
									local function __FUNC_E58B_(arg0, arg1)
										local function __FUNC_E6E0_(arg0, arg1)
											local function __FUNC_E85B_(arg0, arg1)
												local function __FUNC_E9B0_(arg0, arg1)
													local function __FUNC_EB2B_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(true, false, 640.000000, 644.000000)
														arg0:setTopBottom(true, false, 16.000000, 20.000000)
														arg0:setAlpha(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_EB2B_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.400000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EB2B_)
												end

												if arg1.interrupted then
													__FUNC_E9B0_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E9B0_)
											end

											if arg1.interrupted then
												__FUNC_E85B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E85B_)
										end

										if arg1.interrupted then
											__FUNC_E6E0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E6E0_)
									end

									if arg1.interrupted then
										__FUNC_E58B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E58B_)
								end

								if arg1.interrupted then
									__FUNC_E410_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E410_)
							end

							if arg1.interrupted then
								__FUNC_E2BB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E2BB_)
						end

						if arg1.interrupted then
							__FUNC_E140_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, true, true, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 640.000000, 644.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E140_)
					end

					if arg1.interrupted then
						__FUNC_DFB0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DFB0_)
				end

				if arg1.interrupted then
					__FUNC_DE58_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, true, true, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 16.000000, 20.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DE58_)
			end

			if arg1.interrupted then
				__FUNC_DCC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DCC8_)
		end

		registerVal9:completeAnimation()
		registerVal2.Dot600:setLeftRight(true, false, 705.000000, 709.000000)
		registerVal2.Dot600:setTopBottom(true, false, 79.000000, 83.000000)
		registerVal2.Dot600:setAlpha(1.000000)
		__FUNC_DB71_(registerVal9, {})
		local function __FUNC_ED4D_(arg0, arg1)
			local function __FUNC_EEA4_(arg0, arg1)
				local function __FUNC_F06C_(arg0, arg1)
					local function __FUNC_F1C4_(arg0, arg1)
						local function __FUNC_F354_(arg0, arg1)
							local function __FUNC_F4CF_(arg0, arg1)
								local function __FUNC_F624_(arg0, arg1)
									local function __FUNC_F79F_(arg0, arg1)
										local function __FUNC_F8F4_(arg0, arg1)
											local function __FUNC_FA6F_(arg0, arg1)
												local function __FUNC_FBC4_(arg0, arg1)
													local function __FUNC_FD3F_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(true, false, 639.000000, 643.000000)
														arg0:setTopBottom(true, false, 16.000000, 20.000000)
														arg0:setAlpha(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_FD3F_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.400000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD3F_)
												end

												if arg1.interrupted then
													__FUNC_FBC4_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FBC4_)
											end

											if arg1.interrupted then
												__FUNC_FA6F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA6F_)
										end

										if arg1.interrupted then
											__FUNC_F8F4_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F8F4_)
									end

									if arg1.interrupted then
										__FUNC_F79F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F79F_)
								end

								if arg1.interrupted then
									__FUNC_F624_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F624_)
							end

							if arg1.interrupted then
								__FUNC_F4CF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F4CF_)
						end

						if arg1.interrupted then
							__FUNC_F354_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, true, true, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 639.000000, 643.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F354_)
					end

					if arg1.interrupted then
						__FUNC_F1C4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F1C4_)
				end

				if arg1.interrupted then
					__FUNC_F06C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, true, true, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 576.000000, 580.000000)
				arg0:setTopBottom(true, false, 16.000000, 20.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F06C_)
			end

			if arg1.interrupted then
				__FUNC_EEA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EEA4_)
		end

		registerVal10:completeAnimation()
		registerVal2.Dot62:setLeftRight(true, false, 572.000000, 576.000000)
		registerVal2.Dot62:setTopBottom(true, false, -58.000000, -54.000000)
		registerVal2.Dot62:setAlpha(1.000000)
		__FUNC_ED4D_(registerVal10, {})
		local function __FUNC_FF61_(arg0, arg1)
			local function __FUNC_100B8_(arg0, arg1)
				local function __FUNC_10248_(arg0, arg1)
					local function __FUNC_103A0_(arg0, arg1)
						local function __FUNC_10530_(arg0, arg1)
							local function __FUNC_106AB_(arg0, arg1)
								local function __FUNC_10800_(arg0, arg1)
									local function __FUNC_1097B_(arg0, arg1)
										local function __FUNC_10AD0_(arg0, arg1)
											local function __FUNC_10C4B_(arg0, arg1)
												local function __FUNC_10DA0_(arg0, arg1)
													local function __FUNC_10F1B_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(true, false, 640.000000, 644.000000)
														arg0:setTopBottom(true, false, 16.000000, 20.000000)
														arg0:setAlpha(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_10F1B_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.400000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10F1B_)
												end

												if arg1.interrupted then
													__FUNC_10DA0_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10DA0_)
											end

											if arg1.interrupted then
												__FUNC_10C4B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10C4B_)
										end

										if arg1.interrupted then
											__FUNC_10AD0_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10AD0_)
									end

									if arg1.interrupted then
										__FUNC_1097B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.800000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1097B_)
								end

								if arg1.interrupted then
									__FUNC_10800_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10800_)
							end

							if arg1.interrupted then
								__FUNC_106AB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_106AB_)
						end

						if arg1.interrupted then
							__FUNC_10530_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, true, true, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 640.000000, 644.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10530_)
					end

					if arg1.interrupted then
						__FUNC_103A0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_103A0_)
				end

				if arg1.interrupted then
					__FUNC_10248_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, true, true, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 16.000000, 20.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10248_)
			end

			if arg1.interrupted then
				__FUNC_100B8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_100B8_)
		end

		registerVal11:completeAnimation()
		registerVal2.Dot601:setLeftRight(true, false, 705.000000, 709.000000)
		registerVal2.Dot601:setTopBottom(true, false, -58.000000, -54.000000)
		registerVal2.Dot601:setAlpha(1.000000)
		__FUNC_FF61_(registerVal11, {})
		local function __FUNC_1113D_(arg0, arg1)
			local function __FUNC_11294_(arg0, arg1)
				local function __FUNC_11424_(arg0, arg1)
					local function __FUNC_1159F_(arg0, arg1)
						local function __FUNC_116F4_(arg0, arg1)
							local function __FUNC_1186F_(arg0, arg1)
								local function __FUNC_119C4_(arg0, arg1)
									local function __FUNC_11B3F_(arg0, arg1)
										local function __FUNC_11C94_(arg0, arg1)
											local function __FUNC_11E0F_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(false, false, -16.000000, 16.000000)
												arg0:setTopBottom(false, false, -17.860000, -14.860000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_11E0F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.400000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E0F_)
										end

										if arg1.interrupted then
											__FUNC_11C94_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11C94_)
									end

									if arg1.interrupted then
										__FUNC_11B3F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11B3F_)
								end

								if arg1.interrupted then
									__FUNC_119C4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_119C4_)
							end

							if arg1.interrupted then
								__FUNC_1186F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.800000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1186F_)
						end

						if arg1.interrupted then
							__FUNC_116F4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_116F4_)
					end

					if arg1.interrupted then
						__FUNC_1159F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1159F_)
				end

				if arg1.interrupted then
					__FUNC_11424_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, true, true, CoD.TweenType.Linear)
				arg0:setTopBottom(false, false, -17.860000, -14.860000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11424_)
			end

			if arg1.interrupted then
				__FUNC_11294_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11294_)
		end

		registerVal12:completeAnimation()
		registerVal2.LineTop:setLeftRight(false, false, -16.000000, 16.000000)
		registerVal2.LineTop:setTopBottom(false, false, -109.860000, -106.860000)
		registerVal2.LineTop:setAlpha(1.000000)
		__FUNC_1113D_(registerVal12, {})
		local function __FUNC_12031_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.Image0:setAlpha(0.680000)
		__FUNC_12031_(registerVal13, {})
	end

	registerVal15.Stop = __FUNC_93B1_
	registerVal14.DefaultState = registerVal15
	registerVal2.clipsPerState = registerVal14
	local function __FUNC_121E5_(arg0)
		arg0.GlowPanel:close()
		arg0.LineBottom:close()
		arg0.PanelAmmo:close()
		arg0.Numbers:close()
		arg0.MatchText:close()
		arg0.Dot61:close()
		arg0.Dot600:close()
		arg0.Dot62:close()
		arg0.Dot601:close()
		arg0.LineTop:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_121E5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


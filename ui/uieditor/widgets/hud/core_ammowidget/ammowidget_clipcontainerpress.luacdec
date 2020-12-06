-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_Pixel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_ClipContainerPress = registerVal1
function CoD.AmmoWidget_ClipContainerPress.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_ClipContainerPress)
	registerVal2.id = "AmmoWidget_ClipContainerPress"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 42.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -100.500000, 100.500000)
	registerVal3:setTopBottom(false, true, -67.800000, 41.500000)
	registerVal3:setRGB(0.850000, 0.150000, 0.150000)
	registerVal3:setAlpha(0.200000)
	registerVal3:setText(Engine.Localize("33"))
	registerVal3:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal3:setLetterSpacing(-3.500000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Clip = registerVal3
	local registerVal4 = CoD.DamageWidget_Pixel.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 12.660000, 98.000000)
	registerVal4:setTopBottom(true, false, 21.950000, 22.950000)
	registerVal4:setRGB(0.850000, 0.150000, 0.150000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZRot(35.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Pixel0 = registerVal4
	local registerVal5 = CoD.DamageWidget_Pixel.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 12.660000, 98.000000)
	registerVal5:setTopBottom(true, false, 21.950000, 22.950000)
	registerVal5:setRGB(0.850000, 0.150000, 0.150000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZRot(-35.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Pixel1 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_938_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Clip:setLeftRight(false, false, -52.500000, 55.500000)
		registerVal2.Clip:setTopBottom(false, true, -43.500000, 8.500000)
		registerVal2.Clip:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Pixel0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Pixel1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_938_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_B6C_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_D7E_(arg0, arg1)
			local function __FUNC_EF7_(arg0, arg1)
				local function __FUNC_10DF_(arg0, arg1)
					local function __FUNC_1257_(arg0, arg1)
						local function __FUNC_13CF_(arg0, arg1)
							local function __FUNC_1547_(arg0, arg1)
								local function __FUNC_172F_(arg0, arg1)
									local function __FUNC_18A7_(arg0, arg1)
										local function __FUNC_1A8F_(arg0, arg1)
											local function __FUNC_1C07_(arg0, arg1)
												local function __FUNC_1DEF_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setLeftRight(false, false, -100.500000, 100.500000)
													arg0:setTopBottom(false, true, -67.800000, 41.500000)
													arg0:setAlpha(0.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_1DEF_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(false, false, -100.500000, 100.500000)
												arg0:setTopBottom(false, true, -67.800000, 41.500000)
												arg0:setAlpha(0.310000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DEF_)
											end

											if arg1.interrupted then
												__FUNC_1C07_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.340000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C07_)
										end

										if arg1.interrupted then
											__FUNC_1A8F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(false, false, -74.360000, 75.810000)
										arg0:setTopBottom(false, true, -54.220000, 25.750000)
										arg0:setAlpha(0.490000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A8F_)
									end

									if arg1.interrupted then
										__FUNC_18A7_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.510000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18A7_)
								end

								if arg1.interrupted then
									__FUNC_172F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(false, false, -68.290000, 70.170000)
								arg0:setTopBottom(false, true, -51.240000, 20.960000)
								arg0:setAlpha(0.630000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_172F_)
							end

							if arg1.interrupted then
								__FUNC_1547_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.660000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1547_)
						end

						if arg1.interrupted then
							__FUNC_13CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13CF_)
					end

					if arg1.interrupted then
						__FUNC_1257_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.830000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1257_)
				end

				if arg1.interrupted then
					__FUNC_10DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -56.140000, 58.890000)
				arg0:setTopBottom(false, true, -45.290000, 11.380000)
				arg0:setAlpha(0.910000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10DF_)
			end

			if arg1.interrupted then
				__FUNC_EF7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.940000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF7_)
		end

		registerVal3:completeAnimation()
		registerVal2.Clip:setLeftRight(false, false, -52.500000, 55.500000)
		registerVal2.Clip:setTopBottom(false, true, -43.500000, 8.500000)
		registerVal2.Clip:setAlpha(1.000000)
		__FUNC_D7E_(registerVal3, {})
		local function __FUNC_2011_(arg0, arg1)
			local function __FUNC_2168_(arg0, arg1)
				local function __FUNC_22E3_(arg0, arg1)
					local function __FUNC_2438_(arg0, arg1)
						local function __FUNC_25B3_(arg0, arg1)
							local function __FUNC_2708_(arg0, arg1)
								local function __FUNC_2883_(arg0, arg1)
									local function __FUNC_29D8_(arg0, arg1)
										local function __FUNC_2B53_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_2B53_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B53_)
									end

									if arg1.interrupted then
										__FUNC_29D8_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29D8_)
								end

								if arg1.interrupted then
									__FUNC_2883_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2883_)
							end

							if arg1.interrupted then
								__FUNC_2708_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2708_)
						end

						if arg1.interrupted then
							__FUNC_25B3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25B3_)
					end

					if arg1.interrupted then
						__FUNC_2438_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2438_)
				end

				if arg1.interrupted then
					__FUNC_22E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22E3_)
			end

			if arg1.interrupted then
				__FUNC_2168_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2168_)
		end

		registerVal4:completeAnimation()
		registerVal2.Pixel0:setAlpha(1.000000)
		__FUNC_2011_(registerVal4, {})
		local function __FUNC_2D05_(arg0, arg1)
			local function __FUNC_2E5C_(arg0, arg1)
				local function __FUNC_2FD7_(arg0, arg1)
					local function __FUNC_314F_(arg0, arg1)
						local function __FUNC_32A4_(arg0, arg1)
							local function __FUNC_341F_(arg0, arg1)
								local function __FUNC_3574_(arg0, arg1)
									local function __FUNC_36EF_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_36EF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.500000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36EF_)
								end

								if arg1.interrupted then
									__FUNC_3574_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3574_)
							end

							if arg1.interrupted then
								__FUNC_341F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_341F_)
						end

						if arg1.interrupted then
							__FUNC_32A4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32A4_)
					end

					if arg1.interrupted then
						__FUNC_314F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_314F_)
				end

				if arg1.interrupted then
					__FUNC_2FD7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FD7_)
			end

			if arg1.interrupted then
				__FUNC_2E5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E5C_)
		end

		registerVal5:completeAnimation()
		registerVal2.Pixel1:setAlpha(1.000000)
		__FUNC_2D05_(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B6C_
	registerVal6.NoAmmoPress = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_38A1_(arg0)
		arg0.Pixel0:close()
		arg0.Pixel1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_38A1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_ZMHunterWidget = registerVal1
function CoD.CallingCards_ZMHunterWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_ZMHunterWidget)
	registerVal2.id = "CallingCards_ZMHunterWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_zmhunder_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bgDark = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_zmhunder_bg2"))
	registerVal2:addElement(registerVal4)
	registerVal2.bgLight = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 316.000000, 447.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 131.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_zmhunder_man2"))
	registerVal2:addElement(registerVal5)
	registerVal2.manDark = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 316.000000, 447.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 131.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_zmhunder_man"))
	registerVal2:addElement(registerVal6)
	registerVal2.manLight = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 361.600000, 649.210000)
	registerVal7:setTopBottom(true, false, -53.000000, 204.740000)
	registerVal7:setRGB(0.560000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.750000)
	registerVal7:setZRot(-84.000000)
	registerVal7:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.GlowOrangeOver = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_8EF_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_AAF_(arg0, arg1)
			local function __FUNC_C27_(arg0, arg1)
				local function __FUNC_D9F_(arg0, arg1)
					local function __FUNC_F17_(arg0, arg1)
						local function __FUNC_108F_(arg0, arg1)
							local function __FUNC_1207_(arg0, arg1)
								local function __FUNC_137F_(arg0, arg1)
									local function __FUNC_14F7_(arg0, arg1)
										local function __FUNC_166F_(arg0, arg1)
											local function __FUNC_17E7_(arg0, arg1)
												local function __FUNC_193C_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_193C_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_193C_)
											end

											if arg1.interrupted then
												__FUNC_17E7_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17E7_)
										end

										if arg1.interrupted then
											__FUNC_166F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.160000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_166F_)
									end

									if arg1.interrupted then
										__FUNC_14F7_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 440.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14F7_)
								end

								if arg1.interrupted then
									__FUNC_137F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_137F_)
							end

							if arg1.interrupted then
								__FUNC_1207_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1490.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1207_)
						end

						if arg1.interrupted then
							__FUNC_108F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_108F_)
					end

					if arg1.interrupted then
						__FUNC_F17_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F17_)
				end

				if arg1.interrupted then
					__FUNC_D9F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D9F_)
			end

			if arg1.interrupted then
				__FUNC_C27_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C27_)
		end

		registerVal4:completeAnimation()
		registerVal2.bgLight:setAlpha(1.000000)
		__FUNC_AAF_(registerVal4, {})
		local function __FUNC_1AF1_(arg0, arg1)
			local function __FUNC_1C6B_(arg0, arg1)
				local function __FUNC_1DE3_(arg0, arg1)
					local function __FUNC_1F5B_(arg0, arg1)
						local function __FUNC_20D3_(arg0, arg1)
							local function __FUNC_224B_(arg0, arg1)
								local function __FUNC_23C3_(arg0, arg1)
									local function __FUNC_253B_(arg0, arg1)
										local function __FUNC_26B3_(arg0, arg1)
											local function __FUNC_282B_(arg0, arg1)
												local function __FUNC_2980_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_2980_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2980_)
											end

											if arg1.interrupted then
												__FUNC_282B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_282B_)
										end

										if arg1.interrupted then
											__FUNC_26B3_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.270000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26B3_)
									end

									if arg1.interrupted then
										__FUNC_253B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 440.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_253B_)
								end

								if arg1.interrupted then
									__FUNC_23C3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23C3_)
							end

							if arg1.interrupted then
								__FUNC_224B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1490.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_224B_)
						end

						if arg1.interrupted then
							__FUNC_20D3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20D3_)
					end

					if arg1.interrupted then
						__FUNC_1F5B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F5B_)
				end

				if arg1.interrupted then
					__FUNC_1DE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DE3_)
			end

			if arg1.interrupted then
				__FUNC_1C6B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C6B_)
		end

		registerVal6:completeAnimation()
		registerVal2.manLight:setAlpha(1.000000)
		__FUNC_1AF1_(registerVal6, {})
		local function __FUNC_2B35_(arg0, arg1)
			local function __FUNC_2CAF_(arg0, arg1)
				local function __FUNC_2E27_(arg0, arg1)
					local function __FUNC_2F9F_(arg0, arg1)
						local function __FUNC_3117_(arg0, arg1)
							local function __FUNC_328F_(arg0, arg1)
								local function __FUNC_3407_(arg0, arg1)
									local function __FUNC_357F_(arg0, arg1)
										local function __FUNC_36F7_(arg0, arg1)
											local function __FUNC_386F_(arg0, arg1)
												local function __FUNC_39C4_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(0.750000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_39C4_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39C4_)
											end

											if arg1.interrupted then
												__FUNC_386F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_386F_)
										end

										if arg1.interrupted then
											__FUNC_36F7_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.370000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36F7_)
									end

									if arg1.interrupted then
										__FUNC_357F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 440.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_357F_)
								end

								if arg1.interrupted then
									__FUNC_3407_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.750000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3407_)
							end

							if arg1.interrupted then
								__FUNC_328F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1490.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_328F_)
						end

						if arg1.interrupted then
							__FUNC_3117_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.750000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3117_)
					end

					if arg1.interrupted then
						__FUNC_2F9F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F9F_)
				end

				if arg1.interrupted then
					__FUNC_2E27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E27_)
			end

			if arg1.interrupted then
				__FUNC_2CAF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CAF_)
		end

		registerVal7:completeAnimation()
		registerVal2.GlowOrangeOver:setAlpha(0.750000)
		__FUNC_2B35_(registerVal7, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_8EF_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


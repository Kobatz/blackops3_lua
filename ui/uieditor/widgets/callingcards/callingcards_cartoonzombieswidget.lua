-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_CartoonZombies_Firefly")
require("ui.uieditor.widgets.CallingCards.CallingCards_CartoonZombies_Sparks")
require("ui.uieditor.widgets.CallingCards.CallingCards_GoldFrame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_CartoonZombiesWidget = registerVal1
function CoD.CallingCards_CartoonZombiesWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_CartoonZombiesWidget)
	registerVal2.id = "CallingCards_CartoonZombiesWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_cartoonzombies_base"))
	registerVal2:addElement(registerVal3)
	registerVal2.base = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_cartoonzombies_faceglow"))
	registerVal2:addElement(registerVal4)
	registerVal2.faceglow = registerVal4
	local registerVal5 = CoD.CallingCards_CartoonZombies_Firefly.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 386.000000, 504.850000)
	registerVal5:setTopBottom(true, false, 25.000000, 145.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.CallingCardsCartoonZombiesFirefly = registerVal5
	local registerVal6 = CoD.CallingCards_CartoonZombies_Firefly.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 83.000000, 201.850000)
	registerVal6:setTopBottom(true, false, 18.000000, 138.000000)
	registerVal6:setYRot(180.000000)
	registerVal6:setScale(0.500000)
	registerVal2:addElement(registerVal6)
	registerVal2.CallingCardsCartoonZombiesFirefly0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 253.000000, 301.000000)
	registerVal7:setTopBottom(true, false, 78.000000, 126.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_cartoonzombies_fireflyblur"))
	registerVal2:addElement(registerVal7)
	registerVal2.flyblur = registerVal7
	local registerVal8 = CoD.CallingCards_CartoonZombies_Sparks.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 384.000000, 480.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 96.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.CallingCardsCartoonZombiesSparks = registerVal8
	local registerVal9 = CoD.CallingCards_CartoonZombies_Sparks.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 105.850000, 201.850000)
	registerVal9:setTopBottom(true, false, -52.000000, 44.000000)
	registerVal9:setYRot(180.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.CallingCardsCartoonZombiesSparks0 = registerVal9
	local registerVal10 = CoD.CallingCards_GoldFrame.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.CallingCardsGoldFrame = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_C5A_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_1074_(arg0, arg1)
			local function __FUNC_11CC_(arg0, arg1)
				local function __FUNC_1347_(arg0, arg1)
					local function __FUNC_14BF_(arg0, arg1)
						local function __FUNC_1637_(arg0, arg1)
							local function __FUNC_17AF_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_17AF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17AF_)
						end

						if arg1.interrupted then
							__FUNC_1637_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 900.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1637_)
					end

					if arg1.interrupted then
						__FUNC_14BF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.800000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14BF_)
				end

				if arg1.interrupted then
					__FUNC_1347_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1347_)
			end

			if arg1.interrupted then
				__FUNC_11CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2809.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11CC_)
		end

		registerVal4:completeAnimation()
		registerVal2.faceglow:setAlpha(0.000000)
		__FUNC_1074_(registerVal4, {})
		local function __FUNC_1961_(arg0, arg1)
			local function __FUNC_1AF0_(arg0, arg1)
				local function __FUNC_1C80_(arg0, arg1)
					local function __FUNC_1E10_(arg0, arg1)
						local function __FUNC_1FA0_(arg0, arg1)
							local function __FUNC_2130_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 386.000000, 504.850000)
								arg0:setTopBottom(true, false, 34.000000, 154.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2130_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1339.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 12.000000, 132.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2130_)
						end

						if arg1.interrupted then
							__FUNC_1FA0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 680.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 39.000000, 159.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FA0_)
					end

					if arg1.interrupted then
						__FUNC_1E10_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1069.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 34.000000, 154.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E10_)
				end

				if arg1.interrupted then
					__FUNC_1C80_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 14.220000, 134.220000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C80_)
			end

			if arg1.interrupted then
				__FUNC_1AF0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 12.000000, 132.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AF0_)
		end

		registerVal5:completeAnimation()
		registerVal2.CallingCardsCartoonZombiesFirefly:setLeftRight(true, false, 386.000000, 504.850000)
		registerVal2.CallingCardsCartoonZombiesFirefly:setTopBottom(true, false, 34.000000, 154.000000)
		__FUNC_1961_(registerVal5, {})
		local function __FUNC_2332_(arg0, arg1)
			local function __FUNC_24F8_(arg0, arg1)
				local function __FUNC_26C0_(arg0, arg1)
					local function __FUNC_2888_(arg0, arg1)
						local function __FUNC_2A50_(arg0, arg1)
							local function __FUNC_2BE0_(arg0, arg1)
								local function __FUNC_2DCB_(arg0, arg1)
									local function __FUNC_2F90_(arg0, arg1)
										local function __FUNC_3158_(arg0, arg1)
											local function __FUNC_3320_(arg0, arg1)
												local function __FUNC_350B_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 770.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setLeftRight(true, false, 83.000000, 201.850000)
													arg0:setTopBottom(true, false, 18.000000, 138.000000)
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_350B_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
												arg0:setLeftRight(true, false, 219.000000, 337.850000)
												arg0:setTopBottom(true, false, 47.000000, 167.000000)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_350B_)
											end

											if arg1.interrupted then
												__FUNC_3320_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 230.100000, 348.950000)
											arg0:setTopBottom(true, false, 29.900000, 149.900000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3320_)
										end

										if arg1.interrupted then
											__FUNC_3158_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 256.000000, 374.850000)
										arg0:setTopBottom(true, false, -10.000000, 110.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3158_)
									end

									if arg1.interrupted then
										__FUNC_2F90_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 359.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 264.000000, 382.850000)
									arg0:setTopBottom(true, false, 6.000000, 126.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F90_)
								end

								if arg1.interrupted then
									__FUNC_2DCB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 233.890000, 352.740000)
								arg0:setTopBottom(true, false, 30.870000, 150.870000)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DCB_)
							end

							if arg1.interrupted then
								__FUNC_2BE0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 218.000000, 336.850000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BE0_)
						end

						if arg1.interrupted then
							__FUNC_2A50_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 529.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 180.580000, 299.430000)
						arg0:setTopBottom(true, false, 44.000000, 164.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A50_)
					end

					if arg1.interrupted then
						__FUNC_2888_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 919.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 153.850000, 272.700000)
					arg0:setTopBottom(true, false, 18.000000, 138.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2888_)
				end

				if arg1.interrupted then
					__FUNC_26C0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 570.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 121.150000, 240.000000)
				arg0:setTopBottom(true, false, 42.000000, 162.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26C0_)
			end

			if arg1.interrupted then
				__FUNC_24F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 113.000000, 231.850000)
			arg0:setTopBottom(true, false, -16.000000, 104.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24F8_)
		end

		registerVal6:completeAnimation()
		registerVal2.CallingCardsCartoonZombiesFirefly0:setLeftRight(true, false, 83.000000, 201.850000)
		registerVal2.CallingCardsCartoonZombiesFirefly0:setTopBottom(true, false, 18.000000, 138.000000)
		registerVal2.CallingCardsCartoonZombiesFirefly0:setAlpha(1.000000)
		__FUNC_2332_(registerVal6, {})
		local function __FUNC_372D_(arg0, arg1)
			local function __FUNC_3917_(arg0, arg1)
				local function __FUNC_3ADC_(arg0, arg1)
					local function __FUNC_3CA4_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 257.000000, 305.000000)
						arg0:setTopBottom(true, false, 78.000000, 126.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3CA4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 268.100000, 316.100000)
					arg0:setTopBottom(true, false, 61.800000, 109.800000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CA4_)
				end

				if arg1.interrupted then
					__FUNC_3ADC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 294.000000, 342.000000)
				arg0:setTopBottom(true, false, 24.000000, 72.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ADC_)
			end

			if arg1.interrupted then
				__FUNC_3917_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 599.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 303.000000, 351.000000)
			arg0:setTopBottom(true, false, 38.910000, 86.910000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3917_)
		end

		registerVal7:beginAnimation("keyframe", 2990.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setLeftRight(true, false, 253.000000, 301.000000)
		registerVal7:setTopBottom(true, false, 78.000000, 126.000000)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_372D_)
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal12.DefaultClip = __FUNC_C5A_
	registerVal11.DefaultState = registerVal12
	registerVal2.clipsPerState = registerVal11
	local function __FUNC_3EC9_(arg0)
		arg0.CallingCardsCartoonZombiesFirefly:close()
		arg0.CallingCardsCartoonZombiesFirefly0:close()
		arg0.CallingCardsCartoonZombiesSparks:close()
		arg0.CallingCardsCartoonZombiesSparks0:close()
		arg0.CallingCardsGoldFrame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3EC9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


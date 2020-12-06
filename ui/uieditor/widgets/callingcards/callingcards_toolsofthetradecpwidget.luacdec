-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_ToolsOfTheTradeCPWidget = registerVal1
function CoD.CallingCards_ToolsOfTheTradeCPWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_ToolsOfTheTradeCPWidget)
	registerVal2.id = "CallingCards_ToolsOfTheTradeCPWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_toolsofthetrade_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 408.000000)
	registerVal4:setTopBottom(true, false, 82.000000, 118.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_toolsofthetrade_backwave"))
	registerVal2:addElement(registerVal4)
	registerVal2.backwave = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 105.000000, 169.000000)
	registerVal5:setTopBottom(true, false, 59.000000, 123.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_toolsofthetrade_smallship"))
	registerVal2:addElement(registerVal5)
	registerVal2.smallShip = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 1.000000, 121.000000)
	registerVal6:setTopBottom(true, false, 36.000000, 120.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_toolsofthetrade_medship"))
	registerVal2:addElement(registerVal6)
	registerVal2.midShip = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal7:setTopBottom(true, false, 84.000000, 120.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_toolsofthetrade_midwave"))
	registerVal2:addElement(registerVal7)
	registerVal2.midwave = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 204.000000, 480.000000)
	registerVal8:setTopBottom(true, false, -8.000000, 112.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_toolsofthetrade_largeship"))
	registerVal2:addElement(registerVal8)
	registerVal2.LargeShip = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 192.000000, 480.000000)
	registerVal9:setTopBottom(true, false, 84.000000, 120.000000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcard_toolsofthetrade_frontwave"))
	registerVal2:addElement(registerVal9)
	registerVal2.frontwave = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_9FC_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_F1E_(arg0, arg1)
			local function __FUNC_10E4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 3560.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 0.000000, 408.000000)
				arg0:setTopBottom(true, false, 82.000000, 118.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_10E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 3339.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -78.000000, 330.000000)
			arg0:setTopBottom(true, false, 84.000000, 120.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E4_)
		end

		registerVal4:completeAnimation()
		registerVal2.backwave:setLeftRight(true, false, 0.000000, 408.000000)
		registerVal2.backwave:setTopBottom(true, false, 82.000000, 118.000000)
		registerVal2.backwave:setAlpha(1.000000)
		__FUNC_F1E_(registerVal4, {})
		local function __FUNC_1309_(arg0, arg1)
			local function __FUNC_14BA_(arg0, arg1)
				local function __FUNC_166A_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 2190.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 105.000000, 169.000000)
					arg0:setTopBottom(true, false, 59.000000, 123.000000)
					arg0:setAlpha(1.000000)
					arg0:setZRot(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_166A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1370.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 54.690000, 118.690000)
				arg0:setZRot(-5.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_166A_)
			end

			if arg1.interrupted then
				__FUNC_14BA_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 3339.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 52.000000, 116.000000)
			arg0:setZRot(10.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14BA_)
		end

		registerVal5:completeAnimation()
		registerVal2.smallShip:setLeftRight(true, false, 105.000000, 169.000000)
		registerVal2.smallShip:setTopBottom(true, false, 59.000000, 123.000000)
		registerVal2.smallShip:setAlpha(1.000000)
		registerVal2.smallShip:setZRot(0.000000)
		__FUNC_1309_(registerVal5, {})
		local function __FUNC_18AF_(arg0, arg1)
			local function __FUNC_1A96_(arg0, arg1)
				local function __FUNC_1C7E_(arg0, arg1)
					local function __FUNC_1E66_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1820.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 1.000000, 121.000000)
						arg0:setTopBottom(true, false, 36.000000, 120.000000)
						arg0:setZRot(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1E66_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1730.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 3.000000, 123.000000)
					arg0:setTopBottom(true, false, 36.000000, 120.000000)
					arg0:setZRot(9.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E66_)
				end

				if arg1.interrupted then
					__FUNC_1C7E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1679.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 1.480000, 121.480000)
				arg0:setTopBottom(true, false, 35.500000, 119.500000)
				arg0:setZRot(-4.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C7E_)
			end

			if arg1.interrupted then
				__FUNC_1A96_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1669.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 0.000000, 120.000000)
			arg0:setTopBottom(true, false, 35.020000, 119.020000)
			arg0:setZRot(9.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A96_)
		end

		registerVal6:completeAnimation()
		registerVal2.midShip:setLeftRight(true, false, 1.000000, 121.000000)
		registerVal2.midShip:setTopBottom(true, false, 36.000000, 120.000000)
		registerVal2.midShip:setZRot(0.000000)
		__FUNC_18AF_(registerVal6, {})
		local function __FUNC_2088_(arg0, arg1)
			local function __FUNC_2218_(arg0, arg1)
				local function __FUNC_23A8_(arg0, arg1)
					local function __FUNC_2538_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 1820.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 0.000000, 480.000000)
						arg0:setTopBottom(true, false, 84.000000, 120.000000)
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2538_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1730.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -106.000000, 374.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2538_)
				end

				if arg1.interrupted then
					__FUNC_23A8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1679.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 0.000000, 480.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23A8_)
			end

			if arg1.interrupted then
				__FUNC_2218_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1669.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -106.000000, 374.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2218_)
		end

		registerVal7:completeAnimation()
		registerVal2.midwave:setLeftRight(true, false, 0.000000, 480.000000)
		registerVal2.midwave:setTopBottom(true, false, 84.000000, 120.000000)
		registerVal2.midwave:setAlpha(1.000000)
		__FUNC_2088_(registerVal7, {})
		local function __FUNC_275D_(arg0, arg1)
			local function __FUNC_2946_(arg0, arg1)
				local function __FUNC_2B2E_(arg0, arg1)
					local function __FUNC_2D16_(arg0, arg1)
						local function __FUNC_2EFE_(arg0, arg1)
							local function __FUNC_30E6_(arg0, arg1)
								local function __FUNC_32CE_(arg0, arg1)
									local function __FUNC_34B6_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 910.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, false, 204.000000, 480.000000)
										arg0:setTopBottom(true, false, -8.000000, 112.000000)
										arg0:setZRot(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_34B6_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 196.780000, 472.780000)
									arg0:setTopBottom(true, false, -2.750000, 117.250000)
									arg0:setZRot(2.340000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34B6_)
								end

								if arg1.interrupted then
									__FUNC_32CE_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 860.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 181.780000, 457.780000)
								arg0:setTopBottom(true, false, -4.460000, 115.540000)
								arg0:setZRot(1.660000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32CE_)
							end

							if arg1.interrupted then
								__FUNC_30E6_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 195.780000, 471.780000)
							arg0:setTopBottom(true, false, -2.180000, 117.820000)
							arg0:setZRot(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30E6_)
						end

						if arg1.interrupted then
							__FUNC_2EFE_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 869.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 192.780000, 468.780000)
						arg0:setTopBottom(true, false, -7.930000, 112.070000)
						arg0:setZRot(-4.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EFE_)
					end

					if arg1.interrupted then
						__FUNC_2D16_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 820.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 204.000000, 480.000000)
					arg0:setTopBottom(true, false, -6.500000, 113.500000)
					arg0:setZRot(2.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D16_)
				end

				if arg1.interrupted then
					__FUNC_2B2E_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 829.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 192.000000, 468.000000)
				arg0:setTopBottom(true, false, -4.590000, 115.410000)
				arg0:setZRot(6.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B2E_)
			end

			if arg1.interrupted then
				__FUNC_2946_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 195.590000, 471.590000)
			arg0:setTopBottom(true, false, -2.920000, 117.080000)
			arg0:setZRot(3.020000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2946_)
		end

		registerVal8:completeAnimation()
		registerVal2.LargeShip:setLeftRight(true, false, 204.000000, 480.000000)
		registerVal2.LargeShip:setTopBottom(true, false, -8.000000, 112.000000)
		registerVal2.LargeShip:setZRot(0.000000)
		__FUNC_275D_(registerVal8, {})
		local function __FUNC_36D8_(arg0, arg1)
			local function __FUNC_3868_(arg0, arg1)
				local function __FUNC_39F8_(arg0, arg1)
					local function __FUNC_3B88_(arg0, arg1)
						local function __FUNC_3D18_(arg0, arg1)
							local function __FUNC_3EA8_(arg0, arg1)
								local function __FUNC_4038_(arg0, arg1)
									local function __FUNC_41C8_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 910.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, false, 192.000000, 480.000000)
										arg0:setTopBottom(true, false, 84.000000, 120.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_41C8_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 889.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 229.000000, 517.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41C8_)
								end

								if arg1.interrupted then
									__FUNC_4038_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 860.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 192.000000, 480.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4038_)
							end

							if arg1.interrupted then
								__FUNC_3EA8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 879.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 229.000000, 517.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EA8_)
						end

						if arg1.interrupted then
							__FUNC_3D18_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 869.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 192.000000, 480.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D18_)
					end

					if arg1.interrupted then
						__FUNC_3B88_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 820.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 229.000000, 517.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B88_)
				end

				if arg1.interrupted then
					__FUNC_39F8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 829.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 192.000000, 480.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39F8_)
			end

			if arg1.interrupted then
				__FUNC_3868_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 229.000000, 517.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3868_)
		end

		registerVal9:completeAnimation()
		registerVal2.frontwave:setLeftRight(true, false, 192.000000, 480.000000)
		registerVal2.frontwave:setTopBottom(true, false, 84.000000, 120.000000)
		__FUNC_36D8_(registerVal9, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal11.DefaultClip = __FUNC_9FC_
	registerVal10.DefaultState = registerVal11
	registerVal2.clipsPerState = registerVal10
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


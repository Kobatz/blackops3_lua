-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Effects.fxGlitch1_9")
require("ui.uieditor.widgets.Effects.fxGlitch1_8")
require("ui.uieditor.widgets.Effects.fxGlitch1_7")
require("ui.uieditor.widgets.Effects.fxGlitch1_6")
require("ui.uieditor.widgets.Effects.fxGlitch1_5")
require("ui.uieditor.widgets.Effects.fxGlitch1_4")
require("ui.uieditor.widgets.Effects.fxGlitch1_3")
require("ui.uieditor.widgets.Effects.fxGlitch1_2")
require("ui.uieditor.widgets.Effects.fxGlitch1_1")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.fxGlitch1_Main = registerVal1
function CoD.fxGlitch1_Main.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.fxGlitch1_Main)
	registerVal2.id = "fxGlitch1_Main"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 472.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 256.000000)
	local registerVal3 = CoD.fxGlitch1_9.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 118.000000, -118.000000)
	registerVal3:setTopBottom(true, true, 82.000000, -150.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.fxGlitch1900 = registerVal3
	local registerVal4 = CoD.fxGlitch1_8.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 95.000000, -127.000000)
	registerVal4:setAlpha(0.800000)
	registerVal2:addElement(registerVal4)
	registerVal2.fxGlitch1800 = registerVal4
	local registerVal5 = CoD.fxGlitch1_7.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 113.000000, -109.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.fxGlitch1700 = registerVal5
	local registerVal6 = CoD.fxGlitch1_6.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 54.500000, -73.000000)
	registerVal6:setAlpha(0.280000)
	registerVal2:addElement(registerVal6)
	registerVal2.fxGlitch1600 = registerVal6
	local registerVal7 = CoD.fxGlitch1_5.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 139.000000, -157.000000)
	registerVal7:setTopBottom(true, true, 54.500000, -82.500000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.fxGlitch1500 = registerVal7
	local registerVal8 = CoD.fxGlitch1_4.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 54.500000, -49.500000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.fxGlitch1400 = registerVal8
	local registerVal9 = CoD.fxGlitch1_3.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 4.000000, -4.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.fxGlitch1300 = registerVal9
	local registerVal10 = CoD.fxGlitch1_2.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, 31.000000, -9.000000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.fxGlitch1200 = registerVal10
	local registerVal11 = CoD.fxGlitch1_1.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, true, 46.000000, -34.000000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.fxGlitch1100 = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_E9D_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.fxGlitch1900:setLeftRight(true, true, 118.000000, -118.000000)
		registerVal2.fxGlitch1900:setTopBottom(true, true, 82.000000, -150.000000)
		registerVal2.fxGlitch1900:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.fxGlitch1800:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1800:setTopBottom(true, true, 100.000000, -100.000000)
		registerVal2.fxGlitch1800:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.fxGlitch1700:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1700:setTopBottom(true, true, 82.000000, -110.000000)
		registerVal2.fxGlitch1700:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.fxGlitch1600:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1600:setTopBottom(true, true, 54.500000, -73.000000)
		registerVal2.fxGlitch1600:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.fxGlitch1500:setLeftRight(true, true, 139.000000, -157.000000)
		registerVal2.fxGlitch1500:setTopBottom(true, true, 54.500000, -82.500000)
		registerVal2.fxGlitch1500:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.fxGlitch1400:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1400:setTopBottom(true, true, 54.500000, -49.500000)
		registerVal2.fxGlitch1400:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fxGlitch1300:setLeftRight(true, true, 4.000000, -4.000000)
		registerVal2.fxGlitch1300:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1300:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.fxGlitch1200:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1200:setTopBottom(true, true, 31.000000, -9.000000)
		registerVal2.fxGlitch1200:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.fxGlitch1100:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1100:setTopBottom(true, true, 46.000000, -34.000000)
		registerVal2.fxGlitch1100:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_E9D_
	local function __FUNC_15CB_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_1C48_(arg0, arg1)
			local function __FUNC_1DA0_(arg0, arg1)
				local function __FUNC_1F1B_(arg0, arg1)
					local function __FUNC_2070_(arg0, arg1)
						local function __FUNC_2223_(arg0, arg1)
							local function __FUNC_23B0_(arg0, arg1)
								local function __FUNC_2563_(arg0, arg1)
									local function __FUNC_26B8_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, true, 118.000000, -118.000000)
										arg0:setTopBottom(true, true, 152.000000, -80.000000)
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_26B8_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26B8_)
								end

								if arg1.interrupted then
									__FUNC_2563_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, true, 152.000000, -80.000000)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2563_)
							end

							if arg1.interrupted then
								__FUNC_23B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, true, 140.330000, -91.670000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23B0_)
						end

						if arg1.interrupted then
							__FUNC_2223_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, true, 93.670000, -138.330000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2223_)
					end

					if arg1.interrupted then
						__FUNC_2070_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2070_)
				end

				if arg1.interrupted then
					__FUNC_1F1B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F1B_)
			end

			if arg1.interrupted then
				__FUNC_1DA0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DA0_)
		end

		registerVal3:completeAnimation()
		registerVal2.fxGlitch1900:setLeftRight(true, true, 118.000000, -118.000000)
		registerVal2.fxGlitch1900:setTopBottom(true, true, 82.000000, -150.000000)
		registerVal2.fxGlitch1900:setAlpha(0.000000)
		__FUNC_1C48_(registerVal3, {})
		local function __FUNC_28DD_(arg0, arg1)
			local function __FUNC_2A34_(arg0, arg1)
				local function __FUNC_2BAF_(arg0, arg1)
					local function __FUNC_2D04_(arg0, arg1)
						local function __FUNC_2E7F_(arg0, arg1)
							local function __FUNC_2FD4_(arg0, arg1)
								local function __FUNC_314F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, true, 0.000000, 0.000000)
									arg0:setTopBottom(true, true, 100.000000, -122.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_314F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_314F_)
							end

							if arg1.interrupted then
								__FUNC_2FD4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FD4_)
						end

						if arg1.interrupted then
							__FUNC_2E7F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E7F_)
					end

					if arg1.interrupted then
						__FUNC_2D04_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D04_)
				end

				if arg1.interrupted then
					__FUNC_2BAF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BAF_)
			end

			if arg1.interrupted then
				__FUNC_2A34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A34_)
		end

		registerVal4:completeAnimation()
		registerVal2.fxGlitch1800:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1800:setTopBottom(true, true, 100.000000, -122.000000)
		registerVal2.fxGlitch1800:setAlpha(0.000000)
		__FUNC_28DD_(registerVal4, {})
		local function __FUNC_3367_(arg0, arg1)
			local function __FUNC_34BC_(arg0, arg1)
				local function __FUNC_3637_(arg0, arg1)
					local function __FUNC_37E7_(arg0, arg1)
						local function __FUNC_3997_(arg0, arg1)
							local function __FUNC_3B24_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, true, 0.000000, 0.000000)
								arg0:setTopBottom(true, true, 97.750000, -137.250000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3B24_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, true, 97.750000, -137.250000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B24_)
						end

						if arg1.interrupted then
							__FUNC_3997_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, true, 102.830000, -127.830000)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3997_)
					end

					if arg1.interrupted then
						__FUNC_37E7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, true, 107.920000, -118.420000)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37E7_)
				end

				if arg1.interrupted then
					__FUNC_3637_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.340000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3637_)
			end

			if arg1.interrupted then
				__FUNC_34BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34BC_)
		end

		registerVal5:completeAnimation()
		registerVal2.fxGlitch1700:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1700:setTopBottom(true, true, 113.000000, -109.000000)
		registerVal2.fxGlitch1700:setAlpha(0.000000)
		__FUNC_3367_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.fxGlitch1600:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1600:setTopBottom(true, true, 54.500000, -73.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.fxGlitch1500:setLeftRight(true, true, 139.000000, -157.000000)
		registerVal2.fxGlitch1500:setTopBottom(true, true, 54.500000, -82.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.fxGlitch1400:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1400:setTopBottom(true, true, 54.500000, -49.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fxGlitch1300:setLeftRight(true, true, 4.000000, -4.000000)
		registerVal2.fxGlitch1300:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.fxGlitch1200:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1200:setTopBottom(true, true, 31.000000, -9.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.fxGlitch1100:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1100:setTopBottom(true, true, 46.000000, -34.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.GlitchSmall1 = __FUNC_15CB_
	local function __FUNC_3D3F_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_43EC_(arg0, arg1)
			local function __FUNC_4544_(arg0, arg1)
				local function __FUNC_46BF_(arg0, arg1)
					local function __FUNC_4814_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 118.000000, -118.000000)
						arg0:setTopBottom(true, true, 82.000000, -150.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_4814_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4814_)
				end

				if arg1.interrupted then
					__FUNC_46BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46BF_)
			end

			if arg1.interrupted then
				__FUNC_4544_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4544_)
		end

		registerVal3:completeAnimation()
		registerVal2.fxGlitch1900:setLeftRight(true, true, 118.000000, -118.000000)
		registerVal2.fxGlitch1900:setTopBottom(true, true, 82.000000, -150.000000)
		registerVal2.fxGlitch1900:setAlpha(0.000000)
		__FUNC_43EC_(registerVal3, {})
		local function __FUNC_4A39_(arg0, arg1)
			local function __FUNC_4B90_(arg0, arg1)
				local function __FUNC_4D0B_(arg0, arg1)
					local function __FUNC_4E60_(arg0, arg1)
						local function __FUNC_5013_(arg0, arg1)
							local function __FUNC_51A0_(arg0, arg1)
								local function __FUNC_5353_(arg0, arg1)
									local function __FUNC_5503_(arg0, arg1)
										local function __FUNC_5690_(arg0, arg1)
											local function __FUNC_580B_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, true, 0.000000, 0.000000)
												arg0:setTopBottom(true, true, 97.000000, -125.000000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_580B_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.720000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_580B_)
										end

										if arg1.interrupted then
											__FUNC_5690_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setTopBottom(true, true, 97.000000, -125.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5690_)
									end

									if arg1.interrupted then
										__FUNC_5503_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setTopBottom(true, true, 113.670000, -108.330000)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5503_)
								end

								if arg1.interrupted then
									__FUNC_5353_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, true, 122.000000, -100.000000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5353_)
							end

							if arg1.interrupted then
								__FUNC_51A0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, true, 116.600000, -105.400000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51A0_)
						end

						if arg1.interrupted then
							__FUNC_5013_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, true, 100.400000, -121.600000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5013_)
					end

					if arg1.interrupted then
						__FUNC_4E60_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E60_)
				end

				if arg1.interrupted then
					__FUNC_4D0B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D0B_)
			end

			if arg1.interrupted then
				__FUNC_4B90_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B90_)
		end

		registerVal4:completeAnimation()
		registerVal2.fxGlitch1800:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1800:setTopBottom(true, true, 95.000000, -127.000000)
		registerVal2.fxGlitch1800:setAlpha(0.000000)
		__FUNC_4A39_(registerVal4, {})
		local function __FUNC_5A23_(arg0, arg1)
			local function __FUNC_5B78_(arg0, arg1)
				local function __FUNC_5CF3_(arg0, arg1)
					local function __FUNC_5E6B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 0.000000, 0.000000)
						arg0:setTopBottom(true, true, 113.000000, -109.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5E6B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.160000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E6B_)
				end

				if arg1.interrupted then
					__FUNC_5CF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.190000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CF3_)
			end

			if arg1.interrupted then
				__FUNC_5B78_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B78_)
		end

		registerVal5:completeAnimation()
		registerVal2.fxGlitch1700:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1700:setTopBottom(true, true, 113.000000, -109.000000)
		registerVal2.fxGlitch1700:setAlpha(0.000000)
		__FUNC_5A23_(registerVal5, {})
		local function __FUNC_6083_(arg0, arg1)
			local function __FUNC_61D8_(arg0, arg1)
				local function __FUNC_6353_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(true, true, 54.500000, -73.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_6353_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.280000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6353_)
			end

			if arg1.interrupted then
				__FUNC_61D8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61D8_)
		end

		registerVal6:completeAnimation()
		registerVal2.fxGlitch1600:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1600:setTopBottom(true, true, 54.500000, -73.000000)
		registerVal2.fxGlitch1600:setAlpha(0.000000)
		__FUNC_6083_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.fxGlitch1500:setLeftRight(true, true, 139.000000, -157.000000)
		registerVal2.fxGlitch1500:setTopBottom(true, true, 54.500000, -82.500000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_656B_(arg0, arg1)
			local function __FUNC_66C0_(arg0, arg1)
				local function __FUNC_683B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(true, true, 54.500000, -49.500000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_683B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.330000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_683B_)
			end

			if arg1.interrupted then
				__FUNC_66C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66C0_)
		end

		registerVal8:completeAnimation()
		registerVal2.fxGlitch1400:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1400:setTopBottom(true, true, 54.500000, -49.500000)
		registerVal2.fxGlitch1400:setAlpha(0.000000)
		__FUNC_656B_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fxGlitch1300:setLeftRight(true, true, 4.000000, -4.000000)
		registerVal2.fxGlitch1300:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.fxGlitch1200:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1200:setTopBottom(true, true, 31.000000, -9.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.fxGlitch1100:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1100:setTopBottom(true, true, 46.000000, -34.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.GlitchSmall2 = __FUNC_3D3F_
	local function __FUNC_6A53_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_70ED_(arg0, arg1)
			local function __FUNC_7267_(arg0, arg1)
				local function __FUNC_73BC_(arg0, arg1)
					local function __FUNC_756F_(arg0, arg1)
						local function __FUNC_76FC_(arg0, arg1)
							local function __FUNC_78AF_(arg0, arg1)
								local function __FUNC_7A04_(arg0, arg1)
									local function __FUNC_7B7F_(arg0, arg1)
										local function __FUNC_7CD4_(arg0, arg1)
											local function __FUNC_7E64_(arg0, arg1)
												local function __FUNC_7FDF_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setLeftRight(true, true, 118.000000, -118.000000)
													arg0:setTopBottom(true, true, 114.000000, -118.000000)
													arg0:setAlpha(0.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_7FDF_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.550000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7FDF_)
											end

											if arg1.interrupted then
												__FUNC_7E64_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setTopBottom(true, true, 114.000000, -118.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E64_)
										end

										if arg1.interrupted then
											__FUNC_7CD4_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CD4_)
									end

									if arg1.interrupted then
										__FUNC_7B7F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B7F_)
								end

								if arg1.interrupted then
									__FUNC_7A04_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A04_)
							end

							if arg1.interrupted then
								__FUNC_78AF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, true, 147.000000, -85.000000)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78AF_)
						end

						if arg1.interrupted then
							__FUNC_76FC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, true, 137.710000, -94.290000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_76FC_)
					end

					if arg1.interrupted then
						__FUNC_756F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, true, 91.290000, -140.710000)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_756F_)
				end

				if arg1.interrupted then
					__FUNC_73BC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_73BC_)
			end

			if arg1.interrupted then
				__FUNC_7267_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.690000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7267_)
		end

		registerVal3:completeAnimation()
		registerVal2.fxGlitch1900:setLeftRight(true, true, 118.000000, -118.000000)
		registerVal2.fxGlitch1900:setTopBottom(true, true, 82.000000, -150.000000)
		registerVal2.fxGlitch1900:setAlpha(0.000000)
		__FUNC_70ED_(registerVal3, {})
		local function __FUNC_81FC_(arg0, arg1)
			local function __FUNC_8354_(arg0, arg1)
				local function __FUNC_84CF_(arg0, arg1)
					local function __FUNC_8647_(arg0, arg1)
						local function __FUNC_87BF_(arg0, arg1)
							local function __FUNC_8914_(arg0, arg1)
								local function __FUNC_8AA4_(arg0, arg1)
									local function __FUNC_8C1F_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, true, 0.000000, 0.000000)
										arg0:setTopBottom(true, true, 84.750000, -137.250000)
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_8C1F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.550000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8C1F_)
								end

								if arg1.interrupted then
									__FUNC_8AA4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, true, 84.750000, -137.250000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8AA4_)
							end

							if arg1.interrupted then
								__FUNC_8914_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8914_)
						end

						if arg1.interrupted then
							__FUNC_87BF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87BF_)
					end

					if arg1.interrupted then
						__FUNC_8647_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.690000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8647_)
				end

				if arg1.interrupted then
					__FUNC_84CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.310000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_84CF_)
			end

			if arg1.interrupted then
				__FUNC_8354_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8354_)
		end

		registerVal4:completeAnimation()
		registerVal2.fxGlitch1800:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1800:setTopBottom(true, true, 97.000000, -125.000000)
		registerVal2.fxGlitch1800:setAlpha(0.000000)
		__FUNC_81FC_(registerVal4, {})
		local function __FUNC_8E37_(arg0, arg1)
			local function __FUNC_8F8C_(arg0, arg1)
				local function __FUNC_9107_(arg0, arg1)
					local function __FUNC_927F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 0.000000, 0.000000)
						arg0:setTopBottom(true, true, 105.000000, -117.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_927F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.510000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_927F_)
				end

				if arg1.interrupted then
					__FUNC_9107_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9107_)
			end

			if arg1.interrupted then
				__FUNC_8F8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F8C_)
		end

		registerVal5:completeAnimation()
		registerVal2.fxGlitch1700:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1700:setTopBottom(true, true, 105.000000, -117.000000)
		registerVal2.fxGlitch1700:setAlpha(0.000000)
		__FUNC_8E37_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.fxGlitch1600:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1600:setTopBottom(true, true, 54.500000, -73.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_9497_(arg0, arg1)
			local function __FUNC_95EC_(arg0, arg1)
				local function __FUNC_979F_(arg0, arg1)
					local function __FUNC_9987_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 128.000000, -123.000000)
						arg0:setTopBottom(true, true, 67.750000, -95.750000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_9987_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, true, 128.000000, -123.000000)
					arg0:setTopBottom(true, true, 67.750000, -95.750000)
					arg0:setAlpha(0.800000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9987_)
				end

				if arg1.interrupted then
					__FUNC_979F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, true, 69.040000, -94.460000)
				arg0:setAlpha(0.180000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_979F_)
			end

			if arg1.interrupted then
				__FUNC_95EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95EC_)
		end

		registerVal7:completeAnimation()
		registerVal2.fxGlitch1500:setLeftRight(true, true, 44.000000, -31.000000)
		registerVal2.fxGlitch1500:setTopBottom(true, true, 69.040000, -94.460000)
		registerVal2.fxGlitch1500:setAlpha(0.000000)
		__FUNC_9497_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.fxGlitch1400:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1400:setTopBottom(true, true, 54.500000, -49.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fxGlitch1300:setLeftRight(true, true, 4.000000, -4.000000)
		registerVal2.fxGlitch1300:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.fxGlitch1200:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1200:setTopBottom(true, true, 31.000000, -9.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.fxGlitch1100:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1100:setTopBottom(true, true, 46.000000, -34.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.GlitchSmall3 = __FUNC_6A53_
	local function __FUNC_9BA9_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_A275_(arg0, arg1)
			local function __FUNC_A3CC_(arg0, arg1)
				local function __FUNC_A547_(arg0, arg1)
					local function __FUNC_A69C_(arg0, arg1)
						local function __FUNC_A817_(arg0, arg1)
							local function __FUNC_A96C_(arg0, arg1)
								local function __FUNC_AAE7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, true, 118.000000, -118.000000)
									arg0:setTopBottom(true, true, 82.000000, -150.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_AAE7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AAE7_)
							end

							if arg1.interrupted then
								__FUNC_A96C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A96C_)
						end

						if arg1.interrupted then
							__FUNC_A817_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A817_)
					end

					if arg1.interrupted then
						__FUNC_A69C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A69C_)
				end

				if arg1.interrupted then
					__FUNC_A547_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A547_)
			end

			if arg1.interrupted then
				__FUNC_A3CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3CC_)
		end

		registerVal3:completeAnimation()
		registerVal2.fxGlitch1900:setLeftRight(true, true, 118.000000, -118.000000)
		registerVal2.fxGlitch1900:setTopBottom(true, true, 82.000000, -150.000000)
		registerVal2.fxGlitch1900:setAlpha(0.000000)
		__FUNC_A275_(registerVal3, {})
		local function __FUNC_AD09_(arg0, arg1)
			local function __FUNC_AE60_(arg0, arg1)
				local function __FUNC_AFDB_(arg0, arg1)
					local function __FUNC_B130_(arg0, arg1)
						local function __FUNC_B2AB_(arg0, arg1)
							local function __FUNC_B400_(arg0, arg1)
								local function __FUNC_B57B_(arg0, arg1)
									local function __FUNC_B6D0_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, true, 0.000000, 0.000000)
										arg0:setTopBottom(true, true, 97.000000, -125.000000)
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_B6D0_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6D0_)
								end

								if arg1.interrupted then
									__FUNC_B57B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B57B_)
							end

							if arg1.interrupted then
								__FUNC_B400_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B400_)
						end

						if arg1.interrupted then
							__FUNC_B2AB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2AB_)
					end

					if arg1.interrupted then
						__FUNC_B130_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B130_)
				end

				if arg1.interrupted then
					__FUNC_AFDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFDB_)
			end

			if arg1.interrupted then
				__FUNC_AE60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE60_)
		end

		registerVal4:completeAnimation()
		registerVal2.fxGlitch1800:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1800:setTopBottom(true, true, 97.000000, -125.000000)
		registerVal2.fxGlitch1800:setAlpha(0.000000)
		__FUNC_AD09_(registerVal4, {})
		local function __FUNC_B8EB_(arg0, arg1)
			local function __FUNC_BA40_(arg0, arg1)
				local function __FUNC_BBBB_(arg0, arg1)
					local function __FUNC_BD10_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 0.000000, 0.000000)
						arg0:setTopBottom(true, true, 105.000000, -117.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_BD10_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BD10_)
				end

				if arg1.interrupted then
					__FUNC_BBBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BBBB_)
			end

			if arg1.interrupted then
				__FUNC_BA40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA40_)
		end

		registerVal5:completeAnimation()
		registerVal2.fxGlitch1700:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1700:setTopBottom(true, true, 105.000000, -117.000000)
		registerVal2.fxGlitch1700:setAlpha(0.000000)
		__FUNC_B8EB_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.fxGlitch1600:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1600:setTopBottom(true, true, 54.500000, -73.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.fxGlitch1500:setLeftRight(true, true, 44.000000, -31.000000)
		registerVal2.fxGlitch1500:setTopBottom(true, true, 69.040000, -94.460000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_BF2B_(arg0, arg1)
			local function __FUNC_C080_(arg0, arg1)
				local function __FUNC_C1FB_(arg0, arg1)
					local function __FUNC_C373_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 0.000000, 0.000000)
						arg0:setTopBottom(true, true, 54.500000, -49.500000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C373_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C373_)
				end

				if arg1.interrupted then
					__FUNC_C1FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C1FB_)
			end

			if arg1.interrupted then
				__FUNC_C080_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C080_)
		end

		registerVal8:completeAnimation()
		registerVal2.fxGlitch1400:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1400:setTopBottom(true, true, 54.500000, -49.500000)
		registerVal2.fxGlitch1400:setAlpha(0.000000)
		__FUNC_BF2B_(registerVal8, {})
		local function __FUNC_C58B_(arg0, arg1)
			local function __FUNC_C6E0_(arg0, arg1)
				local function __FUNC_C85B_(arg0, arg1)
					local function __FUNC_C9D3_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 4.000000, -4.000000)
						arg0:setTopBottom(true, true, 0.000000, 0.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_C9D3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C9D3_)
				end

				if arg1.interrupted then
					__FUNC_C85B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.250000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C85B_)
			end

			if arg1.interrupted then
				__FUNC_C6E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C6E0_)
		end

		registerVal9:completeAnimation()
		registerVal2.fxGlitch1300:setLeftRight(true, true, 4.000000, -4.000000)
		registerVal2.fxGlitch1300:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1300:setAlpha(0.000000)
		__FUNC_C58B_(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.fxGlitch1200:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1200:setTopBottom(true, true, 31.000000, -9.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_CBEB_(arg0, arg1)
			local function __FUNC_CD40_(arg0, arg1)
				local function __FUNC_CEBB_(arg0, arg1)
					local function __FUNC_D010_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 0.000000, 0.000000)
						arg0:setTopBottom(true, true, 46.000000, -34.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_D010_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D010_)
				end

				if arg1.interrupted then
					__FUNC_CEBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CEBB_)
			end

			if arg1.interrupted then
				__FUNC_CD40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD40_)
		end

		registerVal11:completeAnimation()
		registerVal2.fxGlitch1100:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1100:setTopBottom(true, true, 46.000000, -34.000000)
		registerVal2.fxGlitch1100:setAlpha(0.000000)
		__FUNC_CBEB_(registerVal11, {})
	end

	registerVal13.GlitchLarge1 = __FUNC_9BA9_
	local function __FUNC_D22B_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_D8F5_(arg0, arg1)
			local function __FUNC_DA84_(arg0, arg1)
				local function __FUNC_DC37_(arg0, arg1)
					local function __FUNC_DDC4_(arg0, arg1)
						local function __FUNC_DF77_(arg0, arg1)
							local function __FUNC_E127_(arg0, arg1)
								local function __FUNC_E27C_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, true, 118.000000, -118.000000)
									arg0:setTopBottom(true, true, 79.540000, -152.460000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_E27C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E27C_)
							end

							if arg1.interrupted then
								__FUNC_E127_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, true, 79.540000, -152.460000)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E127_)
						end

						if arg1.interrupted then
							__FUNC_DF77_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, true, 114.540000, -117.460000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DF77_)
					end

					if arg1.interrupted then
						__FUNC_DDC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, true, 149.540000, -82.460000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DDC4_)
				end

				if arg1.interrupted then
					__FUNC_DC37_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, true, 147.550000, -84.450000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DC37_)
			end

			if arg1.interrupted then
				__FUNC_DA84_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, true, 145.570000, -86.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA84_)
		end

		registerVal3:completeAnimation()
		registerVal2.fxGlitch1900:setLeftRight(true, true, 118.000000, -118.000000)
		registerVal2.fxGlitch1900:setTopBottom(true, true, 82.000000, -150.000000)
		registerVal2.fxGlitch1900:setAlpha(0.000000)
		__FUNC_D8F5_(registerVal3, {})
		local function __FUNC_E4A1_(arg0, arg1)
			local function __FUNC_E5F8_(arg0, arg1)
				local function __FUNC_E773_(arg0, arg1)
					local function __FUNC_E8C8_(arg0, arg1)
						local function __FUNC_EA7B_(arg0, arg1)
							local function __FUNC_EC08_(arg0, arg1)
								local function __FUNC_EDBB_(arg0, arg1)
									local function __FUNC_EF48_(arg0, arg1)
										local function __FUNC_F0FB_(arg0, arg1)
											local function __FUNC_F288_(arg0, arg1)
												local function __FUNC_F43B_(arg0, arg1)
													local function __FUNC_F590_(arg0, arg1)
														if not arg1.interrupted then
															arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
														end
														arg0:setLeftRight(true, true, 0.000000, 0.000000)
														arg0:setTopBottom(true, true, 139.000000, -83.000000)
														arg0:setAlpha(0.000000)
														if arg1.interrupted then
															registerVal2.clipFinished(arg0, arg1)
														else
															arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
														end
													end

													if arg1.interrupted then
														__FUNC_F590_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F590_)
												end

												if arg1.interrupted then
													__FUNC_F43B_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
												arg0:setTopBottom(true, true, 139.000000, -83.000000)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F43B_)
											end

											if arg1.interrupted then
												__FUNC_F288_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
											arg0:setTopBottom(true, true, 131.860000, -90.140000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F288_)
										end

										if arg1.interrupted then
											__FUNC_F0FB_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setTopBottom(true, true, 103.290000, -118.710000)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F0FB_)
									end

									if arg1.interrupted then
										__FUNC_EF48_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setTopBottom(true, true, 96.140000, -125.860000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF48_)
								end

								if arg1.interrupted then
									__FUNC_EDBB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, true, 89.000000, -133.000000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EDBB_)
							end

							if arg1.interrupted then
								__FUNC_EC08_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, true, 96.940000, -125.060000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC08_)
						end

						if arg1.interrupted then
							__FUNC_EA7B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, true, 144.560000, -77.440000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA7B_)
					end

					if arg1.interrupted then
						__FUNC_E8C8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E8C8_)
				end

				if arg1.interrupted then
					__FUNC_E773_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E773_)
			end

			if arg1.interrupted then
				__FUNC_E5F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E5F8_)
		end

		registerVal4:completeAnimation()
		registerVal2.fxGlitch1800:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1800:setTopBottom(true, true, 152.500000, -69.500000)
		registerVal2.fxGlitch1800:setAlpha(0.000000)
		__FUNC_E4A1_(registerVal4, {})
		local function __FUNC_F7AB_(arg0, arg1)
			local function __FUNC_F900_(arg0, arg1)
				local function __FUNC_FA7B_(arg0, arg1)
					local function __FUNC_FBD0_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 0.000000, 0.000000)
						arg0:setTopBottom(true, true, 94.000000, -128.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_FBD0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FBD0_)
				end

				if arg1.interrupted then
					__FUNC_FA7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA7B_)
			end

			if arg1.interrupted then
				__FUNC_F900_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F900_)
		end

		registerVal5:completeAnimation()
		registerVal2.fxGlitch1700:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1700:setTopBottom(true, true, 94.000000, -128.000000)
		registerVal2.fxGlitch1700:setAlpha(0.000000)
		__FUNC_F7AB_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.fxGlitch1600:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1600:setTopBottom(true, true, 54.500000, -73.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.fxGlitch1500:setLeftRight(true, true, 44.000000, -31.000000)
		registerVal2.fxGlitch1500:setTopBottom(true, true, 69.040000, -94.460000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_FDEB_(arg0, arg1)
			local function __FUNC_FF40_(arg0, arg1)
				local function __FUNC_100BB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(true, true, 54.500000, -49.500000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_100BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_100BB_)
			end

			if arg1.interrupted then
				__FUNC_FF40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF40_)
		end

		registerVal8:completeAnimation()
		registerVal2.fxGlitch1400:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1400:setTopBottom(true, true, 54.500000, -49.500000)
		registerVal2.fxGlitch1400:setAlpha(0.000000)
		__FUNC_FDEB_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fxGlitch1300:setLeftRight(true, true, 4.000000, -4.000000)
		registerVal2.fxGlitch1300:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal9, {})
		local function __FUNC_102D3_(arg0, arg1)
			local function __FUNC_10428_(arg0, arg1)
				local function __FUNC_105A3_(arg0, arg1)
					local function __FUNC_106F8_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 0.000000, 0.000000)
						arg0:setTopBottom(true, true, 31.000000, -9.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_106F8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_106F8_)
				end

				if arg1.interrupted then
					__FUNC_105A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_105A3_)
			end

			if arg1.interrupted then
				__FUNC_10428_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10428_)
		end

		registerVal10:completeAnimation()
		registerVal2.fxGlitch1200:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1200:setTopBottom(true, true, 31.000000, -9.000000)
		registerVal2.fxGlitch1200:setAlpha(0.000000)
		__FUNC_102D3_(registerVal10, {})
		local function __FUNC_10913_(arg0, arg1)
			local function __FUNC_10A68_(arg0, arg1)
				local function __FUNC_10BE3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(true, true, 46.000000, -34.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_10BE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10BE3_)
			end

			if arg1.interrupted then
				__FUNC_10A68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10A68_)
		end

		registerVal11:completeAnimation()
		registerVal2.fxGlitch1100:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1100:setTopBottom(true, true, 46.000000, -34.000000)
		registerVal2.fxGlitch1100:setAlpha(0.000000)
		__FUNC_10913_(registerVal11, {})
	end

	registerVal13.GlitchLarge2 = __FUNC_D22B_
	local function __FUNC_10DFB_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_114A8_(arg0, arg1)
			local function __FUNC_11600_(arg0, arg1)
				local function __FUNC_1177B_(arg0, arg1)
					local function __FUNC_118D0_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 118.000000, -118.000000)
						arg0:setTopBottom(true, true, 82.000000, -150.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_118D0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_118D0_)
				end

				if arg1.interrupted then
					__FUNC_1177B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1177B_)
			end

			if arg1.interrupted then
				__FUNC_11600_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11600_)
		end

		registerVal3:completeAnimation()
		registerVal2.fxGlitch1900:setLeftRight(true, true, 118.000000, -118.000000)
		registerVal2.fxGlitch1900:setTopBottom(true, true, 82.000000, -150.000000)
		registerVal2.fxGlitch1900:setAlpha(0.000000)
		__FUNC_114A8_(registerVal3, {})
		local function __FUNC_11AF5_(arg0, arg1)
			local function __FUNC_11C4C_(arg0, arg1)
				local function __FUNC_11DC7_(arg0, arg1)
					local function __FUNC_11F1C_(arg0, arg1)
						local function __FUNC_120CF_(arg0, arg1)
							local function __FUNC_1225C_(arg0, arg1)
								local function __FUNC_1240F_(arg0, arg1)
									local function __FUNC_125BF_(arg0, arg1)
										local function __FUNC_1274C_(arg0, arg1)
											local function __FUNC_128C7_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, true, 0.000000, 0.000000)
												arg0:setTopBottom(true, true, 97.000000, -125.000000)
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_128C7_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.720000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_128C7_)
										end

										if arg1.interrupted then
											__FUNC_1274C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setTopBottom(true, true, 97.000000, -125.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1274C_)
									end

									if arg1.interrupted then
										__FUNC_125BF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setTopBottom(true, true, 113.670000, -108.330000)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_125BF_)
								end

								if arg1.interrupted then
									__FUNC_1240F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, true, 122.000000, -100.000000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1240F_)
							end

							if arg1.interrupted then
								__FUNC_1225C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, true, 116.600000, -105.400000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1225C_)
						end

						if arg1.interrupted then
							__FUNC_120CF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, true, 100.400000, -121.600000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_120CF_)
					end

					if arg1.interrupted then
						__FUNC_11F1C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11F1C_)
				end

				if arg1.interrupted then
					__FUNC_11DC7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11DC7_)
			end

			if arg1.interrupted then
				__FUNC_11C4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11C4C_)
		end

		registerVal4:completeAnimation()
		registerVal2.fxGlitch1800:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1800:setTopBottom(true, true, 95.000000, -127.000000)
		registerVal2.fxGlitch1800:setAlpha(0.000000)
		__FUNC_11AF5_(registerVal4, {})
		local function __FUNC_12ADF_(arg0, arg1)
			local function __FUNC_12C34_(arg0, arg1)
				local function __FUNC_12DAF_(arg0, arg1)
					local function __FUNC_12F27_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, 0.000000, 0.000000)
						arg0:setTopBottom(true, true, 113.000000, -109.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_12F27_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.160000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12F27_)
				end

				if arg1.interrupted then
					__FUNC_12DAF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.190000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12DAF_)
			end

			if arg1.interrupted then
				__FUNC_12C34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12C34_)
		end

		registerVal5:completeAnimation()
		registerVal2.fxGlitch1700:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1700:setTopBottom(true, true, 113.000000, -109.000000)
		registerVal2.fxGlitch1700:setAlpha(0.000000)
		__FUNC_12ADF_(registerVal5, {})
		local function __FUNC_1313F_(arg0, arg1)
			local function __FUNC_13294_(arg0, arg1)
				local function __FUNC_1340F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(true, true, 54.500000, -73.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1340F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.280000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1340F_)
			end

			if arg1.interrupted then
				__FUNC_13294_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13294_)
		end

		registerVal6:completeAnimation()
		registerVal2.fxGlitch1600:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1600:setTopBottom(true, true, 54.500000, -73.000000)
		registerVal2.fxGlitch1600:setAlpha(0.000000)
		__FUNC_1313F_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.fxGlitch1500:setLeftRight(true, true, 139.000000, -157.000000)
		registerVal2.fxGlitch1500:setTopBottom(true, true, 54.500000, -82.500000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_13627_(arg0, arg1)
			local function __FUNC_1377C_(arg0, arg1)
				local function __FUNC_138F7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, true, 0.000000, 0.000000)
					arg0:setTopBottom(true, true, 54.500000, -49.500000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_138F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.330000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_138F7_)
			end

			if arg1.interrupted then
				__FUNC_1377C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1377C_)
		end

		registerVal8:completeAnimation()
		registerVal2.fxGlitch1400:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1400:setTopBottom(true, true, 54.500000, -49.500000)
		registerVal2.fxGlitch1400:setAlpha(0.000000)
		__FUNC_13627_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.fxGlitch1300:setLeftRight(true, true, 4.000000, -4.000000)
		registerVal2.fxGlitch1300:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.fxGlitch1200:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1200:setTopBottom(true, true, 31.000000, -9.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.fxGlitch1100:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.fxGlitch1100:setTopBottom(true, true, 46.000000, -34.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.GlitchSmall2Slow = __FUNC_10DFB_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	local function __FUNC_13B0F_(arg0)
		arg0.fxGlitch1900:close()
		arg0.fxGlitch1800:close()
		arg0.fxGlitch1700:close()
		arg0.fxGlitch1600:close()
		arg0.fxGlitch1500:close()
		arg0.fxGlitch1400:close()
		arg0.fxGlitch1300:close()
		arg0.fxGlitch1200:close()
		arg0.fxGlitch1100:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13B0F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


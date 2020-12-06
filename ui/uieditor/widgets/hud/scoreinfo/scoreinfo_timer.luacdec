-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_TimeSemi")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_BackLine")
require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_TimerNumber")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreInfo_Timer = registerVal1
function CoD.ScoreInfo_Timer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreInfo_Timer)
	registerVal2.id = "ScoreInfo_Timer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 75.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 112.000000)
	local registerVal3 = CoD.ScoreInfo_TimeSemi.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -10.500000, 10.500000)
	registerVal3:setTopBottom(false, false, -58.840000, 14.670000)
	registerVal3:setAlpha(0.600000)
	registerVal3:setZRot(90.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal3:setShaderVector(0.000000, 0.050000, 0.500000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, -0.200000, -0.200000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Semi = registerVal3
	local registerVal4 = CoD.AmmoWidget_BackLine.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -66.500000, 2.500000)
	registerVal4:setTopBottom(false, false, 17.670000, 20.340000)
	registerVal4:setAlpha(0.800000)
	registerVal4:setZRot(90.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Line1 = registerVal4
	local registerVal5 = CoD.AmmoWidget_BackLine.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -2.500000, 66.500000)
	registerVal5:setTopBottom(false, false, 17.670000, 20.340000)
	registerVal5:setAlpha(0.800000)
	registerVal5:setZRot(90.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Line2 = registerVal5
	local registerVal6 = CoD.ScoreInfo_TimerNumber.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -41.500000, 41.500000)
	registerVal6:setTopBottom(false, false, -45.000000, -27.000000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal6:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.GameTimer = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_B67_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -10.500000, 10.500000)
		registerVal2.Semi:setTopBottom(false, false, -55.840000, 17.670000)
		registerVal2.Semi:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Line1:setLeftRight(false, false, -66.500000, 2.500000)
		registerVal2.Line1:setTopBottom(false, false, 17.670000, 20.340000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Line2:setLeftRight(false, false, -2.500000, 66.500000)
		registerVal2.Line2:setTopBottom(false, false, 17.670000, 20.340000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal6.GameTimer00:completeAnimation()
		registerVal2.GameTimer:setAlpha(0.000000)
		registerVal2.GameTimer.GameTimer00:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_B67_
	local function __FUNC_EE5_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_121E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -10.500000, 10.500000)
			arg0:setTopBottom(false, false, -82.000000, -8.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -10.500000, 10.500000)
		registerVal2.Semi:setTopBottom(false, false, -55.840000, 17.670000)
		__FUNC_121E_(registerVal3, {})
		local function __FUNC_141C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -78.500000, 14.500000)
			arg0:setTopBottom(false, false, 5.670000, 8.330000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Line1:setLeftRight(false, false, -66.500000, 2.500000)
		registerVal2.Line1:setTopBottom(false, false, 17.670000, 20.340000)
		__FUNC_141C_(registerVal4, {})
		local function __FUNC_161C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -14.500000, 78.500000)
			arg0:setTopBottom(false, false, 5.670000, 8.330000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Line2:setLeftRight(false, false, -2.500000, 66.500000)
		registerVal2.Line2:setTopBottom(false, false, 17.670000, 20.340000)
		__FUNC_161C_(registerVal5, {})
		local function __FUNC_181C_(arg0, arg1)
			local function __FUNC_1974_(arg0, arg1)
				local function __FUNC_1AEF_(arg0, arg1)
					local function __FUNC_1C44_(arg0, arg1)
						local function __FUNC_1DBF_(arg0, arg1)
							local function __FUNC_1F14_(arg0, arg1)
								local function __FUNC_208F_(arg0, arg1)
									local function __FUNC_21E4_(arg0, arg1)
										local function __FUNC_235F_(arg0, arg1)
											local function __FUNC_24B4_(arg0, arg1)
												local function __FUNC_262F_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
														arg0.GameTimer00:beginAnimation("subkeyframe", 110.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(1.000000)
													arg0.GameTimer00:setRGB(1.000000, 1.000000, 1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_262F_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_262F_)
											end

											if arg1.interrupted then
												__FUNC_24B4_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24B4_)
										end

										if arg1.interrupted then
											__FUNC_235F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.370000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_235F_)
									end

									if arg1.interrupted then
										__FUNC_21E4_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21E4_)
								end

								if arg1.interrupted then
									__FUNC_208F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_208F_)
							end

							if arg1.interrupted then
								__FUNC_1F14_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F14_)
						end

						if arg1.interrupted then
							__FUNC_1DBF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DBF_)
					end

					if arg1.interrupted then
						__FUNC_1C44_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C44_)
				end

				if arg1.interrupted then
					__FUNC_1AEF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AEF_)
			end

			if arg1.interrupted then
				__FUNC_1974_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1974_)
		end

		registerVal6:completeAnimation()
		registerVal6.GameTimer00:completeAnimation()
		registerVal2.GameTimer:setAlpha(0.000000)
		registerVal2.GameTimer.GameTimer00:setRGB(1.000000, 1.000000, 1.000000)
		__FUNC_181C_(registerVal6, {})
	end

	registerVal8.Active = __FUNC_EE5_
	local function __FUNC_287B_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_2B79_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -10.500000, 10.500000)
			arg0:setTopBottom(false, false, -82.000000, -8.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -10.500000, 10.500000)
		registerVal2.Semi:setTopBottom(false, false, -55.840000, 17.670000)
		__FUNC_2B79_(registerVal3, {})
		local function __FUNC_2D78_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -78.500000, 14.500000)
			arg0:setTopBottom(false, false, 5.670000, 8.330000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Line1:setLeftRight(false, false, -66.500000, 2.500000)
		registerVal2.Line1:setTopBottom(false, false, 17.670000, 20.340000)
		__FUNC_2D78_(registerVal4, {})
		local function __FUNC_2F78_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 500.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(false, false, -14.500000, 78.500000)
			arg0:setTopBottom(false, false, 5.670000, 8.330000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Line2:setLeftRight(false, false, -2.500000, 66.500000)
		registerVal2.Line2:setTopBottom(false, false, 17.670000, 20.340000)
		__FUNC_2F78_(registerVal5, {})
		local function __FUNC_3178_(arg0, arg1)
			local function __FUNC_32FE_(arg0, arg1)
				local function __FUNC_34A0_(arg0, arg1)
					local function __FUNC_3626_(arg0, arg1)
						local function __FUNC_37CD_(arg0, arg1)
							local function __FUNC_3952_(arg0, arg1)
								local function __FUNC_3AF4_(arg0, arg1)
									local function __FUNC_3C7A_(arg0, arg1)
										local function __FUNC_3E21_(arg0, arg1)
											local function __FUNC_3FA6_(arg0, arg1)
												local function __FUNC_4148_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setRGB(1.000000, 0.000000, 0.000000)
													arg0:setAlpha(1.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_4148_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setRGB(1.000000, 0.220000, 0.220000)
												arg0:setAlpha(1.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4148_)
											end

											if arg1.interrupted then
												__FUNC_3FA6_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:setRGB(1.000000, 0.240000, 0.240000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FA6_)
										end

										if arg1.interrupted then
											__FUNC_3E21_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:setRGB(1.000000, 0.280000, 0.280000)
										arg0:setAlpha(0.370000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E21_)
									end

									if arg1.interrupted then
										__FUNC_3C7A_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
									arg0:setRGB(1.000000, 0.300000, 0.300000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C7A_)
								end

								if arg1.interrupted then
									__FUNC_3AF4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setRGB(1.000000, 0.340000, 0.340000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AF4_)
							end

							if arg1.interrupted then
								__FUNC_3952_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setRGB(1.000000, 0.360000, 0.360000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3952_)
						end

						if arg1.interrupted then
							__FUNC_37CD_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(1.000000, 0.420000, 0.420000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37CD_)
					end

					if arg1.interrupted then
						__FUNC_3626_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(1.000000, 0.440000, 0.440000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3626_)
				end

				if arg1.interrupted then
					__FUNC_34A0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(1.000000, 0.500000, 0.500000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34A0_)
			end

			if arg1.interrupted then
				__FUNC_32FE_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(1.000000, 0.520000, 0.520000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_32FE_)
		end

		registerVal6:completeAnimation()
		registerVal2.GameTimer:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.GameTimer:setAlpha(0.000000)
		__FUNC_3178_(registerVal6, {})
	end

	registerVal8.TimeLow = __FUNC_287B_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_4326_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -10.500000, 10.500000)
		registerVal2.Semi:setTopBottom(false, false, -82.000000, -8.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Line1:setLeftRight(false, false, -78.500000, 14.500000)
		registerVal2.Line1:setTopBottom(false, false, 5.670000, 8.330000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Line2:setLeftRight(false, false, -14.500000, 78.500000)
		registerVal2.Line2:setTopBottom(false, false, 5.670000, 8.330000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.GameTimer:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.GameTimer:setAlpha(1.000000)
		registerVal2.GameTimer:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.GameTimer:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
		registerVal2.GameTimer:setShaderVector(1.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.GameTimer:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GameTimer:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GameTimer:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_4326_
	local function __FUNC_4801_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_4B06_(arg0, arg1)
			local function __FUNC_4C5C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 409.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -10.500000, 10.500000)
				arg0:setTopBottom(false, false, -55.840000, 17.670000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4C5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C5C_)
		end

		registerVal3:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -10.500000, 10.500000)
		registerVal2.Semi:setTopBottom(false, false, -82.000000, -8.500000)
		__FUNC_4B06_(registerVal3, {})
		local function __FUNC_4E5E_(arg0, arg1)
			local function __FUNC_4FB4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 409.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -66.500000, 2.500000)
				arg0:setTopBottom(false, false, 17.670000, 20.340000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4FB4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FB4_)
		end

		registerVal4:completeAnimation()
		registerVal2.Line1:setLeftRight(false, false, -78.500000, 14.500000)
		registerVal2.Line1:setTopBottom(false, false, 5.670000, 8.330000)
		__FUNC_4E5E_(registerVal4, {})
		local function __FUNC_51B6_(arg0, arg1)
			local function __FUNC_530C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 409.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -2.500000, 66.500000)
				arg0:setTopBottom(false, false, 17.670000, 20.340000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_530C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_530C_)
		end

		registerVal5:completeAnimation()
		registerVal2.Line2:setLeftRight(false, false, -14.500000, 78.500000)
		registerVal2.Line2:setTopBottom(false, false, 5.670000, 8.330000)
		__FUNC_51B6_(registerVal5, {})
		local function __FUNC_550E_(arg0, arg1)
			local function __FUNC_5664_(arg0, arg1)
				local function __FUNC_57DF_(arg0, arg1)
					local function __FUNC_5934_(arg0, arg1)
						local function __FUNC_5AAF_(arg0, arg1)
							local function __FUNC_5C04_(arg0, arg1)
								local function __FUNC_5D7F_(arg0, arg1)
									local function __FUNC_5ED4_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setRGB(1.000000, 1.000000, 1.000000)
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_5ED4_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5ED4_)
								end

								if arg1.interrupted then
									__FUNC_5D7F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D7F_)
							end

							if arg1.interrupted then
								__FUNC_5C04_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C04_)
						end

						if arg1.interrupted then
							__FUNC_5AAF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AAF_)
					end

					if arg1.interrupted then
						__FUNC_5934_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5934_)
				end

				if arg1.interrupted then
					__FUNC_57DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57DF_)
			end

			if arg1.interrupted then
				__FUNC_5664_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5664_)
		end

		registerVal6:completeAnimation()
		registerVal2.GameTimer:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.GameTimer:setAlpha(0.000000)
		__FUNC_550E_(registerVal6, {})
	end

	registerVal8.DefaultState = __FUNC_4801_
	registerVal7.Active = registerVal8
	registerVal8 = {}
	local function __FUNC_60B2_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -10.500000, 10.500000)
		registerVal2.Semi:setTopBottom(false, false, -82.000000, -8.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Line1:setLeftRight(false, false, -78.500000, 14.500000)
		registerVal2.Line1:setTopBottom(false, false, 5.670000, 8.330000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Line2:setLeftRight(false, false, -14.500000, 78.500000)
		registerVal2.Line2:setTopBottom(false, false, 5.670000, 8.330000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_65B8_(arg0, arg1)
			local function __FUNC_6710_(arg0, arg1)
				local function __FUNC_68D0_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setRGB(1.000000, 1.000000, 1.000000)
					arg0:setAlpha(1.000000)
					arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
					arg0:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
					arg0:setShaderVector(1.000000, 0.100000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_68D0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(1.000000, 1.000000, 1.000000)
				arg0:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68D0_)
			end

			if arg1.interrupted then
				__FUNC_6710_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6710_)
		end

		registerVal6:completeAnimation()
		registerVal2.GameTimer:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.GameTimer:setAlpha(1.000000)
		registerVal2.GameTimer:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.GameTimer:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.GameTimer:setShaderVector(1.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.GameTimer:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GameTimer:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GameTimer:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_65B8_(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal8.DefaultClip = __FUNC_60B2_
	local function __FUNC_6C04_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_70BB_(arg0, arg1)
			local function __FUNC_7210_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 409.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -10.500000, 10.500000)
				arg0:setTopBottom(false, false, -55.840000, 17.670000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7210_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7210_)
		end

		registerVal3:completeAnimation()
		registerVal2.Semi:setLeftRight(false, false, -10.500000, 10.500000)
		registerVal2.Semi:setTopBottom(false, false, -82.000000, -8.500000)
		__FUNC_70BB_(registerVal3, {})
		local function __FUNC_7412_(arg0, arg1)
			local function __FUNC_7568_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 409.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -66.500000, 2.500000)
				arg0:setTopBottom(false, false, 17.670000, 20.340000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7568_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7568_)
		end

		registerVal4:completeAnimation()
		registerVal2.Line1:setLeftRight(false, false, -78.500000, 14.500000)
		registerVal2.Line1:setTopBottom(false, false, 5.670000, 8.330000)
		__FUNC_7412_(registerVal4, {})
		local function __FUNC_776A_(arg0, arg1)
			local function __FUNC_78C0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 409.000000, false, true, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(false, false, -2.500000, 66.500000)
				arg0:setTopBottom(false, false, 17.670000, 20.340000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_78C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78C0_)
		end

		registerVal5:completeAnimation()
		registerVal2.Line2:setLeftRight(false, false, -14.500000, 78.500000)
		registerVal2.Line2:setTopBottom(false, false, 5.670000, 8.330000)
		__FUNC_776A_(registerVal5, {})
		local function __FUNC_7AC2_(arg0, arg1)
			local function __FUNC_7C85_(arg0, arg1)
				local function __FUNC_7E67_(arg0, arg1)
					local function __FUNC_8029_(arg0, arg1)
						local function __FUNC_820B_(arg0, arg1)
							local function __FUNC_83CD_(arg0, arg1)
								local function __FUNC_85B4_(arg0, arg1)
									local function __FUNC_8779_(arg0, arg1)
										local function __FUNC_895B_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 340.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setRGB(1.000000, 1.000000, 1.000000)
											arg0:setAlpha(0.000000)
											arg0:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
											arg0:setShaderVector(0.000000, 0.100000, 1.000000, 0.000000, 0.000000)
											arg0:setShaderVector(1.000000, 0.100000, 0.000000, 0.000000, 0.000000)
											arg0:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
											arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
											arg0:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_895B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setRGB(1.000000, 0.320000, 0.320000)
										arg0:setAlpha(0.000000)
										arg0:setShaderVector(0.000000, 0.100000, 0.320000, 0.000000, 0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_895B_)
									end

									if arg1.interrupted then
										__FUNC_8779_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:setRGB(1.000000, 0.300000, 0.300000)
									arg0:setShaderVector(0.000000, 0.100000, 0.300000, 0.000000, 0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8779_)
								end

								if arg1.interrupted then
									__FUNC_85B4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setRGB(1.000000, 0.240000, 0.240000)
								arg0:setAlpha(0.500000)
								arg0:setShaderVector(0.000000, 0.100000, 0.240000, 0.000000, 0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85B4_)
							end

							if arg1.interrupted then
								__FUNC_83CD_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							arg0:setRGB(1.000000, 0.220000, 0.220000)
							arg0:setShaderVector(0.000000, 0.100000, 0.220000, 0.000000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_83CD_)
						end

						if arg1.interrupted then
							__FUNC_820B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setRGB(1.000000, 0.160000, 0.160000)
						arg0:setAlpha(0.000000)
						arg0:setShaderVector(0.000000, 0.100000, 0.160000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_820B_)
					end

					if arg1.interrupted then
						__FUNC_8029_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(1.000000, 0.140000, 0.140000)
					arg0:setShaderVector(0.000000, 0.100000, 0.140000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8029_)
				end

				if arg1.interrupted then
					__FUNC_7E67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(1.000000, 0.080000, 0.080000)
				arg0:setAlpha(1.000000)
				arg0:setShaderVector(0.000000, 0.100000, 0.080000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E67_)
			end

			if arg1.interrupted then
				__FUNC_7C85_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setRGB(1.000000, 0.060000, 0.060000)
			arg0:setShaderVector(0.000000, 0.100000, 0.060000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C85_)
		end

		registerVal6:completeAnimation()
		registerVal2.GameTimer:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.GameTimer:setAlpha(0.000000)
		registerVal2.GameTimer:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
		registerVal2.GameTimer:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.GameTimer:setShaderVector(1.000000, 0.100000, 0.000000, 0.000000, 0.000000)
		registerVal2.GameTimer:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GameTimer:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.GameTimer:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_7AC2_(registerVal6, {})
	end

	registerVal8.DefaultState = __FUNC_6C04_
	registerVal7.TimeLow = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_8C8C_(arg0)
		arg0.Semi:close()
		arg0.Line1:close()
		arg0.Line2:close()
		arg0.GameTimer:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8C8C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


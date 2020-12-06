-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_IrisOutterThin")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_dart_IrisOuterThinInternal = registerVal1
function CoD.vhud_dart_IrisOuterThinInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_dart_IrisOuterThinInternal)
	registerVal2.id = "vhud_dart_IrisOuterThinInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1421.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 943.000000)
	local registerVal3 = CoD.VehicleGround_IrisOutterThin.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.VehicleGroundIrisOutterThin0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5BF_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_711_(arg0, arg1)
			local function __FUNC_868_(arg0, arg1)
				local function __FUNC_9E2_(arg0, arg1)
					local function __FUNC_B38_(arg0, arg1)
						local function __FUNC_CB0_(arg0, arg1)
							local function __FUNC_E08_(arg0, arg1)
								local function __FUNC_F82_(arg0, arg1)
									local function __FUNC_10D8_(arg0, arg1)
										local function __FUNC_1250_(arg0, arg1)
											local function __FUNC_13A8_(arg0, arg1)
												local function __FUNC_1522_(arg0, arg1)
													local function __FUNC_169A_(arg0, arg1)
														local function __FUNC_1832_(arg0, arg1)
															if not arg1.interrupted then
																arg0:beginAnimation("keyframe", 1579.000000, true, true, CoD.TweenType.Linear)
															end
															arg0:setZRot(0.000000)
															arg0:setZoom(0.000000)
															if arg1.interrupted then
																registerVal2.clipFinished(arg0, arg1)
															else
																arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
															end
														end

														if arg1.interrupted then
															__FUNC_1832_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 1840.000000, false, true, CoD.TweenType.Back)
														arg0:setZRot(-0.720000)
														arg0:setZoom(0.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1832_)
													end

													if arg1.interrupted then
														__FUNC_169A_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
													arg0:setZRot(-1.940000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_169A_)
												end

												if arg1.interrupted then
													__FUNC_1522_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 3360.000000, true, true, CoD.TweenType.Linear)
												arg0:setZRot(-2.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1522_)
											end

											if arg1.interrupted then
												__FUNC_13A8_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 520.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A8_)
										end

										if arg1.interrupted then
											__FUNC_1250_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 879.000000, false, true, CoD.TweenType.Back)
										arg0:setZoom(-20.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1250_)
									end

									if arg1.interrupted then
										__FUNC_10D8_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 2740.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10D8_)
								end

								if arg1.interrupted then
									__FUNC_F82_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 3859.000000, true, true, CoD.TweenType.Linear)
								arg0:setZRot(3.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F82_)
							end

							if arg1.interrupted then
								__FUNC_E08_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E08_)
						end

						if arg1.interrupted then
							__FUNC_CB0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1220.000000, false, true, CoD.TweenType.Back)
						arg0:setZoom(-40.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB0_)
					end

					if arg1.interrupted then
						__FUNC_B38_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 559.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B38_)
				end

				if arg1.interrupted then
					__FUNC_9E2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 3019.000000, true, true, CoD.TweenType.Linear)
				arg0:setZRot(-4.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9E2_)
			end

			if arg1.interrupted then
				__FUNC_868_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2619.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_868_)
		end

		registerVal3:completeAnimation()
		registerVal2.VehicleGroundIrisOutterThin0:setZRot(0.000000)
		registerVal2.VehicleGroundIrisOutterThin0:setZoom(0.000000)
		__FUNC_711_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_5BF_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_1A01_(arg0)
		arg0.VehicleGroundIrisOutterThin0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1A01_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


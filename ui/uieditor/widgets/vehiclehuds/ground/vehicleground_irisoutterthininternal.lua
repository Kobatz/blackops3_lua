-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_IrisOutterThin")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VehicleGround_IrisOutterThinInternal = registerVal1
function CoD.VehicleGround_IrisOutterThinInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.VehicleGround_IrisOutterThinInternal)
	registerVal2.id = "VehicleGround_IrisOutterThinInternal"
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
	local function __FUNC_5C8_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_71D_(arg0, arg1)
			local function __FUNC_874_(arg0, arg1)
				local function __FUNC_9EE_(arg0, arg1)
					local function __FUNC_B44_(arg0, arg1)
						local function __FUNC_CBC_(arg0, arg1)
							local function __FUNC_E14_(arg0, arg1)
								local function __FUNC_F8E_(arg0, arg1)
									local function __FUNC_10E4_(arg0, arg1)
										local function __FUNC_125C_(arg0, arg1)
											local function __FUNC_13B4_(arg0, arg1)
												local function __FUNC_152E_(arg0, arg1)
													local function __FUNC_16A6_(arg0, arg1)
														local function __FUNC_183E_(arg0, arg1)
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
															__FUNC_183E_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 1840.000000, false, true, CoD.TweenType.Back)
														arg0:setZRot(-0.720000)
														arg0:setZoom(0.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_183E_)
													end

													if arg1.interrupted then
														__FUNC_16A6_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
													arg0:setZRot(-1.940000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16A6_)
												end

												if arg1.interrupted then
													__FUNC_152E_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 3360.000000, true, true, CoD.TweenType.Linear)
												arg0:setZRot(-2.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_152E_)
											end

											if arg1.interrupted then
												__FUNC_13B4_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 520.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13B4_)
										end

										if arg1.interrupted then
											__FUNC_125C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 879.000000, false, true, CoD.TweenType.Back)
										arg0:setZoom(-20.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_125C_)
									end

									if arg1.interrupted then
										__FUNC_10E4_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 2740.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E4_)
								end

								if arg1.interrupted then
									__FUNC_F8E_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 3859.000000, true, true, CoD.TweenType.Linear)
								arg0:setZRot(3.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F8E_)
							end

							if arg1.interrupted then
								__FUNC_E14_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1500.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E14_)
						end

						if arg1.interrupted then
							__FUNC_CBC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1220.000000, false, true, CoD.TweenType.Back)
						arg0:setZoom(-40.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CBC_)
					end

					if arg1.interrupted then
						__FUNC_B44_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 559.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B44_)
				end

				if arg1.interrupted then
					__FUNC_9EE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 3019.000000, true, true, CoD.TweenType.Linear)
				arg0:setZRot(-4.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9EE_)
			end

			if arg1.interrupted then
				__FUNC_874_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2619.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_874_)
		end

		registerVal3:completeAnimation()
		registerVal2.VehicleGroundIrisOutterThin0:setZRot(0.000000)
		registerVal2.VehicleGroundIrisOutterThin0:setZoom(0.000000)
		__FUNC_71D_(registerVal3, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal5.DefaultClip = __FUNC_5C8_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_1A0D_(arg0)
		arg0.VehicleGroundIrisOutterThin0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1A0D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


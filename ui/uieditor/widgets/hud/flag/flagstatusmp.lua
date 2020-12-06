-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Flag.PlayerFlagStatusMP")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FlagStatusMP = registerVal1
function CoD.FlagStatusMP.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FlagStatusMP)
	registerVal2.id = "FlagStatusMP"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 63.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PlayerFlagStatusMP.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 3.000000, 323.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 34.000000)
	local function __FUNC_AEF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.FriendlyFlagCarrier:setText(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CTF", "friendlyFlagCarrier", __FUNC_AEF_)
	local function __FUNC_BA9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.PlayerFlag:setRGB(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Factions", "playerFactionFlagColor", __FUNC_BA9_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Flag_Held"
	local function __FUNC_C5B_(arg0, arg2, arg3)
		return IsModelValueNonEmptyString(arg1, "CTF.friendlyFlagCarrier")
	end

	registerVal7.condition = __FUNC_C5B_
	local registerVal8 = {}
	registerVal8.stateName = "Flag_Away"
	local function __FUNC_CDD_(arg0, arg2, arg3)
		return IsModelValueTrue(arg1, "CTF.friendlyFlagAway")
	end

	registerVal8.condition = __FUNC_CDD_
	local registerVal9 = {}
	registerVal9.stateName = "Flag_At_Base"
	local function __FUNC_D54_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal9.condition = __FUNC_D54_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "CTF.friendlyFlagCarrier")
	local function __FUNC_DA0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CTF.friendlyFlagCarrier"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_DA0_)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "CTF.friendlyFlagAway")
	local function __FUNC_ECD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CTF.friendlyFlagAway"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_ECD_)
	registerVal2:addElement(registerVal3)
	registerVal2.PlayerFlagStatus = registerVal3
	local registerVal4 = CoD.PlayerFlagStatusMP.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 3.000000, 323.000000)
	registerVal4:setTopBottom(true, false, 23.000000, 57.000000)
	local function __FUNC_FF6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.FriendlyFlagCarrier:setText(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CTF", "enemyFlagCarrier", __FUNC_FF6_)
	local function __FUNC_10B1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PlayerFlag:setRGB(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Factions", "enemyFactionFlagColor", __FUNC_10B1_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Flag_Held"
	local function __FUNC_1163_(arg0, arg2, arg3)
		return IsModelValueNonEmptyString(arg1, "CTF.enemyFlagCarrier")
	end

	registerVal8.condition = __FUNC_1163_
	registerVal9 = {}
	registerVal9.stateName = "Flag_Away"
	local function __FUNC_11E2_(arg0, arg2, arg3)
		return IsModelValueTrue(arg1, "CTF.enemyFlagAway")
	end

	registerVal9.condition = __FUNC_11E2_
	local registerVal10 = {}
	registerVal10.stateName = "Flag_At_Base"
	local function __FUNC_1255_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal10.condition = __FUNC_1255_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "CTF.enemyFlagCarrier")
	local function __FUNC_12A0_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CTF.enemyFlagCarrier"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_12A0_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "CTF.enemyFlagAway")
	local function __FUNC_13CA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CTF.enemyFlagAway"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_13CA_)
	registerVal2:addElement(registerVal4)
	registerVal2.EnemyFlagStatus = registerVal4
	local registerVal5 = {}
	registerVal6 = {}
	local function __FUNC_14EF_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PlayerFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EnemyFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_14EF_
	local function __FUNC_1651_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_1797_(arg0, arg1)
			local function __FUNC_18EC_(arg0, arg1)
				local function __FUNC_1A67_(arg0, arg1)
					local function __FUNC_1BDF_(arg0, arg1)
						local function __FUNC_1D57_(arg0, arg1)
							local function __FUNC_1ECF_(arg0, arg1)
								local function __FUNC_2047_(arg0, arg1)
									local function __FUNC_21BF_(arg0, arg1)
										local function __FUNC_2314_(arg0, arg1)
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
											__FUNC_2314_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2314_)
									end

									if arg1.interrupted then
										__FUNC_21BF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.740000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21BF_)
								end

								if arg1.interrupted then
									__FUNC_2047_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2047_)
							end

							if arg1.interrupted then
								__FUNC_1ECF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ECF_)
						end

						if arg1.interrupted then
							__FUNC_1D57_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.950000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D57_)
					end

					if arg1.interrupted then
						__FUNC_1BDF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BDF_)
				end

				if arg1.interrupted then
					__FUNC_1A67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.670000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A67_)
			end

			if arg1.interrupted then
				__FUNC_18EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18EC_)
		end

		registerVal3:completeAnimation()
		registerVal2.PlayerFlagStatus:setAlpha(0.000000)
		__FUNC_1797_(registerVal3, {})
		local function __FUNC_24C9_(arg0, arg1)
			local function __FUNC_2620_(arg0, arg1)
				local function __FUNC_279B_(arg0, arg1)
					local function __FUNC_2913_(arg0, arg1)
						local function __FUNC_2A8B_(arg0, arg1)
							local function __FUNC_2C03_(arg0, arg1)
								local function __FUNC_2D58_(arg0, arg1)
									local function __FUNC_2ED3_(arg0, arg1)
										local function __FUNC_3028_(arg0, arg1)
											local function __FUNC_31A3_(arg0, arg1)
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
												__FUNC_31A3_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.370000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31A3_)
										end

										if arg1.interrupted then
											__FUNC_3028_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3028_)
									end

									if arg1.interrupted then
										__FUNC_2ED3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.810000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ED3_)
								end

								if arg1.interrupted then
									__FUNC_2D58_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D58_)
							end

							if arg1.interrupted then
								__FUNC_2C03_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.070000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C03_)
						end

						if arg1.interrupted then
							__FUNC_2A8B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.720000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A8B_)
					end

					if arg1.interrupted then
						__FUNC_2913_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.370000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2913_)
				end

				if arg1.interrupted then
					__FUNC_279B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.860000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_279B_)
			end

			if arg1.interrupted then
				__FUNC_2620_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 810.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2620_)
		end

		registerVal4:completeAnimation()
		registerVal2.EnemyFlagStatus:setAlpha(0.000000)
		__FUNC_24C9_(registerVal4, {})
	end

	registerVal6.hud_start = __FUNC_1651_
	local function __FUNC_3355_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_349B_(arg0, arg1)
			local function __FUNC_3613_(arg0, arg1)
				local function __FUNC_3768_(arg0, arg1)
					local function __FUNC_38E3_(arg0, arg1)
						local function __FUNC_3A38_(arg0, arg1)
							local function __FUNC_3BB3_(arg0, arg1)
								local function __FUNC_3D2B_(arg0, arg1)
									local function __FUNC_3EA3_(arg0, arg1)
										local function __FUNC_401B_(arg0, arg1)
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
											__FUNC_401B_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.910000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_401B_)
									end

									if arg1.interrupted then
										__FUNC_3EA3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EA3_)
								end

								if arg1.interrupted then
									__FUNC_3D2B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D2B_)
							end

							if arg1.interrupted then
								__FUNC_3BB3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.560000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BB3_)
						end

						if arg1.interrupted then
							__FUNC_3A38_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A38_)
					end

					if arg1.interrupted then
						__FUNC_38E3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38E3_)
				end

				if arg1.interrupted then
					__FUNC_3768_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3768_)
			end

			if arg1.interrupted then
				__FUNC_3613_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3613_)
		end

		registerVal3:completeAnimation()
		registerVal2.PlayerFlagStatus:setAlpha(1.000000)
		__FUNC_349B_(registerVal3, {})
		local function __FUNC_41CD_(arg0, arg1)
			local function __FUNC_4324_(arg0, arg1)
				local function __FUNC_449F_(arg0, arg1)
					local function __FUNC_45F4_(arg0, arg1)
						local function __FUNC_476F_(arg0, arg1)
							local function __FUNC_48C4_(arg0, arg1)
								local function __FUNC_4A3F_(arg0, arg1)
									local function __FUNC_4BB7_(arg0, arg1)
										local function __FUNC_4D2F_(arg0, arg1)
											local function __FUNC_4EA7_(arg0, arg1)
												local function __FUNC_501F_(arg0, arg1)
													local function __FUNC_5197_(arg0, arg1)
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
														__FUNC_5197_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
													arg0:setAlpha(0.560000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5197_)
												end

												if arg1.interrupted then
													__FUNC_501F_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
												arg0:setAlpha(0.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_501F_)
											end

											if arg1.interrupted then
												__FUNC_4EA7_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EA7_)
										end

										if arg1.interrupted then
											__FUNC_4D2F_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D2F_)
									end

									if arg1.interrupted then
										__FUNC_4BB7_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.930000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BB7_)
								end

								if arg1.interrupted then
									__FUNC_4A3F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A3F_)
							end

							if arg1.interrupted then
								__FUNC_48C4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48C4_)
						end

						if arg1.interrupted then
							__FUNC_476F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_476F_)
					end

					if arg1.interrupted then
						__FUNC_45F4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45F4_)
				end

				if arg1.interrupted then
					__FUNC_449F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_449F_)
			end

			if arg1.interrupted then
				__FUNC_4324_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4324_)
		end

		registerVal4:completeAnimation()
		registerVal2.EnemyFlagStatus:setAlpha(1.000000)
		__FUNC_41CD_(registerVal4, {})
	end

	registerVal6.hud_stop = __FUNC_3355_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_5349_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PlayerFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EnemyFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_5349_
	local function __FUNC_54AD_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_560D_(arg0, arg1)
			local function __FUNC_5764_(arg0, arg1)
				local function __FUNC_58DF_(arg0, arg1)
					local function __FUNC_5A57_(arg0, arg1)
						local function __FUNC_5BCF_(arg0, arg1)
							local function __FUNC_5D47_(arg0, arg1)
								local function __FUNC_5EBF_(arg0, arg1)
									local function __FUNC_6037_(arg0, arg1)
										local function __FUNC_618C_(arg0, arg1)
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
											__FUNC_618C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_618C_)
									end

									if arg1.interrupted then
										__FUNC_6037_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.740000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6037_)
								end

								if arg1.interrupted then
									__FUNC_5EBF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EBF_)
							end

							if arg1.interrupted then
								__FUNC_5D47_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D47_)
						end

						if arg1.interrupted then
							__FUNC_5BCF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.950000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BCF_)
					end

					if arg1.interrupted then
						__FUNC_5A57_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A57_)
				end

				if arg1.interrupted then
					__FUNC_58DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.670000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58DF_)
			end

			if arg1.interrupted then
				__FUNC_5764_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5764_)
		end

		registerVal3:completeAnimation()
		registerVal2.PlayerFlagStatus:setAlpha(0.000000)
		__FUNC_560D_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EnemyFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.hud_start = __FUNC_54AD_
	local function __FUNC_6341_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_64A6_(arg0, arg1)
			local function __FUNC_661F_(arg0, arg1)
				local function __FUNC_6774_(arg0, arg1)
					local function __FUNC_68EF_(arg0, arg1)
						local function __FUNC_6A44_(arg0, arg1)
							local function __FUNC_6BBF_(arg0, arg1)
								local function __FUNC_6D37_(arg0, arg1)
									local function __FUNC_6EAF_(arg0, arg1)
										local function __FUNC_7027_(arg0, arg1)
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
											__FUNC_7027_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.910000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7027_)
									end

									if arg1.interrupted then
										__FUNC_6EAF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EAF_)
								end

								if arg1.interrupted then
									__FUNC_6D37_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D37_)
							end

							if arg1.interrupted then
								__FUNC_6BBF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.560000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BBF_)
						end

						if arg1.interrupted then
							__FUNC_6A44_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6A44_)
					end

					if arg1.interrupted then
						__FUNC_68EF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68EF_)
				end

				if arg1.interrupted then
					__FUNC_6774_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6774_)
			end

			if arg1.interrupted then
				__FUNC_661F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_661F_)
		end

		registerVal3:completeAnimation()
		registerVal2.PlayerFlagStatus:setAlpha(1.000000)
		__FUNC_64A6_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.EnemyFlagStatus:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.hud_stop = __FUNC_6341_
	registerVal5.Hardpoint = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_71D9_(arg0)
		arg0.PlayerFlagStatus:close()
		arg0.EnemyFlagStatus:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_71D9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


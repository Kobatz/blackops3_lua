-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.SoldierRaft.CallingCard_SoldierRaft_Soldier")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_SoldierRaft = registerVal1
function CoD.CallingCard_SoldierRaft.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCard_SoldierRaft)
	registerVal2.id = "CallingCard_SoldierRaft"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -480.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_sky"))
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_water"))
	registerVal2:addElement(registerVal4)
	registerVal2.Water = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 465.000000, 585.000000)
	registerVal5:setTopBottom(true, false, 36.500000, 96.500000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_boat"))
	registerVal2:addElement(registerVal5)
	registerVal2.Boat = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -92.000000, 28.000000)
	registerVal6:setTopBottom(true, false, 34.000000, 154.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_fin1"))
	registerVal2:addElement(registerVal6)
	registerVal2.Fin1 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 37.000000, 157.000000)
	registerVal7:setTopBottom(true, false, 35.000000, 155.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_fin2"))
	registerVal2:addElement(registerVal7)
	registerVal2.Fin2 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 124.000000, 184.000000)
	registerVal8:setTopBottom(true, false, 69.000000, 129.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_fin3"))
	registerVal2:addElement(registerVal8)
	registerVal2.Fin3 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 179.000000, 239.000000)
	registerVal9:setTopBottom(true, false, 75.000000, 135.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_fin4"))
	registerVal2:addElement(registerVal9)
	registerVal2.Fin4 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 223.000000, 283.000000)
	registerVal10:setTopBottom(true, false, 92.000000, 122.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_fin5"))
	registerVal2:addElement(registerVal10)
	registerVal2.Fin5 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 275.000000, 305.000000)
	registerVal11:setTopBottom(true, false, 93.000000, 123.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_fin6"))
	registerVal2:addElement(registerVal11)
	registerVal2.Fin6 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 466.000000, 526.000000)
	registerVal12:setTopBottom(true, false, 55.000000, 115.000000)
	registerVal12:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_fin_back"))
	registerVal2:addElement(registerVal12)
	registerVal2.FinBack = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 296.000000, 356.000000)
	registerVal13:setTopBottom(true, false, 67.000000, 127.000000)
	registerVal13:setImage(RegisterImage("uie_t7_callingcard_mp_soldierraft_ball"))
	registerVal2:addElement(registerVal13)
	registerVal2.Ball = registerVal13
	local registerVal14 = CoD.CallingCard_SoldierRaft_Soldier.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 348.000000, 468.000000)
	registerVal14:setTopBottom(true, false, 14.500000, 134.500000)
	registerVal2:addElement(registerVal14)
	registerVal2.Soldier = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_EF5_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_1503_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 24000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 480.000000)
			arg0:setTopBottom(true, true, 0.000000, 0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BG:setLeftRight(true, true, -480.000000, 0.000000)
		registerVal2.BG:setTopBottom(true, true, 0.000000, 0.000000)
		__FUNC_1503_(registerVal3, {})
		local function __FUNC_16F8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 23500.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -105.000000, 15.000000)
			arg0:setTopBottom(true, false, 36.500000, 96.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Boat:setLeftRight(true, false, 465.000000, 585.000000)
		registerVal2.Boat:setTopBottom(true, false, 36.500000, 96.500000)
		__FUNC_16F8_(registerVal5, {})
		local function __FUNC_18FA_(arg0, arg1)
			local function __FUNC_1A88_(arg0, arg1)
				local function __FUNC_1BE0_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, -26.000000, 94.000000)
					arg0:setTopBottom(true, false, 34.000000, 154.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1BE0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BE0_)
			end

			if arg1.interrupted then
				__FUNC_1A88_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -26.000000, 94.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A88_)
		end

		registerVal6:completeAnimation()
		registerVal2.Fin1:setLeftRight(true, false, -92.000000, 28.000000)
		registerVal2.Fin1:setTopBottom(true, false, 34.000000, 154.000000)
		registerVal2.Fin1:setAlpha(1.000000)
		__FUNC_18FA_(registerVal6, {})
		local function __FUNC_1E05_(arg0, arg1)
			local function __FUNC_1F5C_(arg0, arg1)
				local function __FUNC_20D7_(arg0, arg1)
					local function __FUNC_222C_(arg0, arg1)
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
						__FUNC_222C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_222C_)
				end

				if arg1.interrupted then
					__FUNC_20D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20D7_)
			end

			if arg1.interrupted then
				__FUNC_1F5C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 270.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F5C_)
		end

		registerVal7:completeAnimation()
		registerVal2.Fin2:setAlpha(0.000000)
		__FUNC_1E05_(registerVal7, {})
		local function __FUNC_23E1_(arg0, arg1)
			local function __FUNC_2538_(arg0, arg1)
				local function __FUNC_26B3_(arg0, arg1)
					local function __FUNC_2808_(arg0, arg1)
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
						__FUNC_2808_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2808_)
				end

				if arg1.interrupted then
					__FUNC_26B3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26B3_)
			end

			if arg1.interrupted then
				__FUNC_2538_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2538_)
		end

		registerVal8:completeAnimation()
		registerVal2.Fin3:setAlpha(0.000000)
		__FUNC_23E1_(registerVal8, {})
		local function __FUNC_29BD_(arg0, arg1)
			local function __FUNC_2B14_(arg0, arg1)
				local function __FUNC_2C8F_(arg0, arg1)
					local function __FUNC_2DE4_(arg0, arg1)
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
						__FUNC_2DE4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DE4_)
				end

				if arg1.interrupted then
					__FUNC_2C8F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C8F_)
			end

			if arg1.interrupted then
				__FUNC_2B14_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 529.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B14_)
		end

		registerVal9:completeAnimation()
		registerVal2.Fin4:setAlpha(0.000000)
		__FUNC_29BD_(registerVal9, {})
		local function __FUNC_2F99_(arg0, arg1)
			local function __FUNC_30F0_(arg0, arg1)
				local function __FUNC_326B_(arg0, arg1)
					local function __FUNC_33C0_(arg0, arg1)
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
						__FUNC_33C0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33C0_)
				end

				if arg1.interrupted then
					__FUNC_326B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_326B_)
			end

			if arg1.interrupted then
				__FUNC_30F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 670.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30F0_)
		end

		registerVal10:completeAnimation()
		registerVal2.Fin5:setAlpha(0.000000)
		__FUNC_2F99_(registerVal10, {})
		local function __FUNC_3575_(arg0, arg1)
			local function __FUNC_36CC_(arg0, arg1)
				local function __FUNC_3847_(arg0, arg1)
					local function __FUNC_399C_(arg0, arg1)
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
						__FUNC_399C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_399C_)
				end

				if arg1.interrupted then
					__FUNC_3847_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3847_)
			end

			if arg1.interrupted then
				__FUNC_36CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_36CC_)
		end

		registerVal11:completeAnimation()
		registerVal2.Fin6:setAlpha(0.000000)
		__FUNC_3575_(registerVal11, {})
		local function __FUNC_3B51_(arg0, arg1)
			local function __FUNC_3CA8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 11400.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -46.000000, 14.000000)
				arg0:setTopBottom(true, false, 55.000000, 115.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3CA8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 3619.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CA8_)
		end

		registerVal12:completeAnimation()
		registerVal2.FinBack:setLeftRight(true, false, 466.000000, 526.000000)
		registerVal2.FinBack:setTopBottom(true, false, 55.000000, 115.000000)
		__FUNC_3B51_(registerVal12, {})
		local function __FUNC_3EAA_(arg0, arg1)
			local function __FUNC_4038_(arg0, arg1)
				local function __FUNC_41C8_(arg0, arg1)
					local function __FUNC_4358_(arg0, arg1)
						local function __FUNC_44E8_(arg0, arg1)
							local function __FUNC_4678_(arg0, arg1)
								local function __FUNC_4808_(arg0, arg1)
									local function __FUNC_4998_(arg0, arg1)
										local function __FUNC_4B28_(arg0, arg1)
											local function __FUNC_4CB8_(arg0, arg1)
												local function __FUNC_4E48_(arg0, arg1)
													local function __FUNC_4FD8_(arg0, arg1)
														local function __FUNC_5168_(arg0, arg1)
															local function __FUNC_52F8_(arg0, arg1)
																local function __FUNC_5488_(arg0, arg1)
																	local function __FUNC_5618_(arg0, arg1)
																		if not arg1.interrupted then
																			arg0:beginAnimation("keyframe", 1670.000000, true, true, CoD.TweenType.Linear)
																		end
																		arg0:setLeftRight(true, false, 296.000000, 356.000000)
																		arg0:setTopBottom(true, false, 67.000000, 127.000000)
																		if arg1.interrupted then
																			registerVal2.clipFinished(arg0, arg1)
																		else
																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																		end
																	end

																	if arg1.interrupted then
																		__FUNC_5618_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
																	arg0:setTopBottom(true, false, 64.000000, 124.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5618_)
																end

																if arg1.interrupted then
																	__FUNC_5488_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
																arg0:setTopBottom(true, false, 67.000000, 127.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5488_)
															end

															if arg1.interrupted then
																__FUNC_52F8_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
															arg0:setTopBottom(true, false, 64.000000, 124.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52F8_)
														end

														if arg1.interrupted then
															__FUNC_5168_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
														arg0:setTopBottom(true, false, 67.000000, 127.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5168_)
													end

													if arg1.interrupted then
														__FUNC_4FD8_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
													arg0:setTopBottom(true, false, 64.000000, 124.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FD8_)
												end

												if arg1.interrupted then
													__FUNC_4E48_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
												arg0:setTopBottom(true, false, 67.000000, 127.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E48_)
											end

											if arg1.interrupted then
												__FUNC_4CB8_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
											arg0:setTopBottom(true, false, 64.000000, 124.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CB8_)
										end

										if arg1.interrupted then
											__FUNC_4B28_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
										arg0:setTopBottom(true, false, 67.000000, 127.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B28_)
									end

									if arg1.interrupted then
										__FUNC_4998_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
									arg0:setTopBottom(true, false, 64.000000, 124.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4998_)
								end

								if arg1.interrupted then
									__FUNC_4808_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 67.000000, 127.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4808_)
							end

							if arg1.interrupted then
								__FUNC_4678_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 64.000000, 124.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4678_)
						end

						if arg1.interrupted then
							__FUNC_44E8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 67.000000, 127.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44E8_)
					end

					if arg1.interrupted then
						__FUNC_4358_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 64.000000, 124.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4358_)
				end

				if arg1.interrupted then
					__FUNC_41C8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1499.000000, true, true, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 67.000000, 127.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41C8_)
			end

			if arg1.interrupted then
				__FUNC_4038_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1330.000000, true, true, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 64.000000, 124.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4038_)
		end

		registerVal13:completeAnimation()
		registerVal2.Ball:setLeftRight(true, false, 296.000000, 356.000000)
		registerVal2.Ball:setTopBottom(true, false, 67.000000, 127.000000)
		__FUNC_3EAA_(registerVal13, {})
		local function __FUNC_581A_(arg0, arg1)
			local function __FUNC_59A8_(arg0, arg1)
				local function __FUNC_5B38_(arg0, arg1)
					local function __FUNC_5CC8_(arg0, arg1)
						local function __FUNC_5E58_(arg0, arg1)
							local function __FUNC_5FE8_(arg0, arg1)
								local function __FUNC_6178_(arg0, arg1)
									local function __FUNC_6308_(arg0, arg1)
										local function __FUNC_6498_(arg0, arg1)
											local function __FUNC_6628_(arg0, arg1)
												local function __FUNC_67B8_(arg0, arg1)
													local function __FUNC_6948_(arg0, arg1)
														local function __FUNC_6AD8_(arg0, arg1)
															local function __FUNC_6C68_(arg0, arg1)
																local function __FUNC_6DF8_(arg0, arg1)
																	local function __FUNC_6F88_(arg0, arg1)
																		if not arg1.interrupted then
																			arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
																		end
																		arg0:setLeftRight(true, false, 348.000000, 468.000000)
																		arg0:setTopBottom(true, false, 14.500000, 134.500000)
																		if arg1.interrupted then
																			registerVal2.clipFinished(arg0, arg1)
																		else
																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																		end
																	end

																	if arg1.interrupted then
																		__FUNC_6F88_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
																	arg0:setTopBottom(true, false, 11.000000, 131.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F88_)
																end

																if arg1.interrupted then
																	__FUNC_6DF8_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
																arg0:setTopBottom(true, false, 14.500000, 134.500000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6DF8_)
															end

															if arg1.interrupted then
																__FUNC_6C68_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
															arg0:setTopBottom(true, false, 11.000000, 131.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C68_)
														end

														if arg1.interrupted then
															__FUNC_6AD8_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
														arg0:setTopBottom(true, false, 14.500000, 134.500000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6AD8_)
													end

													if arg1.interrupted then
														__FUNC_6948_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
													arg0:setTopBottom(true, false, 11.000000, 131.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6948_)
												end

												if arg1.interrupted then
													__FUNC_67B8_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
												arg0:setTopBottom(true, false, 14.500000, 134.500000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67B8_)
											end

											if arg1.interrupted then
												__FUNC_6628_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
											arg0:setTopBottom(true, false, 11.000000, 131.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6628_)
										end

										if arg1.interrupted then
											__FUNC_6498_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
										arg0:setTopBottom(true, false, 14.500000, 134.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6498_)
									end

									if arg1.interrupted then
										__FUNC_6308_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
									arg0:setTopBottom(true, false, 11.000000, 131.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6308_)
								end

								if arg1.interrupted then
									__FUNC_6178_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 14.500000, 134.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6178_)
							end

							if arg1.interrupted then
								__FUNC_5FE8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 11.000000, 131.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FE8_)
						end

						if arg1.interrupted then
							__FUNC_5E58_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 14.500000, 134.500000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E58_)
					end

					if arg1.interrupted then
						__FUNC_5CC8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 11.000000, 131.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CC8_)
				end

				if arg1.interrupted then
					__FUNC_5B38_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 14.500000, 134.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B38_)
			end

			if arg1.interrupted then
				__FUNC_59A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1500.000000, true, true, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 11.000000, 131.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59A8_)
		end

		registerVal14:completeAnimation()
		registerVal2.Soldier:setLeftRight(true, false, 348.000000, 468.000000)
		registerVal2.Soldier:setTopBottom(true, false, 14.500000, 134.500000)
		__FUNC_581A_(registerVal14, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal16.DefaultClip = __FUNC_EF5_
	registerVal15.DefaultState = registerVal16
	registerVal2.clipsPerState = registerVal15
	local function __FUNC_718A_(arg0)
		arg0.Soldier:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_718A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


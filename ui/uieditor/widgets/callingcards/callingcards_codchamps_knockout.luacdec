-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_CodChamps_Knockout = registerVal1
function CoD.CallingCards_CodChamps_Knockout.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_CodChamps_Knockout)
	registerVal2.id = "CallingCards_CodChamps_Knockout"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_knockout_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcards_knockout_lightblur"))
	registerVal2:addElement(registerVal4)
	registerVal2.bg2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcards_knockout_fighters1"))
	registerVal2:addElement(registerVal5)
	registerVal2.fighters1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcards_knockout_fighters2"))
	registerVal2:addElement(registerVal6)
	registerVal2.fighters2 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcards_knockout_fighters3"))
	registerVal2:addElement(registerVal7)
	registerVal2.fighters3 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 216.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcards_knockout_blood1"))
	registerVal2:addElement(registerVal8)
	registerVal2.blood1 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 473.000000, 689.000000)
	registerVal9:setTopBottom(true, false, 55.000000, 175.000000)
	registerVal9:setZRot(-189.000000)
	registerVal9:setScale(1.900000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcards_knockout_blood1"))
	registerVal2:addElement(registerVal9)
	registerVal2.blood10 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -161.000000, 55.000000)
	registerVal10:setTopBottom(true, false, -60.000000, 60.000000)
	registerVal10:setScale(2.100000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcards_knockout_blood2"))
	registerVal2:addElement(registerVal10)
	registerVal2.blood20 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 137.000000, 353.000000)
	registerVal11:setTopBottom(true, false, 3.000000, 123.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZRot(-19.000000)
	registerVal11:setScale(2.100000)
	registerVal11:setImage(RegisterImage("uie_t7_callingcards_knockout_blood2"))
	registerVal2:addElement(registerVal11)
	registerVal2.blood200 = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_B6B_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_1119_(arg0, arg1)
			local function __FUNC_1270_(arg0, arg1)
				local function __FUNC_13EB_(arg0, arg1)
					local function __FUNC_1563_(arg0, arg1)
						local function __FUNC_16DB_(arg0, arg1)
							local function __FUNC_1853_(arg0, arg1)
								local function __FUNC_19CB_(arg0, arg1)
									local function __FUNC_1B43_(arg0, arg1)
										local function __FUNC_1CBB_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 769.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_1CBB_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CBB_)
									end

									if arg1.interrupted then
										__FUNC_1B43_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 1100.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.590000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B43_)
								end

								if arg1.interrupted then
									__FUNC_19CB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19CB_)
							end

							if arg1.interrupted then
								__FUNC_1853_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.600000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1853_)
						end

						if arg1.interrupted then
							__FUNC_16DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16DB_)
					end

					if arg1.interrupted then
						__FUNC_1563_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.610000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1563_)
				end

				if arg1.interrupted then
					__FUNC_13EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13EB_)
			end

			if arg1.interrupted then
				__FUNC_1270_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 930.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1270_)
		end

		registerVal4:completeAnimation()
		registerVal2.bg2:setAlpha(0.000000)
		__FUNC_1119_(registerVal4, {})
		local function __FUNC_1E6D_(arg0, arg1)
			local function __FUNC_1FC4_(arg0, arg1)
				local function __FUNC_213F_(arg0, arg1)
					local function __FUNC_2294_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2294_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 2849.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2294_)
				end

				if arg1.interrupted then
					__FUNC_213F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_213F_)
			end

			if arg1.interrupted then
				__FUNC_1FC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FC4_)
		end

		registerVal5:completeAnimation()
		registerVal2.fighters1:setAlpha(1.000000)
		__FUNC_1E6D_(registerVal5, {})
		local function __FUNC_2449_(arg0, arg1)
			local function __FUNC_25A0_(arg0, arg1)
				local function __FUNC_271B_(arg0, arg1)
					local function __FUNC_2870_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2870_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2870_)
				end

				if arg1.interrupted then
					__FUNC_271B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_271B_)
			end

			if arg1.interrupted then
				__FUNC_25A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25A0_)
		end

		registerVal6:completeAnimation()
		registerVal2.fighters2:setAlpha(0.000000)
		__FUNC_2449_(registerVal6, {})
		local function __FUNC_2A25_(arg0, arg1)
			local function __FUNC_2B9F_(arg0, arg1)
				local function __FUNC_2CF4_(arg0, arg1)
					local function __FUNC_2E6F_(arg0, arg1)
						local function __FUNC_301F_(arg0, arg1)
							local function __FUNC_31F2_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 0.000000, 480.000000)
								arg0:setTopBottom(true, false, 4.000000, 124.000000)
								arg0:setAlpha(0.000000)
								arg0:setScale(1.100000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_31F2_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 3.860000, 123.860000)
							arg0:setAlpha(0.150000)
							arg0:setScale(1.100000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31F2_)
						end

						if arg1.interrupted then
							__FUNC_301F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1929.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 3.040000, 123.040000)
						arg0:setScale(1.080000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_301F_)
					end

					if arg1.interrupted then
						__FUNC_2E6F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(1.030000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E6F_)
				end

				if arg1.interrupted then
					__FUNC_2CF4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CF4_)
			end

			if arg1.interrupted then
				__FUNC_2B9F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B9F_)
		end

		registerVal7:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setLeftRight(true, false, 0.000000, 480.000000)
		registerVal7:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal7:setAlpha(0.000000)
		registerVal7:setScale(1.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_2A25_)
		local function __FUNC_3433_(arg0, arg1)
			local function __FUNC_3588_(arg0, arg1)
				local function __FUNC_3796_(arg0, arg1)
					local function __FUNC_390F_(arg0, arg1)
						local function __FUNC_3AF7_(arg0, arg1)
							local function __FUNC_3C4C_(arg0, arg1)
								local function __FUNC_3DC7_(arg0, arg1)
									local function __FUNC_3F1C_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 309.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, false, -120.000000, 96.000000)
										arg0:setTopBottom(true, false, -50.000000, 70.000000)
										arg0:setAlpha(0.000000)
										arg0:setScale(1.800000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_3F1C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 1750.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F1C_)
								end

								if arg1.interrupted then
									__FUNC_3DC7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DC7_)
							end

							if arg1.interrupted then
								__FUNC_3C4C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C4C_)
						end

						if arg1.interrupted then
							__FUNC_3AF7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, -120.000000, 96.000000)
						arg0:setTopBottom(true, false, -50.000000, 70.000000)
						arg0:setScale(1.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AF7_)
					end

					if arg1.interrupted then
						__FUNC_390F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_390F_)
				end

				if arg1.interrupted then
					__FUNC_3796_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -76.000000, 140.000000)
				arg0:setTopBottom(true, false, 0.000000, 120.000000)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.200000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3796_)
			end

			if arg1.interrupted then
				__FUNC_3588_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 660.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3588_)
		end

		registerVal8:completeAnimation()
		registerVal2.blood1:setLeftRight(true, false, 39.000000, 255.000000)
		registerVal2.blood1:setTopBottom(true, false, -13.000000, 107.000000)
		registerVal2.blood1:setAlpha(0.000000)
		registerVal2.blood1:setScale(0.700000)
		__FUNC_3433_(registerVal8, {})
		local function __FUNC_4164_(arg0, arg1)
			local function __FUNC_42BC_(arg0, arg1)
				local function __FUNC_4437_(arg0, arg1)
					local function __FUNC_458C_(arg0, arg1)
						local function __FUNC_4707_(arg0, arg1)
							local function __FUNC_485C_(arg0, arg1)
								local function __FUNC_4A24_(arg0, arg1)
									local function __FUNC_4BEC_(arg0, arg1)
										local function __FUNC_4D67_(arg0, arg1)
											local function __FUNC_4EBC_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 410.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 188.000000, 404.000000)
												arg0:setTopBottom(true, false, 137.000000, 257.000000)
												arg0:setAlpha(0.000000)
												arg0:setZRot(-206.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_4EBC_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 1609.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EBC_)
										end

										if arg1.interrupted then
											__FUNC_4D67_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.500000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D67_)
									end

									if arg1.interrupted then
										__FUNC_4BEC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 188.000000, 404.000000)
									arg0:setTopBottom(true, false, 137.000000, 257.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BEC_)
								end

								if arg1.interrupted then
									__FUNC_4A24_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 196.000000, 412.000000)
								arg0:setTopBottom(true, false, 89.000000, 209.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A24_)
							end

							if arg1.interrupted then
								__FUNC_485C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_485C_)
						end

						if arg1.interrupted then
							__FUNC_4707_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4707_)
					end

					if arg1.interrupted then
						__FUNC_458C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_458C_)
				end

				if arg1.interrupted then
					__FUNC_4437_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4437_)
			end

			if arg1.interrupted then
				__FUNC_42BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1139.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42BC_)
		end

		registerVal9:completeAnimation()
		registerVal2.blood10:setLeftRight(true, false, 473.000000, 689.000000)
		registerVal2.blood10:setTopBottom(true, false, 55.000000, 175.000000)
		registerVal2.blood10:setAlpha(0.000000)
		registerVal2.blood10:setZRot(-206.000000)
		__FUNC_4164_(registerVal9, {})
		local function __FUNC_5103_(arg0, arg1)
			local function __FUNC_5258_(arg0, arg1)
				local function __FUNC_53D3_(arg0, arg1)
					local function __FUNC_5528_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5528_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 2599.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5528_)
				end

				if arg1.interrupted then
					__FUNC_53D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53D3_)
			end

			if arg1.interrupted then
				__FUNC_5258_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 910.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5258_)
		end

		registerVal10:completeAnimation()
		registerVal2.blood20:setAlpha(0.000000)
		__FUNC_5103_(registerVal10, {})
		local function __FUNC_56DD_(arg0, arg1)
			local function __FUNC_5834_(arg0, arg1)
				local function __FUNC_59AF_(arg0, arg1)
					local function __FUNC_5B04_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5B04_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1609.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B04_)
				end

				if arg1.interrupted then
					__FUNC_59AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59AF_)
			end

			if arg1.interrupted then
				__FUNC_5834_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1909.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5834_)
		end

		registerVal11:completeAnimation()
		registerVal2.blood200:setAlpha(0.000000)
		__FUNC_56DD_(registerVal11, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal13.DefaultClip = __FUNC_B6B_
	registerVal12.DefaultState = registerVal13
	registerVal2.clipsPerState = registerVal12
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


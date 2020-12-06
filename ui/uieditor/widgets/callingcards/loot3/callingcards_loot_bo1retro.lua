-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_loot_BO1retro = registerVal1
function CoD.CallingCards_loot_BO1retro.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_loot_BO1retro)
	registerVal2.id = "CallingCards_loot_BO1retro"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_loot_callingcard_bo1retro_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 68.090000, 514.910000)
	registerVal4:setTopBottom(true, false, -86.360000, 252.360000)
	registerVal4:setRGB(0.900000, 1.000000, 0.850000)
	registerVal4:setAlpha(0.200000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow00 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_loot_callingcard_bo1retro_mid"))
	registerVal2:addElement(registerVal5)
	registerVal2.mid = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 225.000000, 321.000000)
	registerVal6:setTopBottom(true, false, -1.000000, 71.000000)
	registerVal6:setImage(RegisterImage("uie_t7_loot_callingcard_bo1retro_glow1"))
	registerVal2:addElement(registerVal6)
	registerVal2.glow1 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 301.000000, 397.000000)
	registerVal7:setTopBottom(true, false, 11.000000, 83.000000)
	registerVal7:setImage(RegisterImage("uie_t7_loot_callingcard_bo1retro_glow2"))
	registerVal2:addElement(registerVal7)
	registerVal2.glow2 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 281.000000, 377.000000)
	registerVal8:setTopBottom(true, false, -18.000000, 55.000000)
	registerVal8:setImage(RegisterImage("uie_t7_loot_callingcard_bo1retro_glow3"))
	registerVal2:addElement(registerVal8)
	registerVal2.glow3 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 241.000000, 301.000000)
	registerVal9:setTopBottom(true, false, 1.000000, 61.000000)
	registerVal9:setRGB(0.830000, 1.000000, 0.680000)
	registerVal9:setAlpha(0.800000)
	registerVal9:setImage(RegisterImage("uie_t7_loot_callingcard_bo1retro_static1"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
	registerVal9:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.static1 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 319.000000, 379.000000)
	registerVal10:setTopBottom(true, false, 15.000000, 75.000000)
	registerVal10:setRGB(0.830000, 1.000000, 0.680000)
	registerVal10:setAlpha(0.800000)
	registerVal10:setImage(RegisterImage("uie_t7_loot_callingcard_bo1retro_static2"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
	registerVal10:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.static2 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 297.500000, 357.500000)
	registerVal11:setTopBottom(true, false, -15.000000, 45.000000)
	registerVal11:setRGB(0.830000, 1.000000, 0.680000)
	registerVal11:setAlpha(0.800000)
	registerVal11:setImage(RegisterImage("uie_t7_loot_callingcard_bo1retro_static3"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
	registerVal11:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.static3 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 243.000000, 303.000000)
	registerVal12:setTopBottom(true, false, 5.000000, 65.000000)
	registerVal12:setImage(RegisterImage("uie_t7_loot_callingcard_bo1retro_face1"))
	registerVal2:addElement(registerVal12)
	registerVal2.face1 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 320.000000, 380.000000)
	registerVal13:setTopBottom(true, false, 5.000000, 65.000000)
	registerVal13:setImage(RegisterImage("uie_t7_loot_callingcard_bo1retro_face2"))
	registerVal2:addElement(registerVal13)
	registerVal2.face2 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 297.500000, 357.500000)
	registerVal14:setTopBottom(true, false, -28.000000, 32.000000)
	registerVal14:setImage(RegisterImage("uie_t7_loot_callingcard_bo1retro_face3"))
	registerVal2:addElement(registerVal14)
	registerVal2.face3 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 303.000000, 705.820000)
	registerVal15:setTopBottom(true, false, -1.000000, 396.720000)
	registerVal15:setRGB(1.000000, 0.000000, 0.060000)
	registerVal15:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Glow000 = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_10BF_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_14F7_(arg0, arg1)
			local function __FUNC_164C_(arg0, arg1)
				local function __FUNC_17C7_(arg0, arg1)
					local function __FUNC_191C_(arg0, arg1)
						local function __FUNC_1A97_(arg0, arg1)
							local function __FUNC_1C0F_(arg0, arg1)
								local function __FUNC_1D87_(arg0, arg1)
									local function __FUNC_1EFF_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_1EFF_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.060000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EFF_)
								end

								if arg1.interrupted then
									__FUNC_1D87_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D87_)
							end

							if arg1.interrupted then
								__FUNC_1C0F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.040000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C0F_)
						end

						if arg1.interrupted then
							__FUNC_1A97_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A97_)
					end

					if arg1.interrupted then
						__FUNC_191C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_191C_)
				end

				if arg1.interrupted then
					__FUNC_17C7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.110000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17C7_)
			end

			if arg1.interrupted then
				__FUNC_164C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_164C_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow00:setAlpha(0.000000)
		__FUNC_14F7_(registerVal4, {})
		local function __FUNC_20B1_(arg0, arg1)
			local function __FUNC_222B_(arg0, arg1)
				local function __FUNC_23A3_(arg0, arg1)
					local function __FUNC_24F8_(arg0, arg1)
						local function __FUNC_2673_(arg0, arg1)
							local function __FUNC_27C8_(arg0, arg1)
								local function __FUNC_2943_(arg0, arg1)
									local function __FUNC_2A98_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(1.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_2A98_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A98_)
								end

								if arg1.interrupted then
									__FUNC_2943_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2943_)
							end

							if arg1.interrupted then
								__FUNC_27C8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27C8_)
						end

						if arg1.interrupted then
							__FUNC_2673_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2673_)
					end

					if arg1.interrupted then
						__FUNC_24F8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 599.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24F8_)
				end

				if arg1.interrupted then
					__FUNC_23A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23A3_)
			end

			if arg1.interrupted then
				__FUNC_222B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_222B_)
		end

		registerVal6:completeAnimation()
		registerVal2.glow1:setAlpha(0.000000)
		__FUNC_20B1_(registerVal6, {})
		local function __FUNC_2C4D_(arg0, arg1)
			local function __FUNC_2DA4_(arg0, arg1)
				local function __FUNC_2F1F_(arg0, arg1)
					local function __FUNC_3074_(arg0, arg1)
						local function __FUNC_31EF_(arg0, arg1)
							local function __FUNC_3344_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3344_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3344_)
						end

						if arg1.interrupted then
							__FUNC_31EF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31EF_)
					end

					if arg1.interrupted then
						__FUNC_3074_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3074_)
				end

				if arg1.interrupted then
					__FUNC_2F1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F1F_)
			end

			if arg1.interrupted then
				__FUNC_2DA4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DA4_)
		end

		registerVal7:completeAnimation()
		registerVal2.glow2:setAlpha(0.000000)
		__FUNC_2C4D_(registerVal7, {})
		local function __FUNC_34F9_(arg0, arg1)
			local function __FUNC_3650_(arg0, arg1)
				local function __FUNC_37CB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_37CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37CB_)
			end

			if arg1.interrupted then
				__FUNC_3650_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3650_)
		end

		registerVal8:completeAnimation()
		registerVal2.glow3:setAlpha(1.000000)
		__FUNC_34F9_(registerVal8, {})
		local function __FUNC_397D_(arg0, arg1)
			local function __FUNC_3AF7_(arg0, arg1)
				local function __FUNC_3C6F_(arg0, arg1)
					local function __FUNC_3DC4_(arg0, arg1)
						local function __FUNC_3F3F_(arg0, arg1)
							local function __FUNC_4094_(arg0, arg1)
								local function __FUNC_420F_(arg0, arg1)
									local function __FUNC_4364_(arg0, arg1)
										local function __FUNC_44DF_(arg0, arg1)
											local function __FUNC_4634_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(0.800000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_4634_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 619.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4634_)
										end

										if arg1.interrupted then
											__FUNC_44DF_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44DF_)
									end

									if arg1.interrupted then
										__FUNC_4364_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4364_)
								end

								if arg1.interrupted then
									__FUNC_420F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.800000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_420F_)
							end

							if arg1.interrupted then
								__FUNC_4094_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4094_)
						end

						if arg1.interrupted then
							__FUNC_3F3F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F3F_)
					end

					if arg1.interrupted then
						__FUNC_3DC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 599.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DC4_)
				end

				if arg1.interrupted then
					__FUNC_3C6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C6F_)
			end

			if arg1.interrupted then
				__FUNC_3AF7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AF7_)
		end

		registerVal9:completeAnimation()
		registerVal2.static1:setAlpha(0.800000)
		__FUNC_397D_(registerVal9, {})
		local function __FUNC_47E9_(arg0, arg1)
			local function __FUNC_4940_(arg0, arg1)
				local function __FUNC_4ABB_(arg0, arg1)
					local function __FUNC_4C10_(arg0, arg1)
						local function __FUNC_4D8B_(arg0, arg1)
							local function __FUNC_4EE0_(arg0, arg1)
								local function __FUNC_505B_(arg0, arg1)
									local function __FUNC_51B0_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.800000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_51B0_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51B0_)
								end

								if arg1.interrupted then
									__FUNC_505B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_505B_)
							end

							if arg1.interrupted then
								__FUNC_4EE0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 650.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EE0_)
						end

						if arg1.interrupted then
							__FUNC_4D8B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.800000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D8B_)
					end

					if arg1.interrupted then
						__FUNC_4C10_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C10_)
				end

				if arg1.interrupted then
					__FUNC_4ABB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4ABB_)
			end

			if arg1.interrupted then
				__FUNC_4940_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4940_)
		end

		registerVal10:completeAnimation()
		registerVal2.static2:setAlpha(0.800000)
		__FUNC_47E9_(registerVal10, {})
		local function __FUNC_5365_(arg0, arg1)
			local function __FUNC_54BC_(arg0, arg1)
				local function __FUNC_5637_(arg0, arg1)
					local function __FUNC_57AF_(arg0, arg1)
						local function __FUNC_5904_(arg0, arg1)
							local function __FUNC_5A7F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_5A7F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.800000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A7F_)
						end

						if arg1.interrupted then
							__FUNC_5904_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 949.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5904_)
					end

					if arg1.interrupted then
						__FUNC_57AF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_57AF_)
				end

				if arg1.interrupted then
					__FUNC_5637_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5637_)
			end

			if arg1.interrupted then
				__FUNC_54BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54BC_)
		end

		registerVal11:completeAnimation()
		registerVal2.static3:setAlpha(0.000000)
		__FUNC_5365_(registerVal11, {})
		local function __FUNC_5C31_(arg0, arg1)
			local function __FUNC_5DAB_(arg0, arg1)
				local function __FUNC_5F23_(arg0, arg1)
					local function __FUNC_6078_(arg0, arg1)
						local function __FUNC_61F3_(arg0, arg1)
							local function __FUNC_6348_(arg0, arg1)
								local function __FUNC_64C3_(arg0, arg1)
									local function __FUNC_6618_(arg0, arg1)
										local function __FUNC_6793_(arg0, arg1)
											local function __FUNC_68E8_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(0.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_68E8_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 619.000000, false, false, CoD.TweenType.Linear)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_68E8_)
										end

										if arg1.interrupted then
											__FUNC_6793_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6793_)
									end

									if arg1.interrupted then
										__FUNC_6618_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6618_)
								end

								if arg1.interrupted then
									__FUNC_64C3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64C3_)
							end

							if arg1.interrupted then
								__FUNC_6348_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6348_)
						end

						if arg1.interrupted then
							__FUNC_61F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61F3_)
					end

					if arg1.interrupted then
						__FUNC_6078_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 599.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6078_)
				end

				if arg1.interrupted then
					__FUNC_5F23_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F23_)
			end

			if arg1.interrupted then
				__FUNC_5DAB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5DAB_)
		end

		registerVal12:completeAnimation()
		registerVal2.face1:setAlpha(0.000000)
		__FUNC_5C31_(registerVal12, {})
		local function __FUNC_6A9D_(arg0, arg1)
			local function __FUNC_6BF4_(arg0, arg1)
				local function __FUNC_6D6F_(arg0, arg1)
					local function __FUNC_6EC4_(arg0, arg1)
						local function __FUNC_703F_(arg0, arg1)
							local function __FUNC_7194_(arg0, arg1)
								local function __FUNC_730F_(arg0, arg1)
									local function __FUNC_7464_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_7464_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7464_)
								end

								if arg1.interrupted then
									__FUNC_730F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_730F_)
							end

							if arg1.interrupted then
								__FUNC_7194_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 639.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7194_)
						end

						if arg1.interrupted then
							__FUNC_703F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_703F_)
					end

					if arg1.interrupted then
						__FUNC_6EC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6EC4_)
				end

				if arg1.interrupted then
					__FUNC_6D6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D6F_)
			end

			if arg1.interrupted then
				__FUNC_6BF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BF4_)
		end

		registerVal13:completeAnimation()
		registerVal2.face2:setAlpha(0.000000)
		__FUNC_6A9D_(registerVal13, {})
		local function __FUNC_7619_(arg0, arg1)
			local function __FUNC_7793_(arg0, arg1)
				local function __FUNC_790B_(arg0, arg1)
					local function __FUNC_7A60_(arg0, arg1)
						local function __FUNC_7BDB_(arg0, arg1)
							local function __FUNC_7D53_(arg0, arg1)
								local function __FUNC_7EA8_(arg0, arg1)
									local function __FUNC_8023_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(1.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_8023_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8023_)
								end

								if arg1.interrupted then
									__FUNC_7EA8_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 949.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7EA8_)
							end

							if arg1.interrupted then
								__FUNC_7D53_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7D53_)
						end

						if arg1.interrupted then
							__FUNC_7BDB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BDB_)
					end

					if arg1.interrupted then
						__FUNC_7A60_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A60_)
				end

				if arg1.interrupted then
					__FUNC_790B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_790B_)
			end

			if arg1.interrupted then
				__FUNC_7793_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.850000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7793_)
		end

		registerVal14:completeAnimation()
		registerVal2.face3:setAlpha(1.000000)
		__FUNC_7619_(registerVal14, {})
		local function __FUNC_81D5_(arg0, arg1)
			local function __FUNC_834F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 459.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_834F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_834F_)
		end

		registerVal15:completeAnimation()
		registerVal2.Glow000:setAlpha(0.000000)
		__FUNC_81D5_(registerVal15, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal17.DefaultClip = __FUNC_10BF_
	registerVal16.DefaultState = registerVal17
	registerVal2.clipsPerState = registerVal16
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


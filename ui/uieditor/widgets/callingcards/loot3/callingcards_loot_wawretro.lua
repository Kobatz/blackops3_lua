-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_loot_WAWretro = registerVal1
function CoD.CallingCards_loot_WAWretro.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_loot_WAWretro)
	registerVal2.id = "CallingCards_loot_WAWretro"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -68.000000, 364.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_loot_callingcard_wawretro_smoke"))
	registerVal2:addElement(registerVal4)
	registerVal2.smoke = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -68.000000, 364.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal5:setImage(RegisterImage("uie_t7_loot_callingcard_wawretro_smoke"))
	registerVal2:addElement(registerVal5)
	registerVal2.smoke0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 219.000000, 389.000000)
	registerVal6:setTopBottom(true, false, 88.500000, 173.500000)
	registerVal6:setRGB(0.530000, 0.530000, 0.530000)
	registerVal6:setZRot(-59.000000)
	registerVal6:setImage(RegisterImage("uie_t7_loot_callingcard_wawretro_leaf1"))
	registerVal2:addElement(registerVal6)
	registerVal2.Image0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal7:setImage(RegisterImage("uie_t7_loot_callingcard_wawretro_mid"))
	registerVal2:addElement(registerVal7)
	registerVal2.mid = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 282.000000, 456.820000)
	registerVal8:setTopBottom(true, false, 11.500000, 296.700000)
	registerVal8:setRGB(1.000000, 0.910000, 0.430000)
	registerVal8:setAlpha(0.710000)
	registerVal8:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Glow000 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 137.000000, 307.000000)
	registerVal9:setTopBottom(true, false, -13.000000, 72.000000)
	registerVal9:setRGB(0.400000, 0.400000, 0.400000)
	registerVal9:setZRot(23.000000)
	registerVal9:setImage(RegisterImage("uie_t7_loot_callingcard_wawretro_leaf1"))
	registerVal2:addElement(registerVal9)
	registerVal2.leaf2 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 150.000000, 414.000000)
	registerVal10:setTopBottom(true, false, -23.000000, 109.000000)
	registerVal10:setImage(RegisterImage("uie_t7_loot_callingcard_wawretro_leaf1"))
	registerVal2:addElement(registerVal10)
	registerVal2.leaf1 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 130.000000, 166.000000)
	registerVal11:setTopBottom(true, false, 33.500000, 69.500000)
	registerVal11:setImage(RegisterImage("uie_t7_loot_callingcard_wawretro_eye1"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image1 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 54.000000, 90.000000)
	registerVal12:setTopBottom(true, false, 33.500000, 69.500000)
	registerVal12:setImage(RegisterImage("uie_t7_loot_callingcard_wawretro_eye2"))
	registerVal2:addElement(registerVal12)
	registerVal2.Image2 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 94.000000, 130.000000)
	registerVal13:setTopBottom(true, false, 51.500000, 87.500000)
	registerVal13:setImage(RegisterImage("uie_t7_loot_callingcard_wawretro_eye3"))
	registerVal2:addElement(registerVal13)
	registerVal2.Image3 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 5.000000, 41.000000)
	registerVal14:setTopBottom(true, false, 4.500000, 40.500000)
	registerVal14:setImage(RegisterImage("uie_t7_loot_callingcard_wawretro_eye2"))
	registerVal2:addElement(registerVal14)
	registerVal2.Image4 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 79.000000, 115.000000)
	registerVal15:setTopBottom(true, false, 11.500000, 47.500000)
	registerVal15:setImage(RegisterImage("uie_t7_loot_callingcard_wawretro_eye2"))
	registerVal2:addElement(registerVal15)
	registerVal2.Image5 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 282.000000, 456.820000)
	registerVal16:setTopBottom(true, false, 30.900000, 316.100000)
	registerVal16:setRGB(1.000000, 0.910000, 0.430000)
	registerVal16:setAlpha(0.200000)
	registerVal16:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.eyesGlow = registerVal16
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_F3D_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_1544_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 54.000000, 486.000000)
			arg0:setTopBottom(true, false, 0.000000, 120.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.smoke:setLeftRight(true, false, -50.000000, 382.000000)
		registerVal2.smoke:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.smoke:setAlpha(1.000000)
		__FUNC_1544_(registerVal4, {})
		local function __FUNC_1764_(arg0, arg1)
			local function __FUNC_18F4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, -54.000000, 378.000000)
				arg0:setTopBottom(true, false, 0.000000, 120.000000)
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_18F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -96.000000, 336.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18F4_)
		end

		registerVal5:completeAnimation()
		registerVal2.smoke0:setLeftRight(true, false, -50.000000, 382.000000)
		registerVal2.smoke0:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.smoke0:setAlpha(0.000000)
		__FUNC_1764_(registerVal5, {})
		local function __FUNC_1B19_(arg0, arg1)
			local function __FUNC_1C93_(arg0, arg1)
				local function __FUNC_1E0B_(arg0, arg1)
					local function __FUNC_1F83_(arg0, arg1)
						local function __FUNC_20FB_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.200000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_20FB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.730000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20FB_)
					end

					if arg1.interrupted then
						__FUNC_1F83_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.440000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F83_)
				end

				if arg1.interrupted then
					__FUNC_1E0B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E0B_)
			end

			if arg1.interrupted then
				__FUNC_1C93_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C93_)
		end

		registerVal8:completeAnimation()
		registerVal2.Glow000:setAlpha(0.200000)
		__FUNC_1B19_(registerVal8, {})
		local function __FUNC_22AD_(arg0, arg1)
			local function __FUNC_2426_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 150.000000, 414.000000)
				arg0:setTopBottom(true, false, -12.000000, 120.000000)
				arg0:setZRot(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2426_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1009.000000, false, false, CoD.TweenType.Linear)
			arg0:setZRot(8.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2426_)
		end

		registerVal10:completeAnimation()
		registerVal2.leaf1:setLeftRight(true, false, 150.000000, 414.000000)
		registerVal2.leaf1:setTopBottom(true, false, -12.000000, 120.000000)
		registerVal2.leaf1:setZRot(0.000000)
		__FUNC_22AD_(registerVal10, {})
		local function __FUNC_2648_(arg0, arg1)
			local function __FUNC_27A0_(arg0, arg1)
				local function __FUNC_291B_(arg0, arg1)
					local function __FUNC_2A93_(arg0, arg1)
						local function __FUNC_2C0B_(arg0, arg1)
							local function __FUNC_2D60_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2D60_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D60_)
						end

						if arg1.interrupted then
							__FUNC_2C0B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C0B_)
					end

					if arg1.interrupted then
						__FUNC_2A93_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A93_)
				end

				if arg1.interrupted then
					__FUNC_291B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_291B_)
			end

			if arg1.interrupted then
				__FUNC_27A0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27A0_)
		end

		registerVal11:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		__FUNC_2648_(registerVal11, {})
		local function __FUNC_2F15_(arg0, arg1)
			local function __FUNC_306C_(arg0, arg1)
				local function __FUNC_31E7_(arg0, arg1)
					local function __FUNC_335F_(arg0, arg1)
						local function __FUNC_34D7_(arg0, arg1)
							local function __FUNC_362C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_362C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 850.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_362C_)
						end

						if arg1.interrupted then
							__FUNC_34D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34D7_)
					end

					if arg1.interrupted then
						__FUNC_335F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_335F_)
				end

				if arg1.interrupted then
					__FUNC_31E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31E7_)
			end

			if arg1.interrupted then
				__FUNC_306C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_306C_)
		end

		registerVal12:completeAnimation()
		registerVal2.Image2:setAlpha(0.000000)
		__FUNC_2F15_(registerVal12, {})
		local function __FUNC_37E1_(arg0, arg1)
			local function __FUNC_3938_(arg0, arg1)
				local function __FUNC_3AB3_(arg0, arg1)
					local function __FUNC_3C08_(arg0, arg1)
						local function __FUNC_3D83_(arg0, arg1)
							local function __FUNC_3EFB_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3EFB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EFB_)
						end

						if arg1.interrupted then
							__FUNC_3D83_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D83_)
					end

					if arg1.interrupted then
						__FUNC_3C08_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C08_)
				end

				if arg1.interrupted then
					__FUNC_3AB3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AB3_)
			end

			if arg1.interrupted then
				__FUNC_3938_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 910.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3938_)
		end

		registerVal13:completeAnimation()
		registerVal2.Image3:setAlpha(1.000000)
		__FUNC_37E1_(registerVal13, {})
		local function __FUNC_40AD_(arg0, arg1)
			local function __FUNC_4227_(arg0, arg1)
				local function __FUNC_439F_(arg0, arg1)
					local function __FUNC_4517_(arg0, arg1)
						local function __FUNC_468F_(arg0, arg1)
							local function __FUNC_47E4_(arg0, arg1)
								local function __FUNC_495F_(arg0, arg1)
									local function __FUNC_4AB4_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(1.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_4AB4_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4AB4_)
								end

								if arg1.interrupted then
									__FUNC_495F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_495F_)
							end

							if arg1.interrupted then
								__FUNC_47E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 359.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47E4_)
						end

						if arg1.interrupted then
							__FUNC_468F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_468F_)
					end

					if arg1.interrupted then
						__FUNC_4517_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4517_)
				end

				if arg1.interrupted then
					__FUNC_439F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_439F_)
			end

			if arg1.interrupted then
				__FUNC_4227_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4227_)
		end

		registerVal14:completeAnimation()
		registerVal2.Image4:setAlpha(1.000000)
		__FUNC_40AD_(registerVal14, {})
		local function __FUNC_4C69_(arg0, arg1)
			local function __FUNC_4DC0_(arg0, arg1)
				local function __FUNC_4F3B_(arg0, arg1)
					local function __FUNC_50B3_(arg0, arg1)
						local function __FUNC_522B_(arg0, arg1)
							local function __FUNC_5380_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_5380_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 780.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5380_)
						end

						if arg1.interrupted then
							__FUNC_522B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_522B_)
					end

					if arg1.interrupted then
						__FUNC_50B3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50B3_)
				end

				if arg1.interrupted then
					__FUNC_4F3B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F3B_)
			end

			if arg1.interrupted then
				__FUNC_4DC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4DC0_)
		end

		registerVal15:completeAnimation()
		registerVal2.Image5:setAlpha(0.000000)
		__FUNC_4C69_(registerVal15, {})
		registerVal16:beginAnimation("keyframe", 1019.000000, false, false, CoD.TweenType.Linear)
		registerVal16:setAlpha(0.200000)
		registerVal16:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal18.DefaultClip = __FUNC_F3D_
	registerVal17.DefaultState = registerVal18
	registerVal2.clipsPerState = registerVal17
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


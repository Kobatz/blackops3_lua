-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.Loot9.CallingCards_loot_hotrod_hand")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_loot_hotrod = registerVal1
function CoD.CallingCards_loot_hotrod.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_loot_hotrod)
	registerVal2.id = "CallingCards_loot_hotrod"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_hotrod_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 192.000000)
	registerVal4:setTopBottom(true, false, 12.000000, 120.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_mp_hotrod_smoke"))
	registerVal2:addElement(registerVal4)
	registerVal2.smoke1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -11.780000, 176.670000)
	registerVal5:setTopBottom(true, false, 55.000000, 161.000000)
	registerVal5:setZRot(18.000000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_mp_hotrod_smoke"))
	registerVal2:addElement(registerVal5)
	registerVal2.smoke4 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -26.000000, 26.000000)
	registerVal6:setTopBottom(true, false, -57.000000, -5.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_mp_hotrod_smoke_small"))
	registerVal2:addElement(registerVal6)
	registerVal2.smoke2 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -26.000000, 26.000000)
	registerVal7:setTopBottom(true, false, -57.000000, -5.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_mp_hotrod_smoke_small"))
	registerVal2:addElement(registerVal7)
	registerVal2.smoke3 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 133.670000, 541.000000)
	registerVal8:setTopBottom(true, false, 6.260000, 79.000000)
	registerVal8:setZRot(15.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_mp_hotrod_tilescroll"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal8:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.300000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.fireTile = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 147.330000, 554.670000)
	registerVal9:setTopBottom(true, false, 17.260000, 90.000000)
	registerVal9:setZRot(15.000000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcard_mp_hotrod_tilescroll"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal9:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.fireTile0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 0.000000, 355.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal10:setImage(RegisterImage("uie_t7_callingcard_mp_hotrod_flipbook"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook_add"))
	registerVal10:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 4.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.fireFlipbook = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 99.000000, 279.000000)
	registerVal11:setTopBottom(true, false, 66.000000, 150.000000)
	registerVal11:setImage(RegisterImage("uie_t7_callingcard_mp_hotrod_seat"))
	registerVal2:addElement(registerVal11)
	registerVal2.carseat = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 99.000000, 279.000000)
	registerVal12:setTopBottom(true, false, 66.000000, 150.000000)
	registerVal12:setImage(RegisterImage("uie_t7_callingcard_mp_hotrod_seat_sheen"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
	registerVal12:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.carseatSheen = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 176.670000, 332.670000)
	registerVal13:setTopBottom(true, false, -6.000000, 194.000000)
	registerVal13:setZRot(8.000000)
	registerVal13:setImage(RegisterImage("uie_t7_callingcard_mp_hotrod_devil"))
	registerVal2:addElement(registerVal13)
	registerVal2.devil = registerVal13
	local registerVal14 = CoD.CallingCards_loot_hotrod_hand.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 313.330000, 361.330000)
	registerVal14:setTopBottom(true, false, -12.000000, 96.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.devilhand = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 201.000000, 501.000000)
	registerVal15:setTopBottom(true, false, 30.000000, 150.000000)
	registerVal15:setImage(RegisterImage("uie_t7_callingcard_mp_hotrod_car"))
	registerVal2:addElement(registerVal15)
	registerVal2.carfront = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, 201.000000, 501.000000)
	registerVal16:setTopBottom(true, false, 30.000000, 150.000000)
	registerVal16:setImage(RegisterImage("uie_t7_callingcard_mp_hotrod_car_sheen"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
	registerVal16:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.carfrontsheen = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, -289.000000, 0.000000)
	registerVal17:setTopBottom(true, false, -155.000000, 338.000000)
	registerVal17:setRGB(0.110000, 0.110000, 0.110000)
	registerVal2:addElement(registerVal17)
	registerVal2.blk = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 480.000000, 769.000000)
	registerVal18:setTopBottom(true, false, -155.000000, 338.000000)
	registerVal18:setRGB(0.110000, 0.110000, 0.110000)
	registerVal2:addElement(registerVal18)
	registerVal2.blk0 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, -39.000000, 564.000000)
	registerVal19:setTopBottom(true, false, -155.000000, 0.000000)
	registerVal19:setRGB(0.110000, 0.110000, 0.110000)
	registerVal2:addElement(registerVal19)
	registerVal2.blk1 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, -39.000000, 564.000000)
	registerVal20:setTopBottom(true, false, 120.000000, 338.000000)
	registerVal20:setRGB(0.110000, 0.110000, 0.110000)
	registerVal2:addElement(registerVal20)
	registerVal2.blk10 = registerVal20
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_14B4_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_2038_(arg0, arg1)
			local function __FUNC_2223_(arg0, arg1)
				local function __FUNC_240B_(arg0, arg1)
					local function __FUNC_25D0_(arg0, arg1)
						local function __FUNC_2798_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, -40.890000, 172.440000)
							arg0:setTopBottom(true, false, 0.000000, 120.000000)
							arg0:setAlpha(0.500000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2798_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 950.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 0.000000, 172.440000)
						arg0:setTopBottom(true, false, 23.000000, 120.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2798_)
					end

					if arg1.interrupted then
						__FUNC_25D0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1809.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -29.980000, 172.440000)
					arg0:setTopBottom(true, false, 6.140000, 120.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25D0_)
				end

				if arg1.interrupted then
					__FUNC_240B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -87.110000, 172.440000)
				arg0:setTopBottom(true, false, -26.000000, 120.000000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_240B_)
			end

			if arg1.interrupted then
				__FUNC_2223_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -51.980000, 172.440000)
			arg0:setTopBottom(true, false, -6.240000, 120.000000)
			arg0:setAlpha(0.760000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2223_)
		end

		registerVal4:completeAnimation()
		registerVal2.smoke1:setLeftRight(true, false, -40.890000, 172.440000)
		registerVal2.smoke1:setTopBottom(true, false, 0.000000, 120.000000)
		registerVal2.smoke1:setAlpha(0.500000)
		__FUNC_2038_(registerVal4, {})
		local function __FUNC_29BD_(arg0, arg1)
			local function __FUNC_2B14_(arg0, arg1)
				local function __FUNC_2CFF_(arg0, arg1)
					local function __FUNC_2EE7_(arg0, arg1)
						local function __FUNC_30AC_(arg0, arg1)
							local function __FUNC_3274_(arg0, arg1)
								local function __FUNC_345F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setLeftRight(true, false, -35.000000, 189.000000)
									arg0:setTopBottom(true, false, 34.000000, 160.000000)
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_345F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 839.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, -18.730000, 189.000000)
								arg0:setTopBottom(true, false, 43.760000, 160.610000)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_345F_)
							end

							if arg1.interrupted then
								__FUNC_3274_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 0.000000, 189.000000)
							arg0:setTopBottom(true, false, 55.000000, 161.310000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3274_)
						end

						if arg1.interrupted then
							__FUNC_30AC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, -25.000000, 189.000000)
						arg0:setTopBottom(true, false, 40.000000, 160.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30AC_)
					end

					if arg1.interrupted then
						__FUNC_2EE7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 729.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -35.000000, 189.000000)
					arg0:setTopBottom(true, false, 34.000000, 160.000000)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EE7_)
				end

				if arg1.interrupted then
					__FUNC_2CFF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 840.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -18.730000, 189.000000)
				arg0:setTopBottom(true, false, 43.760000, 160.610000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CFF_)
			end

			if arg1.interrupted then
				__FUNC_2B14_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B14_)
		end

		registerVal5:completeAnimation()
		registerVal2.smoke4:setLeftRight(true, false, 0.000000, 189.000000)
		registerVal2.smoke4:setTopBottom(true, false, 55.000000, 161.310000)
		registerVal2.smoke4:setAlpha(0.000000)
		__FUNC_29BD_(registerVal5, {})
		local function __FUNC_3681_(arg0, arg1)
			local function __FUNC_386B_(arg0, arg1)
				local function __FUNC_3A30_(arg0, arg1)
					local function __FUNC_3C16_(arg0, arg1)
						local function __FUNC_3DD2_(arg0, arg1)
							local function __FUNC_3FBB_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 909.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, -7.000000, 45.000000)
								arg0:setTopBottom(true, false, 0.000000, 52.000000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3FBB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 8.170000, 60.170000)
							arg0:setTopBottom(true, false, 10.110000, 62.110000)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3FBB_)
						end

						if arg1.interrupted then
							__FUNC_3DD2_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 799.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 14.000000, 66.000000)
						arg0:setTopBottom(true, false, 14.000000, 66.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DD2_)
					end

					if arg1.interrupted then
						__FUNC_3C16_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 909.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -7.000000, 45.000000)
					arg0:setTopBottom(true, false, 0.000000, 52.000000)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C16_)
				end

				if arg1.interrupted then
					__FUNC_3A30_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 8.170000, 60.170000)
				arg0:setTopBottom(true, false, 10.110000, 62.110000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A30_)
			end

			if arg1.interrupted then
				__FUNC_386B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 11.670000, 63.670000)
			arg0:setTopBottom(true, false, 12.440000, 64.440000)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_386B_)
		end

		registerVal6:completeAnimation()
		registerVal2.smoke2:setLeftRight(true, false, 14.000000, 66.000000)
		registerVal2.smoke2:setTopBottom(true, false, 14.000000, 66.000000)
		registerVal2.smoke2:setAlpha(0.000000)
		__FUNC_3681_(registerVal6, {})
		local function __FUNC_41D8_(arg0, arg1)
			local function __FUNC_43C3_(arg0, arg1)
				local function __FUNC_45AB_(arg0, arg1)
					local function __FUNC_4793_(arg0, arg1)
						local function __FUNC_497B_(arg0, arg1)
							local function __FUNC_4B63_(arg0, arg1)
								local function __FUNC_4D28_(arg0, arg1)
									local function __FUNC_4EF0_(arg0, arg1)
										local function __FUNC_50DB_(arg0, arg1)
											local function __FUNC_52C3_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setLeftRight(true, false, 19.000000, 100.440000)
												arg0:setTopBottom(true, false, 71.000000, 152.440000)
												arg0:setAlpha(0.000000)
												arg0:setZRot(42.000000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_52C3_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
											arg0:setLeftRight(true, false, 42.190000, 123.630000)
											arg0:setTopBottom(true, false, 71.390000, 152.830000)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_52C3_)
										end

										if arg1.interrupted then
											__FUNC_50DB_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
										arg0:setLeftRight(true, false, 63.960000, 145.400000)
										arg0:setTopBottom(true, false, 71.760000, 153.200000)
										arg0:setAlpha(0.030000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_50DB_)
									end

									if arg1.interrupted then
										__FUNC_4EF0_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 759.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 29.960000, 111.400000)
									arg0:setTopBottom(true, false, 70.760000, 152.200000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EF0_)
								end

								if arg1.interrupted then
									__FUNC_4D28_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 65.000000, 133.000000)
								arg0:setTopBottom(true, false, 77.000000, 145.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D28_)
							end

							if arg1.interrupted then
								__FUNC_4B63_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 649.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 19.000000, 100.440000)
							arg0:setTopBottom(true, false, 71.000000, 152.440000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B63_)
						end

						if arg1.interrupted then
							__FUNC_497B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 610.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 42.190000, 123.630000)
						arg0:setTopBottom(true, false, 71.390000, 152.830000)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_497B_)
					end

					if arg1.interrupted then
						__FUNC_4793_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 63.960000, 145.400000)
					arg0:setTopBottom(true, false, 71.760000, 153.200000)
					arg0:setAlpha(0.030000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4793_)
				end

				if arg1.interrupted then
					__FUNC_45AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 29.960000, 111.400000)
				arg0:setTopBottom(true, false, 70.760000, 152.200000)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45AB_)
			end

			if arg1.interrupted then
				__FUNC_43C3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 58.550000, 129.020000)
			arg0:setTopBottom(true, false, 75.850000, 146.330000)
			arg0:setAlpha(0.820000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43C3_)
		end

		registerVal7:completeAnimation()
		registerVal2.smoke3:setLeftRight(true, false, 65.000000, 133.000000)
		registerVal2.smoke3:setTopBottom(true, false, 77.000000, 145.000000)
		registerVal2.smoke3:setAlpha(0.000000)
		registerVal2.smoke3:setZRot(42.000000)
		__FUNC_41D8_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.fireTile:setLeftRight(true, false, 123.000000, 530.330000)
		registerVal2.fireTile:setTopBottom(true, false, 14.000000, 86.740000)
		registerVal2.fireTile:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
		registerVal2.fireTile:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.fireTile:setShaderVector(1.000000, 0.300000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.fireFlipbook:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_5507_(arg0, arg1)
			local function __FUNC_56CC_(arg0, arg1)
				local function __FUNC_585C_(arg0, arg1)
					local function __FUNC_59EC_(arg0, arg1)
						local function __FUNC_5B7C_(arg0, arg1)
							local function __FUNC_5D0C_(arg0, arg1)
								local function __FUNC_5E9C_(arg0, arg1)
									local function __FUNC_602C_(arg0, arg1)
										local function __FUNC_61BC_(arg0, arg1)
											local function __FUNC_634C_(arg0, arg1)
												local function __FUNC_64DC_(arg0, arg1)
													local function __FUNC_666C_(arg0, arg1)
														local function __FUNC_67FC_(arg0, arg1)
															local function __FUNC_698C_(arg0, arg1)
																local function __FUNC_6B1C_(arg0, arg1)
																	local function __FUNC_6CAC_(arg0, arg1)
																		local function __FUNC_6E37_(arg0, arg1)
																			local function __FUNC_6FC4_(arg0, arg1)
																				local function __FUNC_7154_(arg0, arg1)
																					local function __FUNC_72E4_(arg0, arg1)
																						local function __FUNC_7474_(arg0, arg1)
																							local function __FUNC_7604_(arg0, arg1)
																								local function __FUNC_7794_(arg0, arg1)
																									local function __FUNC_7924_(arg0, arg1)
																										local function __FUNC_7AB4_(arg0, arg1)
																											local function __FUNC_7C44_(arg0, arg1)
																												if not arg1.interrupted then
																													arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																												end
																												arg0:setLeftRight(true, false, 99.000000, 279.000000)
																												arg0:setTopBottom(true, false, 66.000000, 150.000000)
																												arg0:setAlpha(1.000000)
																												if arg1.interrupted then
																													registerVal2.clipFinished(arg0, arg1)
																												else
																													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																												end
																											end

																											if arg1.interrupted then
																												__FUNC_7C44_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
																											arg0:setTopBottom(true, false, 60.000000, 144.000000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7C44_)
																										end

																										if arg1.interrupted then
																											__FUNC_7AB4_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																										arg0:setTopBottom(true, false, 55.070000, 139.070000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7AB4_)
																									end

																									if arg1.interrupted then
																										__FUNC_7924_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
																									arg0:setTopBottom(true, false, 60.000000, 144.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7924_)
																								end

																								if arg1.interrupted then
																									__FUNC_7794_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																								arg0:setTopBottom(true, false, 52.000000, 136.000000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7794_)
																							end

																							if arg1.interrupted then
																								__FUNC_7604_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
																							arg0:setTopBottom(true, false, 56.860000, 140.860000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7604_)
																						end

																						if arg1.interrupted then
																							__FUNC_7474_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
																						arg0:setTopBottom(true, false, 52.000000, 136.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7474_)
																					end

																					if arg1.interrupted then
																						__FUNC_72E4_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
																					arg0:setTopBottom(true, false, 65.250000, 149.250000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72E4_)
																				end

																				if arg1.interrupted then
																					__FUNC_7154_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
																				arg0:setTopBottom(true, false, 60.830000, 144.830000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7154_)
																			end

																			if arg1.interrupted then
																				__FUNC_6FC4_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																			arg0:setTopBottom(true, false, 69.100000, 153.100000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FC4_)
																		end

																		if arg1.interrupted then
																			__FUNC_6E37_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																		arg0:setTopBottom(true, false, 66.000000, 150.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6E37_)
																	end

																	if arg1.interrupted then
																		__FUNC_6CAC_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																	arg0:setTopBottom(true, false, 70.760000, 154.760000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6CAC_)
																end

																if arg1.interrupted then
																	__FUNC_6B1C_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
																arg0:setTopBottom(true, false, 61.360000, 145.360000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B1C_)
															end

															if arg1.interrupted then
																__FUNC_698C_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
															arg0:setTopBottom(true, false, 67.500000, 151.500000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_698C_)
														end

														if arg1.interrupted then
															__FUNC_67FC_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
														arg0:setTopBottom(true, false, 74.230000, 158.230000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_67FC_)
													end

													if arg1.interrupted then
														__FUNC_666C_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
													arg0:setTopBottom(true, false, 67.500000, 151.500000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_666C_)
												end

												if arg1.interrupted then
													__FUNC_64DC_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 470.000000, false, false, CoD.TweenType.Linear)
												arg0:setTopBottom(true, false, 81.370000, 165.370000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64DC_)
											end

											if arg1.interrupted then
												__FUNC_634C_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
											arg0:setTopBottom(true, false, 54.000000, 138.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_634C_)
										end

										if arg1.interrupted then
											__FUNC_61BC_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 260.000000, false, false, CoD.TweenType.Linear)
										arg0:setTopBottom(true, false, 56.740000, 140.740000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_61BC_)
									end

									if arg1.interrupted then
										__FUNC_602C_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
									arg0:setTopBottom(true, false, 75.680000, 159.680000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_602C_)
								end

								if arg1.interrupted then
									__FUNC_5E9C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 72.000000, 156.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E9C_)
							end

							if arg1.interrupted then
								__FUNC_5D0C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 57.220000, 141.220000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D0C_)
						end

						if arg1.interrupted then
							__FUNC_5B7C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 60.000000, 144.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B7C_)
					end

					if arg1.interrupted then
						__FUNC_59EC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 54.600000, 138.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59EC_)
				end

				if arg1.interrupted then
					__FUNC_585C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 63.220000, 147.220000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_585C_)
			end

			if arg1.interrupted then
				__FUNC_56CC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 99.000000, 279.000000)
			arg0:setTopBottom(true, false, 60.000000, 144.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_56CC_)
		end

		registerVal11:completeAnimation()
		registerVal2.carseat:setLeftRight(true, false, 99.000000, 279.000000)
		registerVal2.carseat:setTopBottom(true, false, 66.000000, 150.000000)
		registerVal2.carseat:setAlpha(1.000000)
		__FUNC_5507_(registerVal11, {})
		local function __FUNC_7E69_(arg0, arg1)
			local function __FUNC_8053_(arg0, arg1)
				local function __FUNC_8203_(arg0, arg1)
					local function __FUNC_83F2_(arg0, arg1)
						local function __FUNC_85E2_(arg0, arg1)
							local function __FUNC_87D2_(arg0, arg1)
								local function __FUNC_89BD_(arg0, arg1)
									local function __FUNC_8B8B_(arg0, arg1)
										local function __FUNC_8D57_(arg0, arg1)
											local function __FUNC_8F23_(arg0, arg1)
												local function __FUNC_90EF_(arg0, arg1)
													local function __FUNC_92BB_(arg0, arg1)
														local function __FUNC_9487_(arg0, arg1)
															local function __FUNC_9653_(arg0, arg1)
																local function __FUNC_981F_(arg0, arg1)
																	local function __FUNC_99EB_(arg0, arg1)
																		local function __FUNC_9BD5_(arg0, arg1)
																			local function __FUNC_9DC6_(arg0, arg1)
																				local function __FUNC_9FB6_(arg0, arg1)
																					local function __FUNC_A1A6_(arg0, arg1)
																						local function __FUNC_A391_(arg0, arg1)
																							local function __FUNC_A520_(arg0, arg1)
																								local function __FUNC_A6B0_(arg0, arg1)
																									local function __FUNC_A840_(arg0, arg1)
																										local function __FUNC_A9D0_(arg0, arg1)
																											local function __FUNC_AB60_(arg0, arg1)
																												local function __FUNC_ACF0_(arg0, arg1)
																													local function __FUNC_AE80_(arg0, arg1)
																														local function __FUNC_B010_(arg0, arg1)
																															local function __FUNC_B1A0_(arg0, arg1)
																																local function __FUNC_B330_(arg0, arg1)
																																	local function __FUNC_B4C0_(arg0, arg1)
																																		local function __FUNC_B650_(arg0, arg1)
																																			if not arg1.interrupted then
																																				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																																			end
																																			arg0:setLeftRight(true, false, 99.000000, 279.000000)
																																			arg0:setTopBottom(true, false, 66.000000, 150.000000)
																																			arg0:setAlpha(0.000000)
																																			arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
																																			arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
																																			if arg1.interrupted then
																																				registerVal2.clipFinished(arg0, arg1)
																																			else
																																				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																																			end
																																		end

																																		if arg1.interrupted then
																																			__FUNC_B650_(arg0, arg1)
																																			return 
																																		end
																																		arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
																																		arg0:setTopBottom(true, false, 60.000000, 144.000000)
																																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B650_)
																																	end

																																	if arg1.interrupted then
																																		__FUNC_B4C0_(arg0, arg1)
																																		return 
																																	end
																																	arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																																	arg0:setTopBottom(true, false, 55.070000, 139.070000)
																																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B4C0_)
																																end

																																if arg1.interrupted then
																																	__FUNC_B330_(arg0, arg1)
																																	return 
																																end
																																arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
																																arg0:setTopBottom(true, false, 60.000000, 144.000000)
																																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B330_)
																															end

																															if arg1.interrupted then
																																__FUNC_B1A0_(arg0, arg1)
																																return 
																															end
																															arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																															arg0:setTopBottom(true, false, 52.000000, 136.000000)
																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B1A0_)
																														end

																														if arg1.interrupted then
																															__FUNC_B010_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
																														arg0:setTopBottom(true, false, 56.860000, 140.860000)
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B010_)
																													end

																													if arg1.interrupted then
																														__FUNC_AE80_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
																													arg0:setTopBottom(true, false, 52.000000, 136.000000)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE80_)
																												end

																												if arg1.interrupted then
																													__FUNC_ACF0_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
																												arg0:setTopBottom(true, false, 65.250000, 149.250000)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ACF0_)
																											end

																											if arg1.interrupted then
																												__FUNC_AB60_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
																											arg0:setTopBottom(true, false, 60.830000, 144.830000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AB60_)
																										end

																										if arg1.interrupted then
																											__FUNC_A9D0_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																										arg0:setTopBottom(true, false, 69.100000, 153.100000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A9D0_)
																									end

																									if arg1.interrupted then
																										__FUNC_A840_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
																									arg0:setTopBottom(true, false, 66.000000, 150.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A840_)
																								end

																								if arg1.interrupted then
																									__FUNC_A6B0_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
																								arg0:setTopBottom(true, false, 66.320000, 150.320000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A6B0_)
																							end

																							if arg1.interrupted then
																								__FUNC_A520_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
																							arg0:setTopBottom(true, false, 70.760000, 154.760000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A520_)
																						end

																						if arg1.interrupted then
																							__FUNC_A391_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																						arg0:setTopBottom(true, false, 67.240000, 151.240000)
																						arg0:setAlpha(0.000000)
																						arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A391_)
																					end

																					if arg1.interrupted then
																						__FUNC_A1A6_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
																					arg0:setTopBottom(true, false, 61.360000, 145.360000)
																					arg0:setAlpha(0.110000)
																					arg0:setShaderVector(0.000000, 0.888889, 0.000000, 0.000000, 0.000000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A1A6_)
																				end

																				if arg1.interrupted then
																					__FUNC_9FB6_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
																				arg0:setTopBottom(true, false, 67.500000, 151.500000)
																				arg0:setAlpha(0.310000)
																				arg0:setShaderVector(0.000000, 0.688889, 0.000000, 0.000000, 0.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9FB6_)
																			end

																			if arg1.interrupted then
																				__FUNC_9DC6_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
																			arg0:setTopBottom(true, false, 74.230000, 158.230000)
																			arg0:setAlpha(0.910000)
																			arg0:setShaderVector(0.000000, 0.088889, 0.000000, 0.000000, 0.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9DC6_)
																		end

																		if arg1.interrupted then
																			__FUNC_9BD5_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																		arg0:setTopBottom(true, false, 73.150000, 157.150000)
																		arg0:setAlpha(1.000000)
																		arg0:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9BD5_)
																	end

																	if arg1.interrupted then
																		__FUNC_99EB_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																	arg0:setTopBottom(true, false, 69.120000, 153.120000)
																	arg0:setShaderVector(0.000000, 0.090909, 0.000000, 0.000000, 0.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_99EB_)
																end

																if arg1.interrupted then
																	__FUNC_981F_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
																arg0:setTopBottom(true, false, 67.500000, 151.500000)
																arg0:setShaderVector(0.000000, 0.127273, 0.000000, 0.000000, 0.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_981F_)
															end

															if arg1.interrupted then
																__FUNC_9653_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 470.000000, false, false, CoD.TweenType.Linear)
															arg0:setTopBottom(true, false, 81.370000, 165.370000)
															arg0:setShaderVector(0.000000, 0.242424, 0.000000, 0.000000, 0.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9653_)
														end

														if arg1.interrupted then
															__FUNC_9487_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
														arg0:setTopBottom(true, false, 54.000000, 138.000000)
														arg0:setShaderVector(0.000000, 0.527273, 0.000000, 0.000000, 0.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9487_)
													end

													if arg1.interrupted then
														__FUNC_92BB_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 260.000000, false, false, CoD.TweenType.Linear)
													arg0:setTopBottom(true, false, 56.740000, 140.740000)
													arg0:setShaderVector(0.000000, 0.696970, 0.000000, 0.000000, 0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92BB_)
												end

												if arg1.interrupted then
													__FUNC_90EF_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
												arg0:setTopBottom(true, false, 75.680000, 159.680000)
												arg0:setShaderVector(0.000000, 0.854546, 0.000000, 0.000000, 0.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_90EF_)
											end

											if arg1.interrupted then
												__FUNC_8F23_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
											arg0:setTopBottom(true, false, 72.000000, 156.000000)
											arg0:setShaderVector(0.000000, 0.884849, 0.000000, 0.000000, 0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F23_)
										end

										if arg1.interrupted then
											__FUNC_8D57_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
										arg0:setTopBottom(true, false, 70.360000, 154.360000)
										arg0:setShaderVector(0.000000, 0.896970, 0.000000, 0.000000, 0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D57_)
									end

									if arg1.interrupted then
										__FUNC_8B8B_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setTopBottom(true, false, 57.220000, 141.220000)
									arg0:setShaderVector(0.000000, 0.993939, 0.000000, 0.000000, 0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B8B_)
								end

								if arg1.interrupted then
									__FUNC_89BD_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 57.420000, 141.420000)
								arg0:setAlpha(0.000000)
								arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89BD_)
							end

							if arg1.interrupted then
								__FUNC_87D2_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 60.000000, 144.000000)
							arg0:setAlpha(0.290000)
							arg0:setShaderVector(0.000000, 0.711111, 0.000000, 0.000000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_87D2_)
						end

						if arg1.interrupted then
							__FUNC_85E2_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 54.600000, 138.600000)
						arg0:setAlpha(0.490000)
						arg0:setShaderVector(0.000000, 0.511111, 0.000000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85E2_)
					end

					if arg1.interrupted then
						__FUNC_83F2_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 63.220000, 147.220000)
					arg0:setAlpha(0.780000)
					arg0:setShaderVector(0.000000, 0.222222, 0.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_83F2_)
				end

				if arg1.interrupted then
					__FUNC_8203_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 60.290000, 144.290000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8203_)
			end

			if arg1.interrupted then
				__FUNC_8053_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 99.000000, 279.000000)
			arg0:setTopBottom(true, false, 60.000000, 144.000000)
			arg0:setAlpha(0.930000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8053_)
		end

		registerVal12:completeAnimation()
		registerVal2.carseatSheen:setLeftRight(true, false, 99.000000, 279.000000)
		registerVal2.carseatSheen:setTopBottom(true, false, 66.000000, 150.000000)
		registerVal2.carseatSheen:setAlpha(0.000000)
		registerVal2.carseatSheen:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
		registerVal2.carseatSheen:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_7E69_(registerVal12, {})
		local function __FUNC_B947_(arg0, arg1)
			local function __FUNC_BAD4_(arg0, arg1)
				local function __FUNC_BC64_(arg0, arg1)
					local function __FUNC_BDF4_(arg0, arg1)
						local function __FUNC_BF84_(arg0, arg1)
							local function __FUNC_C114_(arg0, arg1)
								local function __FUNC_C2A4_(arg0, arg1)
									local function __FUNC_C434_(arg0, arg1)
										local function __FUNC_C5C4_(arg0, arg1)
											local function __FUNC_C754_(arg0, arg1)
												local function __FUNC_C8E4_(arg0, arg1)
													local function __FUNC_CA74_(arg0, arg1)
														local function __FUNC_CC04_(arg0, arg1)
															local function __FUNC_CDCC_(arg0, arg1)
																local function __FUNC_CF5C_(arg0, arg1)
																	local function __FUNC_D0EC_(arg0, arg1)
																		local function __FUNC_D27C_(arg0, arg1)
																			local function __FUNC_D40C_(arg0, arg1)
																				local function __FUNC_D59C_(arg0, arg1)
																					local function __FUNC_D72C_(arg0, arg1)
																						local function __FUNC_D8BC_(arg0, arg1)
																							local function __FUNC_DA4C_(arg0, arg1)
																								local function __FUNC_DBDC_(arg0, arg1)
																									local function __FUNC_DD6C_(arg0, arg1)
																										local function __FUNC_DEFC_(arg0, arg1)
																											local function __FUNC_E08C_(arg0, arg1)
																												local function __FUNC_E21C_(arg0, arg1)
																													local function __FUNC_E3AC_(arg0, arg1)
																														local function __FUNC_E53C_(arg0, arg1)
																															local function __FUNC_E6CC_(arg0, arg1)
																																if not arg1.interrupted then
																																	arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																																end
																																arg0:setLeftRight(true, false, 176.670000, 332.670000)
																																arg0:setTopBottom(true, false, -6.000000, 186.000000)
																																arg0:setAlpha(1.000000)
																																if arg1.interrupted then
																																	registerVal2.clipFinished(arg0, arg1)
																																else
																																	arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																																end
																															end

																															if arg1.interrupted then
																																__FUNC_E6CC_(arg0, arg1)
																																return 
																															end
																															arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
																															arg0:setTopBottom(true, false, -1.360000, 190.640000)
																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E6CC_)
																														end

																														if arg1.interrupted then
																															__FUNC_E53C_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																														arg0:setTopBottom(true, false, -6.290000, 185.710000)
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E53C_)
																													end

																													if arg1.interrupted then
																														__FUNC_E3AC_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
																													arg0:setTopBottom(true, false, -1.360000, 190.640000)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E3AC_)
																												end

																												if arg1.interrupted then
																													__FUNC_E21C_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																												arg0:setTopBottom(true, false, -9.360000, 182.640000)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E21C_)
																											end

																											if arg1.interrupted then
																												__FUNC_E08C_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
																											arg0:setTopBottom(true, false, -4.500000, 187.500000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E08C_)
																										end

																										if arg1.interrupted then
																											__FUNC_DEFC_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
																										arg0:setTopBottom(true, false, -9.360000, 182.640000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DEFC_)
																									end

																									if arg1.interrupted then
																										__FUNC_DD6C_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
																									arg0:setTopBottom(true, false, 3.890000, 195.890000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DD6C_)
																								end

																								if arg1.interrupted then
																									__FUNC_DBDC_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
																								arg0:setTopBottom(true, false, -0.540000, 191.460000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DBDC_)
																							end

																							if arg1.interrupted then
																								__FUNC_DA4C_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																							arg0:setTopBottom(true, false, 7.740000, 199.740000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_DA4C_)
																						end

																						if arg1.interrupted then
																							__FUNC_D8BC_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																						arg0:setTopBottom(true, false, 4.640000, 196.640000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D8BC_)
																					end

																					if arg1.interrupted then
																						__FUNC_D72C_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																					arg0:setTopBottom(true, false, 9.400000, 201.400000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D72C_)
																				end

																				if arg1.interrupted then
																					__FUNC_D59C_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
																				arg0:setTopBottom(true, false, 0.000000, 192.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D59C_)
																			end

																			if arg1.interrupted then
																				__FUNC_D40C_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
																			arg0:setTopBottom(true, false, 6.140000, 198.140000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D40C_)
																		end

																		if arg1.interrupted then
																			__FUNC_D27C_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
																		arg0:setTopBottom(true, false, 17.260000, 208.260000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D27C_)
																	end

																	if arg1.interrupted then
																		__FUNC_D0EC_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
																	arg0:setTopBottom(true, false, 9.400000, 201.410000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D0EC_)
																end

																if arg1.interrupted then
																	__FUNC_CF5C_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
																arg0:setTopBottom(true, false, 3.900000, 196.390000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CF5C_)
															end

															if arg1.interrupted then
																__FUNC_CDCC_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 200.000000, false, true, CoD.TweenType.Linear)
															arg0:setLeftRight(true, false, 177.500000, 333.500000)
															arg0:setTopBottom(true, false, 14.580000, 207.580000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CDCC_)
														end

														if arg1.interrupted then
															__FUNC_CC04_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
														arg0:setTopBottom(true, false, -52.000000, 147.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CC04_)
													end

													if arg1.interrupted then
														__FUNC_CA74_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
													arg0:setTopBottom(true, false, -60.000000, 140.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA74_)
												end

												if arg1.interrupted then
													__FUNC_C8E4_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
												arg0:setTopBottom(true, false, -52.000000, 149.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8E4_)
											end

											if arg1.interrupted then
												__FUNC_C754_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
											arg0:setTopBottom(true, false, -28.620000, 172.020000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C754_)
										end

										if arg1.interrupted then
											__FUNC_C5C4_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
										arg0:setTopBottom(true, false, -15.260000, 185.740000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5C4_)
									end

									if arg1.interrupted then
										__FUNC_C434_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
									arg0:setTopBottom(true, false, 3.680000, 203.680000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C434_)
								end

								if arg1.interrupted then
									__FUNC_C2A4_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 0.000000, 201.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2A4_)
							end

							if arg1.interrupted then
								__FUNC_C114_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, -14.780000, 184.220000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C114_)
						end

						if arg1.interrupted then
							__FUNC_BF84_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, -12.000000, 186.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BF84_)
					end

					if arg1.interrupted then
						__FUNC_BDF4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, -17.400000, 181.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BDF4_)
				end

				if arg1.interrupted then
					__FUNC_BC64_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, -8.780000, 187.220000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BC64_)
			end

			if arg1.interrupted then
				__FUNC_BAD4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, -12.000000, 186.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BAD4_)
		end

		registerVal13:completeAnimation()
		registerVal2.devil:setLeftRight(true, false, 176.670000, 332.670000)
		registerVal2.devil:setTopBottom(true, false, -6.000000, 186.000000)
		registerVal2.devil:setAlpha(1.000000)
		__FUNC_B947_(registerVal13, {})
		local function __FUNC_E8F1_(arg0, arg1)
			local function __FUNC_EA80_(arg0, arg1)
				local function __FUNC_EC10_(arg0, arg1)
					local function __FUNC_EDA0_(arg0, arg1)
						local function __FUNC_EF30_(arg0, arg1)
							local function __FUNC_F0C0_(arg0, arg1)
								local function __FUNC_F250_(arg0, arg1)
									local function __FUNC_F3E0_(arg0, arg1)
										local function __FUNC_F570_(arg0, arg1)
											local function __FUNC_F700_(arg0, arg1)
												local function __FUNC_F890_(arg0, arg1)
													local function __FUNC_FA20_(arg0, arg1)
														local function __FUNC_FBB0_(arg0, arg1)
															local function __FUNC_FD40_(arg0, arg1)
																local function __FUNC_FED0_(arg0, arg1)
																	local function __FUNC_10060_(arg0, arg1)
																		local function __FUNC_101F0_(arg0, arg1)
																			local function __FUNC_10380_(arg0, arg1)
																				local function __FUNC_10510_(arg0, arg1)
																					local function __FUNC_106A0_(arg0, arg1)
																						local function __FUNC_10830_(arg0, arg1)
																							local function __FUNC_109C0_(arg0, arg1)
																								local function __FUNC_10B50_(arg0, arg1)
																									local function __FUNC_10CE0_(arg0, arg1)
																										local function __FUNC_10E70_(arg0, arg1)
																											local function __FUNC_11000_(arg0, arg1)
																												local function __FUNC_11190_(arg0, arg1)
																													if not arg1.interrupted then
																														arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																													end
																													arg0:setLeftRight(true, false, 314.330000, 362.330000)
																													arg0:setTopBottom(true, false, -15.780000, 92.220000)
																													arg0:setAlpha(1.000000)
																													if arg1.interrupted then
																														registerVal2.clipFinished(arg0, arg1)
																													else
																														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																													end
																												end

																												if arg1.interrupted then
																													__FUNC_11190_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
																												arg0:setTopBottom(true, false, -11.780000, 96.220000)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11190_)
																											end

																											if arg1.interrupted then
																												__FUNC_11000_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																											arg0:setTopBottom(true, false, -16.780000, 91.220000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11000_)
																										end

																										if arg1.interrupted then
																											__FUNC_10E70_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
																										arg0:setTopBottom(true, false, -11.780000, 96.220000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10E70_)
																									end

																									if arg1.interrupted then
																										__FUNC_10CE0_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																									arg0:setTopBottom(true, false, -19.780000, 88.220000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10CE0_)
																								end

																								if arg1.interrupted then
																									__FUNC_10B50_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
																								arg0:setTopBottom(true, false, -14.780000, 93.220000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10B50_)
																							end

																							if arg1.interrupted then
																								__FUNC_109C0_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
																							arg0:setTopBottom(true, false, -19.780000, 88.220000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_109C0_)
																						end

																						if arg1.interrupted then
																							__FUNC_10830_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
																						arg0:setTopBottom(true, false, -6.780000, 101.220000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10830_)
																					end

																					if arg1.interrupted then
																						__FUNC_106A0_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
																					arg0:setTopBottom(true, false, -10.780000, 97.220000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_106A0_)
																				end

																				if arg1.interrupted then
																					__FUNC_10510_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																				arg0:setTopBottom(true, false, -2.780000, 105.220000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10510_)
																			end

																			if arg1.interrupted then
																				__FUNC_10380_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																			arg0:setTopBottom(true, false, -5.780000, 102.220000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10380_)
																		end

																		if arg1.interrupted then
																			__FUNC_101F0_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																		arg0:setTopBottom(true, false, -0.780000, 107.220000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_101F0_)
																	end

																	if arg1.interrupted then
																		__FUNC_10060_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
																	arg0:setTopBottom(true, false, -9.780000, 98.220000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10060_)
																end

																if arg1.interrupted then
																	__FUNC_FED0_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
																arg0:setTopBottom(true, false, -3.780000, 104.220000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FED0_)
															end

															if arg1.interrupted then
																__FUNC_FD40_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
															arg0:setTopBottom(true, false, 6.220000, 114.220000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FD40_)
														end

														if arg1.interrupted then
															__FUNC_FBB0_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
														arg0:setTopBottom(true, false, -5.780000, 102.220000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FBB0_)
													end

													if arg1.interrupted then
														__FUNC_FA20_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
													arg0:setTopBottom(true, false, 5.220000, 113.220000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FA20_)
												end

												if arg1.interrupted then
													__FUNC_F890_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
												arg0:setTopBottom(true, false, -58.780000, 49.220000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F890_)
											end

											if arg1.interrupted then
												__FUNC_F700_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
											arg0:setTopBottom(true, false, -66.780000, 41.220000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F700_)
										end

										if arg1.interrupted then
											__FUNC_F570_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
										arg0:setTopBottom(true, false, -57.780000, 50.220000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F570_)
									end

									if arg1.interrupted then
										__FUNC_F3E0_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
									arg0:setTopBottom(true, false, -20.980000, 87.020000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F3E0_)
								end

								if arg1.interrupted then
									__FUNC_F250_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 229.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, -1.780000, 106.220000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F250_)
							end

							if arg1.interrupted then
								__FUNC_F0C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, -20.780000, 87.220000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F0C0_)
						end

						if arg1.interrupted then
							__FUNC_EF30_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, -18.780000, 89.220000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EF30_)
					end

					if arg1.interrupted then
						__FUNC_EDA0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, -23.780000, 84.220000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EDA0_)
				end

				if arg1.interrupted then
					__FUNC_EC10_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, -16.780000, 91.220000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC10_)
			end

			if arg1.interrupted then
				__FUNC_EA80_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, -19.500000, 88.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EA80_)
		end

		registerVal14:completeAnimation()
		registerVal2.devilhand:setLeftRight(true, false, 314.330000, 362.330000)
		registerVal2.devilhand:setTopBottom(true, false, -16.500000, 91.500000)
		registerVal2.devilhand:setAlpha(1.000000)
		__FUNC_E8F1_(registerVal14, {})
		local function __FUNC_113B5_(arg0, arg1)
			local function __FUNC_11544_(arg0, arg1)
				local function __FUNC_116D4_(arg0, arg1)
					local function __FUNC_11864_(arg0, arg1)
						local function __FUNC_119F4_(arg0, arg1)
							local function __FUNC_11B84_(arg0, arg1)
								local function __FUNC_11D14_(arg0, arg1)
									local function __FUNC_11EA4_(arg0, arg1)
										local function __FUNC_12034_(arg0, arg1)
											local function __FUNC_121C4_(arg0, arg1)
												local function __FUNC_12354_(arg0, arg1)
													local function __FUNC_124E4_(arg0, arg1)
														local function __FUNC_12674_(arg0, arg1)
															local function __FUNC_12804_(arg0, arg1)
																local function __FUNC_12994_(arg0, arg1)
																	local function __FUNC_12B24_(arg0, arg1)
																		local function __FUNC_12CAF_(arg0, arg1)
																			local function __FUNC_12E3C_(arg0, arg1)
																				local function __FUNC_12FCC_(arg0, arg1)
																					local function __FUNC_1315C_(arg0, arg1)
																						local function __FUNC_132EC_(arg0, arg1)
																							local function __FUNC_1347C_(arg0, arg1)
																								local function __FUNC_1360C_(arg0, arg1)
																									local function __FUNC_1379C_(arg0, arg1)
																										local function __FUNC_1392C_(arg0, arg1)
																											local function __FUNC_13ABC_(arg0, arg1)
																												if not arg1.interrupted then
																													arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																												end
																												arg0:setLeftRight(true, false, 201.000000, 501.000000)
																												arg0:setTopBottom(true, false, 30.000000, 150.000000)
																												arg0:setAlpha(1.000000)
																												if arg1.interrupted then
																													registerVal2.clipFinished(arg0, arg1)
																												else
																													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																												end
																											end

																											if arg1.interrupted then
																												__FUNC_13ABC_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
																											arg0:setTopBottom(true, false, 24.000000, 144.000000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13ABC_)
																										end

																										if arg1.interrupted then
																											__FUNC_1392C_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																										arg0:setTopBottom(true, false, 19.070000, 139.070000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1392C_)
																									end

																									if arg1.interrupted then
																										__FUNC_1379C_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
																									arg0:setTopBottom(true, false, 24.000000, 144.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1379C_)
																								end

																								if arg1.interrupted then
																									__FUNC_1360C_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																								arg0:setTopBottom(true, false, 16.000000, 136.000000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1360C_)
																							end

																							if arg1.interrupted then
																								__FUNC_1347C_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
																							arg0:setTopBottom(true, false, 20.860000, 140.860000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1347C_)
																						end

																						if arg1.interrupted then
																							__FUNC_132EC_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
																						arg0:setTopBottom(true, false, 16.000000, 136.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_132EC_)
																					end

																					if arg1.interrupted then
																						__FUNC_1315C_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
																					arg0:setTopBottom(true, false, 29.250000, 149.250000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1315C_)
																				end

																				if arg1.interrupted then
																					__FUNC_12FCC_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
																				arg0:setTopBottom(true, false, 24.830000, 144.830000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12FCC_)
																			end

																			if arg1.interrupted then
																				__FUNC_12E3C_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																			arg0:setTopBottom(true, false, 33.100000, 153.100000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12E3C_)
																		end

																		if arg1.interrupted then
																			__FUNC_12CAF_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																		arg0:setTopBottom(true, false, 30.000000, 150.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12CAF_)
																	end

																	if arg1.interrupted then
																		__FUNC_12B24_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																	arg0:setTopBottom(true, false, 34.760000, 154.760000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12B24_)
																end

																if arg1.interrupted then
																	__FUNC_12994_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
																arg0:setTopBottom(true, false, 25.360000, 145.360000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12994_)
															end

															if arg1.interrupted then
																__FUNC_12804_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Linear)
															arg0:setTopBottom(true, false, 31.500000, 151.500000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12804_)
														end

														if arg1.interrupted then
															__FUNC_12674_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
														arg0:setTopBottom(true, false, 38.230000, 158.230000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12674_)
													end

													if arg1.interrupted then
														__FUNC_124E4_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
													arg0:setTopBottom(true, false, 31.500000, 151.500000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_124E4_)
												end

												if arg1.interrupted then
													__FUNC_12354_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 470.000000, false, false, CoD.TweenType.Linear)
												arg0:setTopBottom(true, false, 45.370000, 165.370000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12354_)
											end

											if arg1.interrupted then
												__FUNC_121C4_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
											arg0:setTopBottom(true, false, 18.000000, 138.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_121C4_)
										end

										if arg1.interrupted then
											__FUNC_12034_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 260.000000, false, false, CoD.TweenType.Linear)
										arg0:setTopBottom(true, false, 20.740000, 140.740000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12034_)
									end

									if arg1.interrupted then
										__FUNC_11EA4_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
									arg0:setTopBottom(true, false, 39.680000, 159.680000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11EA4_)
								end

								if arg1.interrupted then
									__FUNC_11D14_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 36.000000, 156.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11D14_)
							end

							if arg1.interrupted then
								__FUNC_11B84_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 21.220000, 141.220000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11B84_)
						end

						if arg1.interrupted then
							__FUNC_119F4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 24.000000, 144.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_119F4_)
					end

					if arg1.interrupted then
						__FUNC_11864_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 18.600000, 138.600000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11864_)
				end

				if arg1.interrupted then
					__FUNC_116D4_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 27.220000, 147.220000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_116D4_)
			end

			if arg1.interrupted then
				__FUNC_11544_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 24.000000, 144.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11544_)
		end

		registerVal15:completeAnimation()
		registerVal2.carfront:setLeftRight(true, false, 201.000000, 501.000000)
		registerVal2.carfront:setTopBottom(true, false, 30.000000, 150.000000)
		registerVal2.carfront:setAlpha(1.000000)
		__FUNC_113B5_(registerVal15, {})
		local function __FUNC_13CE1_(arg0, arg1)
			local function __FUNC_13E70_(arg0, arg1)
				local function __FUNC_14000_(arg0, arg1)
					local function __FUNC_14190_(arg0, arg1)
						local function __FUNC_14382_(arg0, arg1)
							local function __FUNC_14572_(arg0, arg1)
								local function __FUNC_14762_(arg0, arg1)
									local function __FUNC_1494D_(arg0, arg1)
										local function __FUNC_14B3E_(arg0, arg1)
											local function __FUNC_14D2E_(arg0, arg1)
												local function __FUNC_14F19_(arg0, arg1)
													local function __FUNC_150E7_(arg0, arg1)
														local function __FUNC_152B3_(arg0, arg1)
															local function __FUNC_1547F_(arg0, arg1)
																local function __FUNC_1564B_(arg0, arg1)
																	local function __FUNC_15817_(arg0, arg1)
																		local function __FUNC_159E3_(arg0, arg1)
																			local function __FUNC_15BAA_(arg0, arg1)
																				local function __FUNC_15D9A_(arg0, arg1)
																					local function __FUNC_15F8A_(arg0, arg1)
																						local function __FUNC_1617A_(arg0, arg1)
																							local function __FUNC_16365_(arg0, arg1)
																								local function __FUNC_16512_(arg0, arg1)
																									local function __FUNC_166C3_(arg0, arg1)
																										local function __FUNC_16850_(arg0, arg1)
																											local function __FUNC_169E0_(arg0, arg1)
																												local function __FUNC_16B70_(arg0, arg1)
																													local function __FUNC_16D00_(arg0, arg1)
																														local function __FUNC_16E90_(arg0, arg1)
																															local function __FUNC_17020_(arg0, arg1)
																																local function __FUNC_171B0_(arg0, arg1)
																																	local function __FUNC_17340_(arg0, arg1)
																																		if not arg1.interrupted then
																																			arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
																																		end
																																		arg0:setLeftRight(true, false, 201.000000, 501.000000)
																																		arg0:setTopBottom(true, false, 30.000000, 150.000000)
																																		arg0:setAlpha(0.000000)
																																		arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
																																		arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
																																		if arg1.interrupted then
																																			registerVal2.clipFinished(arg0, arg1)
																																		else
																																			arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
																																		end
																																	end

																																	if arg1.interrupted then
																																		__FUNC_17340_(arg0, arg1)
																																		return 
																																	end
																																	arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
																																	arg0:setTopBottom(true, false, 24.000000, 144.000000)
																																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17340_)
																																end

																																if arg1.interrupted then
																																	__FUNC_171B0_(arg0, arg1)
																																	return 
																																end
																																arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																																arg0:setTopBottom(true, false, 19.070000, 139.070000)
																																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_171B0_)
																															end

																															if arg1.interrupted then
																																__FUNC_17020_(arg0, arg1)
																																return 
																															end
																															arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
																															arg0:setTopBottom(true, false, 24.000000, 144.000000)
																															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17020_)
																														end

																														if arg1.interrupted then
																															__FUNC_16E90_(arg0, arg1)
																															return 
																														end
																														arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
																														arg0:setTopBottom(true, false, 16.000000, 136.000000)
																														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16E90_)
																													end

																													if arg1.interrupted then
																														__FUNC_16D00_(arg0, arg1)
																														return 
																													end
																													arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
																													arg0:setTopBottom(true, false, 20.860000, 140.860000)
																													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16D00_)
																												end

																												if arg1.interrupted then
																													__FUNC_16B70_(arg0, arg1)
																													return 
																												end
																												arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
																												arg0:setTopBottom(true, false, 16.000000, 136.000000)
																												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16B70_)
																											end

																											if arg1.interrupted then
																												__FUNC_169E0_(arg0, arg1)
																												return 
																											end
																											arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
																											arg0:setTopBottom(true, false, 29.250000, 149.250000)
																											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_169E0_)
																										end

																										if arg1.interrupted then
																											__FUNC_16850_(arg0, arg1)
																											return 
																										end
																										arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
																										arg0:setTopBottom(true, false, 24.830000, 144.830000)
																										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16850_)
																									end

																									if arg1.interrupted then
																										__FUNC_166C3_(arg0, arg1)
																										return 
																									end
																									arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																									arg0:setTopBottom(true, false, 33.100000, 153.100000)
																									arg0:setAlpha(0.000000)
																									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_166C3_)
																								end

																								if arg1.interrupted then
																									__FUNC_16512_(arg0, arg1)
																									return 
																								end
																								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
																								arg0:setTopBottom(true, false, 30.000000, 150.000000)
																								arg0:setAlpha(0.800000)
																								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16512_)
																							end

																							if arg1.interrupted then
																								__FUNC_16365_(arg0, arg1)
																								return 
																							end
																							arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
																							arg0:setTopBottom(true, false, 30.950000, 150.950000)
																							arg0:setAlpha(1.000000)
																							arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
																							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16365_)
																						end

																						if arg1.interrupted then
																							__FUNC_1617A_(arg0, arg1)
																							return 
																						end
																						arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
																						arg0:setTopBottom(true, false, 34.760000, 154.760000)
																						arg0:setAlpha(0.730000)
																						arg0:setShaderVector(0.000000, 0.727273, 0.000000, 0.000000, 0.000000)
																						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1617A_)
																					end

																					if arg1.interrupted then
																						__FUNC_15F8A_(arg0, arg1)
																						return 
																					end
																					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
																					arg0:setTopBottom(true, false, 25.360000, 145.360000)
																					arg0:setAlpha(0.550000)
																					arg0:setShaderVector(0.000000, 0.545455, 0.000000, 0.000000, 0.000000)
																					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15F8A_)
																				end

																				if arg1.interrupted then
																					__FUNC_15D9A_(arg0, arg1)
																					return 
																				end
																				arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
																				arg0:setTopBottom(true, false, 31.500000, 151.500000)
																				arg0:setAlpha(0.340000)
																				arg0:setShaderVector(0.000000, 0.340909, 0.000000, 0.000000, 0.000000)
																				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15D9A_)
																			end

																			if arg1.interrupted then
																				__FUNC_15BAA_(arg0, arg1)
																				return 
																			end
																			arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
																			arg0:setTopBottom(true, false, 35.240000, 155.240000)
																			arg0:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
																			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15BAA_)
																		end

																		if arg1.interrupted then
																			__FUNC_159E3_(arg0, arg1)
																			return 
																		end
																		arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
																		arg0:setTopBottom(true, false, 38.230000, 158.230000)
																		arg0:setShaderVector(0.000000, 0.072289, 0.000000, 0.000000, 0.000000)
																		arg0:registerEventHandler("transition_complete_keyframe", __FUNC_159E3_)
																	end

																	if arg1.interrupted then
																		__FUNC_15817_(arg0, arg1)
																		return 
																	end
																	arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
																	arg0:setTopBottom(true, false, 33.120000, 153.120000)
																	arg0:setShaderVector(0.000000, 0.186747, 0.000000, 0.000000, 0.000000)
																	arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15817_)
																end

																if arg1.interrupted then
																	__FUNC_1564B_(arg0, arg1)
																	return 
																end
																arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
																arg0:setTopBottom(true, false, 31.500000, 151.500000)
																arg0:setShaderVector(0.000000, 0.222892, 0.000000, 0.000000, 0.000000)
																arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1564B_)
															end

															if arg1.interrupted then
																__FUNC_1547F_(arg0, arg1)
																return 
															end
															arg0:beginAnimation("keyframe", 470.000000, false, false, CoD.TweenType.Linear)
															arg0:setTopBottom(true, false, 45.370000, 165.370000)
															arg0:setShaderVector(0.000000, 0.337349, 0.000000, 0.000000, 0.000000)
															arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1547F_)
														end

														if arg1.interrupted then
															__FUNC_152B3_(arg0, arg1)
															return 
														end
														arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
														arg0:setTopBottom(true, false, 18.000000, 138.000000)
														arg0:setShaderVector(0.000000, 0.620482, 0.000000, 0.000000, 0.000000)
														arg0:registerEventHandler("transition_complete_keyframe", __FUNC_152B3_)
													end

													if arg1.interrupted then
														__FUNC_150E7_(arg0, arg1)
														return 
													end
													arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
													arg0:setTopBottom(true, false, 20.740000, 140.740000)
													arg0:setShaderVector(0.000000, 0.789157, 0.000000, 0.000000, 0.000000)
													arg0:registerEventHandler("transition_complete_keyframe", __FUNC_150E7_)
												end

												if arg1.interrupted then
													__FUNC_14F19_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
												arg0:setTopBottom(true, false, 35.310000, 155.310000)
												arg0:setAlpha(0.000000)
												arg0:setShaderVector(0.000000, 0.909639, 0.000000, 0.000000, 0.000000)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14F19_)
											end

											if arg1.interrupted then
												__FUNC_14D2E_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
											arg0:setTopBottom(true, false, 39.680000, 159.680000)
											arg0:setAlpha(0.400000)
											arg0:setShaderVector(0.000000, 0.945783, 0.000000, 0.000000, 0.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D2E_)
										end

										if arg1.interrupted then
											__FUNC_14B3E_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
										arg0:setTopBottom(true, false, 36.000000, 156.000000)
										arg0:setAlpha(0.730000)
										arg0:setShaderVector(0.000000, 0.975904, 0.000000, 0.000000, 0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14B3E_)
									end

									if arg1.interrupted then
										__FUNC_1494D_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
									arg0:setTopBottom(true, false, 32.720000, 152.720000)
									arg0:setAlpha(1.000000)
									arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1494D_)
								end

								if arg1.interrupted then
									__FUNC_14762_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
								arg0:setTopBottom(true, false, 21.220000, 141.220000)
								arg0:setAlpha(0.680000)
								arg0:setShaderVector(0.000000, 0.681818, 0.000000, 0.000000, 0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14762_)
							end

							if arg1.interrupted then
								__FUNC_14572_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, 24.000000, 144.000000)
							arg0:setAlpha(0.360000)
							arg0:setShaderVector(0.000000, 0.363636, 0.000000, 0.000000, 0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14572_)
						end

						if arg1.interrupted then
							__FUNC_14382_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
						arg0:setTopBottom(true, false, 18.600000, 138.600000)
						arg0:setAlpha(0.160000)
						arg0:setShaderVector(0.000000, 0.159091, 0.000000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14382_)
					end

					if arg1.interrupted then
						__FUNC_14190_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setTopBottom(true, false, 23.240000, 143.240000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14190_)
				end

				if arg1.interrupted then
					__FUNC_14000_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 27.220000, 147.220000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14000_)
			end

			if arg1.interrupted then
				__FUNC_13E70_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:setTopBottom(true, false, 24.000000, 144.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13E70_)
		end

		registerVal16:completeAnimation()
		registerVal2.carfrontsheen:setLeftRight(true, false, 201.000000, 501.000000)
		registerVal2.carfrontsheen:setTopBottom(true, false, 30.000000, 150.000000)
		registerVal2.carfrontsheen:setAlpha(0.000000)
		registerVal2.carfrontsheen:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
		registerVal2.carfrontsheen:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_13CE1_(registerVal16, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal22.DefaultClip = __FUNC_14B4_
	registerVal21.DefaultState = registerVal22
	registerVal2.clipsPerState = registerVal21
	local function __FUNC_1763E_(arg0)
		arg0.devilhand:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1763E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_ArenaMasterVetWidget = registerVal1
function CoD.CallingCards_ArenaMasterVetWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_ArenaMasterVetWidget)
	registerVal2.id = "CallingCards_ArenaMasterVetWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_arena_vet_master_bg_flipbook"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal3:setShaderVector(0.000000, 2.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 19.960000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.flipbook = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 240.000000, 444.000000)
	registerVal4:setTopBottom(true, false, -4.430000, 19.570000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcard_arena_vet_master_flare1"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Flare1 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -32.000000, 448.000000)
	registerVal5:setTopBottom(true, false, 48.570000, 115.570000)
	registerVal5:setImage(RegisterImage("uie_t7_callingcard_arena_vet_master_flare2"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Flare2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -22.000000, 458.000000)
	registerVal6:setTopBottom(true, false, -4.430000, 115.570000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcard_arena_vet_master_flare3"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Flare20 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 485.000000)
	registerVal7:setTopBottom(true, false, 64.000000, 185.250000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcard_arena_vet_master_ember"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal7:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.150000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.ember0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, 131.000000, 366.000000)
	registerVal8:setTopBottom(false, false, -170.180000, 41.320000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_img_t7_hud_cm_herobackingglow"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.GlowWhite = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 371.000000, 387.080000)
	registerVal9:setTopBottom(true, false, 14.570000, 31.270000)
	registerVal9:setRGB(1.000000, 0.510000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZRot(-84.000000)
	registerVal9:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.GlowOrangeOver = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 373.000000, 389.080000)
	registerVal10:setTopBottom(true, false, 84.620000, 101.320000)
	registerVal10:setRGB(1.000000, 0.510000, 0.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZRot(-84.000000)
	registerVal10:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.GlowOrangeOver0 = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_DBD_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_1288_(arg0, arg1)
			local function __FUNC_1403_(arg0, arg1)
				local function __FUNC_157B_(arg0, arg1)
					local function __FUNC_16F3_(arg0, arg1)
						local function __FUNC_186B_(arg0, arg1)
							local function __FUNC_19E3_(arg0, arg1)
								local function __FUNC_1B5B_(arg0, arg1)
									local function __FUNC_1CD3_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 870.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.200000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_1CD3_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CD3_)
								end

								if arg1.interrupted then
									__FUNC_1B5B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.200000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B5B_)
							end

							if arg1.interrupted then
								__FUNC_19E3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19E3_)
						end

						if arg1.interrupted then
							__FUNC_186B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 699.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.200000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_186B_)
					end

					if arg1.interrupted then
						__FUNC_16F3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16F3_)
				end

				if arg1.interrupted then
					__FUNC_157B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.530000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_157B_)
			end

			if arg1.interrupted then
				__FUNC_1403_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1403_)
		end

		registerVal4:completeAnimation()
		registerVal2.Flare1:setAlpha(0.200000)
		__FUNC_1288_(registerVal4, {})
		local function __FUNC_1E85_(arg0, arg1)
			local function __FUNC_1FFF_(arg0, arg1)
				local function __FUNC_2177_(arg0, arg1)
					local function __FUNC_22EF_(arg0, arg1)
						local function __FUNC_2467_(arg0, arg1)
							local function __FUNC_25DF_(arg0, arg1)
								local function __FUNC_2757_(arg0, arg1)
									local function __FUNC_28AC_(arg0, arg1)
										local function __FUNC_2A27_(arg0, arg1)
											local function __FUNC_2B9F_(arg0, arg1)
												if not arg1.interrupted then
													arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
												end
												arg0:setAlpha(0.200000)
												if arg1.interrupted then
													registerVal2.clipFinished(arg0, arg1)
												else
													arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
												end
											end

											if arg1.interrupted then
												__FUNC_2B9F_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(0.200000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B9F_)
										end

										if arg1.interrupted then
											__FUNC_2A27_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
										arg0:setAlpha(1.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A27_)
									end

									if arg1.interrupted then
										__FUNC_28AC_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28AC_)
								end

								if arg1.interrupted then
									__FUNC_2757_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.200000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2757_)
							end

							if arg1.interrupted then
								__FUNC_25DF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25DF_)
						end

						if arg1.interrupted then
							__FUNC_2467_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.200000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2467_)
					end

					if arg1.interrupted then
						__FUNC_22EF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 579.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22EF_)
				end

				if arg1.interrupted then
					__FUNC_2177_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2177_)
			end

			if arg1.interrupted then
				__FUNC_1FFF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FFF_)
		end

		registerVal5:completeAnimation()
		registerVal2.Flare2:setAlpha(0.200000)
		__FUNC_1E85_(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.ember0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
		registerVal2.ember0:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.ember0:setShaderVector(1.000000, 0.150000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_2D51_(arg0, arg1)
			local function __FUNC_2ECB_(arg0, arg1)
				local function __FUNC_3043_(arg0, arg1)
					local function __FUNC_31BB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_31BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.450000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31BB_)
				end

				if arg1.interrupted then
					__FUNC_3043_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1170.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3043_)
			end

			if arg1.interrupted then
				__FUNC_2ECB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.700000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ECB_)
		end

		registerVal8:completeAnimation()
		registerVal2.GlowWhite:setAlpha(0.000000)
		__FUNC_2D51_(registerVal8, {})
		local function __FUNC_336D_(arg0, arg1)
			local function __FUNC_34E7_(arg0, arg1)
				local function __FUNC_3674_(arg0, arg1)
					local function __FUNC_383C_(arg0, arg1)
						local function __FUNC_3A04_(arg0, arg1)
							local function __FUNC_3BCC_(arg0, arg1)
								local function __FUNC_3D94_(arg0, arg1)
									local function __FUNC_3F7F_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setLeftRight(true, false, 337.960000, 354.040000)
										arg0:setTopBottom(true, false, 51.650000, 68.350000)
										arg0:setAlpha(0.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_3F7F_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
									arg0:setLeftRight(true, false, 337.960000, 354.040000)
									arg0:setTopBottom(true, false, 51.650000, 68.350000)
									arg0:setAlpha(0.400000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F7F_)
								end

								if arg1.interrupted then
									__FUNC_3D94_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
								arg0:setLeftRight(true, false, 345.460000, 361.540000)
								arg0:setTopBottom(true, false, 42.250000, 58.950000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D94_)
							end

							if arg1.interrupted then
								__FUNC_3BCC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 357.960000, 374.040000)
							arg0:setTopBottom(true, false, 26.570000, 43.270000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BCC_)
						end

						if arg1.interrupted then
							__FUNC_3A04_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 362.960000, 379.040000)
						arg0:setTopBottom(true, false, 24.570000, 41.270000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A04_)
					end

					if arg1.interrupted then
						__FUNC_383C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 366.000000, 382.080000)
					arg0:setTopBottom(true, false, 19.570000, 36.270000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_383C_)
				end

				if arg1.interrupted then
					__FUNC_3674_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(true, false, 19.570000, 36.270000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3674_)
			end

			if arg1.interrupted then
				__FUNC_34E7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34E7_)
		end

		registerVal9:completeAnimation()
		registerVal2.GlowOrangeOver:setLeftRight(true, false, 371.000000, 387.080000)
		registerVal2.GlowOrangeOver:setTopBottom(true, false, 14.570000, 31.270000)
		registerVal2.GlowOrangeOver:setAlpha(0.000000)
		__FUNC_336D_(registerVal9, {})
		local function __FUNC_41A1_(arg0, arg1)
			local function __FUNC_42F8_(arg0, arg1)
				local function __FUNC_4473_(arg0, arg1)
					local function __FUNC_4638_(arg0, arg1)
						local function __FUNC_4823_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 358.000000, 374.080000)
							arg0:setTopBottom(true, false, 65.370000, 82.070000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_4823_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 358.000000, 374.080000)
						arg0:setTopBottom(true, false, 65.370000, 82.070000)
						arg0:setAlpha(0.930000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4823_)
					end

					if arg1.interrupted then
						__FUNC_4638_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 358.880000, 374.960000)
					arg0:setTopBottom(true, false, 66.510000, 83.210000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4638_)
				end

				if arg1.interrupted then
					__FUNC_4473_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4473_)
			end

			if arg1.interrupted then
				__FUNC_42F8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42F8_)
		end

		registerVal10:completeAnimation()
		registerVal2.GlowOrangeOver0:setLeftRight(true, false, 373.000000, 389.080000)
		registerVal2.GlowOrangeOver0:setTopBottom(true, false, 84.620000, 101.320000)
		registerVal2.GlowOrangeOver0:setAlpha(0.000000)
		__FUNC_41A1_(registerVal10, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal12.DefaultClip = __FUNC_DBD_
	registerVal11.DefaultState = registerVal12
	registerVal2.clipsPerState = registerVal11
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


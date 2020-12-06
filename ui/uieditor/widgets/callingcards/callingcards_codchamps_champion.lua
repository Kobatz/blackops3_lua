-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_CodChamps_Champion_Lights")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_CodChamps_Champion = registerVal1
function CoD.CallingCards_CodChamps_Champion.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCards_CodChamps_Champion)
	registerVal2.id = "CallingCards_CodChamps_Champion"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 492.000000)
	registerVal3:setTopBottom(true, false, -16.000000, 152.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcards_champion_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 492.000000)
	registerVal4:setTopBottom(true, false, -16.000000, 152.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcards_champion_bg"))
	registerVal2:addElement(registerVal4)
	registerVal2.bg = registerVal4
	local registerVal5 = CoD.CallingCards_CodChamps_Champion_Lights.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 156.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.CallingCardsCodChampsChampionLights = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal6:setTopBottom(true, false, -16.000000, 152.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_callingcards_champion_fighter1"))
	registerVal2:addElement(registerVal6)
	registerVal2.fighter1 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal7:setTopBottom(true, false, -16.000000, 152.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_callingcards_champion_fighter2"))
	registerVal2:addElement(registerVal7)
	registerVal2.fighter2 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 166.420000, 500.290000)
	registerVal8:setTopBottom(true, false, -54.000000, 166.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcards_champion_fighter3"))
	registerVal2:addElement(registerVal8)
	registerVal2.fighter3 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 190.580000, 356.540000)
	registerVal9:setTopBottom(true, false, -8.500000, 138.500000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcards_champion_belt"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
	registerVal9:setShaderVector(0.000000, 0.660000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.belt = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -587.410000, 135.160000)
	registerVal10:setTopBottom(true, false, -448.110000, 584.110000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZRot(-84.000000)
	registerVal10:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.whiteFlash = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 240.000000, 962.560000)
	registerVal11:setTopBottom(true, false, -698.110000, 334.110000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZRot(-84.000000)
	registerVal11:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.whiteFlash0 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -22.500000, 334.500000)
	registerVal12:setTopBottom(true, false, -95.040000, 207.040000)
	registerVal12:setImage(RegisterImage("uie_t7_callingcards_champion_light4"))
	registerVal2:addElement(registerVal12)
	registerVal2.biglight = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_E5F_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.bg0:setLeftRight(true, false, 0.000000, 492.000000)
		registerVal2.bg0:setTopBottom(true, false, -16.000000, 152.000000)
		registerVal2.bg0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_1676_(arg0, arg1)
			local function __FUNC_1804_(arg0, arg1)
				local function __FUNC_197F_(arg0, arg1)
					local function __FUNC_1AD4_(arg0, arg1)
						local function __FUNC_1C2C_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 0.000000, 493.000000)
							arg0:setTopBottom(true, false, -16.000000, 152.000000)
							arg0:setAlpha(0.000000)
							arg0:setZRot(0.000000)
							arg0:setScale(1.230000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1C2C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 529.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C2C_)
					end

					if arg1.interrupted then
						__FUNC_1AD4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1579.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AD4_)
				end

				if arg1.interrupted then
					__FUNC_197F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 2400.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(1.230000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_197F_)
			end

			if arg1.interrupted then
				__FUNC_1804_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 980.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 0.000000, 493.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1804_)
		end

		registerVal4:completeAnimation()
		registerVal2.bg:setLeftRight(true, false, 0.000000, 492.000000)
		registerVal2.bg:setTopBottom(true, false, -16.000000, 152.000000)
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.bg:setZRot(0.000000)
		registerVal2.bg:setScale(1.000000)
		__FUNC_1676_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CallingCardsCodChampsChampionLights:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_1E8C_(arg0, arg1)
			local function __FUNC_1FE4_(arg0, arg1)
				local function __FUNC_215F_(arg0, arg1)
					local function __FUNC_22B4_(arg0, arg1)
						local function __FUNC_240C_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_240C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 1169.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_240C_)
					end

					if arg1.interrupted then
						__FUNC_22B4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 3870.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22B4_)
				end

				if arg1.interrupted then
					__FUNC_215F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_215F_)
			end

			if arg1.interrupted then
				__FUNC_1FE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FE4_)
		end

		registerVal6:completeAnimation()
		registerVal2.fighter1:setAlpha(1.000000)
		__FUNC_1E8C_(registerVal6, {})
		local function __FUNC_25C1_(arg0, arg1)
			local function __FUNC_273B_(arg0, arg1)
				local function __FUNC_2890_(arg0, arg1)
					local function __FUNC_2A0B_(arg0, arg1)
						local function __FUNC_2B60_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 3150.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2B60_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B60_)
					end

					if arg1.interrupted then
						__FUNC_2A0B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A0B_)
				end

				if arg1.interrupted then
					__FUNC_2890_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2890_)
			end

			if arg1.interrupted then
				__FUNC_273B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_273B_)
		end

		registerVal7:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_25C1_)
		local function __FUNC_2D15_(arg0, arg1)
			local function __FUNC_2E6C_(arg0, arg1)
				local function __FUNC_2FE7_(arg0, arg1)
					local function __FUNC_313C_(arg0, arg1)
						local function __FUNC_3326_(arg0, arg1)
							local function __FUNC_34F9_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 430.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 132.040000, 697.190000)
								arg0:setTopBottom(true, false, -2.500000, 369.900000)
								arg0:setAlpha(0.000000)
								arg0:setZRot(-35.000000)
								arg0:setScale(1.030000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_34F9_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 2119.000000, false, false, CoD.TweenType.Linear)
							arg0:setTopBottom(true, false, -2.500000, 369.900000)
							arg0:setZRot(-35.000000)
							arg0:setScale(1.030000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34F9_)
						end

						if arg1.interrupted then
							__FUNC_3326_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 2289.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 132.040000, 697.190000)
						arg0:setTopBottom(true, false, -8.500000, 363.900000)
						arg0:setZRot(-33.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3326_)
					end

					if arg1.interrupted then
						__FUNC_313C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 480.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_313C_)
				end

				if arg1.interrupted then
					__FUNC_2FE7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FE7_)
			end

			if arg1.interrupted then
				__FUNC_2E6C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E6C_)
		end

		registerVal8:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setLeftRight(true, false, 166.420000, 500.290000)
		registerVal8:setTopBottom(true, false, -54.000000, 166.000000)
		registerVal8:setAlpha(0.000000)
		registerVal8:setZRot(0.000000)
		registerVal8:setScale(1.000000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_2D15_)
		local function __FUNC_3762_(arg0, arg1)
			local function __FUNC_38F7_(arg0, arg1)
				local function __FUNC_3AAE_(arg0, arg1)
					local function __FUNC_3C66_(arg0, arg1)
						local function __FUNC_3E1E_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, 210.890000, 365.880000)
							arg0:setTopBottom(true, false, 3.000000, 133.730000)
							arg0:setAlpha(0.000000)
							arg0:setZRot(0.000000)
							arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
							arg0:setShaderVector(0.000000, 0.350000, 0.000000, 0.000000, 0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_3E1E_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.700000)
						arg0:setShaderVector(0.000000, 0.350000, 0.000000, 0.000000, 0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3E1E_)
					end

					if arg1.interrupted then
						__FUNC_3C66_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.730000)
					arg0:setShaderVector(0.000000, 0.696964, 0.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C66_)
				end

				if arg1.interrupted then
					__FUNC_3AAE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:setShaderVector(0.000000, 0.864465, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AAE_)
			end

			if arg1.interrupted then
				__FUNC_38F7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 0.888393, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38F7_)
		end

		registerVal9:beginAnimation("keyframe", 3430.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setLeftRight(true, false, 210.890000, 365.880000)
		registerVal9:setTopBottom(true, false, 3.000000, 133.730000)
		registerVal9:setAlpha(0.000000)
		registerVal9:setZRot(0.000000)
		registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
		registerVal9:setShaderVector(0.000000, 1.020000, 0.000000, 0.000000, 0.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_3762_)
		local function __FUNC_4137_(arg0, arg1)
			local function __FUNC_42AF_(arg0, arg1)
				local function __FUNC_4427_(arg0, arg1)
					local function __FUNC_457C_(arg0, arg1)
						local function __FUNC_46F7_(arg0, arg1)
							local function __FUNC_486F_(arg0, arg1)
								local function __FUNC_49E7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 950.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_49E7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(1.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_49E7_)
							end

							if arg1.interrupted then
								__FUNC_486F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_486F_)
						end

						if arg1.interrupted then
							__FUNC_46F7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_46F7_)
					end

					if arg1.interrupted then
						__FUNC_457C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 1289.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_457C_)
				end

				if arg1.interrupted then
					__FUNC_4427_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4427_)
			end

			if arg1.interrupted then
				__FUNC_42AF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42AF_)
		end

		registerVal10:beginAnimation("keyframe", 1080.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(0.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_4137_)
		local function __FUNC_4B99_(arg0, arg1)
			local function __FUNC_4D13_(arg0, arg1)
				local function __FUNC_4E8B_(arg0, arg1)
					local function __FUNC_4FE0_(arg0, arg1)
						local function __FUNC_515B_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_515B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_515B_)
					end

					if arg1.interrupted then
						__FUNC_4FE0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 820.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FE0_)
				end

				if arg1.interrupted then
					__FUNC_4E8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E8B_)
			end

			if arg1.interrupted then
				__FUNC_4D13_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D13_)
		end

		registerVal11:beginAnimation("keyframe", 3220.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setAlpha(0.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", __FUNC_4B99_)
		local function __FUNC_530D_(arg0, arg1)
			local function __FUNC_5464_(arg0, arg1)
				local function __FUNC_55DF_(arg0, arg1)
					local function __FUNC_5757_(arg0, arg1)
						local function __FUNC_58AC_(arg0, arg1)
							local function __FUNC_5A27_(arg0, arg1)
								local function __FUNC_5B7C_(arg0, arg1)
									local function __FUNC_5CF7_(arg0, arg1)
										local function __FUNC_5E4C_(arg0, arg1)
											local function __FUNC_5FC7_(arg0, arg1)
												local function __FUNC_611C_(arg0, arg1)
													if not arg1.interrupted then
														arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
													end
													arg0:setAlpha(0.000000)
													if arg1.interrupted then
														registerVal2.clipFinished(arg0, arg1)
													else
														arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
													end
												end

												if arg1.interrupted then
													__FUNC_611C_(arg0, arg1)
													return 
												end
												arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
												arg0:registerEventHandler("transition_complete_keyframe", __FUNC_611C_)
											end

											if arg1.interrupted then
												__FUNC_5FC7_(arg0, arg1)
												return 
											end
											arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
											arg0:setAlpha(1.000000)
											arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5FC7_)
										end

										if arg1.interrupted then
											__FUNC_5E4C_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 1190.000000, false, false, CoD.TweenType.Linear)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E4C_)
									end

									if arg1.interrupted then
										__FUNC_5CF7_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(0.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5CF7_)
								end

								if arg1.interrupted then
									__FUNC_5B7C_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5B7C_)
							end

							if arg1.interrupted then
								__FUNC_5A27_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(1.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A27_)
						end

						if arg1.interrupted then
							__FUNC_58AC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 849.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58AC_)
					end

					if arg1.interrupted then
						__FUNC_5757_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 280.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5757_)
				end

				if arg1.interrupted then
					__FUNC_55DF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55DF_)
			end

			if arg1.interrupted then
				__FUNC_5464_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2339.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5464_)
		end

		registerVal12:completeAnimation()
		registerVal2.biglight:setAlpha(0.000000)
		__FUNC_530D_(registerVal12, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal14.DefaultClip = __FUNC_E5F_
	registerVal13.DefaultState = registerVal14
	registerVal2.clipsPerState = registerVal13
	local function __FUNC_62D1_(arg0)
		arg0.CallingCardsCodChampsChampionLights:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_62D1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


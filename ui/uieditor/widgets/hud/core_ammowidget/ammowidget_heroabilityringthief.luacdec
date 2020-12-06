-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1D8_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "playerAbilities.playerGadget3.flashStart")
	registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "playerAbilities.playerGadget3.flashEnd")
end

local function __FUNC_30A_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.GetModel(registerVal3, "playerAbilities.playerGadget3.flashStart")
	local registerVal4 = Engine.GetModelForController(arg1)
	registerVal3 = Engine.GetModel(registerVal4, "playerAbilities.playerGadget3.flashEnd")
	Engine.SetModelValue(registerVal3, 0.000000)
	Engine.SetModelValue(registerVal2, 0.000000)
	local function __FUNC_530_(arg2)
		local registerVal1 = Engine.GetModelValue(registerVal2)
		arg0.HeroRingImageThief:setShaderVector(0.000000, GetThiefEndAndStartFill(arg1, registerVal1))
	end

	arg0.HeroRingImageThief:subscribeToGlobalModel(arg1, "PlayerAbilities", "playerGadget3.flashEnd", __FUNC_530_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_HeroAbilityRingThief = registerVal3
local function __FUNC_622_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_1D8_ then
		__FUNC_1D8_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_HeroAbilityRingThief)
	registerVal2.id = "AmmoWidget_HeroAbilityRingThief"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 92.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 92.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_bj_ringpattern"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal3:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_10A7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3:setShaderVector(0.000000, GetThiefEndAndStartFill(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "PlayerAbilities", "playerGadget3.flashStart", __FUNC_10A7_)
	registerVal2:addElement(registerVal3)
	registerVal2.HeroRingImageThief = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -5.000000, 5.000000)
	registerVal4:setTopBottom(true, true, -5.000000, 5.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_ammowidget_bj_ringfilldepleteblur"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal4:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.130000, 0.030000, 0.000000, 0.000000)
	local function __FUNC_1229_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4:setShaderVector(0.000000, GetThiefEndAndStartFill(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "PlayerAbilities", "playerGadget3.flashStart", __FUNC_1229_)
	registerVal2:addElement(registerVal4)
	registerVal2.HeroRingImageThiefBlurinner = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -5.000000, 5.000000)
	registerVal5:setTopBottom(true, true, -5.000000, 5.000000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_ammowidget_bj_ringfilldepleteblur"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal5:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.130000, 0.030000, 0.000000, 0.000000)
	local function __FUNC_13AD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal5:setShaderVector(0.000000, GetThiefEndAndStartFill(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "PlayerAbilities", "playerGadget3.flashStart", __FUNC_13AD_)
	registerVal2:addElement(registerVal5)
	registerVal2.HeroRingImageThiefBlur = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_1531_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.HeroRingImageThief:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_1531_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_163A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.HeroRingImageThief:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_163A_
	local function __FUNC_1742_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_1A78_(arg0, arg1)
			local function __FUNC_1BD0_(arg0, arg1)
				local function __FUNC_1D4B_(arg0, arg1)
					local function __FUNC_1EA0_(arg0, arg1)
						local function __FUNC_1FF8_(arg0, arg1)
							local function __FUNC_2150_(arg0, arg1)
								local function __FUNC_22EE_(arg0, arg1)
									local function __FUNC_2467_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.000000)
										arg0:setScale(1.150000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_2467_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
									arg0:setScale(1.170000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2467_)
								end

								if arg1.interrupted then
									__FUNC_22EE_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.000000)
								arg0:setScale(1.200000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22EE_)
							end

							if arg1.interrupted then
								__FUNC_2150_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2150_)
						end

						if arg1.interrupted then
							__FUNC_1FF8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FF8_)
					end

					if arg1.interrupted then
						__FUNC_1EA0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EA0_)
				end

				if arg1.interrupted then
					__FUNC_1D4B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 250.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D4B_)
			end

			if arg1.interrupted then
				__FUNC_1BD0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BD0_)
		end

		registerVal3:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal2.HeroRingImageThief:setAlpha(0.000000)
		registerVal2.HeroRingImageThief:setScale(1.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_1A78_)
		local function __FUNC_263C_(arg0, arg1)
			local function __FUNC_27B7_(arg0, arg1)
				local function __FUNC_292F_(arg0, arg1)
					local function __FUNC_2ACA_(arg0, arg1)
						local function __FUNC_2C20_(arg0, arg1)
							local function __FUNC_2DBE_(arg0, arg1)
								local function __FUNC_2F37_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									arg0:setScale(1.100000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2F37_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								arg0:setScale(1.120000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F37_)
							end

							if arg1.interrupted then
								__FUNC_2DBE_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:setScale(1.150000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DBE_)
						end

						if arg1.interrupted then
							__FUNC_2C20_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C20_)
					end

					if arg1.interrupted then
						__FUNC_2ACA_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:setScale(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ACA_)
				end

				if arg1.interrupted then
					__FUNC_292F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(0.930000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_292F_)
			end

			if arg1.interrupted then
				__FUNC_27B7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(0.900000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27B7_)
		end

		registerVal4:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal2.HeroRingImageThiefBlurinner:setAlpha(0.000000)
		registerVal2.HeroRingImageThiefBlurinner:setScale(1.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_263C_)
		local function __FUNC_310C_(arg0, arg1)
			local function __FUNC_3287_(arg0, arg1)
				local function __FUNC_33FF_(arg0, arg1)
					local function __FUNC_359A_(arg0, arg1)
						local function __FUNC_3713_(arg0, arg1)
							local function __FUNC_38AE_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								arg0:setScale(1.100000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_38AE_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:setScale(1.200000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38AE_)
						end

						if arg1.interrupted then
							__FUNC_3713_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
						arg0:setScale(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3713_)
					end

					if arg1.interrupted then
						__FUNC_359A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:setScale(1.050000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_359A_)
				end

				if arg1.interrupted then
					__FUNC_33FF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(1.170000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33FF_)
			end

			if arg1.interrupted then
				__FUNC_3287_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.200000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3287_)
		end

		registerVal5:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal2.HeroRingImageThiefBlur:setAlpha(0.000000)
		registerVal2.HeroRingImageThiefBlur:setScale(1.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_310C_)
	end

	registerVal7.FlashOn = __FUNC_1742_
	registerVal6.Visible = registerVal7
	registerVal7 = {}
	local function __FUNC_3A84_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.HeroRingImageThief:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_3A84_
	local function __FUNC_3B8E_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_3EC9_(arg0, arg1)
			local function __FUNC_4043_(arg0, arg1)
				local function __FUNC_41DE_(arg0, arg1)
					local function __FUNC_4357_(arg0, arg1)
						local function __FUNC_44AC_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setScale(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_44AC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_44AC_)
					end

					if arg1.interrupted then
						__FUNC_4357_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4357_)
				end

				if arg1.interrupted then
					__FUNC_41DE_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.030000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41DE_)
			end

			if arg1.interrupted then
				__FUNC_4043_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.380000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4043_)
		end

		registerVal3:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal2.HeroRingImageThief:setAlpha(0.000000)
		registerVal2.HeroRingImageThief:setScale(1.150000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_3EC9_)
		local function __FUNC_4684_(arg0, arg1)
			local function __FUNC_47DC_(arg0, arg1)
				local function __FUNC_4957_(arg0, arg1)
					local function __FUNC_4ACF_(arg0, arg1)
						local function __FUNC_4C6A_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setScale(0.900000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_4C6A_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setScale(0.920000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4C6A_)
					end

					if arg1.interrupted then
						__FUNC_4ACF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(0.960000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4ACF_)
				end

				if arg1.interrupted then
					__FUNC_4957_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4957_)
			end

			if arg1.interrupted then
				__FUNC_47DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_47DC_)
		end

		registerVal4:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal2.HeroRingImageThiefBlurinner:setAlpha(0.000000)
		registerVal2.HeroRingImageThiefBlurinner:setScale(1.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_4684_)
		local function __FUNC_4E40_(arg0, arg1)
			local function __FUNC_4F98_(arg0, arg1)
				local function __FUNC_5113_(arg0, arg1)
					local function __FUNC_528B_(arg0, arg1)
						local function __FUNC_5426_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setScale(1.200000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_5426_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setScale(1.170000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5426_)
					end

					if arg1.interrupted then
						__FUNC_528B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(1.080000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_528B_)
				end

				if arg1.interrupted then
					__FUNC_5113_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5113_)
			end

			if arg1.interrupted then
				__FUNC_4F98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4F98_)
		end

		registerVal5:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
		registerVal2.HeroRingImageThiefBlur:setAlpha(0.000000)
		registerVal2.HeroRingImageThiefBlur:setScale(1.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_4E40_)
	end

	registerVal7.FlashOn = __FUNC_3B8E_
	registerVal6.VisibleCopy = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_55FC_(arg0, arg2, arg3)
		return IsHeroWeaponThiefGadget(arg1)
	end

	registerVal9.condition = __FUNC_55FC_
	local registerVal10 = {}
	registerVal10.stateName = "VisibleCopy"
	local function __FUNC_5659_(arg0, arg2, arg3)
		return IsHeroWeaponThiefGadget(arg1)
	end

	registerVal10.condition = __FUNC_5659_
	registerVal8 = {registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "currentWeapon.weapon")
	local function __FUNC_56B5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "currentWeapon.weapon"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_56B5_)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "playerAbilities.playerGadget3.name")
	local function __FUNC_57DE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.name"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_57DE_)
	local function __FUNC_5914_(arg0)
		local registerVal2 = IsHeroWeaponThiefGadget(arg1)
		if registerVal2 then
			PlayClip(registerVal2, "FlashOn", arg1)
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "playerAbilities.playerGadget3.flashEnd", __FUNC_5914_)
	local function __FUNC_59B0_(arg0)
		arg0.HeroRingImageThief:close()
		arg0.HeroRingImageThiefBlurinner:close()
		arg0.HeroRingImageThiefBlur:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_59B0_)
	if __FUNC_30A_ then
		__FUNC_30A_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AmmoWidget_HeroAbilityRingThief.new = __FUNC_622_

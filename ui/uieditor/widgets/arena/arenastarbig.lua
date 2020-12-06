-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1BD_(arg0, arg1)
	local registerVal2 = ArenaChallengesEnabled()
	if registerVal2 then
		local function __FUNC_25D_(arg0, arg2)
			if arg0.currentState == "NewlyEarned" then
				CoD.ArenaUtility.PlayRecentArenaChallengeToasts(arg1)
			end
		end

		arg0:registerEventHandler("clip_over", __FUNC_25D_)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ArenaStarbig = registerVal2
local function __FUNC_336_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ArenaStarbig)
	registerVal2.id = "ArenaStarbig"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -28.000000, 28.000000)
	registerVal3:setTopBottom(false, false, -29.000000, 28.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_arena_icon_stars_dust"))
	registerVal2:addElement(registerVal3)
	registerVal2.Dust = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -28.000000, 28.000000)
	registerVal4:setTopBottom(false, false, -29.000000, 28.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_arena_icon_stars_outlineglow"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -17.500000, 17.500000)
	registerVal5:setTopBottom(false, false, -17.500000, 17.500000)
	registerVal5:setRGB(0.680000, 0.680000, 0.680000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_arena_star_lrg_white"))
	registerVal2:addElement(registerVal5)
	registerVal2.outline = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -17.500000, 17.500000)
	registerVal6:setTopBottom(false, false, -17.500000, 17.500000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_arena_star_small_yellow"))
	registerVal2:addElement(registerVal6)
	registerVal2.active = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -17.500000, 17.500000)
	registerVal7:setTopBottom(false, false, -17.500000, 17.500000)
	registerVal7:setRGB(1.000000, 0.810000, 0.000000)
	registerVal7:setAlpha(0.790000)
	registerVal7:setImage(RegisterImage("uie_t7_arena_star_small_yellow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
	registerVal7:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.activeGlint = registerVal7
	local registerVal8 = LUI.UIElement.new()
	registerVal8:setLeftRight(true, false, -202.500000, -154.500000)
	registerVal8:setTopBottom(true, false, -70.000000, -22.000000)
	registerVal8:setPlaySoundDirect(true)
	registerVal2:addElement(registerVal8)
	registerVal2.sound = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_D6F_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.outline:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.active:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.DefaultClip = __FUNC_D6F_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_EBF_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Dust:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.outline:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.active:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.DefaultClip = __FUNC_EBF_
	registerVal9.Invisible = registerVal10
	registerVal10 = {}
	local function __FUNC_10B3_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Dust:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.outline:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.active:setRGB(1.000000, 0.740000, 0.010000)
		registerVal2.active:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.DefaultClip = __FUNC_10B3_
	registerVal9.Inactive = registerVal10
	registerVal10 = {}
	local function __FUNC_12EF_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_15E5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 1840.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.active:setAlpha(1.000000)
		__FUNC_15E5_(registerVal6, {})
		local function __FUNC_1799_(arg0, arg1)
			local function __FUNC_1913_(arg0, arg1)
				local function __FUNC_1AA7_(arg0, arg1)
					local function __FUNC_1C5E_(arg0, arg1)
						local function __FUNC_1DD7_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setRGB(1.000000, 0.810000, 0.000000)
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
							__FUNC_1DD7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DD7_)
					end

					if arg1.interrupted then
						__FUNC_1C5E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.090000)
					arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C5E_)
				end

				if arg1.interrupted then
					__FUNC_1AA7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 620.000000, false, false, CoD.TweenType.Linear)
				arg0:setShaderVector(0.000000, 0.861111, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AA7_)
			end

			if arg1.interrupted then
				__FUNC_1913_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1913_)
		end

		registerVal7:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setRGB(1.000000, 0.810000, 0.000000)
		registerVal7:setAlpha(0.000000)
		registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
		registerVal7:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_1799_)
	end

	registerVal10.DefaultClip = __FUNC_12EF_
	registerVal9.Earned = registerVal10
	registerVal10 = {}
	local function __FUNC_208B_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_2497_(arg0, arg1)
			local function __FUNC_25EC_(arg0, arg1)
				local function __FUNC_2767_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setScale(1.300000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2767_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.940000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2767_)
			end

			if arg1.interrupted then
				__FUNC_25EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1169.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25EC_)
		end

		registerVal3:completeAnimation()
		registerVal2.Dust:setAlpha(0.000000)
		registerVal2.Dust:setScale(1.000000)
		__FUNC_2497_(registerVal3, {})
		local function __FUNC_293C_(arg0, arg1)
			local function __FUNC_2A94_(arg0, arg1)
				local function __FUNC_2C0F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 339.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2C0F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C0F_)
			end

			if arg1.interrupted then
				__FUNC_2A94_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1169.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A94_)
		end

		registerVal4:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_293C_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.outline:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_2DC1_(arg0, arg1)
			local function __FUNC_2F59_(arg0, arg1)
				local function __FUNC_30B0_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 1230.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(1.000000)
					arg0:setScale(1.000000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_30B0_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 379.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30B0_)
			end

			if arg1.interrupted then
				__FUNC_2F59_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F59_)
		end

		registerVal6:beginAnimation("keyframe", 990.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:setScale(4.000000)
		registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_2DC1_)
		local function __FUNC_3310_(arg0, arg2)
			if not arg2.interrupted then
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:playSound("uin_arena_star_gain", arg1)
			if arg2.interrupted then
				registerVal2.clipFinished(arg0, arg2)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:beginAnimation("keyframe", 980.000000, false, false, CoD.TweenType.Linear)
		registerVal8:playSound("0", arg1)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_3310_)
	end

	registerVal10.DefaultClip = __FUNC_208B_
	registerVal9.NewlyEarned = registerVal10
	registerVal10 = {}
	local function __FUNC_34E2_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_386D_(arg0, arg1)
			local function __FUNC_39C4_(arg0, arg1)
				local function __FUNC_3B3F_(arg0, arg1)
					local function __FUNC_3CFE_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(1.000000, 1.000000, 1.000000)
						arg0:setAlpha(0.000000)
						arg0:setScale(0.700000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3CFE_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(1.000000, 1.000000, 1.000000)
					arg0:setAlpha(1.000000)
					arg0:setScale(0.700000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3CFE_)
				end

				if arg1.interrupted then
					__FUNC_3B3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.790000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B3F_)
			end

			if arg1.interrupted then
				__FUNC_39C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 860.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39C4_)
		end

		registerVal3:completeAnimation()
		registerVal2.Dust:setRGB(1.000000, 0.820000, 0.000000)
		registerVal2.Dust:setAlpha(0.000000)
		registerVal2.Dust:setScale(1.000000)
		__FUNC_386D_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.outline:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_3EFD_(arg0, arg1)
			local function __FUNC_4054_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 559.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4054_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 970.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4054_)
		end

		registerVal6:completeAnimation()
		registerVal2.active:setAlpha(1.000000)
		__FUNC_3EFD_(registerVal6, {})
		local function __FUNC_4209_(arg0, arg2)
			if not arg2.interrupted then
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:playSound("uin_arena_star_loss", arg1)
			if arg2.interrupted then
				registerVal2.clipFinished(arg0, arg2)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:beginAnimation("keyframe", 959.000000, false, false, CoD.TweenType.Linear)
		registerVal8:playSound("0", arg1)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_4209_)
	end

	registerVal10.DefaultClip = __FUNC_34E2_
	registerVal9.Lost = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Invisible"
	local function __FUNC_43DA_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_43DA_
	local registerVal13 = {}
	registerVal13.stateName = "Inactive"
	local function __FUNC_4425_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "earned")
		if not registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "lost")
		else
		end
		return true
	end

	registerVal13.condition = __FUNC_4425_
	local registerVal14 = {}
	registerVal14.stateName = "Earned"
	local function __FUNC_44D0_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "earned")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "new")
		end
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_44D0_
	local registerVal15 = {}
	registerVal15.stateName = "NewlyEarned"
	local function __FUNC_456F_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "earned")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "new")
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_456F_
	local registerVal16 = {}
	registerVal16.stateName = "Lost"
	local function __FUNC_4607_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "lost")
	end

	registerVal16.condition = __FUNC_4607_
	registerVal11 = {registerVal12, registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal11)
	local function __FUNC_4674_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "earned"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "earned", true, __FUNC_4674_)
	local function __FUNC_4790_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lost"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "lost", true, __FUNC_4790_)
	local function __FUNC_48AA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "new"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "new", true, __FUNC_48AA_)
	if __FUNC_1BD_ then
		__FUNC_1BD_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ArenaStarbig.new = __FUNC_336_

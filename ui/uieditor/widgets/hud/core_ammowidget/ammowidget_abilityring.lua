-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_AbilityGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_AbilityRing = registerVal1
function CoD.AmmoWidget_AbilityRing.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_AbilityRing)
	registerVal2.id = "AmmoWidget_AbilityRing"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 18.000000, -18.000000)
	registerVal3:setTopBottom(true, true, 18.000000, -18.000000)
	registerVal3:setRGB(0.790000, 0.860000, 1.000000)
	registerVal3:setZoom(-10.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringfill"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal3:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_13CF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "PlayerAbilities", "playerGadget3.powerRatio", __FUNC_13CF_)
	registerVal2:addElement(registerVal3)
	registerVal2.ImgRingFill = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 18.000000, -18.000000)
	registerVal4:setTopBottom(true, true, 18.000000, -18.000000)
	registerVal4:setRGB(0.400000, 0.570000, 0.900000)
	registerVal4:setAlpha(Multiple(2.000000, 0.000000))
	registerVal4:setZoom(6.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringpattern"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal4:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1524_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "PlayerAbilities", "playerGadget3.powerRatio", __FUNC_1524_)
	registerVal2:addElement(registerVal4)
	registerVal2.ImgRingPattern = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 18.000000, -18.000000)
	registerVal5:setTopBottom(true, true, 18.000000, -18.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZoom(6.000000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringpattern"))
	registerVal2:addElement(registerVal5)
	registerVal2.ImgRingPatternDuplicate = registerVal5
	local registerVal6 = CoD.AmmoWidget_AbilityGlow.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 4.000000, -4.000000)
	registerVal6:setTopBottom(true, true, 4.000000, -4.000000)
	registerVal6:setRGB(0.400000, 0.650000, 0.990000)
	registerVal6:setAlpha(0.240000)
	registerVal6:setScale(0.900000)
	registerVal2:addElement(registerVal6)
	registerVal2.Glow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, -2.630000, 2.630000)
	registerVal7:setTopBottom(true, true, -2.630000, 2.630000)
	registerVal7:setRGB(0.580000, 0.700000, 1.000000)
	registerVal7:setAlpha(0.980000)
	registerVal7:setYRot(180.000000)
	registerVal7:setZRot(35.010000)
	registerVal7:setScale(1.010000)
	registerVal7:setImage(RegisterImage("uie_t7_core_hud_ammowidget_abilityswirl"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.AbilitySwirl = registerVal7
	local registerVal8 = CoD.AmmoWidget_AbilityGlow.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 4.000000, -4.000000)
	registerVal8:setTopBottom(true, true, 4.000000, -4.000000)
	registerVal8:setRGB(0.400000, 0.650000, 0.990000)
	registerVal8:setAlpha(0.760000)
	registerVal8:setZoom(13.470000)
	registerVal8:setScale(0.900000)
	registerVal2:addElement(registerVal8)
	registerVal2.Glow0 = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_167C_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_1AC5_(arg0, arg1)
			local function __FUNC_1C3F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 0.810000, 0.000000)
				arg0:setAlpha(1.000000)
				arg0:setZoom(-10.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1C3F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.800000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C3F_)
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(1.000000, 0.810000, 0.000000)
		registerVal2.ImgRingFill:setAlpha(1.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_1AC5_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(8.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 0.910000, 0.310000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(8.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_1E41_(arg0, arg1)
			local function __FUNC_2011_(arg0, arg1)
				local function __FUNC_21E1_(arg0, arg1)
					local function __FUNC_238E_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(1.000000, 0.600000, 0.310000)
						arg0:setAlpha(0.200000)
						arg0:setScale(0.900000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_238E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
					arg0:setRGB(1.000000, 0.640000, 0.310000)
					arg0:setScale(0.940000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_238E_)
				end

				if arg1.interrupted then
					__FUNC_21E1_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 350.000000, false, false, CoD.TweenType.Linear)
				arg0:setRGB(1.000000, 0.780000, 0.310000)
				arg0:setAlpha(0.000000)
				arg0:setScale(1.100000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21E1_)
			end

			if arg1.interrupted then
				__FUNC_2011_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Bounce)
			arg0:setRGB(1.000000, 0.900000, 0.310000)
			arg0:setAlpha(0.700000)
			arg0:setScale(0.960000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2011_)
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.600000, 0.310000)
		registerVal2.Glow:setAlpha(0.200000)
		registerVal2.Glow:setScale(0.900000)
		__FUNC_1E41_(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal10.DefaultClip = __FUNC_167C_
	local function __FUNC_2597_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_2999_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.790000, 0.860000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(1.000000, 0.810000, 0.000000)
		registerVal2.ImgRingFill:setAlpha(1.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_2999_(registerVal3, {})
		local function __FUNC_2B9D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(6.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(8.000000)
		__FUNC_2B9D_(registerVal4, {})
		local function __FUNC_2D96_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(6.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 0.910000, 0.310000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(8.000000)
		__FUNC_2D96_(registerVal5, {})
		local function __FUNC_2F94_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.400000, 0.650000, 0.990000)
			arg0:setAlpha(0.240000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.600000, 0.310000)
		registerVal2.Glow:setAlpha(0.150000)
		registerVal2.Glow:setScale(0.900000)
		__FUNC_2F94_(registerVal6, {})
		local function __FUNC_319F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.590000, 0.710000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZRot(-20.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setRGB(0.590000, 0.710000, 1.000000)
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.AbilitySwirl:setZRot(-20.300000)
		__FUNC_319F_(registerVal7, {})
	end

	registerVal10.Ready = __FUNC_2597_
	local function __FUNC_33A6_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_3777_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(1.000000, 0.810000, 0.000000)
		registerVal2.ImgRingFill:setAlpha(1.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_3777_(registerVal3, {})
		local function __FUNC_3972_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.830000, 0.890000, 1.000000)
			arg0:setAlpha(Multiple(2.000000, 2.000000))
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.830000, 0.890000, 1.000000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(8.000000)
		__FUNC_3972_(registerVal4, {})
		local function __FUNC_3B98_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 0.910000, 0.310000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(8.000000)
		__FUNC_3B98_(registerVal5, {})
		local function __FUNC_3D96_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.600000, 0.310000)
		registerVal2.Glow:setAlpha(0.150000)
		registerVal2.Glow:setScale(0.900000)
		__FUNC_3D96_(registerVal6, {})
		local function __FUNC_3F93_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		__FUNC_3F93_(registerVal7, {})
	end

	registerVal10.Charge = __FUNC_33A6_
	local function __FUNC_4143_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_4513_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.550000, 0.690000, 0.980000)
			arg0:setAlpha(0.700000)
			arg0:setZoom(15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(1.000000, 0.810000, 0.000000)
		registerVal2.ImgRingFill:setAlpha(1.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_4513_(registerVal3, {})
		local function __FUNC_4718_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.400000, 0.570000, 0.900000)
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.400000, 0.570000, 0.900000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(8.000000)
		__FUNC_4718_(registerVal4, {})
		local function __FUNC_4945_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 0.910000, 0.310000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(8.000000)
		__FUNC_4945_(registerVal5, {})
		local function __FUNC_4B42_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.600000, 0.310000)
		registerVal2.Glow:setAlpha(0.150000)
		registerVal2.Glow:setScale(0.900000)
		__FUNC_4B42_(registerVal6, {})
		local function __FUNC_4D3F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		__FUNC_4D3F_(registerVal7, {})
	end

	registerVal10.InUse = __FUNC_4143_
	local function __FUNC_4EEF_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_5291_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 0.810000, 0.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(1.000000, 0.810000, 0.000000)
		registerVal2.ImgRingFill:setAlpha(1.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_5291_(registerVal3, {})
		local function __FUNC_5493_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(8.000000)
		__FUNC_5493_(registerVal4, {})
		local function __FUNC_5688_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 0.910000, 0.310000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(8.000000)
		__FUNC_5688_(registerVal5, {})
		local function __FUNC_5886_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 0.600000, 0.310000)
		registerVal2.Glow:setAlpha(0.150000)
		registerVal2.Glow:setScale(0.900000)
		__FUNC_5886_(registerVal6, {})
		local function __FUNC_5A83_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		__FUNC_5A83_(registerVal7, {})
	end

	registerVal10.NoGadget = __FUNC_4EEF_
	registerVal9.AdvertisedReady = registerVal10
	registerVal10 = {}
	local function __FUNC_5C33_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_5C33_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_5C92_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(0.790000, 0.860000, 1.000000)
		registerVal2.ImgRingFill:setAlpha(1.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(6.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(6.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(0.400000, 0.650000, 0.990000)
		registerVal2.Glow:setAlpha(0.240000)
		registerVal2.Glow:setZoom(0.000000)
		registerVal2.Glow:setScale(0.900000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_615E_(arg0, arg1)
			local function __FUNC_62F9_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 1010.000000, true, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(0.300000, 0.290000, 1.000000)
				arg0:setAlpha(0.000000)
				arg0:setZRot(1170.000000)
				arg0:setScale(1.100000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_62F9_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setZRot(7.110000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_62F9_)
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setRGB(0.590000, 0.710000, 1.000000)
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.AbilitySwirl:setZRot(-20.300000)
		registerVal2.AbilitySwirl:setScale(1.000000)
		__FUNC_615E_(registerVal7, {})
		local function __FUNC_6525_(arg0, arg1)
			local function __FUNC_66C1_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 540.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setZoom(48.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_66C1_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setZoom(2.530000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_66C1_)
		end

		registerVal8:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.Glow0:setZoom(0.000000)
		__FUNC_6525_(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_5C92_
	local function __FUNC_6897_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_6CB5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 0.810000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(0.790000, 0.860000, 1.000000)
		registerVal2.ImgRingFill:setAlpha(1.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_6CB5_(registerVal3, {})
		local function __FUNC_6EB7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(6.000000)
		__FUNC_6EB7_(registerVal4, {})
		local function __FUNC_70AC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 0.910000, 0.310000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(6.000000)
		__FUNC_70AC_(registerVal5, {})
		local function __FUNC_72B4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 0.600000, 0.310000)
			arg0:setAlpha(0.150000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(0.400000, 0.650000, 0.990000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(0.900000)
		__FUNC_72B4_(registerVal6, {})
		local function __FUNC_74BD_(arg0, arg1)
			local function __FUNC_7659_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 879.000000, true, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 0.520000, 0.000000)
				arg0:setAlpha(0.000000)
				arg0:setZRot(600.000000)
				arg0:setScale(1.100000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7659_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setZRot(-4.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7659_)
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setRGB(1.000000, 0.520000, 0.000000)
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.AbilitySwirl:setZRot(-20.300000)
		registerVal2.AbilitySwirl:setScale(1.010000)
		__FUNC_74BD_(registerVal7, {})
	end

	registerVal10.AdvertisedReady = __FUNC_6897_
	local function __FUNC_7880_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_7CB8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(0.790000, 0.860000, 1.000000)
		registerVal2.ImgRingFill:setAlpha(1.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_7CB8_(registerVal3, {})
		local function __FUNC_7EB6_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.830000, 0.890000, 1.000000)
			arg0:setAlpha(Multiple(2.000000, 2.000000))
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.830000, 0.890000, 1.000000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(6.000000)
		__FUNC_7EB6_(registerVal4, {})
		local function __FUNC_80DC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(6.000000)
		__FUNC_80DC_(registerVal5, {})
		local function __FUNC_82DA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(0.400000, 0.650000, 0.990000)
		registerVal2.Glow:setAlpha(0.240000)
		registerVal2.Glow:setScale(0.900000)
		__FUNC_82DA_(registerVal6, {})
		local function __FUNC_84D7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.590000, 0.710000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZRot(-20.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setRGB(0.590000, 0.710000, 1.000000)
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.AbilitySwirl:setZRot(-20.300000)
		__FUNC_84D7_(registerVal7, {})
	end

	registerVal10.Charge = __FUNC_7880_
	local function __FUNC_86DC_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_8B0A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.550000, 0.690000, 0.980000)
			arg0:setAlpha(0.700000)
			arg0:setZoom(15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(0.790000, 0.860000, 1.000000)
		registerVal2.ImgRingFill:setAlpha(1.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_8B0A_(registerVal3, {})
		local function __FUNC_8D10_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.400000, 0.570000, 0.900000)
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.400000, 0.570000, 0.900000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(6.000000)
		__FUNC_8D10_(registerVal4, {})
		local function __FUNC_8F3D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(6.000000)
		__FUNC_8F3D_(registerVal5, {})
		local function __FUNC_913A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(0.400000, 0.650000, 0.990000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(0.900000)
		__FUNC_913A_(registerVal6, {})
		local function __FUNC_9337_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.590000, 0.710000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZRot(-20.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setRGB(0.590000, 0.710000, 1.000000)
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.AbilitySwirl:setZRot(-20.300000)
		__FUNC_9337_(registerVal7, {})
	end

	registerVal10.InUse = __FUNC_86DC_
	local function __FUNC_953C_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_9941_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.790000, 0.860000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(0.790000, 0.860000, 1.000000)
		registerVal2.ImgRingFill:setAlpha(1.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_9941_(registerVal3, {})
		local function __FUNC_9B48_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(6.000000)
		__FUNC_9B48_(registerVal4, {})
		local function __FUNC_9D40_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(6.000000)
		__FUNC_9D40_(registerVal5, {})
		local function __FUNC_9F3E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(0.400000, 0.650000, 0.990000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(0.900000)
		__FUNC_9F3E_(registerVal6, {})
		local function __FUNC_A13B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.590000, 0.710000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZRot(-20.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setRGB(0.590000, 0.710000, 1.000000)
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.AbilitySwirl:setZRot(-20.300000)
		__FUNC_A13B_(registerVal7, {})
	end

	registerVal10.NoGadget = __FUNC_953C_
	registerVal9.Ready = registerVal10
	registerVal10 = {}
	local function __FUNC_A340_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingFill:setAlpha(0.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.830000, 0.890000, 1.000000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 2.000000))
		registerVal2.ImgRingPattern:setZoom(5.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(5.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_A340_
	local function __FUNC_A744_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_ABE5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.810000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingFill:setAlpha(0.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_ABE5_(registerVal3, {})
		local function __FUNC_ADE9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.830000, 0.890000, 1.000000)
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(-36.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.830000, 0.890000, 1.000000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 2.000000))
		registerVal2.ImgRingPattern:setZoom(5.000000)
		__FUNC_ADE9_(registerVal4, {})
		local function __FUNC_B013_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 0.910000, 0.310000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(5.000000)
		__FUNC_B013_(registerVal5, {})
		local function __FUNC_B218_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 0.600000, 0.310000)
			arg0:setAlpha(0.150000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(0.900000)
		__FUNC_B218_(registerVal6, {})
		local function __FUNC_B421_(arg0, arg1)
			local function __FUNC_B5BD_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 800.000000, true, false, CoD.TweenType.Linear)
				end
				arg0:setRGB(1.000000, 0.760000, 0.000000)
				arg0:setAlpha(0.000000)
				arg0:setZRot(700.000000)
				arg0:setScale(1.090000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_B5BD_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setZRot(37.660000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5BD_)
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setRGB(1.000000, 0.760000, 0.000000)
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.AbilitySwirl:setZRot(-20.300000)
		registerVal2.AbilitySwirl:setScale(1.010000)
		__FUNC_B421_(registerVal7, {})
		local function __FUNC_B7E4_(arg0, arg1)
			local function __FUNC_B981_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setZoom(48.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_B981_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setZoom(5.650000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B981_)
		end

		registerVal8:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.Glow0:setZoom(0.000000)
		__FUNC_B7E4_(registerVal8, {})
	end

	registerVal10.AdvertisedReady = __FUNC_A744_
	local function __FUNC_BB57_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_BF69_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.790000, 0.860000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingFill:setAlpha(0.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_BF69_(registerVal3, {})
		local function __FUNC_C16B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.830000, 0.890000, 1.000000)
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(6.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.830000, 0.890000, 1.000000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 2.000000))
		registerVal2.ImgRingPattern:setZoom(5.000000)
		__FUNC_C16B_(registerVal4, {})
		local function __FUNC_C393_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(6.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(5.000000)
		__FUNC_C393_(registerVal5, {})
		local function __FUNC_C58E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.400000, 0.650000, 0.990000)
			arg0:setAlpha(0.240000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(0.900000)
		__FUNC_C58E_(registerVal6, {})
		local function __FUNC_C795_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.590000, 0.710000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZRot(-20.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setRGB(0.590000, 0.710000, 1.000000)
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.AbilitySwirl:setZRot(-20.300000)
		__FUNC_C795_(registerVal7, {})
	end

	registerVal10.Ready = __FUNC_BB57_
	local function __FUNC_C99E_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_CD1E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.550000, 0.690000, 0.980000)
			arg0:setAlpha(0.700000)
			arg0:setZoom(15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingFill:setAlpha(0.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_CD1E_(registerVal3, {})
		local function __FUNC_CF24_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.400000, 0.570000, 0.900000)
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.830000, 0.890000, 1.000000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 2.000000))
		registerVal2.ImgRingPattern:setZoom(5.000000)
		__FUNC_CF24_(registerVal4, {})
		local function __FUNC_D14F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(5.000000)
		__FUNC_D14F_(registerVal5, {})
		local function __FUNC_D34A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_D34A_(registerVal6, {})
		local function __FUNC_D524_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		__FUNC_D524_(registerVal7, {})
	end

	registerVal10.InUse = __FUNC_C99E_
	local function __FUNC_D6D7_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_DA56_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingFill:setAlpha(0.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_DA56_(registerVal3, {})
		local function __FUNC_DC52_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.830000, 0.890000, 1.000000)
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.830000, 0.890000, 1.000000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 2.000000))
		registerVal2.ImgRingPattern:setZoom(5.000000)
		__FUNC_DC52_(registerVal4, {})
		local function __FUNC_DE7B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(5.000000)
		__FUNC_DE7B_(registerVal5, {})
		local function __FUNC_E076_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_E076_(registerVal6, {})
		local function __FUNC_E250_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		__FUNC_E250_(registerVal7, {})
	end

	registerVal10.NoGadget = __FUNC_D6D7_
	registerVal9.Charge = registerVal10
	registerVal10 = {}
	local function __FUNC_E403_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(0.550000, 0.690000, 0.980000)
		registerVal2.ImgRingFill:setAlpha(0.700000)
		registerVal2.ImgRingFill:setZoom(15.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.400000, 0.570000, 0.900000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_E403_
	local function __FUNC_E81D_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_EBEA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 0.810000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(0.550000, 0.690000, 0.980000)
		registerVal2.ImgRingFill:setAlpha(0.700000)
		registerVal2.ImgRingFill:setZoom(15.000000)
		__FUNC_EBEA_(registerVal3, {})
		local function __FUNC_EDEB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setRGB(0.400000, 0.570000, 0.900000)
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.400000, 0.570000, 0.900000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(-10.000000)
		__FUNC_EDEB_(registerVal4, {})
		local function __FUNC_F013_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 0.910000, 0.310000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(-10.000000)
		__FUNC_F013_(registerVal5, {})
		local function __FUNC_F218_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 0.600000, 0.310000)
			arg0:setAlpha(0.150000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(0.900000)
		__FUNC_F218_(registerVal6, {})
		local function __FUNC_F421_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		__FUNC_F421_(registerVal7, {})
	end

	registerVal10.AdvertisedReady = __FUNC_E81D_
	local function __FUNC_F5D3_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_F9FE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setRGB(0.790000, 0.860000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(0.550000, 0.690000, 0.980000)
		registerVal2.ImgRingFill:setAlpha(0.700000)
		registerVal2.ImgRingFill:setZoom(15.000000)
		__FUNC_F9FE_(registerVal3, {})
		local function __FUNC_FBFF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setRGB(0.400000, 0.570000, 0.900000)
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(6.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.400000, 0.570000, 0.900000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(-10.000000)
		__FUNC_FBFF_(registerVal4, {})
		local function __FUNC_FE27_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(6.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(-10.000000)
		__FUNC_FE27_(registerVal5, {})
		local function __FUNC_10022_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setRGB(0.400000, 0.650000, 0.990000)
			arg0:setAlpha(0.240000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(0.900000)
		__FUNC_10022_(registerVal6, {})
		local function __FUNC_10229_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.590000, 0.710000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZRot(-20.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setRGB(0.590000, 0.710000, 1.000000)
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.AbilitySwirl:setZRot(-20.300000)
		__FUNC_10229_(registerVal7, {})
	end

	registerVal10.Ready = __FUNC_F5D3_
	local function __FUNC_10432_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_107D0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(0.550000, 0.690000, 0.980000)
		registerVal2.ImgRingFill:setAlpha(0.700000)
		registerVal2.ImgRingFill:setZoom(15.000000)
		__FUNC_107D0_(registerVal3, {})
		local function __FUNC_109CE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.830000, 0.890000, 1.000000)
			arg0:setAlpha(Multiple(2.000000, 2.000000))
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.400000, 0.570000, 0.900000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(-10.000000)
		__FUNC_109CE_(registerVal4, {})
		local function __FUNC_10BF2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(-10.000000)
		__FUNC_10BF2_(registerVal5, {})
		local function __FUNC_10DEE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_10DEE_(registerVal6, {})
		local function __FUNC_10FC8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		__FUNC_10FC8_(registerVal7, {})
	end

	registerVal10.Charge = __FUNC_10432_
	local function __FUNC_1117B_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_11518_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.550000, 0.690000, 0.980000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(0.550000, 0.690000, 0.980000)
		registerVal2.ImgRingFill:setAlpha(0.700000)
		registerVal2.ImgRingFill:setZoom(15.000000)
		__FUNC_11518_(registerVal3, {})
		local function __FUNC_11720_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.400000, 0.570000, 0.900000)
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.400000, 0.570000, 0.900000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(-10.000000)
		__FUNC_11720_(registerVal4, {})
		local function __FUNC_1194B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(-10.000000)
		__FUNC_1194B_(registerVal5, {})
		local function __FUNC_11B46_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_11B46_(registerVal6, {})
		local function __FUNC_11D20_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		__FUNC_11D20_(registerVal7, {})
	end

	registerVal10.NoGadget = __FUNC_1117B_
	registerVal9.InUse = registerVal10
	registerVal10 = {}
	local function __FUNC_11ED3_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_11ED3_
	local function __FUNC_12261_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_125EC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 0.810000, 0.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(1.000000, 0.810000, 0.000000)
		registerVal2.ImgRingFill:setAlpha(0.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_125EC_(registerVal3, {})
		local function __FUNC_127F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(-10.000000)
		__FUNC_127F1_(registerVal4, {})
		local function __FUNC_129E8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 0.910000, 0.310000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(8.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(-10.000000)
		__FUNC_129E8_(registerVal5, {})
		local function __FUNC_12BF0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 0.600000, 0.310000)
			arg0:setAlpha(0.150000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(0.900000)
		__FUNC_12BF0_(registerVal6, {})
		local function __FUNC_12DF9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		__FUNC_12DF9_(registerVal7, {})
	end

	registerVal10.AdvertisedReady = __FUNC_12261_
	local function __FUNC_12FAB_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_13399_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.790000, 0.860000, 1.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(0.790000, 0.860000, 1.000000)
		registerVal2.ImgRingFill:setAlpha(0.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_13399_(registerVal3, {})
		local function __FUNC_1359D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(6.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(-10.000000)
		__FUNC_1359D_(registerVal4, {})
		local function __FUNC_13794_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(6.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(-10.000000)
		__FUNC_13794_(registerVal5, {})
		local function __FUNC_13992_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(0.400000, 0.650000, 0.990000)
			arg0:setAlpha(0.240000)
			arg0:setScale(0.900000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setScale(0.900000)
		__FUNC_13992_(registerVal6, {})
		local function __FUNC_13B99_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.590000, 0.710000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZRot(-20.300000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setRGB(0.590000, 0.710000, 1.000000)
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		registerVal2.AbilitySwirl:setZRot(-20.300000)
		__FUNC_13B99_(registerVal7, {})
	end

	registerVal10.Ready = __FUNC_12FAB_
	local function __FUNC_13DA2_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1413B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.550000, 0.690000, 0.980000)
			arg0:setAlpha(0.700000)
			arg0:setZoom(15.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(0.550000, 0.690000, 0.980000)
		registerVal2.ImgRingFill:setAlpha(0.000000)
		registerVal2.ImgRingFill:setZoom(15.000000)
		__FUNC_1413B_(registerVal3, {})
		local function __FUNC_14342_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.400000, 0.570000, 0.900000)
			arg0:setAlpha(Multiple(2.000000, 0.000000))
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.400000, 0.570000, 0.900000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(-10.000000)
		__FUNC_14342_(registerVal4, {})
		local function __FUNC_1456D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(-10.000000)
		__FUNC_1456D_(registerVal5, {})
		local function __FUNC_1476A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_1476A_(registerVal6, {})
		local function __FUNC_14946_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		__FUNC_14946_(registerVal7, {})
	end

	registerVal10.InUse = __FUNC_13DA2_
	local function __FUNC_14AF7_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_14E76_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ImgRingFill:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingFill:setAlpha(0.000000)
		registerVal2.ImgRingFill:setZoom(-10.000000)
		__FUNC_14E76_(registerVal3, {})
		local function __FUNC_15074_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.830000, 0.890000, 1.000000)
			arg0:setAlpha(Multiple(2.000000, 2.000000))
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ImgRingPattern:setRGB(0.830000, 0.890000, 1.000000)
		registerVal2.ImgRingPattern:setAlpha(Multiple(2.000000, 0.000000))
		registerVal2.ImgRingPattern:setZoom(-10.000000)
		__FUNC_15074_(registerVal4, {})
		local function __FUNC_1529C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(5.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ImgRingPatternDuplicate:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ImgRingPatternDuplicate:setAlpha(0.000000)
		registerVal2.ImgRingPatternDuplicate:setZoom(-10.000000)
		__FUNC_1529C_(registerVal5, {})
		local function __FUNC_1549A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_1549A_(registerVal6, {})
		local function __FUNC_15674_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.AbilitySwirl:setAlpha(0.000000)
		__FUNC_15674_(registerVal7, {})
	end

	registerVal10.Charge = __FUNC_14AF7_
	registerVal9.NoGadget = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "AdvertisedReady"
	local function __FUNC_15827_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		if not registerVal3 then
			registerVal3 = IsHeroWeaponOrSpecialGadgetAvailable(arg0, arg1)
			if registerVal3 then
				registerVal3 = WasHeroWeaponGadgetActivated(arg0)
				if not registerVal3 then
					registerVal3 = IsModelValueEqualTo(arg1, "playerAbilities.inRange", 1.000000)
					if registerVal3 then
						registerVal3 = IsModelValueEqualTo(arg1, "playerAbilities.playerGadget3.powerRatio", 1.000000)
					else
					else
					end
				end
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_15827_
	local registerVal13 = {}
	registerVal13.stateName = "Ready"
	local function __FUNC_159C6_(arg0, arg2, arg3)
		local registerVal3 = IsHeroWeaponGadgetCurrentWeapon(arg0, arg1)
		if not registerVal3 then
			registerVal3 = IsHeroWeaponOrSpecialGadgetAvailable(arg0, arg1)
			if registerVal3 then
				registerVal3 = WasHeroWeaponGadgetActivated(arg0)
				if not registerVal3 then
					registerVal3 = IsModelValueEqualTo(arg1, "playerAbilities.playerGadget3.powerRatio", 1.000000)
				else
				else
				end
			end
		end
		return true
	end

	registerVal13.condition = __FUNC_159C6_
	local registerVal14 = {}
	registerVal14.stateName = "Charge"
	local function __FUNC_15B29_(arg0, arg2, arg3)
		local registerVal3 = IsSpecialGadgetAvailable(arg1)
		if registerVal3 then
			registerVal3 = IsHeroGadgetInUse(arg0, arg1)
		end
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_15B29_
	local registerVal15 = {}
	registerVal15.stateName = "InUse"
	local function __FUNC_15BBD_(arg0, arg2, arg3)
		return IsHeroGadgetInUse(arg0, arg1)
	end

	registerVal15.condition = __FUNC_15BBD_
	local registerVal16 = {}
	registerVal16.stateName = "NoGadget"
	local function __FUNC_15C17_(arg0, arg2, arg3)
		local registerVal3 = IsSpecialGadgetAvailable(arg1)
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_15C17_
	registerVal11 = {registerVal12, registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "playerAbilities.playerGadget3.isInUse")
	local function __FUNC_15C76_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.isInUse"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_15C76_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "playerAbilities.playerGadget3.powerRatio")
	local function __FUNC_15DAF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.powerRatio"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_15DAF_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "playerAbilities.playerGadget3.ammo")
	local function __FUNC_15EEA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.playerGadget3.ammo"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_15EEA_)
	registerVal12 = Engine.GetModelForController(arg1)
	registerVal11 = Engine.GetModel(registerVal12, "playerAbilities.inRange")
	local function __FUNC_16020_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "playerAbilities.inRange"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal11, __FUNC_16020_)
	local function __FUNC_1614D_(arg0)
		arg0.Glow:close()
		arg0.Glow0:close()
		arg0.ImgRingFill:close()
		arg0.ImgRingPattern:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1614D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


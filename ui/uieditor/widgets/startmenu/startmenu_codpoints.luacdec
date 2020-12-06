-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_CODpoints = registerVal1
function CoD.StartMenu_CODpoints.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_CODpoints)
	registerVal2.id = "StartMenu_CODpoints"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 76.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -52.000000, 1.000000)
	registerVal3:setTopBottom(false, false, -26.500000, 26.500000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_keyringglow_glow"))
	registerVal2:addElement(registerVal3)
	registerVal2.ring = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -55.520000, 4.520000)
	registerVal4:setTopBottom(false, false, -30.000000, 31.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_keyglow_gold"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 25.000000)
	registerVal5:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_codpoints"))
	registerVal2:addElement(registerVal5)
	registerVal2.codpoints = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 25.000000)
	registerVal6:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal6:setRGB(1.000000, 0.940000, 0.570000)
	registerVal6:setImage(RegisterImage("uie_t7_icon_codpoints"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
	registerVal6:setShaderVector(0.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.codpointGlint = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 26.250000, 76.250000)
	registerVal7:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal7:setTTF("fonts/default.ttf")
	local function __FUNC_B4C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "CryptoKeyProgress", "codPoints", __FUNC_B4C_)
	registerVal2:addElement(registerVal7)
	registerVal2.codpointsCount = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_C47_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.ring:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.codpoints:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.codpointGlint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.codpointsCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_C47_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_EA5_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_12B6_(arg0, arg1)
			local function __FUNC_142F_(arg0, arg1)
				local function __FUNC_15CA_(arg0, arg1)
					local function __FUNC_1766_(arg0, arg1)
						local function __FUNC_1902_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setScale(1.900000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_1902_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 619.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setScale(1.850000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1902_)
					end

					if arg1.interrupted then
						__FUNC_1766_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:setScale(1.300000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1766_)
				end

				if arg1.interrupted then
					__FUNC_15CA_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(1.080000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15CA_)
			end

			if arg1.interrupted then
				__FUNC_142F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Bounce)
			arg0:setAlpha(0.860000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_142F_)
		end

		registerVal3:beginAnimation("keyframe", 1169.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.000000)
		registerVal3:setScale(1.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_12B6_)
		local function __FUNC_1AD8_(arg0, arg1)
			local function __FUNC_1C71_(arg0, arg1)
				local function __FUNC_1DEB_(arg0, arg1)
					local function __FUNC_1F40_(arg0, arg1)
						local function __FUNC_20BB_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setScale(0.800000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_20BB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 360.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.200000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20BB_)
					end

					if arg1.interrupted then
						__FUNC_1F40_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F40_)
				end

				if arg1.interrupted then
					__FUNC_1DEB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(0.800000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DEB_)
			end

			if arg1.interrupted then
				__FUNC_1C71_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C71_)
		end

		registerVal4:beginAnimation("keyframe", 1250.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:setScale(0.800000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_1AD8_)
		local function __FUNC_2290_(arg0, arg1)
			local function __FUNC_23E8_(arg0, arg1)
				local function __FUNC_2563_(arg0, arg1)
					local function __FUNC_26B8_(arg0, arg1)
						local function __FUNC_2833_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 3559.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2833_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2833_)
					end

					if arg1.interrupted then
						__FUNC_26B8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26B8_)
				end

				if arg1.interrupted then
					__FUNC_2563_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.850000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2563_)
			end

			if arg1.interrupted then
				__FUNC_23E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1250.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23E8_)
		end

		registerVal5:completeAnimation()
		registerVal2.codpoints:setAlpha(1.000000)
		__FUNC_2290_(registerVal5, {})
		local function __FUNC_29E5_(arg0, arg1)
			local function __FUNC_2B5F_(arg0, arg1)
				local function __FUNC_2CF3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
					arg0:setShaderVector(0.000000, 0.990000, 0.000000, 0.000000, 0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2CF3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
				arg0:setShaderVector(0.000000, 0.990000, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CF3_)
			end

			if arg1.interrupted then
				__FUNC_2B5F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B5F_)
		end

		registerVal6:completeAnimation()
		registerVal2.codpointGlint:setAlpha(0.000000)
		registerVal2.codpointGlint:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
		registerVal2.codpointGlint:setShaderVector(0.000000, 0.010000, 0.000000, 0.000000, 0.000000)
		__FUNC_29E5_(registerVal6, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal9.DefaultClip = __FUNC_EA5_
	registerVal8.ShowShimmer = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "ShowShimmer"
	local function __FUNC_2F7E_(arg0, arg2, arg3)
		return IsModelValueGreaterThanOrEqualTo(arg1, "CryptoKeyProgress.codPoints", 200.000000)
	end

	registerVal11.condition = __FUNC_2F7E_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "CryptoKeyProgress.codPoints")
	local function __FUNC_3014_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.codPoints"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_3014_)
	local function __FUNC_3145_(arg0)
		arg0.codpointsCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3145_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


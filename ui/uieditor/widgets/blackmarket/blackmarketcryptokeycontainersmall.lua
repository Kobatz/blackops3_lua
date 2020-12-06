-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BlackMarketCryptokeyContainerSmall = registerVal1
function CoD.BlackMarketCryptokeyContainerSmall.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BlackMarketCryptokeyContainerSmall)
	registerVal2.id = "BlackMarketCryptokeyContainerSmall"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -17.500000, 43.500000)
	registerVal3:setTopBottom(true, false, -17.500000, 45.500000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_keyglow"))
	registerVal2:addElement(registerVal3)
	registerVal2.Glow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -13.500000, 39.500000)
	registerVal4:setTopBottom(true, false, -12.500000, 40.500000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_keyringglow"))
	registerVal2:addElement(registerVal4)
	registerVal2.ring = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 1.000000, 25.000000)
	registerVal5:setTopBottom(true, false, 2.000000, 26.000000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_blackmarket_cryptokey"))
	registerVal2:addElement(registerVal5)
	registerVal2.CryptoIcon = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 28.000000, 78.000000)
	registerVal6:setTopBottom(true, false, 3.000000, 25.000000)
	registerVal6:setTTF("fonts/default.ttf")
	local function __FUNC_BE8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "itemCount", true, __FUNC_BE8_)
	registerVal2:addElement(registerVal6)
	registerVal2.CryptoCount = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 28.000000, 78.000000)
	registerVal7:setTopBottom(true, false, 3.000000, 25.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setTTF("fonts/default.ttf")
	local function __FUNC_CA2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(SetValueIfNumberEqualTo(-1.000000, "-", registerVal1)))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "CryptoKeyProgress", "keyCount", __FUNC_CA2_)
	registerVal2:addElement(registerVal7)
	registerVal2.CryptoBalance = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_D9B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.CryptoCount:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_D9B_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_E9C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.CryptoIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CryptoCount:setRGB(0.930000, 0.170000, 0.170000)
		registerVal2.CryptoCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_E9C_
	registerVal8.InsufficientFunds = registerVal9
	registerVal9 = {}
	local function __FUNC_1035_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.CryptoIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CryptoCount:setRGB(0.930000, 0.170000, 0.170000)
		registerVal2.CryptoCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CryptoBalance:setRGB(0.930000, 0.170000, 0.170000)
		registerVal2.CryptoBalance:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1035_
	registerVal8.ShowBalanceInsufficientFunds = registerVal9
	registerVal9 = {}
	local function __FUNC_1251_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal2.CryptoIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CryptoCount:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.CryptoCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CryptoBalance:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.CryptoBalance:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1251_
	local function __FUNC_1463_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_17EE_(arg0, arg1)
			local function __FUNC_1967_(arg0, arg1)
				local function __FUNC_1ABC_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1ABC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ABC_)
			end

			if arg1.interrupted then
				__FUNC_1967_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1967_)
		end

		registerVal3:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_17EE_)
		local function __FUNC_1C71_(arg0, arg1)
			local function __FUNC_1DC8_(arg0, arg1)
				local function __FUNC_1F43_(arg0, arg1)
					local function __FUNC_20BB_(arg0, arg1)
						local function __FUNC_2256_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							arg0:setScale(1.800000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_2256_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setScale(1.700000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2256_)
					end

					if arg1.interrupted then
						__FUNC_20BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
					arg0:setScale(1.550000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20BB_)
				end

				if arg1.interrupted then
					__FUNC_1F43_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F43_)
			end

			if arg1.interrupted then
				__FUNC_1DC8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DC8_)
		end

		registerVal4:completeAnimation()
		registerVal2.ring:setAlpha(0.000000)
		registerVal2.ring:setScale(1.000000)
		__FUNC_1C71_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.CryptoCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_242C_(arg0, arg1)
			local function __FUNC_2584_(arg0, arg1)
				local function __FUNC_2737_(arg0, arg1)
					local function __FUNC_28E7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, 28.000000, 110.000000)
						arg0:setTopBottom(true, false, 3.000000, 25.000000)
						arg0:setAlpha(1.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_28E7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, 48.000000, 130.000000)
					arg0:setScale(1.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28E7_)
				end

				if arg1.interrupted then
					__FUNC_2737_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 38.000000, 120.000000)
				arg0:setScale(1.240000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2737_)
			end

			if arg1.interrupted then
				__FUNC_2584_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2584_)
		end

		registerVal7:completeAnimation()
		registerVal2.CryptoBalance:setLeftRight(true, false, 28.000000, 110.000000)
		registerVal2.CryptoBalance:setTopBottom(true, false, 3.000000, 25.000000)
		registerVal2.CryptoBalance:setAlpha(1.000000)
		registerVal2.CryptoBalance:setScale(1.000000)
		__FUNC_242C_(registerVal7, {})
	end

	registerVal9.Bonus = __FUNC_1463_
	registerVal8.ShowBalance = registerVal9
	registerVal9 = {}
	local function __FUNC_2B27_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ring:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CryptoIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CryptoCount:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CryptoBalance:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_2B27_
	registerVal8.Hide = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "InsufficientFunds"
	local function __FUNC_2D7E_(arg0, arg2, arg3)
		local registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "CryptoKeyProgress.keyCount", "itemCount")
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_2D7E_
	local registerVal12 = {}
	registerVal12.stateName = "ShowBalanceInsufficientFunds"
	local function __FUNC_2E41_(arg0, arg2, arg3)
		local registerVal3 = IsControllerModelValueGreaterThanOrEqualToSelfModelValue(arg2, arg1, "CryptoKeyProgress.keyCount", "itemCount")
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_2E41_
	local registerVal13 = {}
	registerVal13.stateName = "ShowBalance"
	local function __FUNC_2F05_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_2F05_
	local registerVal14 = {}
	registerVal14.stateName = "Hide"
	local function __FUNC_2F51_(arg0, arg2, arg3)
		return IsSelfModelValueLessThanOrEqualTo(arg2, arg1, "itemCount", 0.000000)
	end

	registerVal14.condition = __FUNC_2F51_
	registerVal10 = {registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetModelForController(arg1)
	registerVal10 = Engine.GetModel(registerVal11, "CryptoKeyProgress.keyCount")
	local function __FUNC_2FDB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.keyCount"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal10, __FUNC_2FDB_)
	local function __FUNC_3108_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemCount"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemCount", true, __FUNC_3108_)
	local function __FUNC_3227_(arg0)
		arg0.CryptoCount:close()
		arg0.CryptoBalance:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3227_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


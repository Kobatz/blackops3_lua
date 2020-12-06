-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_CryptokeyCounterIcon = registerVal1
function CoD.BM_CryptokeyCounterIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_CryptokeyCounterIcon)
	registerVal2.id = "BM_CryptokeyCounterIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 28.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -30.000000, 31.000000)
	registerVal3:setTopBottom(false, false, -31.000000, 32.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_keyglow"))
	registerVal2:addElement(registerVal3)
	registerVal2.Glow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -26.000000, 27.000000)
	registerVal4:setTopBottom(false, false, -26.000000, 27.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_keyringglow"))
	registerVal2:addElement(registerVal4)
	registerVal2.ring = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -12.000000, 13.000000)
	registerVal5:setTopBottom(false, false, -12.000000, 13.000000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_blackmarket_cryptokey"))
	registerVal2:addElement(registerVal5)
	registerVal2.cryptokey = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_6F2_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ring:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokey:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_6F2_
	local function __FUNC_89A_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_A95_(arg0, arg1)
			local function __FUNC_BEC_(arg0, arg1)
				local function __FUNC_D67_(arg0, arg1)
					local function __FUNC_EBC_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setXRot(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_EBC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EBC_)
				end

				if arg1.interrupted then
					__FUNC_D67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D67_)
			end

			if arg1.interrupted then
				__FUNC_BEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BEC_)
		end

		registerVal3:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.Glow:setXRot(0.000000)
		__FUNC_A95_(registerVal3, {})
		local function __FUNC_108E_(arg0, arg1)
			local function __FUNC_11E4_(arg0, arg1)
				local function __FUNC_135F_(arg0, arg1)
					local function __FUNC_14FA_(arg0, arg1)
						local function __FUNC_1673_(arg0, arg1)
							local function __FUNC_180E_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 40.000000, false, false, CoD.TweenType.Linear)
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
								__FUNC_180E_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.000000)
							arg0:setScale(1.720000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_180E_)
						end

						if arg1.interrupted then
							__FUNC_1673_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 290.000000, false, false, CoD.TweenType.Linear)
						arg0:setScale(1.570000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1673_)
					end

					if arg1.interrupted then
						__FUNC_14FA_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:setScale(1.020000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14FA_)
				end

				if arg1.interrupted then
					__FUNC_135F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 220.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.960000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_135F_)
			end

			if arg1.interrupted then
				__FUNC_11E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 449.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11E4_)
		end

		registerVal4:completeAnimation()
		registerVal2.ring:setAlpha(0.000000)
		registerVal2.ring:setScale(1.000000)
		__FUNC_108E_(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.cryptokey:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.Keybonus = __FUNC_89A_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


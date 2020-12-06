-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_PromoFrame")
require("ui.uieditor.widgets.BlackMarket.BM_Promo_TitleAndCountdown")
local function __FUNC_25D_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "autoevents")
	registerVal3 = Engine.CreateModel(registerVal2, "cycled")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.BM_Promo = registerVal2
local function __FUNC_331_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_25D_ then
		__FUNC_25D_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Promo)
	registerVal2.id = "BM_Promo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1018.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 153.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 25.000000, 95.000000)
	registerVal3:setTopBottom(true, false, 5.970000, 144.500000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_promo_backing_circle"))
	registerVal2:addElement(registerVal3)
	registerVal2.Backing = registerVal3
	local registerVal4 = CoD.BM_PromoFrame.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 136.000000, 1043.000000)
	registerVal4:setTopBottom(true, false, -24.500000, 179.500000)
	registerVal4.Desc:setText(Engine.Localize(GetLimitedTimePromoDescIfActive(arg1, "MPUI_BM_NO_DUPES_DESC")))
	registerVal4.DescArabic:setText(Engine.Localize(GetLimitedTimePromoDescIfActive(arg1, "MPUI_BM_NO_DUPES_DESC")))
	registerVal2:addElement(registerVal4)
	registerVal2.BMPromoFrame = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -18.000000, 136.000000)
	registerVal5:setTopBottom(true, false, -24.500000, 179.500000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_promo_frameleft"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 30.500000, 162.500000)
	registerVal6:setTopBottom(true, false, 10.500000, 142.500000)
	registerVal6:setImage(RegisterImage("uie_t7_blackmarket_promo_cp_icon"))
	registerVal2:addElement(registerVal6)
	registerVal2.CODpointIcon = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 30.500000, 162.500000)
	registerVal7:setTopBottom(true, false, 10.500000, 142.500000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_blackmarket_promo_cp_icon"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
	registerVal7:setShaderVector(0.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.CODpointIconglint = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 31.500000, 163.500000)
	registerVal8:setTopBottom(true, false, 10.500000, 142.500000)
	local function __FUNC_1B08_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setImage(RegisterImage(GetImageForCurrentPromoItem(arg1, registerVal1)))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_1B08_)
	registerVal2:addElement(registerVal8)
	registerVal2.BribeBlackMarket = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 31.500000, 163.500000)
	registerVal9:setTopBottom(true, false, 10.500000, 142.500000)
	registerVal9:setRGB(1.000000, 0.940000, 0.570000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
	registerVal9:setShaderVector(0.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1BED_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(GetImageForCurrentPromoItem(arg1, registerVal1)))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "AutoeventsCycled", "cycled", __FUNC_1BED_)
	registerVal2:addElement(registerVal9)
	registerVal2.BribeBlackMarketGlint = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 31.500000, 163.500000)
	registerVal10:setTopBottom(true, false, 10.500000, 142.500000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_blackmarket_promo_nodupe"))
	registerVal2:addElement(registerVal10)
	registerVal2.BundleBlackMarket = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 31.500000, 163.500000)
	registerVal11:setTopBottom(true, false, 10.500000, 142.500000)
	registerVal11:setRGB(1.000000, 0.940000, 0.570000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_blackmarket_promo_nodupe"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
	registerVal11:setShaderVector(0.000000, 0.010000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.BundleBlackMarketGlint = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 30.500000, 162.500000)
	registerVal12:setTopBottom(true, false, 10.500000, 142.500000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_blackmarket_promo_cryptokeys"))
	registerVal2:addElement(registerVal12)
	registerVal2.Cryptokeys = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 30.500000, 162.500000)
	registerVal13:setTopBottom(true, false, 10.500000, 142.500000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_icon_blackmarket_promo_code3_small"))
	registerVal2:addElement(registerVal13)
	registerVal2.CodeBundleIcon = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 36.000000, 168.000000)
	registerVal14:setTopBottom(true, false, 10.500000, 142.500000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage(GetDvarString("loot_limitedTimeItemPromo_promoIcon", "uie_t7_blackmarket_promo_cryptokeys")))
	registerVal2:addElement(registerVal14)
	registerVal2.LimitedItemIcon = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, 141.500000, 201.500000)
	registerVal15:setTopBottom(true, false, -24.500000, 155.500000)
	registerVal15:setScale(0.900000)
	registerVal15:setImage(RegisterImage("uie_t7_blackmarket_promo_divider"))
	registerVal2:addElement(registerVal15)
	registerVal2.Divider = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, false, -26.000000, 34.000000)
	registerVal16:setTopBottom(true, false, -24.400000, 155.600000)
	registerVal16:setImage(RegisterImage("uie_t7_blackmarket_promo_linelight"))
	registerVal2:addElement(registerVal16)
	registerVal2.Light = registerVal16
	local registerVal17 = CoD.BM_Promo_TitleAndCountdown.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 182.500000, 835.000000)
	registerVal17:setTopBottom(true, false, 21.500000, 69.500000)
	registerVal17.BMPromoTitle.Title:setText(LocalizeToUpperString(GetLimitedTimePromoTitleIfActive(arg1, "MPUI_BM_NO_DUPES")))
	local registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Notimer"
	local function __FUNC_1CD1_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "CodeBundle")
	end

	registerVal21.condition = __FUNC_1CD1_
	registerVal20 = {registerVal21}
	registerVal17:mergeStateConditions(registerVal20)
	registerVal2:addElement(registerVal17)
	registerVal2.BMPromoTitleAndCountdown = registerVal17
	local registerVal18 = {}
	local registerVal19 = {}
	local function __FUNC_1D3B_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BMPromoFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CODpointIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CODpointIconglint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BribeBlackMarket:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BribeBlackMarketGlint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BundleBlackMarket:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BundleBlackMarketGlint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Cryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CodeBundleIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LimitedItemIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Divider:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Light:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMPromoTitleAndCountdown:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_1D3B_
	registerVal18.DefaultState = registerVal19
	registerVal19 = {}
	local function __FUNC_2341_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.Desc:completeAnimation()
		registerVal2.BMPromoFrame:setAlpha(1.000000)
		registerVal2.BMPromoFrame.Desc:setText(Engine.Localize(GetLimitedTimePromoDescIfActive(arg1, "MENU_50_PERCENT_OFF")))
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.CODpointIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_2AEB_(arg0, arg1)
			local function __FUNC_2C7F_(arg0, arg1)
				local function __FUNC_2E13_(arg0, arg1)
					local function __FUNC_2F8B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 3559.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setRGB(1.000000, 0.940000, 0.570000)
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
						__FUNC_2F8B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 60.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F8B_)
				end

				if arg1.interrupted then
					__FUNC_2E13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
				arg0:setShaderVector(0.000000, 0.990000, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E13_)
			end

			if arg1.interrupted then
				__FUNC_2C7F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 0.010000, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C7F_)
		end

		registerVal7:completeAnimation()
		registerVal2.CODpointIconglint:setRGB(1.000000, 0.940000, 0.570000)
		registerVal2.CODpointIconglint:setAlpha(1.000000)
		registerVal2.CODpointIconglint:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
		registerVal2.CODpointIconglint:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_2AEB_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BribeBlackMarket:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BribeBlackMarketGlint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BundleBlackMarket:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BundleBlackMarketGlint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal2.CodeBundleIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LimitedItemIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Divider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Light:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMPromoTitleAndCountdown:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal19.DefaultClip = __FUNC_2341_
	registerVal18.CodPoints = registerVal19
	registerVal19 = {}
	local function __FUNC_3249_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BMPromoFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.CODpointIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.BribeBlackMarket:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BribeBlackMarketGlint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BundleBlackMarket:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_38CC_(arg0, arg1)
			local function __FUNC_3A24_(arg0, arg1)
				local function __FUNC_3BBB_(arg0, arg1)
					local function __FUNC_3D33_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 3289.000000, false, false, CoD.TweenType.Linear)
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
						__FUNC_3D33_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D33_)
				end

				if arg1.interrupted then
					__FUNC_3BBB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 700.000000, false, false, CoD.TweenType.Linear)
				arg0:setShaderVector(0.000000, 0.990000, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BBB_)
			end

			if arg1.interrupted then
				__FUNC_3A24_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A24_)
		end

		registerVal11:completeAnimation()
		registerVal2.BundleBlackMarketGlint:setAlpha(1.000000)
		registerVal2.BundleBlackMarketGlint:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
		registerVal2.BundleBlackMarketGlint:setShaderVector(0.000000, 0.010000, 0.000000, 0.000000, 0.000000)
		__FUNC_38CC_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Cryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CodeBundleIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LimitedItemIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Divider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Light:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMPromoTitleAndCountdown:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal19.DefaultClip = __FUNC_3249_
	registerVal18.BlackMarket = registerVal19
	registerVal19 = {}
	local function __FUNC_3FBE_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BMPromoFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.CODpointIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.BribeBlackMarket:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BribeBlackMarketGlint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BundleBlackMarket:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BundleBlackMarketGlint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Cryptokeys:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CodeBundleIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LimitedItemIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Divider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Light:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMPromoTitleAndCountdown:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_3FBE_
	registerVal18.Cryptokeys = registerVal19
	registerVal19 = {}
	local function __FUNC_451C_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BMPromoFrame:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.CODpointIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.CODpointIconglint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BribeBlackMarket:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_4B37_(arg0, arg1)
			local function __FUNC_4CCB_(arg0, arg1)
				local function __FUNC_4E5F_(arg0, arg1)
					local function __FUNC_4FD7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 3289.000000, false, false, CoD.TweenType.Linear)
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
						__FUNC_4FD7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4FD7_)
				end

				if arg1.interrupted then
					__FUNC_4E5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 700.000000, false, false, CoD.TweenType.Linear)
				arg0:setShaderVector(0.000000, 0.990000, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4E5F_)
			end

			if arg1.interrupted then
				__FUNC_4CCB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:setShaderVector(0.000000, 0.010000, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4CCB_)
		end

		registerVal9:completeAnimation()
		registerVal2.BribeBlackMarketGlint:setAlpha(1.000000)
		registerVal2.BribeBlackMarketGlint:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
		registerVal2.BribeBlackMarketGlint:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_4B37_(registerVal9, {})
		registerVal12:completeAnimation()
		registerVal2.Cryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CodeBundleIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LimitedItemIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Divider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Light:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMPromoTitleAndCountdown:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal19.DefaultClip = __FUNC_451C_
	registerVal18.Bribe = registerVal19
	registerVal19 = {}
	local function __FUNC_5262_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.Desc:completeAnimation()
		registerVal2.BMPromoFrame:setAlpha(1.000000)
		registerVal2.BMPromoFrame.Desc:setText(Engine.Localize(GetLimitedTimePromoDescIfActive(arg1, "MPUI_BM_NO_DUPES_DESC")))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CODpointIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.BribeBlackMarket:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BribeBlackMarketGlint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BundleBlackMarket:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_5A97_(arg0, arg1)
			local function __FUNC_5BEC_(arg0, arg1)
				local function __FUNC_5D83_(arg0, arg1)
					local function __FUNC_5EFB_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 3119.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setImage(RegisterImage("uie_t7_blackmarket_promo_nodupe"))
						arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
						arg0:setShaderVector(0.000000, 0.990000, 0.000000, 0.000000, 0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5EFB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5EFB_)
				end

				if arg1.interrupted then
					__FUNC_5D83_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 700.000000, false, false, CoD.TweenType.Linear)
				arg0:setShaderVector(0.000000, 0.990000, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D83_)
			end

			if arg1.interrupted then
				__FUNC_5BEC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BEC_)
		end

		registerVal11:completeAnimation()
		registerVal2.BundleBlackMarketGlint:setAlpha(1.000000)
		registerVal2.BundleBlackMarketGlint:setImage(RegisterImage("uie_t7_blackmarket_promo_nodupe"))
		registerVal2.BundleBlackMarketGlint:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
		registerVal2.BundleBlackMarketGlint:setShaderVector(0.000000, 0.010000, 0.000000, 0.000000, 0.000000)
		__FUNC_5A97_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Cryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CodeBundleIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LimitedItemIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Divider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Light:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMPromoTitleAndCountdown:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal19.DefaultClip = __FUNC_5262_
	registerVal18.Bundle = registerVal19
	registerVal19 = {}
	local function __FUNC_61EC_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.Desc:completeAnimation()
		registerVal4.DescArabic:completeAnimation()
		registerVal2.BMPromoFrame:setAlpha(1.000000)
		registerVal2.BMPromoFrame.Desc:setText(Engine.Localize(GetLimitedTimePromoDescIfActive(arg1, "MPUI_BM_NO_DUPES_PROMO_DESC")))
		registerVal2.BMPromoFrame.DescArabic:setText(Engine.Localize(GetLimitedTimePromoDescIfActive(arg1, "MPUI_BM_NO_DUPES_PROMO_DESC")))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CODpointIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.BribeBlackMarket:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BribeBlackMarketGlint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BundleBlackMarket:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		local function __FUNC_6A9D_(arg0, arg1)
			local function __FUNC_6BF4_(arg0, arg1)
				local function __FUNC_6D8B_(arg0, arg1)
					local function __FUNC_6F03_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 3119.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setImage(RegisterImage("uie_t7_blackmarket_promo_nodupe"))
						arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
						arg0:setShaderVector(0.000000, 0.990000, 0.000000, 0.000000, 0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_6F03_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 179.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F03_)
				end

				if arg1.interrupted then
					__FUNC_6D8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 700.000000, false, false, CoD.TweenType.Linear)
				arg0:setShaderVector(0.000000, 0.990000, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6D8B_)
			end

			if arg1.interrupted then
				__FUNC_6BF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1000.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BF4_)
		end

		registerVal11:completeAnimation()
		registerVal2.BundleBlackMarketGlint:setAlpha(1.000000)
		registerVal2.BundleBlackMarketGlint:setImage(RegisterImage("uie_t7_blackmarket_promo_nodupe"))
		registerVal2.BundleBlackMarketGlint:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
		registerVal2.BundleBlackMarketGlint:setShaderVector(0.000000, 0.010000, 0.000000, 0.000000, 0.000000)
		__FUNC_6A9D_(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Cryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CodeBundleIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LimitedItemIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Divider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Light:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.BMPromoTitleAndCountdown:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal19.DefaultClip = __FUNC_61EC_
	registerVal18.NoDupesPromo = registerVal19
	registerVal19 = {}
	local function __FUNC_71F4_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.Desc:completeAnimation()
		registerVal4.DescArabic:completeAnimation()
		registerVal2.BMPromoFrame:setAlpha(1.000000)
		registerVal2.BMPromoFrame.Desc:setText(Engine.Localize(GetLimitedTimePromoDescIfActive(arg1, "MPUI_BM_NO_DUPES_DESC")))
		registerVal2.BMPromoFrame.DescArabic:setText(Engine.Localize(GetLimitedTimePromoDescIfActive(arg1, "MPUI_BM_NO_DUPES_DESC")))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CODpointIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.BribeBlackMarket:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BribeBlackMarketGlint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BundleBlackMarket:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BundleBlackMarketGlint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Cryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CodeBundleIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LimitedItemIcon:setAlpha(1.000000)
		registerVal2.LimitedItemIcon:setImage(RegisterImage(GetDvarString("loot_limitedTimeItemPromo_promoIcon", "uie_t7_blackmarket_promo_cryptokeys")))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Divider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Light:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal17.BMPromoTitle.Title:completeAnimation()
		registerVal2.BMPromoTitleAndCountdown:setAlpha(1.000000)
		registerVal2.BMPromoTitleAndCountdown.BMPromoTitle.Title:setText(LocalizeToUpperString(GetLimitedTimePromoTitleIfActive(arg1, "MPUI_BM_NO_DUPES")))
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_71F4_
	registerVal18.LimitedItemPromo = registerVal19
	registerVal19 = {}
	local function __FUNC_7AC3_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.Desc:completeAnimation()
		registerVal4.DescArabic:completeAnimation()
		registerVal2.BMPromoFrame:setAlpha(1.000000)
		registerVal2.BMPromoFrame.Desc:setText(Engine.Localize(GetLimitedTimePromoDescIfActive(arg1, "MPUI_BM_CODE_BUNDLE_PROMO_DESC")))
		registerVal2.BMPromoFrame.DescArabic:setText(Engine.Localize(GetLimitedTimePromoDescIfActive(arg1, "MPUI_BM_CODE_BUNDLE_PROMO_DESC")))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CODpointIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.BribeBlackMarket:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.BribeBlackMarketGlint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.BundleBlackMarket:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.BundleBlackMarketGlint:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Cryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.CodeBundleIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.LimitedItemIcon:setAlpha(0.000000)
		registerVal2.LimitedItemIcon:setImage(RegisterImage(GetDvarString("loot_limitedTimeItemPromo_promoIcon", "uie_t7_blackmarket_promo_cryptokeys")))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.Divider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.Light:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal17.BMPromoTitle.Title:completeAnimation()
		registerVal2.BMPromoTitleAndCountdown:setAlpha(1.000000)
		registerVal2.BMPromoTitleAndCountdown.BMPromoTitle.Title:setText(LocalizeToUpperString(GetLimitedTimePromoTitleIfActive(arg1, "MPUI_BM_CODE_BUNDLE_PROMO")))
		registerVal2.clipFinished(registerVal17, {})
	end

	registerVal19.DefaultClip = __FUNC_7AC3_
	registerVal18.CodeBundle = registerVal19
	registerVal2.clipsPerState = registerVal18
	registerVal20 = {}
	registerVal21 = {}
	registerVal21.stateName = "CodPoints"
	local function __FUNC_83A1_(arg0, arg2, arg3)
		return IsLootSaleActive(arg1)
	end

	registerVal21.condition = __FUNC_83A1_
	local registerVal22 = {}
	registerVal22.stateName = "BlackMarket"
	local function __FUNC_83F6_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal22.condition = __FUNC_83F6_
	local registerVal23 = {}
	registerVal23.stateName = "Cryptokeys"
	local function __FUNC_8441_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal23.condition = __FUNC_8441_
	local registerVal24 = {}
	registerVal24.stateName = "Bribe"
	local function __FUNC_848D_(arg0, arg2, arg3)
		return IsBribeActive(arg1)
	end

	registerVal24.condition = __FUNC_848D_
	local registerVal25 = {}
	registerVal25.stateName = "Bundle"
	local function __FUNC_84DF_(arg0, arg2, arg3)
		return IsBundleActive(arg1)
	end

	registerVal25.condition = __FUNC_84DF_
	local registerVal26 = {}
	registerVal26.stateName = "NoDupesPromo"
	local function __FUNC_8530_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal26.condition = __FUNC_8530_
	local registerVal27 = {}
	registerVal27.stateName = "LimitedItemPromo"
	local function __FUNC_857D_(arg0, arg2, arg3)
		return IsLimitedLootPromoActive(arg1)
	end

	registerVal27.condition = __FUNC_857D_
	local registerVal28 = {}
	registerVal28.stateName = "CodeBundle"
	local function __FUNC_85DA_(arg0, arg2, arg3)
		return IsCodeBundlePromotionActive(arg1)
	end

	registerVal28.condition = __FUNC_85DA_
	registerVal20 = {registerVal21, registerVal22, registerVal23, registerVal24, registerVal25, registerVal26, registerVal27, registerVal28}
	registerVal2:mergeStateConditions(registerVal20)
	registerVal21 = Engine.GetGlobalModel()
	registerVal20 = Engine.GetModel(registerVal21, "autoevents.cycled")
	local function __FUNC_8639_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "autoevents.cycled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal20, __FUNC_8639_)
	registerVal21 = Engine.GetModelForController(arg1)
	registerVal20 = Engine.GetModel(registerVal21, "CryptoKeyProgress.codeBundleRareBundles")
	local function __FUNC_875F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CryptoKeyProgress.codeBundleRareBundles"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal20, __FUNC_875F_)
	local function __FUNC_8899_(arg0, arg2)
		UpdateElementState(registerVal2, "BMPromoTitleAndCountdown", arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_8899_)
	local function __FUNC_8916_(arg0)
		arg0.BMPromoFrame:close()
		arg0.BMPromoTitleAndCountdown:close()
		arg0.BribeBlackMarket:close()
		arg0.BribeBlackMarketGlint:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8916_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.BM_Promo.new = __FUNC_331_

-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BGB_PurchasingVials = registerVal1
function CoD.BGB_PurchasingVials.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BGB_PurchasingVials)
	registerVal2.id = "BGB_PurchasingVials"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, -15.000000, 432.000000)
	registerVal3:setTopBottom(true, false, 100.000000, 120.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setText(Engine.Localize("ZMUI_TRADING_COD_POINTS_FOR_VIALS"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.BurningDuplicatesText = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -8.940000, 128.430000)
	registerVal4:setTopBottom(true, false, -8.880000, 108.880000)
	registerVal4:setScale(0.700000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_crate_hologram"))
	registerVal2:addElement(registerVal4)
	registerVal2.crate = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -148.940000, -11.560000)
	registerVal5:setTopBottom(true, false, -8.880000, 108.880000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setScale(0.700000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_crate_hologram"))
	registerVal2:addElement(registerVal5)
	registerVal2.crate0 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_A1A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.BurningDuplicatesText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_A1A_
	local function __FUNC_B25_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.BurningDuplicatesText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_F34_(arg0, arg1)
			local function __FUNC_1129_(arg0, arg1)
				local function __FUNC_131D_(arg0, arg1)
					local function __FUNC_1549_(arg0, arg1)
						local function __FUNC_16D8_(arg0, arg1)
							local function __FUNC_188B_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 109.590000, 246.970000)
								arg0:setTopBottom(true, false, -8.880000, 108.880000)
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
								arg0:setShaderVector(0.000000, 1.000000, -1.000000, 0.000000, 0.000000)
								arg0:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(2.000000, 0.000000, 1.570000, 0.000000, 0.000000)
								arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_188B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 95.610000, 232.990000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_188B_)
						end

						if arg1.interrupted then
							__FUNC_16D8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 29.540000, 166.920000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16D8_)
					end

					if arg1.interrupted then
						__FUNC_1549_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -22.560000, 114.820000)
					arg0:setTopBottom(true, false, -8.880000, 108.880000)
					arg0:setShaderVector(0.000000, 1.000000, -1.000000, 0.000000, 0.000000)
					arg0:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1549_)
				end

				if arg1.interrupted then
					__FUNC_131D_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -34.000000, 103.380000)
				arg0:setShaderVector(0.000000, 1.000000, -0.625000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 0.513125, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_131D_)
			end

			if arg1.interrupted then
				__FUNC_1129_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -54.630000, 82.750000)
			arg0:setShaderVector(0.000000, 1.000000, -0.333333, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.523333, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1129_)
		end

		registerVal4:completeAnimation()
		registerVal2.crate:setLeftRight(true, false, -148.940000, -11.570000)
		registerVal2.crate:setTopBottom(true, false, -8.880000, 108.880000)
		registerVal2.crate:setAlpha(1.000000)
		registerVal2.crate:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.crate:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.crate:setShaderVector(1.000000, 0.570000, 0.000000, 0.000000, 0.000000)
		registerVal2.crate:setShaderVector(2.000000, 0.000000, 1.570000, 0.000000, 0.000000)
		registerVal2.crate:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_F34_(registerVal4, {})
		local function __FUNC_1BE6_(arg0, arg1)
			local function __FUNC_1D74_(arg0, arg1)
				local function __FUNC_1F27_(arg0, arg1)
					local function __FUNC_20D7_(arg0, arg1)
						local function __FUNC_2287_(arg0, arg1)
							local function __FUNC_2414_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 109.590000, 246.970000)
								arg0:setTopBottom(true, false, -8.880000, 108.880000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2414_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 29.540000, 166.910000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2414_)
						end

						if arg1.interrupted then
							__FUNC_2287_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 18.100000, 155.480000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2287_)
					end

					if arg1.interrupted then
						__FUNC_20D7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -22.560000, 114.820000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20D7_)
				end

				if arg1.interrupted then
					__FUNC_1F27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -34.000000, 103.380000)
				arg0:setAlpha(0.440000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F27_)
			end

			if arg1.interrupted then
				__FUNC_1D74_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -54.630000, 82.740000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D74_)
		end

		registerVal5:completeAnimation()
		registerVal2.crate0:setLeftRight(true, false, -148.940000, -11.560000)
		registerVal2.crate0:setTopBottom(true, false, -8.880000, 108.880000)
		registerVal2.crate0:setAlpha(0.000000)
		__FUNC_1BE6_(registerVal5, {})
	end

	registerVal7.StartPurchasing = __FUNC_B25_
	local function __FUNC_2639_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.BurningDuplicatesText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_2A76_(arg0, arg1)
			local function __FUNC_2C69_(arg0, arg1)
				local function __FUNC_2E5D_(arg0, arg1)
					local function __FUNC_3089_(arg0, arg1)
						local function __FUNC_3218_(arg0, arg1)
							local function __FUNC_33CB_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 109.590000, 246.970000)
								arg0:setTopBottom(true, false, -8.880000, 108.880000)
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
								arg0:setShaderVector(0.000000, 1.000000, -1.000000, 0.000000, 0.000000)
								arg0:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(2.000000, 0.000000, 1.570000, 0.000000, 0.000000)
								arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_33CB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 95.610000, 232.990000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33CB_)
						end

						if arg1.interrupted then
							__FUNC_3218_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 29.540000, 166.920000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3218_)
					end

					if arg1.interrupted then
						__FUNC_3089_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -22.560000, 114.820000)
					arg0:setTopBottom(true, false, -8.880000, 108.880000)
					arg0:setShaderVector(0.000000, 1.000000, -1.000000, 0.000000, 0.000000)
					arg0:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3089_)
				end

				if arg1.interrupted then
					__FUNC_2E5D_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -34.000000, 103.380000)
				arg0:setShaderVector(0.000000, 1.000000, -0.625000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 0.513125, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E5D_)
			end

			if arg1.interrupted then
				__FUNC_2C69_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -54.630000, 82.750000)
			arg0:setShaderVector(0.000000, 1.000000, -0.333333, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.523333, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C69_)
		end

		registerVal4:completeAnimation()
		registerVal2.crate:setLeftRight(true, false, -148.940000, -11.570000)
		registerVal2.crate:setTopBottom(true, false, -8.880000, 108.880000)
		registerVal2.crate:setAlpha(1.000000)
		registerVal2.crate:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.crate:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.crate:setShaderVector(1.000000, 0.570000, 0.000000, 0.000000, 0.000000)
		registerVal2.crate:setShaderVector(2.000000, 0.000000, 1.570000, 0.000000, 0.000000)
		registerVal2.crate:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_2A76_(registerVal4, {})
		local function __FUNC_3726_(arg0, arg1)
			local function __FUNC_38B4_(arg0, arg1)
				local function __FUNC_3A67_(arg0, arg1)
					local function __FUNC_3C17_(arg0, arg1)
						local function __FUNC_3DC7_(arg0, arg1)
							local function __FUNC_3F54_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 109.590000, 246.970000)
								arg0:setTopBottom(true, false, -8.880000, 108.880000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3F54_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 29.540000, 166.920000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F54_)
						end

						if arg1.interrupted then
							__FUNC_3DC7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 18.100000, 155.480000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3DC7_)
					end

					if arg1.interrupted then
						__FUNC_3C17_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -22.560000, 114.820000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C17_)
				end

				if arg1.interrupted then
					__FUNC_3A67_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -34.000000, 103.380000)
				arg0:setAlpha(0.440000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A67_)
			end

			if arg1.interrupted then
				__FUNC_38B4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -54.630000, 82.740000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38B4_)
		end

		registerVal5:completeAnimation()
		registerVal2.crate0:setLeftRight(true, false, -148.940000, -11.560000)
		registerVal2.crate0:setTopBottom(true, false, -8.880000, 108.880000)
		registerVal2.crate0:setAlpha(0.000000)
		__FUNC_3726_(registerVal5, {})
		registerVal2.nextClip = "Purchasing"
	end

	registerVal7.Purchasing = __FUNC_2639_
	local function __FUNC_4179_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.BurningDuplicatesText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		local function __FUNC_4588_(arg0, arg1)
			local function __FUNC_477D_(arg0, arg1)
				local function __FUNC_4971_(arg0, arg1)
					local function __FUNC_4B9D_(arg0, arg1)
						local function __FUNC_4D2C_(arg0, arg1)
							local function __FUNC_4EDF_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 109.590000, 246.970000)
								arg0:setTopBottom(true, false, -8.880000, 108.880000)
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
								arg0:setShaderVector(0.000000, 1.000000, -1.000000, 0.000000, 0.000000)
								arg0:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
								arg0:setShaderVector(2.000000, 0.000000, 1.570000, 0.000000, 0.000000)
								arg0:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_4EDF_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 95.610000, 232.990000)
							arg0:setAlpha(0.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EDF_)
						end

						if arg1.interrupted then
							__FUNC_4D2C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 29.540000, 166.920000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D2C_)
					end

					if arg1.interrupted then
						__FUNC_4B9D_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -22.560000, 114.820000)
					arg0:setTopBottom(true, false, -8.880000, 108.880000)
					arg0:setShaderVector(0.000000, 1.000000, -1.000000, 0.000000, 0.000000)
					arg0:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B9D_)
				end

				if arg1.interrupted then
					__FUNC_4971_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -34.000000, 103.380000)
				arg0:setShaderVector(0.000000, 1.000000, -0.625000, 0.000000, 0.000000)
				arg0:setShaderVector(1.000000, 0.513125, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4971_)
			end

			if arg1.interrupted then
				__FUNC_477D_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -54.630000, 82.750000)
			arg0:setShaderVector(0.000000, 1.000000, -0.333333, 0.000000, 0.000000)
			arg0:setShaderVector(1.000000, 0.523333, 0.000000, 0.000000, 0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_477D_)
		end

		registerVal4:completeAnimation()
		registerVal2.crate:setLeftRight(true, false, -148.940000, -11.570000)
		registerVal2.crate:setTopBottom(true, false, -8.880000, 108.880000)
		registerVal2.crate:setAlpha(1.000000)
		registerVal2.crate:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.crate:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.crate:setShaderVector(1.000000, 0.570000, 0.000000, 0.000000, 0.000000)
		registerVal2.crate:setShaderVector(2.000000, 0.000000, 1.570000, 0.000000, 0.000000)
		registerVal2.crate:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		__FUNC_4588_(registerVal4, {})
		local function __FUNC_523A_(arg0, arg1)
			local function __FUNC_53C8_(arg0, arg1)
				local function __FUNC_557B_(arg0, arg1)
					local function __FUNC_572B_(arg0, arg1)
						local function __FUNC_58DB_(arg0, arg1)
							local function __FUNC_5A68_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 629.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setLeftRight(true, false, 109.590000, 246.970000)
								arg0:setTopBottom(true, false, -8.880000, 108.880000)
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_5A68_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
							arg0:setLeftRight(true, false, 29.540000, 166.910000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A68_)
						end

						if arg1.interrupted then
							__FUNC_58DB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 320.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, 18.100000, 155.480000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58DB_)
					end

					if arg1.interrupted then
						__FUNC_572B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -22.560000, 114.820000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_572B_)
				end

				if arg1.interrupted then
					__FUNC_557B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, -34.000000, 103.380000)
				arg0:setAlpha(0.440000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_557B_)
			end

			if arg1.interrupted then
				__FUNC_53C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -54.630000, 82.740000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53C8_)
		end

		registerVal5:completeAnimation()
		registerVal2.crate0:setLeftRight(true, false, -148.940000, -11.560000)
		registerVal2.crate0:setTopBottom(true, false, -8.880000, 108.880000)
		registerVal2.crate0:setAlpha(0.000000)
		__FUNC_523A_(registerVal5, {})
	end

	registerVal7.StopPurchasing = __FUNC_4179_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_5C8D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_5C8D_
	local function __FUNC_5CEE_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_6197_(arg0, arg1)
			local function __FUNC_630F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 110.000000, 557.000000)
				arg0:setTopBottom(true, false, 40.000000, 60.000000)
				arg0:setAlpha(0.450000)
				arg0:setScale(1.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_630F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_630F_)
		end

		registerVal3:completeAnimation()
		registerVal2.BurningDuplicatesText:setLeftRight(true, false, 110.000000, 557.000000)
		registerVal2.BurningDuplicatesText:setTopBottom(true, false, 40.000000, 60.000000)
		registerVal2.BurningDuplicatesText:setAlpha(0.000000)
		registerVal2.BurningDuplicatesText:setScale(1.500000)
		__FUNC_6197_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.crate:setLeftRight(true, false, -148.940000, -11.570000)
		registerVal2.crate:setTopBottom(true, false, -8.880000, 108.880000)
		registerVal2.crate:setAlpha(1.000000)
		registerVal2.crate:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.crate:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.crate:setShaderVector(1.000000, 0.570000, 0.000000, 0.000000, 0.000000)
		registerVal2.crate:setShaderVector(2.000000, 0.000000, 1.570000, 0.000000, 0.000000)
		registerVal2.crate:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.crate0:setLeftRight(true, false, -148.940000, -11.560000)
		registerVal2.crate0:setTopBottom(true, false, -8.880000, 108.880000)
		registerVal2.crate0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.StartPurchasing = __FUNC_5CEE_
	local function __FUNC_6554_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_6A32_(arg0, arg1)
			local function __FUNC_6BAB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 110.000000, 557.000000)
				arg0:setTopBottom(true, false, 40.000000, 60.000000)
				arg0:setAlpha(0.450000)
				arg0:setScale(1.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6BAB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6BAB_)
		end

		registerVal3:completeAnimation()
		registerVal2.BurningDuplicatesText:setLeftRight(true, false, 110.000000, 557.000000)
		registerVal2.BurningDuplicatesText:setTopBottom(true, false, 40.000000, 60.000000)
		registerVal2.BurningDuplicatesText:setAlpha(0.450000)
		registerVal2.BurningDuplicatesText:setScale(1.500000)
		__FUNC_6A32_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.crate:setLeftRight(true, false, -148.940000, -11.570000)
		registerVal2.crate:setTopBottom(true, false, -8.880000, 108.880000)
		registerVal2.crate:setAlpha(1.000000)
		registerVal2.crate:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
		registerVal2.crate:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
		registerVal2.crate:setShaderVector(1.000000, 0.570000, 0.000000, 0.000000, 0.000000)
		registerVal2.crate:setShaderVector(2.000000, 0.000000, 1.570000, 0.000000, 0.000000)
		registerVal2.crate:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.crate0:setLeftRight(true, false, -148.940000, -11.560000)
		registerVal2.crate0:setTopBottom(true, false, -8.880000, 108.880000)
		registerVal2.crate0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal2.nextClip = "Purchasing"
	end

	registerVal7.Purchasing = __FUNC_6554_
	local function __FUNC_6DF0_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_70CC_(arg0, arg1)
			local function __FUNC_7247_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 110.000000, 557.000000)
				arg0:setTopBottom(true, false, 40.000000, 60.000000)
				arg0:setAlpha(0.000000)
				arg0:setScale(1.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7247_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.450000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7247_)
		end

		registerVal3:completeAnimation()
		registerVal2.BurningDuplicatesText:setLeftRight(true, false, 110.000000, 557.000000)
		registerVal2.BurningDuplicatesText:setTopBottom(true, false, 40.000000, 60.000000)
		registerVal2.BurningDuplicatesText:setAlpha(1.000000)
		registerVal2.BurningDuplicatesText:setScale(1.500000)
		__FUNC_70CC_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.crate:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.crate0:setLeftRight(true, false, -148.940000, -11.560000)
		registerVal2.crate0:setTopBottom(true, false, -8.880000, 108.880000)
		registerVal2.crate0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.StopPurchasing = __FUNC_6DF0_
	registerVal6.Vials = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Vials"
	local function __FUNC_748C_(arg0, arg1, arg2)
		return IsZombies()
	end

	registerVal9.condition = __FUNC_748C_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "lobbyRoot.lobbyNav")
	local function __FUNC_74D7_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_74D7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


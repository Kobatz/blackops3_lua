-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_BurningDuplicatesAnimation = registerVal1
function CoD.BM_BurningDuplicatesAnimation.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_BurningDuplicatesAnimation)
	registerVal2.id = "BM_BurningDuplicatesAnimation"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 523.000000, 763.000000)
	registerVal3:setTopBottom(true, false, -106.000000, 206.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setYRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_t7_burn_frame"))
	registerVal2:addElement(registerVal3)
	registerVal2.Frame2 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -250.000000, -10.000000)
	registerVal4:setTopBottom(true, false, -106.000000, 206.000000)
	registerVal4:setImage(RegisterImage("uie_t7_burn_frame"))
	registerVal2:addElement(registerVal4)
	registerVal2.FRame = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 116.000000, 392.000000)
	registerVal5:setTopBottom(true, false, -129.000000, 219.000000)
	registerVal5:setImage(RegisterImage("uie_t7_burn_blurframe"))
	registerVal2:addElement(registerVal5)
	registerVal2.Blur = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 129.000000, 369.000000)
	registerVal6:setTopBottom(true, false, -75.000000, 165.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setScale(0.600000)
	registerVal6:setImage(RegisterImage("uie_t7_icon_cryptokey_slow"))
	registerVal2:addElement(registerVal6)
	registerVal2.slow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 129.000000, 369.000000)
	registerVal7:setTopBottom(true, false, -75.000000, 165.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZRot(90.000000)
	registerVal7:setScale(0.600000)
	registerVal7:setImage(RegisterImage("uie_t7_icon_cryptokey_slow"))
	registerVal2:addElement(registerVal7)
	registerVal2.slow0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 129.000000, 369.000000)
	registerVal8:setTopBottom(true, false, -75.000000, 165.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZRot(180.000000)
	registerVal8:setScale(0.600000)
	registerVal8:setImage(RegisterImage("uie_t7_icon_cryptokey_slow"))
	registerVal2:addElement(registerVal8)
	registerVal2.slow1 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 157.000000, 349.000000)
	registerVal9:setTopBottom(true, false, -59.000000, 145.000000)
	registerVal9:setImage(RegisterImage("uie_t7_burn_cryptokey"))
	registerVal2:addElement(registerVal9)
	registerVal2.Cryptokey = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 157.000000, 349.000000)
	registerVal10:setTopBottom(true, false, -59.000000, 145.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setImage(RegisterImage("uie_t7_burn_cryptokeygold"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
	registerVal10:setShaderVector(0.000000, 0.990000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.CryptokeyGold = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_BD8_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.Frame2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FRame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Blur:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal9:completeAnimation()
		registerVal2.Cryptokey:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_BD8_
	local function __FUNC_DD2_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_1194_(arg0, arg1)
			local function __FUNC_1347_(arg0, arg1)
				local function __FUNC_14F7_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 130.000000, 370.000000)
					arg0:setTopBottom(true, false, -106.000000, 206.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_14F7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 130.000000, 370.000000)
				arg0:setAlpha(0.330000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14F7_)
			end

			if arg1.interrupted then
				__FUNC_1347_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 335.290000, 575.290000)
			arg0:setAlpha(0.010000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1347_)
		end

		registerVal3:completeAnimation()
		registerVal2.Frame2:setLeftRight(true, false, 351.000000, 591.000000)
		registerVal2.Frame2:setTopBottom(true, false, -106.000000, 206.000000)
		registerVal2.Frame2:setAlpha(0.000000)
		__FUNC_1194_(registerVal3, {})
		local function __FUNC_1719_(arg0, arg1)
			local function __FUNC_18CB_(arg0, arg1)
				local function __FUNC_1A7B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 135.000000, 375.000000)
					arg0:setTopBottom(true, false, -106.000000, 206.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1A7B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 135.000000, 375.000000)
				arg0:setAlpha(0.330000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A7B_)
			end

			if arg1.interrupted then
				__FUNC_18CB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -79.260000, 160.740000)
			arg0:setAlpha(0.010000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18CB_)
		end

		registerVal4:completeAnimation()
		registerVal2.FRame:setLeftRight(true, false, -95.000000, 145.000000)
		registerVal2.FRame:setTopBottom(true, false, -106.000000, 206.000000)
		registerVal2.FRame:setAlpha(0.000000)
		__FUNC_1719_(registerVal4, {})
		local function __FUNC_1C9D_(arg0, arg1)
			local function __FUNC_1E3A_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
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
				__FUNC_1E3A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.140000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E3A_)
		end

		registerVal5:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:setScale(1.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_1C9D_)
		local function __FUNC_2010_(arg0, arg1)
			local function __FUNC_218B_(arg0, arg1)
				local function __FUNC_2303_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
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
					__FUNC_2303_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(0.940000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2303_)
			end

			if arg1.interrupted then
				__FUNC_218B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_218B_)
		end

		registerVal9:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:setScale(1.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_2010_)
	end

	registerVal12.StartBurning = __FUNC_DD2_
	local function __FUNC_24D8_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_28C7_(arg0, arg1)
			local function __FUNC_2A54_(arg0, arg1)
				local function __FUNC_2C07_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 130.000000, 370.000000)
					arg0:setTopBottom(true, false, -106.000000, 206.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2C07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 800.000000, true, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 130.000000, 370.000000)
				arg0:setAlpha(0.330000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C07_)
			end

			if arg1.interrupted then
				__FUNC_2A54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 335.290000, 575.290000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A54_)
		end

		registerVal3:completeAnimation()
		registerVal2.Frame2:setLeftRight(true, false, 351.000000, 591.000000)
		registerVal2.Frame2:setTopBottom(true, false, -106.000000, 206.000000)
		registerVal2.Frame2:setAlpha(0.000000)
		__FUNC_28C7_(registerVal3, {})
		local function __FUNC_2E29_(arg0, arg1)
			local function __FUNC_2FB8_(arg0, arg1)
				local function __FUNC_316B_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 135.000000, 375.000000)
					arg0:setTopBottom(true, false, -106.000000, 206.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_316B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 800.000000, true, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 135.000000, 375.000000)
				arg0:setAlpha(0.330000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_316B_)
			end

			if arg1.interrupted then
				__FUNC_2FB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -79.260000, 160.740000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2FB8_)
		end

		registerVal4:completeAnimation()
		registerVal2.FRame:setLeftRight(true, false, -95.000000, 145.000000)
		registerVal2.FRame:setTopBottom(true, false, -106.000000, 206.000000)
		registerVal2.FRame:setAlpha(0.000000)
		__FUNC_2E29_(registerVal4, {})
		local function __FUNC_338D_(arg0, arg1)
			local function __FUNC_352A_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
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
				__FUNC_352A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.140000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_352A_)
		end

		registerVal5:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:setScale(1.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_338D_)
		local function __FUNC_3700_(arg0, arg1)
			local function __FUNC_387B_(arg0, arg1)
				local function __FUNC_39F3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
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
					__FUNC_39F3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(0.940000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_39F3_)
			end

			if arg1.interrupted then
				__FUNC_387B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_387B_)
		end

		registerVal9:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:setScale(1.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_3700_)
		registerVal2.nextClip = "Burning"
	end

	registerVal12.Burning = __FUNC_24D8_
	local function __FUNC_3BC8_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_4241_(arg0, arg1)
			local function __FUNC_43F3_(arg0, arg1)
				local function __FUNC_45A3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 130.000000, 370.000000)
					arg0:setTopBottom(true, false, -106.000000, 206.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_45A3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 130.000000, 370.000000)
				arg0:setAlpha(0.330000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45A3_)
			end

			if arg1.interrupted then
				__FUNC_43F3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 335.290000, 575.290000)
			arg0:setAlpha(0.010000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_43F3_)
		end

		registerVal3:completeAnimation()
		registerVal2.Frame2:setLeftRight(true, false, 351.000000, 591.000000)
		registerVal2.Frame2:setTopBottom(true, false, -106.000000, 206.000000)
		registerVal2.Frame2:setAlpha(0.000000)
		__FUNC_4241_(registerVal3, {})
		local function __FUNC_47C5_(arg0, arg1)
			local function __FUNC_4977_(arg0, arg1)
				local function __FUNC_4B27_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(true, false, 135.000000, 375.000000)
					arg0:setTopBottom(true, false, -106.000000, 206.000000)
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_4B27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 800.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(true, false, 135.000000, 375.000000)
				arg0:setAlpha(0.330000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4B27_)
			end

			if arg1.interrupted then
				__FUNC_4977_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, -79.260000, 160.740000)
			arg0:setAlpha(0.010000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4977_)
		end

		registerVal4:completeAnimation()
		registerVal2.FRame:setLeftRight(true, false, -95.000000, 145.000000)
		registerVal2.FRame:setTopBottom(true, false, -106.000000, 206.000000)
		registerVal2.FRame:setAlpha(0.000000)
		__FUNC_47C5_(registerVal4, {})
		local function __FUNC_4D49_(arg0, arg1)
			local function __FUNC_4EE6_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
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
				__FUNC_4EE6_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(1.140000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EE6_)
		end

		registerVal5:beginAnimation("keyframe", 819.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:setScale(1.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_4D49_)
		local function __FUNC_50BC_(arg0, arg1)
			local function __FUNC_5237_(arg0, arg1)
				local function __FUNC_53D2_(arg0, arg1)
					local function __FUNC_556E_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
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
						__FUNC_556E_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setScale(0.940000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_556E_)
				end

				if arg1.interrupted then
					__FUNC_53D2_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(0.760000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_53D2_)
			end

			if arg1.interrupted then
				__FUNC_5237_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(0.660000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5237_)
		end

		registerVal6:beginAnimation("keyframe", 959.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:setScale(0.600000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_50BC_)
		local function __FUNC_5744_(arg0, arg1)
			local function __FUNC_58BF_(arg0, arg1)
				local function __FUNC_5A5A_(arg0, arg1)
					local function __FUNC_5BF6_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
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
						__FUNC_5BF6_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:setScale(0.940000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BF6_)
				end

				if arg1.interrupted then
					__FUNC_5A5A_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setScale(0.760000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A5A_)
			end

			if arg1.interrupted then
				__FUNC_58BF_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(0.660000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58BF_)
		end

		registerVal7:beginAnimation("keyframe", 1039.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:setScale(0.600000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_5744_)
		local function __FUNC_5DCC_(arg0, arg1)
			local function __FUNC_5F6A_(arg0, arg1)
				local function __FUNC_6106_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
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
					__FUNC_6106_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.250000)
				arg0:setScale(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6106_)
			end

			if arg1.interrupted then
				__FUNC_5F6A_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 139.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:setScale(0.790000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5F6A_)
		end

		registerVal8:beginAnimation("keyframe", 1139.000000, false, false, CoD.TweenType.Linear)
		registerVal8:setAlpha(0.000000)
		registerVal8:setScale(0.600000)
		registerVal8:registerEventHandler("transition_complete_keyframe", __FUNC_5DCC_)
		local function __FUNC_62DC_(arg0, arg1)
			local function __FUNC_6457_(arg0, arg1)
				local function __FUNC_65CF_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
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
					__FUNC_65CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 279.000000, false, false, CoD.TweenType.Linear)
				arg0:setScale(0.920000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_65CF_)
			end

			if arg1.interrupted then
				__FUNC_6457_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6457_)
		end

		registerVal9:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
		registerVal9:setAlpha(0.000000)
		registerVal9:setScale(1.000000)
		registerVal9:registerEventHandler("transition_complete_keyframe", __FUNC_62DC_)
		local function __FUNC_67A4_(arg0, arg1)
			local function __FUNC_691F_(arg0, arg1)
				local function __FUNC_6AD6_(arg0, arg1)
					local function __FUNC_6C6B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
						arg0:setShaderVector(0.000000, 0.990000, 0.000000, 0.000000, 0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_6C6B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
					arg0:setShaderVector(0.000000, 0.990000, 0.000000, 0.000000, 0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6C6B_)
				end

				if arg1.interrupted then
					__FUNC_6AD6_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 260.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setShaderVector(0.000000, 0.552128, 0.000000, 0.000000, 0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6AD6_)
			end

			if arg1.interrupted then
				__FUNC_691F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.420000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_691F_)
		end

		registerVal10:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
		registerVal10:setAlpha(0.000000)
		registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint_reveal"))
		registerVal10:setShaderVector(0.000000, 0.010000, 0.000000, 0.000000, 0.000000)
		registerVal10:registerEventHandler("transition_complete_keyframe", __FUNC_67A4_)
	end

	registerVal12.StopBurning = __FUNC_3BC8_
	registerVal11.DefaultState = registerVal12
	registerVal2.clipsPerState = registerVal11
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


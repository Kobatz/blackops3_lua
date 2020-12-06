-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_WiresAllStatic")
require("ui.uieditor.widgets.BlackMarket.BM_Wires1")
require("ui.uieditor.widgets.BlackMarket.BMWire2")
require("ui.uieditor.widgets.BlackMarket.BM_WiresGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_DecryptionBonusKeys = registerVal1
function CoD.BM_DecryptionBonusKeys.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_DecryptionBonusKeys)
	registerVal2.id = "BM_DecryptionBonusKeys"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -80.000000, 41.000000)
	registerVal3:setTopBottom(false, false, -68.000000, 61.060000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_cryptokeysupport"))
	registerVal2:addElement(registerVal3)
	registerVal2.Support = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -79.000000, 161.000000)
	registerVal4:setTopBottom(true, false, -81.000000, 159.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_icon_cryptokey_slow"))
	registerVal2:addElement(registerVal4)
	registerVal2.slow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -79.000000, 161.000000)
	registerVal5:setTopBottom(true, false, -91.000000, 173.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_icon_cryptokey_regular"))
	registerVal2:addElement(registerVal5)
	registerVal2.regular = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -74.000000, 202.000000)
	registerVal6:setTopBottom(true, false, -91.000000, 185.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_icon_cryptokey_fast"))
	registerVal2:addElement(registerVal6)
	registerVal2.fast = registerVal6
	local registerVal7 = CoD.BM_WiresAllStatic.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -59.000000, 61.000000)
	registerVal7:setTopBottom(true, false, -251.000000, 109.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setScale(0.700000)
	registerVal2:addElement(registerVal7)
	registerVal2.BMWiresAllStatic = registerVal7
	local registerVal8 = CoD.BM_Wires1.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -59.000000, 61.000000)
	registerVal8:setTopBottom(true, false, -251.000000, 109.000000)
	registerVal8:setScale(0.700000)
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.BMWires1 = registerVal8
	local registerVal9 = CoD.BMWire2.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -59.000000, 61.000000)
	registerVal9:setTopBottom(true, false, -251.000000, 109.000000)
	registerVal9:setScale(0.700000)
	registerVal9:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.BMWires2 = registerVal9
	local registerVal10 = CoD.BM_WiresGlow.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, -70.000000, 151.490000)
	registerVal10:setTopBottom(true, false, -284.000000, 155.000000)
	registerVal10:setScale(0.700000)
	registerVal10:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.BMWiresGlow = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -40.000000, 40.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 80.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setYRot(-180.000000)
	registerVal11:setImage(RegisterImage("uie_t7_icon_cryptokey_front"))
	registerVal2:addElement(registerVal11)
	registerVal2.cryptokeyFront = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -79.500000, 0.500000)
	registerVal12:setTopBottom(false, false, -40.000000, 40.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_icon_cryptokey_back"))
	registerVal2:addElement(registerVal12)
	registerVal2.cryptokeyBack = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(false, true, -84.000000, 3.000000)
	registerVal13:setTopBottom(false, false, -24.500000, 20.500000)
	registerVal13:setRGB(1.000000, 0.980000, 0.800000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setTTF("fonts/escom.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_13EF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg1, "CryptoKeyProgress", "bonusKeysAwarded", __FUNC_13EF_)
	registerVal2:addElement(registerVal13)
	registerVal2.cryptokeyCount = registerVal13
	local registerVal14 = LUI.UIElement.new()
	registerVal14:setLeftRight(true, false, 49.500000, 97.500000)
	registerVal14:setTopBottom(true, false, -149.000000, -101.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.CoinFlip = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(true, false, -0.500000, 83.930000)
	registerVal15:setTopBottom(true, false, 93.000000, 110.000000)
	registerVal15:setRGB(0.690000, 0.900000, 0.800000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setScale(0.900000)
	registerVal15:setText(Engine.Localize(LocalizeToUpperString("MPUI_CRYPTOKEY_BONUS_CAPS")))
	registerVal15:setTTF("fonts/escom.ttf")
	registerVal15:setLetterSpacing(0.000000)
	registerVal15:setLineSpacing(-1.700000)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal15)
	registerVal2.Bonus = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_14A6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal17.DefaultClip = __FUNC_14A6_
	local function __FUNC_1506_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_1B8E_(arg0, arg1)
			local function __FUNC_1CE4_(arg0, arg1)
				local function __FUNC_1E5F_(arg0, arg1)
					local function __FUNC_1FD7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Bounce)
						end
						arg0:setAlpha(0.950000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1FD7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.030000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FD7_)
				end

				if arg1.interrupted then
					__FUNC_1E5F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 120.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.720000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E5F_)
			end

			if arg1.interrupted then
				__FUNC_1CE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1029.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CE4_)
		end

		registerVal3:completeAnimation()
		registerVal2.Support:setAlpha(0.000000)
		__FUNC_1B8E_(registerVal3, {})
		local function __FUNC_2189_(arg0, arg1)
			local function __FUNC_22E0_(arg0, arg1)
				local function __FUNC_245B_(arg0, arg1)
					local function __FUNC_2620_(arg0, arg1)
						local function __FUNC_280B_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setLeftRight(true, false, -24.180000, 106.180000)
							arg0:setTopBottom(true, false, -27.180000, 103.180000)
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_280B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 349.000000, false, false, CoD.TweenType.Linear)
						arg0:setLeftRight(true, false, -23.350000, 104.980000)
						arg0:setTopBottom(true, false, -25.980000, 102.350000)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_280B_)
					end

					if arg1.interrupted then
						__FUNC_2620_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -17.500000, 96.590000)
					arg0:setTopBottom(true, false, -17.590000, 96.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2620_)
				end

				if arg1.interrupted then
					__FUNC_245B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_245B_)
			end

			if arg1.interrupted then
				__FUNC_22E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22E0_)
		end

		registerVal4:completeAnimation()
		registerVal2.slow:setLeftRight(true, false, -15.000000, 93.000000)
		registerVal2.slow:setTopBottom(true, false, -14.000000, 94.000000)
		registerVal2.slow:setAlpha(0.000000)
		__FUNC_2189_(registerVal4, {})
		local function __FUNC_2A2D_(arg0, arg1)
			local function __FUNC_2B84_(arg0, arg1)
				local function __FUNC_2CDC_(arg0, arg1)
					local function __FUNC_2EC7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 310.000000, false, true, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -61.680000, 143.320000)
						arg0:setTopBottom(true, false, -68.750000, 156.750000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2EC7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 89.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -31.180000, 110.410000)
					arg0:setTopBottom(true, false, -32.130000, 123.620000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EC7_)
				end

				if arg1.interrupted then
					__FUNC_2CDC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CDC_)
			end

			if arg1.interrupted then
				__FUNC_2B84_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B84_)
		end

		registerVal5:completeAnimation()
		registerVal2.regular:setLeftRight(true, false, -22.330000, 100.850000)
		registerVal2.regular:setTopBottom(true, false, -21.500000, 114.000000)
		registerVal2.regular:setAlpha(0.000000)
		__FUNC_2A2D_(registerVal5, {})
		local function __FUNC_30E9_(arg0, arg1)
			local function __FUNC_3240_(arg0, arg1)
				local function __FUNC_33BB_(arg0, arg1)
					local function __FUNC_3580_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 120.000000, false, true, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -79.000000, 186.000000)
						arg0:setTopBottom(true, false, -87.000000, 178.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3580_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -65.000000, 165.000000)
					arg0:setTopBottom(true, false, -70.000000, 160.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3580_)
				end

				if arg1.interrupted then
					__FUNC_33BB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33BB_)
			end

			if arg1.interrupted then
				__FUNC_3240_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3240_)
		end

		registerVal6:completeAnimation()
		registerVal2.fast:setLeftRight(true, false, -17.000000, 99.000000)
		registerVal2.fast:setTopBottom(true, false, -14.000000, 102.000000)
		registerVal2.fast:setAlpha(0.000000)
		__FUNC_30E9_(registerVal6, {})
		local function __FUNC_37A5_(arg0, arg1)
			local function __FUNC_38FC_(arg0, arg1)
				local function __FUNC_3A77_(arg0, arg1)
					local function __FUNC_3BCC_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 370.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3BCC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BCC_)
				end

				if arg1.interrupted then
					__FUNC_3A77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A77_)
			end

			if arg1.interrupted then
				__FUNC_38FC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38FC_)
		end

		registerVal7:completeAnimation()
		registerVal2.BMWiresAllStatic:setAlpha(0.000000)
		__FUNC_37A5_(registerVal7, {})
		local function __FUNC_3D81_(arg0, arg1)
			local function __FUNC_3EFB_(arg0, arg1)
				local function __FUNC_4050_(arg0, arg1)
					local function __FUNC_41CA_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						arg0:setYRot(90.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_41CA_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 110.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(90.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41CA_)
				end

				if arg1.interrupted then
					__FUNC_4050_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 459.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4050_)
			end

			if arg1.interrupted then
				__FUNC_3EFB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3EFB_)
		end

		registerVal11:completeAnimation()
		registerVal2.cryptokeyFront:setAlpha(1.000000)
		registerVal2.cryptokeyFront:setYRot(0.000000)
		registerVal2.cryptokeyFront:setScale(2.500000)
		__FUNC_3D81_(registerVal11, {})
		local function __FUNC_43C2_(arg0, arg1)
			local function __FUNC_4518_(arg0, arg1)
				local function __FUNC_4693_(arg0, arg1)
					local function __FUNC_480A_(arg0, arg1)
						local function __FUNC_4960_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(1.000000)
							arg0:setYRot(0.000000)
							arg0:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
							arg0:setShaderVector(0.000000, 0.990000, 0.000000, 0.000000, 0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_4960_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4960_)
					end

					if arg1.interrupted then
						__FUNC_480A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, true, false, CoD.TweenType.Linear)
					arg0:setYRot(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_480A_)
				end

				if arg1.interrupted then
					__FUNC_4693_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4693_)
			end

			if arg1.interrupted then
				__FUNC_4518_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 750.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4518_)
		end

		registerVal12:completeAnimation()
		registerVal2.cryptokeyBack:setAlpha(0.000000)
		registerVal2.cryptokeyBack:setYRot(-89.000000)
		registerVal2.cryptokeyBack:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_bitchin_glint"))
		registerVal2.cryptokeyBack:setShaderVector(0.000000, 0.010000, 0.000000, 0.000000, 0.000000)
		__FUNC_43C2_(registerVal12, {})
		local function __FUNC_4C09_(arg0, arg1)
			local function __FUNC_4D83_(arg0, arg1)
				local function __FUNC_4ED8_(arg0, arg1)
					local function __FUNC_5053_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 69.000000, true, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(1.000000)
						arg0:setYRot(0.000000)
						arg0:setScale(1.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5053_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5053_)
				end

				if arg1.interrupted then
					__FUNC_4ED8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 560.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4ED8_)
			end

			if arg1.interrupted then
				__FUNC_4D83_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
			arg0:setScale(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D83_)
		end

		registerVal13:completeAnimation()
		registerVal2.cryptokeyCount:setAlpha(0.000000)
		registerVal2.cryptokeyCount:setYRot(-87.000000)
		registerVal2.cryptokeyCount:setScale(2.500000)
		__FUNC_4C09_(registerVal13, {})
		local function __FUNC_5245_(arg0, arg1)
			local function __FUNC_539C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 269.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.950000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_539C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1220.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_539C_)
		end

		registerVal15:completeAnimation()
		registerVal2.Bonus:setAlpha(0.000000)
		__FUNC_5245_(registerVal15, {})
	end

	registerVal17.Bonus = __FUNC_1506_
	local function __FUNC_5551_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_5981_(arg0, arg1)
			local function __FUNC_5AD8_(arg0, arg1)
				local function __FUNC_5C53_(arg0, arg1)
					local function __FUNC_5E18_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -50.680000, 128.320000)
						arg0:setTopBottom(true, false, -46.500000, 132.500000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_5E18_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -26.420000, 104.300000)
					arg0:setTopBottom(true, false, -24.400000, 106.320000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E18_)
				end

				if arg1.interrupted then
					__FUNC_5C53_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5C53_)
			end

			if arg1.interrupted then
				__FUNC_5AD8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5AD8_)
		end

		registerVal4:completeAnimation()
		registerVal2.slow:setLeftRight(true, false, -15.000000, 93.000000)
		registerVal2.slow:setTopBottom(true, false, -14.000000, 94.000000)
		registerVal2.slow:setAlpha(0.000000)
		__FUNC_5981_(registerVal4, {})
		local function __FUNC_603D_(arg0, arg1)
			local function __FUNC_6194_(arg0, arg1)
				local function __FUNC_62EC_(arg0, arg1)
					local function __FUNC_64D7_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -61.680000, 143.320000)
						arg0:setTopBottom(true, false, -68.750000, 156.750000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_64D7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 69.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -49.880000, 130.580000)
					arg0:setTopBottom(true, false, -54.580000, 143.930000)
					arg0:setAlpha(1.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_64D7_)
				end

				if arg1.interrupted then
					__FUNC_62EC_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_62EC_)
			end

			if arg1.interrupted then
				__FUNC_6194_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 159.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6194_)
		end

		registerVal5:completeAnimation()
		registerVal2.regular:setLeftRight(true, false, -22.330000, 100.850000)
		registerVal2.regular:setTopBottom(true, false, -21.500000, 114.000000)
		registerVal2.regular:setAlpha(0.000000)
		__FUNC_603D_(registerVal5, {})
		local function __FUNC_66F9_(arg0, arg1)
			local function __FUNC_6850_(arg0, arg1)
				local function __FUNC_69CB_(arg0, arg1)
					local function __FUNC_6B90_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, false, -79.000000, 186.000000)
						arg0:setTopBottom(true, false, -87.000000, 178.000000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_6B90_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 49.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(true, false, -65.000000, 165.000000)
					arg0:setTopBottom(true, false, -70.000000, 160.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6B90_)
				end

				if arg1.interrupted then
					__FUNC_69CB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_69CB_)
			end

			if arg1.interrupted then
				__FUNC_6850_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6850_)
		end

		registerVal6:completeAnimation()
		registerVal2.fast:setLeftRight(true, false, -17.000000, 99.000000)
		registerVal2.fast:setTopBottom(true, false, -14.000000, 102.000000)
		registerVal2.fast:setAlpha(0.000000)
		__FUNC_66F9_(registerVal6, {})
		local function __FUNC_6DB5_(arg0, arg1)
			local function __FUNC_6F0C_(arg0, arg1)
				local function __FUNC_7087_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_7087_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7087_)
			end

			if arg1.interrupted then
				__FUNC_6F0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 730.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6F0C_)
		end

		registerVal7:completeAnimation()
		registerVal2.BMWiresAllStatic:setAlpha(0.000000)
		__FUNC_6DB5_(registerVal7, {})
		local function __FUNC_7239_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.cryptokeyBack:setAlpha(1.000000)
		registerVal2.cryptokeyBack:setScale(2.500000)
		__FUNC_7239_(registerVal12, {})
		local function __FUNC_740B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setScale(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal13:completeAnimation()
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.cryptokeyCount:setScale(2.500000)
		__FUNC_740B_(registerVal13, {})
	end

	registerVal17.backup = __FUNC_5551_
	local function __FUNC_75DB_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_798D_(arg0, arg1)
			local function __FUNC_7B06_(arg0, arg1)
				local function __FUNC_7CA1_(arg0, arg1)
					local function __FUNC_7E1A_(arg0, arg1)
						local function __FUNC_7F70_(arg0, arg1)
							local function __FUNC_80C8_(arg0, arg1)
								local function __FUNC_8242_(arg0, arg1)
									local function __FUNC_83BA_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 3599.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.000000)
										arg0:setYRot(84.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_83BA_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setYRot(84.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_83BA_)
								end

								if arg1.interrupted then
									__FUNC_8242_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
								arg0:setYRot(-94.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8242_)
							end

							if arg1.interrupted then
								__FUNC_80C8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_80C8_)
						end

						if arg1.interrupted then
							__FUNC_7F70_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7F70_)
					end

					if arg1.interrupted then
						__FUNC_7E1A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E1A_)
				end

				if arg1.interrupted then
					__FUNC_7CA1_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1689.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setYRot(84.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CA1_)
			end

			if arg1.interrupted then
				__FUNC_7B06_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:setYRot(16.080000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B06_)
		end

		registerVal11:completeAnimation()
		registerVal2.cryptokeyFront:setAlpha(0.000000)
		registerVal2.cryptokeyFront:setYRot(0.000000)
		__FUNC_798D_(registerVal11, {})
		local function __FUNC_858F_(arg0, arg1)
			local function __FUNC_86E4_(arg0, arg1)
				local function __FUNC_883C_(arg0, arg1)
					local function __FUNC_89B6_(arg0, arg1)
						local function __FUNC_8B51_(arg0, arg1)
							local function __FUNC_8CCA_(arg0, arg1)
								local function __FUNC_8E42_(arg0, arg1)
									local function __FUNC_8FDD_(arg0, arg1)
										local function __FUNC_9156_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 3449.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											arg0:setYRot(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_9156_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
										arg0:setYRot(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9156_)
									end

									if arg1.interrupted then
										__FUNC_8FDD_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:setYRot(84.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8FDD_)
								end

								if arg1.interrupted then
									__FUNC_8E42_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setYRot(1.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E42_)
							end

							if arg1.interrupted then
								__FUNC_8CCA_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1269.000000, false, false, CoD.TweenType.Linear)
							arg0:setYRot(-81.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8CCA_)
						end

						if arg1.interrupted then
							__FUNC_8B51_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setYRot(-83.980000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8B51_)
					end

					if arg1.interrupted then
						__FUNC_89B6_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(-84.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_89B6_)
				end

				if arg1.interrupted then
					__FUNC_883C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1540.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_883C_)
			end

			if arg1.interrupted then
				__FUNC_86E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_86E4_)
		end

		registerVal12:completeAnimation()
		registerVal2.cryptokeyBack:setAlpha(1.000000)
		registerVal2.cryptokeyBack:setYRot(0.000000)
		__FUNC_858F_(registerVal12, {})
		local function __FUNC_932B_(arg0, arg1)
			local function __FUNC_9480_(arg0, arg1)
				local function __FUNC_95D8_(arg0, arg1)
					local function __FUNC_9752_(arg0, arg1)
						local function __FUNC_98CB_(arg0, arg1)
							local function __FUNC_9A20_(arg0, arg1)
								local function __FUNC_9B9A_(arg0, arg1)
									local function __FUNC_9D35_(arg0, arg1)
										local function __FUNC_9EAE_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 3449.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											arg0:setXRot(0.000000)
											arg0:setYRot(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_9EAE_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
										arg0:setYRot(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9EAE_)
									end

									if arg1.interrupted then
										__FUNC_9D35_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:setYRot(81.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D35_)
								end

								if arg1.interrupted then
									__FUNC_9B9A_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setYRot(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B9A_)
							end

							if arg1.interrupted then
								__FUNC_9A20_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1269.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A20_)
						end

						if arg1.interrupted then
							__FUNC_98CB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98CB_)
					end

					if arg1.interrupted then
						__FUNC_9752_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(-81.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9752_)
				end

				if arg1.interrupted then
					__FUNC_95D8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1540.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95D8_)
			end

			if arg1.interrupted then
				__FUNC_9480_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9480_)
		end

		registerVal13:completeAnimation()
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.cryptokeyCount:setXRot(0.000000)
		registerVal2.cryptokeyCount:setYRot(0.000000)
		__FUNC_932B_(registerVal13, {})
		local function __FUNC_A0A0_(arg0, arg2)
			local function __FUNC_A23F_(arg0, arg2)
				local function __FUNC_A3C6_(arg0, arg2)
					if not arg2.interrupted then
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setPlaySoundDirect(true)
					arg0:playSound("uin_bm_keydrop_flip_01", arg1)
					if arg2.interrupted then
						registerVal2.clipFinished(arg0, arg2)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg2.interrupted then
					__FUNC_A3C6_(arg0, arg2)
					return 
				end
				arg0:beginAnimation("keyframe", 1299.000000, false, false, CoD.TweenType.Linear)
				arg0:playSound("0", arg1)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A3C6_)
			end

			if arg2.interrupted then
				__FUNC_A23F_(arg0, arg2)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:playSound("uin_bm_keydrop_flip_00", arg1)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_A23F_)
		end

		registerVal14:beginAnimation("keyframe", 1929.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setPlaySoundDirect(true)
		registerVal14:playSound("0", arg1)
		registerVal14:registerEventHandler("transition_complete_keyframe", __FUNC_A0A0_)
		registerVal2.nextClip = "backup"
	end

	registerVal17.backup = __FUNC_75DB_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_A5C1_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_A89F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, true, true, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Support:setAlpha(0.950000)
		__FUNC_A89F_(registerVal3, {})
		registerVal11:completeAnimation()
		registerVal2.cryptokeyFront:setAlpha(0.000000)
		registerVal2.cryptokeyFront:setYRot(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.cryptokeyBack:setAlpha(1.000000)
		registerVal2.cryptokeyBack:setYRot(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		local function __FUNC_AA51_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, true, true, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal15:completeAnimation()
		registerVal2.Bonus:setAlpha(0.950000)
		__FUNC_AA51_(registerVal15, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal17.DefaultClip = __FUNC_A5C1_
	local function __FUNC_AC05_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_AF8F_(arg0, arg1)
			local function __FUNC_B106_(arg0, arg1)
				local function __FUNC_B2A1_(arg0, arg1)
					local function __FUNC_B41A_(arg0, arg1)
						local function __FUNC_B570_(arg0, arg1)
							local function __FUNC_B6C8_(arg0, arg1)
								local function __FUNC_B842_(arg0, arg1)
									local function __FUNC_B9BA_(arg0, arg1)
										if not arg1.interrupted then
											arg0:beginAnimation("keyframe", 3599.000000, false, false, CoD.TweenType.Linear)
										end
										arg0:setAlpha(0.000000)
										arg0:setYRot(84.000000)
										if arg1.interrupted then
											registerVal2.clipFinished(arg0, arg1)
										else
											arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
										end
									end

									if arg1.interrupted then
										__FUNC_B9BA_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setYRot(84.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B9BA_)
								end

								if arg1.interrupted then
									__FUNC_B842_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
								arg0:setYRot(-94.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B842_)
							end

							if arg1.interrupted then
								__FUNC_B6C8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B6C8_)
						end

						if arg1.interrupted then
							__FUNC_B570_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B570_)
					end

					if arg1.interrupted then
						__FUNC_B41A_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B41A_)
				end

				if arg1.interrupted then
					__FUNC_B2A1_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1689.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:setYRot(84.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2A1_)
			end

			if arg1.interrupted then
				__FUNC_B106_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:setYRot(16.080000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B106_)
		end

		registerVal11:completeAnimation()
		registerVal2.cryptokeyFront:setAlpha(0.000000)
		registerVal2.cryptokeyFront:setYRot(0.000000)
		__FUNC_AF8F_(registerVal11, {})
		local function __FUNC_BB8F_(arg0, arg1)
			local function __FUNC_BCE4_(arg0, arg1)
				local function __FUNC_BE3C_(arg0, arg1)
					local function __FUNC_BFB6_(arg0, arg1)
						local function __FUNC_C151_(arg0, arg1)
							local function __FUNC_C2CA_(arg0, arg1)
								local function __FUNC_C442_(arg0, arg1)
									local function __FUNC_C5DD_(arg0, arg1)
										local function __FUNC_C756_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 3449.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											arg0:setYRot(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_C756_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
										arg0:setYRot(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C756_)
									end

									if arg1.interrupted then
										__FUNC_C5DD_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:setYRot(84.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5DD_)
								end

								if arg1.interrupted then
									__FUNC_C442_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setYRot(1.500000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C442_)
							end

							if arg1.interrupted then
								__FUNC_C2CA_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1269.000000, false, false, CoD.TweenType.Linear)
							arg0:setYRot(-81.000000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2CA_)
						end

						if arg1.interrupted then
							__FUNC_C151_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:setYRot(-83.980000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C151_)
					end

					if arg1.interrupted then
						__FUNC_BFB6_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(-84.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFB6_)
				end

				if arg1.interrupted then
					__FUNC_BE3C_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1540.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE3C_)
			end

			if arg1.interrupted then
				__FUNC_BCE4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BCE4_)
		end

		registerVal12:completeAnimation()
		registerVal2.cryptokeyBack:setAlpha(1.000000)
		registerVal2.cryptokeyBack:setYRot(0.000000)
		__FUNC_BB8F_(registerVal12, {})
		local function __FUNC_C92B_(arg0, arg1)
			local function __FUNC_CA80_(arg0, arg1)
				local function __FUNC_CBD8_(arg0, arg1)
					local function __FUNC_CD52_(arg0, arg1)
						local function __FUNC_CECB_(arg0, arg1)
							local function __FUNC_D020_(arg0, arg1)
								local function __FUNC_D19A_(arg0, arg1)
									local function __FUNC_D335_(arg0, arg1)
										local function __FUNC_D4AE_(arg0, arg1)
											if not arg1.interrupted then
												arg0:beginAnimation("keyframe", 3449.000000, false, false, CoD.TweenType.Linear)
											end
											arg0:setAlpha(1.000000)
											arg0:setXRot(0.000000)
											arg0:setYRot(0.000000)
											if arg1.interrupted then
												registerVal2.clipFinished(arg0, arg1)
											else
												arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
											end
										end

										if arg1.interrupted then
											__FUNC_D4AE_(arg0, arg1)
											return 
										end
										arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
										arg0:setYRot(0.000000)
										arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D4AE_)
									end

									if arg1.interrupted then
										__FUNC_D335_(arg0, arg1)
										return 
									end
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
									arg0:setAlpha(1.000000)
									arg0:setYRot(81.000000)
									arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D335_)
								end

								if arg1.interrupted then
									__FUNC_D19A_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setYRot(0.000000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D19A_)
							end

							if arg1.interrupted then
								__FUNC_D020_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 1269.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D020_)
						end

						if arg1.interrupted then
							__FUNC_CECB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CECB_)
					end

					if arg1.interrupted then
						__FUNC_CD52_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
					arg0:setYRot(-81.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CD52_)
				end

				if arg1.interrupted then
					__FUNC_CBD8_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 1540.000000, false, false, CoD.TweenType.Linear)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CBD8_)
			end

			if arg1.interrupted then
				__FUNC_CA80_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA80_)
		end

		registerVal13:completeAnimation()
		registerVal2.cryptokeyCount:setAlpha(1.000000)
		registerVal2.cryptokeyCount:setXRot(0.000000)
		registerVal2.cryptokeyCount:setYRot(0.000000)
		__FUNC_C92B_(registerVal13, {})
		local function __FUNC_D6A0_(arg0, arg2)
			local function __FUNC_D83F_(arg0, arg2)
				local function __FUNC_D9C6_(arg0, arg2)
					if not arg2.interrupted then
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setPlaySoundDirect(true)
					arg0:playSound("uin_bm_keydrop_flip_01", arg1)
					if arg2.interrupted then
						registerVal2.clipFinished(arg0, arg2)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg2.interrupted then
					__FUNC_D9C6_(arg0, arg2)
					return 
				end
				arg0:beginAnimation("keyframe", 1299.000000, false, false, CoD.TweenType.Linear)
				arg0:playSound("0", arg1)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D9C6_)
			end

			if arg2.interrupted then
				__FUNC_D83F_(arg0, arg2)
				return 
			end
			arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
			arg0:playSound("uin_bm_keydrop_flip_00", arg1)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D83F_)
		end

		registerVal14:beginAnimation("keyframe", 1929.000000, false, false, CoD.TweenType.Linear)
		registerVal14:setPlaySoundDirect(true)
		registerVal14:playSound("0", arg1)
		registerVal14:registerEventHandler("transition_complete_keyframe", __FUNC_D6A0_)
	end

	registerVal17.backup = __FUNC_AC05_
	registerVal16.Bonus = registerVal17
	registerVal2.clipsPerState = registerVal16
	local function __FUNC_DBC1_(arg0)
		arg0.BMWiresAllStatic:close()
		arg0.BMWires1:close()
		arg0.BMWires2:close()
		arg0.BMWiresGlow:close()
		arg0.cryptokeyCount:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DBC1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


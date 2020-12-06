-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.LootDecryptionImageRarityColor")
require("ui.uieditor.widgets.BlackMarket.LootDecryptionImage")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LootDecryptionFakeImageCycle = registerVal1
function CoD.LootDecryptionFakeImageCycle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LootDecryptionFakeImageCycle)
	registerVal2.id = "LootDecryptionFakeImageCycle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 255.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 348.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.LootDecryptionImageRarityColor.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -29.000000, 29.000000)
	registerVal3:setTopBottom(true, true, -23.250000, 27.250000)
	registerVal3:setAlpha(0.080000)
	local function __FUNC_1116_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, "fakeloot5", false, __FUNC_1116_)
	registerVal2:addElement(registerVal3)
	registerVal2.RarityColor5 = registerVal3
	local registerVal4 = CoD.LootDecryptionImageRarityColor.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -29.000000, 29.000000)
	registerVal4:setTopBottom(true, true, -23.250000, 27.250000)
	local function __FUNC_1166_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, "fakeloot1", false, __FUNC_1166_)
	registerVal2:addElement(registerVal4)
	registerVal2.RarityColor1 = registerVal4
	local registerVal5 = CoD.LootDecryptionImageRarityColor.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -29.000000, 29.000000)
	registerVal5:setTopBottom(true, true, -23.250000, 27.250000)
	registerVal5:setAlpha(0.080000)
	local function __FUNC_11B6_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, "fakeloot2", false, __FUNC_11B6_)
	registerVal2:addElement(registerVal5)
	registerVal2.RarityColor2 = registerVal5
	local registerVal6 = CoD.LootDecryptionImageRarityColor.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -29.000000, 29.000000)
	registerVal6:setTopBottom(true, true, -23.250000, 27.250000)
	registerVal6:setAlpha(0.080000)
	local function __FUNC_1206_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, "fakeloot3", false, __FUNC_1206_)
	registerVal2:addElement(registerVal6)
	registerVal2.RarityColor3 = registerVal6
	local registerVal7 = CoD.LootDecryptionImageRarityColor.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, -29.000000, 29.000000)
	registerVal7:setTopBottom(true, true, -23.250000, 27.250000)
	local function __FUNC_1256_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, "fakeloot4", false, __FUNC_1256_)
	registerVal2:addElement(registerVal7)
	registerVal2.RarityColor4 = registerVal7
	local registerVal8 = CoD.LootDecryptionImage.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -112.500000, 112.500000)
	registerVal8:setTopBottom(false, false, -76.000000, 80.000000)
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
	registerVal8:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_12A6_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "fakeloot5", false, __FUNC_12A6_)
	registerVal2:addElement(registerVal8)
	registerVal2.FakeImage5 = registerVal8
	local registerVal9 = CoD.LootDecryptionImage.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -112.500000, 112.500000)
	registerVal9:setTopBottom(false, false, -76.000000, 80.000000)
	registerVal9:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
	registerVal9:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_12F6_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, "fakeloot1", false, __FUNC_12F6_)
	registerVal2:addElement(registerVal9)
	registerVal2.FakeImage1 = registerVal9
	local registerVal10 = CoD.LootDecryptionImage.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -112.500000, 112.500000)
	registerVal10:setTopBottom(false, false, -76.000000, 80.000000)
	registerVal10:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
	registerVal10:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1346_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "fakeloot2", false, __FUNC_1346_)
	registerVal2:addElement(registerVal10)
	registerVal2.FakeImage2 = registerVal10
	local registerVal11 = CoD.LootDecryptionImage.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -112.500000, 112.500000)
	registerVal11:setTopBottom(false, false, -76.000000, 80.000000)
	registerVal11:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
	registerVal11:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1396_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:linkToElementModel(registerVal2, "fakeloot3", false, __FUNC_1396_)
	registerVal2:addElement(registerVal11)
	registerVal2.FakeImage3 = registerVal11
	local registerVal12 = CoD.LootDecryptionImage.new(arg0, arg1)
	registerVal12:setLeftRight(false, false, -112.500000, 112.500000)
	registerVal12:setTopBottom(false, false, -76.000000, 80.000000)
	registerVal12:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration"))
	registerVal12:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_13E6_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:linkToElementModel(registerVal2, "fakeloot4", false, __FUNC_13E6_)
	registerVal2:addElement(registerVal12)
	registerVal2.FakeImage4 = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_1436_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_184E_(arg0, arg1)
			local function __FUNC_19A4_(arg0, arg1)
				local function __FUNC_1B1F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1B1F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B1F_)
			end

			if arg1.interrupted then
				__FUNC_19A4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19A4_)
		end

		registerVal3:completeAnimation()
		registerVal2.RarityColor5:setAlpha(0.000000)
		__FUNC_184E_(registerVal3, {})
		local function __FUNC_1CD1_(arg0, arg1)
			local function __FUNC_1E28_(arg0, arg1)
				local function __FUNC_1FA3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_1FA3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FA3_)
			end

			if arg1.interrupted then
				__FUNC_1E28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E28_)
		end

		registerVal4:completeAnimation()
		registerVal2.RarityColor1:setAlpha(0.000000)
		__FUNC_1CD1_(registerVal4, {})
		local function __FUNC_2155_(arg0, arg1)
			local function __FUNC_22AC_(arg0, arg1)
				local function __FUNC_2427_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 149.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2427_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2427_)
			end

			if arg1.interrupted then
				__FUNC_22AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22AC_)
		end

		registerVal5:completeAnimation()
		registerVal2.RarityColor2:setAlpha(0.000000)
		__FUNC_2155_(registerVal5, {})
		local function __FUNC_25D9_(arg0, arg1)
			local function __FUNC_2730_(arg0, arg1)
				local function __FUNC_28AB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_28AB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28AB_)
			end

			if arg1.interrupted then
				__FUNC_2730_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2730_)
		end

		registerVal6:completeAnimation()
		registerVal2.RarityColor3:setAlpha(0.000000)
		__FUNC_25D9_(registerVal6, {})
		local function __FUNC_2A5D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.RarityColor4:setAlpha(1.000000)
		__FUNC_2A5D_(registerVal7, {})
		local function __FUNC_2C11_(arg0, arg1)
			local function __FUNC_2D68_(arg0, arg1)
				local function __FUNC_2EE3_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 149.000000, true, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_2EE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EE3_)
			end

			if arg1.interrupted then
				__FUNC_2D68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 589.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D68_)
		end

		registerVal8:completeAnimation()
		registerVal2.FakeImage5:setAlpha(0.000000)
		__FUNC_2C11_(registerVal8, {})
		local function __FUNC_3095_(arg0, arg1)
			local function __FUNC_31EC_(arg0, arg1)
				local function __FUNC_3367_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 150.000000, true, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3367_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3367_)
			end

			if arg1.interrupted then
				__FUNC_31EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 439.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_31EC_)
		end

		registerVal9:completeAnimation()
		registerVal2.FakeImage1:setAlpha(0.000000)
		__FUNC_3095_(registerVal9, {})
		local function __FUNC_3519_(arg0, arg1)
			local function __FUNC_3670_(arg0, arg1)
				local function __FUNC_37EB_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 149.000000, true, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_37EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.750000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_37EB_)
			end

			if arg1.interrupted then
				__FUNC_3670_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3670_)
		end

		registerVal10:completeAnimation()
		registerVal2.FakeImage2:setAlpha(0.000000)
		__FUNC_3519_(registerVal10, {})
		local function __FUNC_399D_(arg0, arg1)
			local function __FUNC_3AF4_(arg0, arg1)
				local function __FUNC_3C6F_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 150.000000, true, false, CoD.TweenType.Linear)
					end
					arg0:setAlpha(0.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3C6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3C6F_)
			end

			if arg1.interrupted then
				__FUNC_3AF4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3AF4_)
		end

		registerVal11:completeAnimation()
		registerVal2.FakeImage3:setAlpha(0.000000)
		__FUNC_399D_(registerVal11, {})
		local function __FUNC_3E21_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, true, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.FakeImage4:setAlpha(1.000000)
		__FUNC_3E21_(registerVal12, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal14.DefaultClip = __FUNC_1436_
	local function __FUNC_3FD5_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal14.Looping = __FUNC_3FD5_
	registerVal13.DefaultState = registerVal14
	registerVal2.clipsPerState = registerVal13
	local function __FUNC_4036_(arg0)
		arg0.RarityColor5:close()
		arg0.RarityColor1:close()
		arg0.RarityColor2:close()
		arg0.RarityColor3:close()
		arg0.RarityColor4:close()
		arg0.FakeImage5:close()
		arg0.FakeImage1:close()
		arg0.FakeImage2:close()
		arg0.FakeImage3:close()
		arg0.FakeImage4:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4036_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


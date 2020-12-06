-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_HelpButton")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VehicleGround_HelpButtonContainer = registerVal1
function CoD.VehicleGround_HelpButtonContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.VehicleGround_HelpButtonContainer)
	registerVal2.id = "VehicleGround_HelpButtonContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 295.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 109.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 31.000000, 55.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3:setRGB(0.740000, 0.940000, 0.990000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_buttonarrow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.ArrowT = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal4:setTopBottom(true, false, 52.000000, 76.000000)
	registerVal4:setRGB(0.740000, 0.940000, 0.990000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_buttonarrow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.ArrowL = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 62.000000, 86.000000)
	registerVal5:setTopBottom(true, false, 52.000000, 76.000000)
	registerVal5:setRGB(0.740000, 0.940000, 0.990000)
	registerVal5:setAlpha(0.400000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_buttonarrow"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.ArrowR = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 11.000000, 75.000000)
	registerVal6:setTopBottom(true, false, 20.000000, 76.000000)
	registerVal6:setRGB(0.740000, 0.940000, 0.990000)
	registerVal6:setAlpha(0.400000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_buttonthin"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Hex = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 19.000000, 67.000000)
	registerVal7:setTopBottom(true, false, 55.000000, 79.000000)
	registerVal7:setRGB(0.740000, 0.940000, 0.990000)
	registerVal7:setAlpha(0.500000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_buttonbracketb"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.BracketB = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 19.000000, 67.000000)
	registerVal8:setTopBottom(true, false, 22.000000, 38.000000)
	registerVal8:setRGB(0.740000, 0.940000, 0.990000)
	registerVal8:setAlpha(0.500000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_buttonbrackett"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.BracketT = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 55.000000, 71.000000)
	registerVal9:setTopBottom(true, false, 93.000000, 109.000000)
	registerVal9:setRGB(0.740000, 0.940000, 0.990000)
	registerVal9:setAlpha(0.200000)
	registerVal9:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_buttonpixel"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Pixel2 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 17.000000, 33.000000)
	registerVal10:setTopBottom(true, false, 93.000000, 109.000000)
	registerVal10:setRGB(0.740000, 0.940000, 0.990000)
	registerVal10:setAlpha(0.200000)
	registerVal10:setImage(RegisterImage("uie_t7_cp_hud_vehicle_ground_buttonpixel"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Pixel1 = registerVal10
	local registerVal11 = CoD.VehicleGround_HelpButton.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 19.000000, 67.000000)
	registerVal11:setTopBottom(true, false, 25.000000, 73.000000)
	registerVal11:setAlpha(0.900000)
	registerVal11:setZoom(15.000000)
	registerVal11:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal11:setShaderVector(0.000000, 0.000000, 0.500000, 0.000000, 0.000000)
	registerVal11:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_13D5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.buttonText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "imageText", true, __FUNC_13D5_)
	registerVal2:addElement(registerVal11)
	registerVal2.HelpButtonShader = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 22.000000, 295.000000)
	registerVal12:setTopBottom(false, false, 24.500000, 40.500000)
	registerVal12:setAlpha(0.700000)
	registerVal12:setTTF("fonts/escom.ttf")
	registerVal12:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal12:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(2.000000, -2.000000, -2.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setLetterSpacing(3.000000)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_14AE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "text", true, __FUNC_14AE_)
	registerVal2:addElement(registerVal12)
	registerVal2.text = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_1566_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.ArrowT:setLeftRight(true, false, 31.000000, 55.000000)
		registerVal2.ArrowT:setTopBottom(true, false, 35.000000, 59.000000)
		registerVal2.ArrowT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ArrowL:setLeftRight(true, false, 30.000000, 54.000000)
		registerVal2.ArrowL:setTopBottom(true, false, 37.000000, 61.000000)
		registerVal2.ArrowL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ArrowR:setLeftRight(true, false, 30.000000, 54.000000)
		registerVal2.ArrowR:setTopBottom(true, false, 36.000000, 60.000000)
		registerVal2.ArrowR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Hex:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BracketB:setLeftRight(true, false, 19.000000, 67.000000)
		registerVal2.BracketB:setTopBottom(true, false, 37.000000, 61.000000)
		registerVal2.BracketB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BracketT:setLeftRight(true, false, 19.000000, 67.000000)
		registerVal2.BracketT:setTopBottom(true, false, 42.000000, 58.000000)
		registerVal2.BracketT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Pixel2:setLeftRight(true, false, 55.000000, 71.000000)
		registerVal2.Pixel2:setTopBottom(true, false, 62.000000, 78.000000)
		registerVal2.Pixel2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Pixel1:setLeftRight(true, false, 17.000000, 33.000000)
		registerVal2.Pixel1:setTopBottom(true, false, 62.000000, 78.000000)
		registerVal2.Pixel1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.HelpButtonShader:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1566_
	local function __FUNC_1C1A_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_2290_(arg0, arg1)
			local function __FUNC_23E8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 31.000000, 55.000000)
				arg0:setTopBottom(true, false, 0.000000, 24.000000)
				arg0:setAlpha(0.400000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_23E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23E8_)
		end

		registerVal3:completeAnimation()
		registerVal2.ArrowT:setLeftRight(true, false, 31.000000, 55.000000)
		registerVal2.ArrowT:setTopBottom(true, false, 35.000000, 59.000000)
		registerVal2.ArrowT:setAlpha(0.000000)
		__FUNC_2290_(registerVal3, {})
		local function __FUNC_260B_(arg0, arg1)
			local function __FUNC_2760_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 0.000000, 24.000000)
				arg0:setTopBottom(true, false, 52.000000, 76.000000)
				arg0:setAlpha(0.400000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2760_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2760_)
		end

		registerVal4:completeAnimation()
		registerVal2.ArrowL:setLeftRight(true, false, 30.000000, 54.000000)
		registerVal2.ArrowL:setTopBottom(true, false, 37.000000, 61.000000)
		registerVal2.ArrowL:setAlpha(0.000000)
		__FUNC_260B_(registerVal4, {})
		local function __FUNC_2983_(arg0, arg1)
			local function __FUNC_2AD8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 62.000000, 86.000000)
				arg0:setTopBottom(true, false, 52.000000, 76.000000)
				arg0:setAlpha(0.400000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2AD8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AD8_)
		end

		registerVal5:completeAnimation()
		registerVal2.ArrowR:setLeftRight(true, false, 30.000000, 54.000000)
		registerVal2.ArrowR:setTopBottom(true, false, 36.000000, 60.000000)
		registerVal2.ArrowR:setAlpha(0.000000)
		__FUNC_2983_(registerVal5, {})
		local function __FUNC_2CFB_(arg0, arg1)
			local function __FUNC_2E50_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
				end
				arg0:setAlpha(0.400000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2E50_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E50_)
		end

		registerVal6:completeAnimation()
		registerVal2.Hex:setAlpha(0.000000)
		__FUNC_2CFB_(registerVal6, {})
		local function __FUNC_3003_(arg0, arg1)
			local function __FUNC_3158_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 19.000000, 67.000000)
				arg0:setTopBottom(true, false, 55.000000, 79.000000)
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3158_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3158_)
		end

		registerVal7:completeAnimation()
		registerVal2.BracketB:setLeftRight(true, false, 19.000000, 67.000000)
		registerVal2.BracketB:setTopBottom(true, false, 37.000000, 61.000000)
		registerVal2.BracketB:setAlpha(0.000000)
		__FUNC_3003_(registerVal7, {})
		local function __FUNC_337B_(arg0, arg1)
			local function __FUNC_34D0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 19.000000, 67.000000)
				arg0:setTopBottom(true, false, 22.000000, 38.000000)
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_34D0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34D0_)
		end

		registerVal8:completeAnimation()
		registerVal2.BracketT:setLeftRight(true, false, 19.000000, 67.000000)
		registerVal2.BracketT:setTopBottom(true, false, 42.000000, 58.000000)
		registerVal2.BracketT:setAlpha(0.000000)
		__FUNC_337B_(registerVal8, {})
		local function __FUNC_36F3_(arg0, arg1)
			local function __FUNC_3848_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 55.000000, 71.000000)
				arg0:setTopBottom(true, false, 93.000000, 109.000000)
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3848_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3848_)
		end

		registerVal9:completeAnimation()
		registerVal2.Pixel2:setLeftRight(true, false, 55.000000, 71.000000)
		registerVal2.Pixel2:setTopBottom(true, false, 62.000000, 78.000000)
		registerVal2.Pixel2:setAlpha(0.000000)
		__FUNC_36F3_(registerVal9, {})
		local function __FUNC_3A6B_(arg0, arg1)
			local function __FUNC_3BC0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
				end
				arg0:setLeftRight(true, false, 17.000000, 33.000000)
				arg0:setTopBottom(true, false, 93.000000, 109.000000)
				arg0:setAlpha(0.200000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3BC0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BC0_)
		end

		registerVal10:completeAnimation()
		registerVal2.Pixel1:setLeftRight(true, false, 17.000000, 33.000000)
		registerVal2.Pixel1:setTopBottom(true, false, 62.000000, 78.000000)
		registerVal2.Pixel1:setAlpha(0.000000)
		__FUNC_3A6B_(registerVal10, {})
		local function __FUNC_3DE3_(arg0, arg1)
			local function __FUNC_3F38_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
				end
				arg0:setAlpha(0.900000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3F38_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3F38_)
		end

		registerVal11:completeAnimation()
		registerVal2.HelpButtonShader:setAlpha(0.000000)
		__FUNC_3DE3_(registerVal11, {})
		local function __FUNC_40EB_(arg0, arg1)
			local function __FUNC_4240_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 750.000000, false, true, CoD.TweenType.Back)
				end
				arg0:setAlpha(0.700000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_4240_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4240_)
		end

		registerVal12:completeAnimation()
		registerVal2.text:setAlpha(0.000000)
		__FUNC_40EB_(registerVal12, {})
	end

	registerVal14.Active = __FUNC_1C1A_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_43F3_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.ArrowT:setLeftRight(true, false, 31.000000, 55.000000)
		registerVal2.ArrowT:setTopBottom(true, false, 0.000000, 24.000000)
		registerVal2.ArrowT:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ArrowL:setLeftRight(true, false, 0.000000, 24.000000)
		registerVal2.ArrowL:setTopBottom(true, false, 52.000000, 76.000000)
		registerVal2.ArrowL:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ArrowR:setLeftRight(true, false, 62.000000, 86.000000)
		registerVal2.ArrowR:setTopBottom(true, false, 52.000000, 76.000000)
		registerVal2.ArrowR:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Hex:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BracketB:setLeftRight(true, false, 19.000000, 67.000000)
		registerVal2.BracketB:setTopBottom(true, false, 55.000000, 79.000000)
		registerVal2.BracketB:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BracketT:setLeftRight(true, false, 19.000000, 67.000000)
		registerVal2.BracketT:setTopBottom(true, false, 22.000000, 38.000000)
		registerVal2.BracketT:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Pixel2:setLeftRight(true, false, 55.000000, 71.000000)
		registerVal2.Pixel2:setTopBottom(true, false, 93.000000, 109.000000)
		registerVal2.Pixel2:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Pixel1:setLeftRight(true, false, 17.000000, 33.000000)
		registerVal2.Pixel1:setTopBottom(true, false, 93.000000, 109.000000)
		registerVal2.Pixel1:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.HelpButtonShader:setAlpha(0.900000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.text:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_43F3_
	local function __FUNC_4AB5_()
		registerVal2:setupElementClipCounter(10.000000)
		local function __FUNC_513B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 31.000000, 55.000000)
			arg0:setTopBottom(true, false, 35.000000, 59.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ArrowT:setLeftRight(true, false, 31.000000, 55.000000)
		registerVal2.ArrowT:setTopBottom(true, false, 0.000000, 24.000000)
		registerVal2.ArrowT:setAlpha(0.400000)
		__FUNC_513B_(registerVal3, {})
		local function __FUNC_535B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 30.000000, 54.000000)
			arg0:setTopBottom(true, false, 37.000000, 61.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.ArrowL:setLeftRight(true, false, 0.000000, 24.000000)
		registerVal2.ArrowL:setTopBottom(true, false, 52.000000, 76.000000)
		registerVal2.ArrowL:setAlpha(0.400000)
		__FUNC_535B_(registerVal4, {})
		local function __FUNC_557B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 30.000000, 54.000000)
			arg0:setTopBottom(true, false, 36.000000, 60.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.ArrowR:setLeftRight(true, false, 62.000000, 86.000000)
		registerVal2.ArrowR:setTopBottom(true, false, 52.000000, 76.000000)
		registerVal2.ArrowR:setAlpha(0.400000)
		__FUNC_557B_(registerVal5, {})
		local function __FUNC_579B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Hex:setAlpha(0.400000)
		__FUNC_579B_(registerVal6, {})
		local function __FUNC_594B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 19.000000, 67.000000)
			arg0:setTopBottom(true, false, 37.000000, 61.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.BracketB:setLeftRight(true, false, 19.000000, 67.000000)
		registerVal2.BracketB:setTopBottom(true, false, 55.000000, 79.000000)
		registerVal2.BracketB:setAlpha(0.500000)
		__FUNC_594B_(registerVal7, {})
		local function __FUNC_5B6B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 19.000000, 67.000000)
			arg0:setTopBottom(true, false, 42.000000, 58.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.BracketT:setLeftRight(true, false, 19.000000, 67.000000)
		registerVal2.BracketT:setTopBottom(true, false, 22.000000, 38.000000)
		registerVal2.BracketT:setAlpha(0.500000)
		__FUNC_5B6B_(registerVal8, {})
		local function __FUNC_5D8B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 55.000000, 71.000000)
			arg0:setTopBottom(true, false, 62.000000, 78.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.Pixel2:setLeftRight(true, false, 55.000000, 71.000000)
		registerVal2.Pixel2:setTopBottom(true, false, 93.000000, 109.000000)
		registerVal2.Pixel2:setAlpha(0.200000)
		__FUNC_5D8B_(registerVal9, {})
		local function __FUNC_5FAB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 17.000000, 33.000000)
			arg0:setTopBottom(true, false, 62.000000, 78.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Pixel1:setLeftRight(true, false, 17.000000, 33.000000)
		registerVal2.Pixel1:setTopBottom(true, false, 93.000000, 109.000000)
		registerVal2.Pixel1:setAlpha(0.200000)
		__FUNC_5FAB_(registerVal10, {})
		local function __FUNC_61CB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.HelpButtonShader:setAlpha(0.900000)
		__FUNC_61CB_(registerVal11, {})
		local function __FUNC_637B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 750.000000, true, true, CoD.TweenType.Back)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal12:completeAnimation()
		registerVal2.text:setAlpha(0.700000)
		__FUNC_637B_(registerVal12, {})
	end

	registerVal14.DefaultState = __FUNC_4AB5_
	registerVal13.Active = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Active"
	local function __FUNC_652B_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "text", "")
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_652B_
	registerVal15 = {registerVal16}
	registerVal2:mergeStateConditions(registerVal15)
	local function __FUNC_65AD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "text"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "text", true, __FUNC_65AD_)
	local function __FUNC_66C6_(arg0)
		arg0.HelpButtonShader:close()
		arg0.text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_66C6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ButtonIcon")
require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacter_HelpBubble_Button_LBRB = registerVal1
function CoD.ChooseCharacter_HelpBubble_Button_LBRB.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacter_HelpBubble_Button_LBRB)
	registerVal2.id = "ChooseCharacter_HelpBubble_Button_LBRB"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 155.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 72.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 149.130000, -150.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_buttontabidlefull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.041240, 0.190000, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(8.000000, 8.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FETabIdle0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 3.110000, 17.110000)
	registerVal5:setText(Engine.Localize("MENU_PRESS_CAPS"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setLetterSpacing(3.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.PressText = registerVal5
	local registerVal6 = CoD.ButtonIcon.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -49.750000, -9.750000)
	registerVal6:setTopBottom(true, false, 21.610000, 51.460000)
	local function __FUNC_1886_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.buttonImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "left_shoulder_button_image", __FUNC_1886_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Visible"
	local function __FUNC_1959_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal10.condition = __FUNC_1959_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.LBIcon = registerVal6
	local registerVal7 = CoD.ButtonIcon.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, 6.500000, 47.500000)
	registerVal7:setTopBottom(true, false, 21.610000, 51.460000)
	local function __FUNC_19A4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.buttonImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "right_shoulder_button_image", __FUNC_19A4_)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Visible"
	local function __FUNC_1A79_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal11.condition = __FUNC_1A79_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.RBIcon = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.130000)
	registerVal8:setTopBottom(true, false, 54.000000, 68.000000)
	registerVal8:setText(Engine.Localize("MENU_TO_BROWSE"))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal8:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setLetterSpacing(3.000000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.BrowseThemText = registerVal8
	registerVal9 = CoD.ButtonIcon.new(arg0, arg1)
	registerVal9:setLeftRight(false, false, -15.940000, 16.060000)
	registerVal9:setTopBottom(true, false, 20.000000, 52.000000)
	registerVal9:setAlpha(0.000000)
	local function __FUNC_1AC4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.buttonImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Controller", "left_stick_move_image", __FUNC_1AC4_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Visible"
	local function __FUNC_1B99_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_1B99_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.StickMove = registerVal9
	registerVal10 = CoD.Border.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, -1.000000, 0.130000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.TriangleBorder = registerVal10
	registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -26.000000, 2.000000)
	registerVal11:setTopBottom(false, false, 34.000000, 38.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image1 = registerVal11
	registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, -26.000000, 2.000000)
	registerVal12:setTopBottom(false, false, -38.000000, -34.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Image0 = registerVal12
	registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, false, -85.000000, -81.000000)
	registerVal13:setTopBottom(false, false, -36.000000, 36.000000)
	registerVal13:setAlpha(0.250000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.emblemline0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(false, false, 34.300000, 47.500000)
	registerVal14:setTopBottom(false, false, -4.500000, 4.500000)
	registerVal14:setZRot(90.000000)
	registerVal14:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal14:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(2.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.arrowUp = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, false, -48.700000, -35.500000)
	registerVal15:setTopBottom(false, false, -4.500000, 4.500000)
	registerVal15:setZRot(-90.000000)
	registerVal15:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal15:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(2.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal15:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.arrowUp0 = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_1BE4_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PressText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LBIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RBIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BrowseThemText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.StickMove:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TriangleBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.emblemline0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.arrowUp:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.arrowUp0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_1BE4_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_20F8_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PressText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_24E5_(arg0, arg1)
			local function __FUNC_265F_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_265F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.150000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_265F_)
		end

		registerVal6:completeAnimation()
		registerVal2.LBIcon:setAlpha(1.000000)
		__FUNC_24E5_(registerVal6, {})
		local function __FUNC_2811_(arg0, arg1)
			local function __FUNC_298B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 509.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.150000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_298B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 479.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_298B_)
		end

		registerVal7:completeAnimation()
		registerVal2.RBIcon:setAlpha(0.150000)
		__FUNC_2811_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BrowseThemText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.StickMove:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal14:completeAnimation()
		registerVal2.arrowUp:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.arrowUp0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal17.DefaultClip = __FUNC_20F8_
	registerVal16.LBRB = registerVal17
	registerVal17 = {}
	local function __FUNC_2B3D_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PressText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LBIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RBIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BrowseThemText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_300A_(arg0, arg1)
			local function __FUNC_3183_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3183_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.470000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3183_)
		end

		registerVal9:completeAnimation()
		registerVal2.StickMove:setAlpha(1.000000)
		__FUNC_300A_(registerVal9, {})
		local function __FUNC_3335_(arg0, arg1)
			local function __FUNC_34E7_(arg0, arg1)
				local function __FUNC_3674_(arg0, arg1)
					if not arg1.interrupted then
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					end
					arg0:setLeftRight(false, false, 34.300000, 47.500000)
					arg0:setTopBottom(false, false, -4.500000, 4.500000)
					arg0:setAlpha(1.000000)
					if arg1.interrupted then
						registerVal2.clipFinished(arg0, arg1)
					else
						arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
					end
				end

				if arg1.interrupted then
					__FUNC_3674_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, 34.300000, 47.500000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3674_)
			end

			if arg1.interrupted then
				__FUNC_34E7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, 45.300000, 58.500000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34E7_)
		end

		registerVal14:completeAnimation()
		registerVal2.arrowUp:setLeftRight(false, false, 34.300000, 47.500000)
		registerVal2.arrowUp:setTopBottom(false, false, -4.500000, 4.500000)
		registerVal2.arrowUp:setAlpha(1.000000)
		__FUNC_3335_(registerVal14, {})
		local function __FUNC_3899_(arg0, arg1)
			local function __FUNC_3A28_(arg0, arg1)
				local function __FUNC_3BDB_(arg0, arg1)
					local function __FUNC_3D8B_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(false, false, -48.700000, -35.500000)
						arg0:setTopBottom(false, false, -4.500000, 4.500000)
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_3D8B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
					arg0:setLeftRight(false, false, -61.700000, -48.500000)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D8B_)
				end

				if arg1.interrupted then
					__FUNC_3BDB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setLeftRight(false, false, -47.700000, -34.500000)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3BDB_)
			end

			if arg1.interrupted then
				__FUNC_3A28_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 490.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(false, false, -47.720000, -34.520000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A28_)
		end

		registerVal15:completeAnimation()
		registerVal2.arrowUp0:setLeftRight(false, false, -48.700000, -35.500000)
		registerVal2.arrowUp0:setTopBottom(false, false, -4.500000, 4.500000)
		registerVal2.arrowUp0:setAlpha(0.000000)
		__FUNC_3899_(registerVal15, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal17.DefaultClip = __FUNC_2B3D_
	registerVal16.Stick = registerVal17
	registerVal17 = {}
	local function __FUNC_3FAD_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.Background:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FETabIdle0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PressText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LBIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.RBIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BrowseThemText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.StickMove:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal17.DefaultClip = __FUNC_3FAD_
	registerVal16.StickCopy = registerVal17
	registerVal2.clipsPerState = registerVal16
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "LBRB"
	local function __FUNC_42C2_(arg0, arg2, arg3)
		return FirstTimeSetup_Overview(arg1)
	end

	registerVal19.condition = __FUNC_42C2_
	local registerVal20 = {}
	registerVal20.stateName = "Stick"
	local function __FUNC_431D_(arg0, arg2, arg3)
		return FirstTimeSetup_ChangedCharacter(arg1)
	end

	registerVal20.condition = __FUNC_431D_
	local registerVal21 = {}
	registerVal21.stateName = "StickCopy"
	local function __FUNC_4381_(arg0, arg2, arg3)
		return FirstTimeSetup_Complete(arg1)
	end

	registerVal21.condition = __FUNC_4381_
	registerVal18 = {registerVal19, registerVal20, registerVal21}
	registerVal2:mergeStateConditions(registerVal18)
	registerVal19 = Engine.GetModelForController(arg1)
	registerVal18 = Engine.GetModel(registerVal19, "firstTimeFlowState")
	local function __FUNC_43DD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "firstTimeFlowState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal18, __FUNC_43DD_)
	local function __FUNC_4504_(arg0)
		arg0.LBIcon:close()
		arg0.RBIcon:close()
		arg0.StickMove:close()
		arg0.TriangleBorder:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_4504_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


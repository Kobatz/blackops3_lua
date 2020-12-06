-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_HelpItemsLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.List1Button_Playlist = registerVal1
function CoD.List1Button_Playlist.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.List1Button_Playlist)
	registerVal2.id = "List1Button_Playlist"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -14.000000, 14.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanelShaderContainer = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZoom(10.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_buttonidlefull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.028169, 0.250000, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(8.000000, 8.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FEButtonIdle = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -8.000000, 12.000000)
	registerVal5:setTopBottom(false, false, -20.000000, 20.000000)
	registerVal5:setZoom(10.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_buttonfocusfull"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal5:setShaderVector(0.000000, 0.166667, 0.500000, 0.380000, 0.200000)
	registerVal5:setupNineSliceShader(50.000000, 20.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FEButtonFocus = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 45.000000, 105.990000)
	registerVal6:setTopBottom(true, false, -115.500000, 147.500000)
	registerVal6:setRGB(0.880000, 1.000000, 0.040000)
	registerVal6:setAlpha(0.450000)
	registerVal6:setZRot(90.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Glow = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 12.000000, 284.000000)
	registerVal7:setTopBottom(true, false, 6.920000, 26.920000)
	registerVal7:setRGB(0.790000, 0.790000, 0.790000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(10.000000)
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setLetterSpacing(1.000000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_170D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal2, "buttonText", true, __FUNC_170D_)
	local function __FUNC_17A0_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal7, "setText", __FUNC_17A0_)
	registerVal2:addElement(registerVal7)
	registerVal2.btnDisplayText = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 12.000000, 284.000000)
	registerVal8:setTopBottom(true, false, 6.920000, 26.920000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setZoom(10.000000)
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal8:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setLetterSpacing(1.000000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1801_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "buttonText", true, __FUNC_1801_)
	local function __FUNC_1894_(arg0, arg1)
		TrimLabelIfLanguageReversed(registerVal2, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal8, "setText", __FUNC_1894_)
	registerVal2:addElement(registerVal8)
	registerVal2.btnDisplayTextStroke = registerVal8
	local registerVal9 = CoD.FE_HelpItemsLabel.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, 0.000000, 20.000000)
	registerVal9:setTopBottom(false, false, -10.000000, 10.000000)
	local function __FUNC_18F5_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_18F5_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Playlist"
	local function __FUNC_1946_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "hasBonusIcon", true)
	end

	registerVal13.condition = __FUNC_1946_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_19C3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "disabled", true, __FUNC_19C3_)
	local function __FUNC_1ADE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hasBonusIcon"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "hasBonusIcon", true, __FUNC_1ADE_)
	registerVal2:addElement(registerVal9)
	registerVal2.FEHelpItemsLabel0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -20.000000, -12.000000)
	registerVal10:setTopBottom(true, false, 12.000000, 20.000000)
	registerVal10:setZoom(10.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_buttonfocusarrow"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Arrow = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -48.000000, 69.000000)
	registerVal11:setTopBottom(true, false, -24.290000, 58.120000)
	registerVal11:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Glow2 = registerVal11
	registerVal12 = {}
	registerVal13 = {}
	local function __FUNC_1BFE_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(1.000000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -1.000000, 2.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(1.000000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1BFE_
	local function __FUNC_2145_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 12.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(1.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(10.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, -20.000000, -12.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Focus = __FUNC_2145_
	local function __FUNC_268D_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_2B4A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.500000, 0.500000, 0.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		__FUNC_2B4A_(registerVal3, {})
		local function __FUNC_2D48_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		__FUNC_2D48_(registerVal4, {})
		local function __FUNC_2F1F_(arg0, arg1)
			local function __FUNC_30B9_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_30B9_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:setZoom(5.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30B9_)
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setAlpha(1.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		__FUNC_2F1F_(registerVal5, {})
		local function __FUNC_328A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.450000)
		__FUNC_328A_(registerVal6, {})
		local function __FUNC_343D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(10.000000)
		__FUNC_343D_(registerVal7, {})
		local function __FUNC_3613_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		__FUNC_3613_(registerVal8, {})
		local function __FUNC_37E2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 3.000000, 11.000000)
			arg0:setTopBottom(true, false, 12.000000, 20.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, -20.000000, -12.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(1.000000)
		__FUNC_37E2_(registerVal10, {})
		local function __FUNC_3A05_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		__FUNC_3A05_(registerVal11, {})
	end

	registerVal13.LoseFocus = __FUNC_268D_
	local function __FUNC_3BB9_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_40CB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.500000, 0.500000, 0.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		__FUNC_40CB_(registerVal3, {})
		local function __FUNC_42C3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(1.000000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		__FUNC_42C3_(registerVal4, {})
		local function __FUNC_4497_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -8.000000, 12.000000)
			arg0:setTopBottom(false, false, -20.000000, 20.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 12.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		__FUNC_4497_(registerVal5, {})
		local function __FUNC_46DB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.450000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_46DB_(registerVal6, {})
		local function __FUNC_488D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(1.000000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		__FUNC_488D_(registerVal7, {})
		local function __FUNC_4A63_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		__FUNC_4A63_(registerVal8, {})
		local function __FUNC_4C37_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -20.000000, -12.000000)
			arg0:setTopBottom(true, false, 12.000000, 20.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		__FUNC_4C37_(registerVal10, {})
		local function __FUNC_4E59_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		__FUNC_4E59_(registerVal11, {})
	end

	registerVal13.GainFocus = __FUNC_3BB9_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_500D_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.100000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -1.000000, 2.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.500000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_500D_
	local function __FUNC_5555_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.400000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 12.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.600000)
		registerVal2.btnDisplayText:setZoom(10.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, -20.000000, -12.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Focus = __FUNC_5555_
	local function __FUNC_5A9D_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_5FAF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.500000, 0.500000, 0.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		__FUNC_5FAF_(registerVal3, {})
		local function __FUNC_61AC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.400000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		__FUNC_61AC_(registerVal4, {})
		local function __FUNC_637E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, -1.000000, 2.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 12.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		__FUNC_637E_(registerVal5, {})
		local function __FUNC_65B4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_65B4_(registerVal6, {})
		local function __FUNC_6769_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.600000)
		registerVal2.btnDisplayText:setZoom(10.000000)
		__FUNC_6769_(registerVal7, {})
		local function __FUNC_693F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		__FUNC_693F_(registerVal8, {})
		local function __FUNC_6B0E_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 3.000000, 11.000000)
			arg0:setTopBottom(true, false, 12.000000, 20.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, -20.000000, -12.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		__FUNC_6B0E_(registerVal10, {})
		local function __FUNC_6D31_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		__FUNC_6D31_(registerVal11, {})
	end

	registerVal13.LoseFocus = __FUNC_5A9D_
	local function __FUNC_6EE5_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_73F2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.500000, 0.500000, 0.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		__FUNC_73F2_(registerVal3, {})
		local function __FUNC_75EB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		__FUNC_75EB_(registerVal4, {})
		local function __FUNC_77BF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -8.000000, 12.000000)
			arg0:setTopBottom(false, false, -20.000000, 20.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 12.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		__FUNC_77BF_(registerVal5, {})
		local function __FUNC_7A03_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_7A03_(registerVal6, {})
		local function __FUNC_7BB5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.600000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.500000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		__FUNC_7BB5_(registerVal7, {})
		local function __FUNC_7D8B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		__FUNC_7D8B_(registerVal8, {})
		local function __FUNC_7F5F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -20.000000, -12.000000)
			arg0:setTopBottom(true, false, 12.000000, 20.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		__FUNC_7F5F_(registerVal10, {})
		local function __FUNC_8181_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		__FUNC_8181_(registerVal11, {})
	end

	registerVal13.GainFocus = __FUNC_6EE5_
	registerVal12.Disabled = registerVal13
	registerVal13 = {}
	local function __FUNC_8335_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(1.000000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -1.000000, 2.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(1.000000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_8335_
	local function __FUNC_887D_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 12.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(1.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(10.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, -20.000000, -12.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Focus = __FUNC_887D_
	local function __FUNC_8DC5_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_9282_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.500000, 0.500000, 0.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		__FUNC_9282_(registerVal3, {})
		local function __FUNC_9480_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		__FUNC_9480_(registerVal4, {})
		local function __FUNC_9657_(arg0, arg1)
			local function __FUNC_97F1_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_97F1_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.000000)
			arg0:setZoom(5.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_97F1_)
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setAlpha(1.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		__FUNC_9657_(registerVal5, {})
		local function __FUNC_99C2_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 519.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.450000)
		__FUNC_99C2_(registerVal6, {})
		local function __FUNC_9B75_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(10.000000)
		__FUNC_9B75_(registerVal7, {})
		local function __FUNC_9D4B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		__FUNC_9D4B_(registerVal8, {})
		local function __FUNC_9F1A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 3.000000, 11.000000)
			arg0:setTopBottom(true, false, 12.000000, 20.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, -20.000000, -12.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(1.000000)
		__FUNC_9F1A_(registerVal10, {})
		local function __FUNC_A13D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		__FUNC_A13D_(registerVal11, {})
	end

	registerVal13.LoseFocus = __FUNC_8DC5_
	local function __FUNC_A2F1_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_A803_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.500000, 0.500000, 0.500000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		__FUNC_A803_(registerVal3, {})
		local function __FUNC_A9FB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(1.000000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		__FUNC_A9FB_(registerVal4, {})
		local function __FUNC_ABCF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -8.000000, 12.000000)
			arg0:setTopBottom(false, false, -20.000000, 20.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 12.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		__FUNC_ABCF_(registerVal5, {})
		local function __FUNC_AE13_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.450000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_AE13_(registerVal6, {})
		local function __FUNC_AFC5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(1.000000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		__FUNC_AFC5_(registerVal7, {})
		local function __FUNC_B19B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		__FUNC_B19B_(registerVal8, {})
		local function __FUNC_B36F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -20.000000, -12.000000)
			arg0:setTopBottom(true, false, 12.000000, 20.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		__FUNC_B36F_(registerVal10, {})
		local function __FUNC_B591_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		__FUNC_B591_(registerVal11, {})
	end

	registerVal13.GainFocus = __FUNC_A2F1_
	registerVal12.Purchasable = registerVal13
	registerVal13 = {}
	local function __FUNC_B745_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -1.000000, 2.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.500000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_B745_
	local function __FUNC_BC88_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.400000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 12.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.600000)
		registerVal2.btnDisplayText:setZoom(10.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, -20.000000, -12.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Focus = __FUNC_BC88_
	registerVal12.Disabled_NoListFocus = registerVal13
	registerVal13 = {}
	local function __FUNC_C1D1_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.100000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -1.000000, 2.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.500000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_C1D1_
	local function __FUNC_C719_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 12.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(0.250000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(10.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, -20.000000, -12.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Active = __FUNC_C719_
	registerVal12.NoListFocus = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Disabled"
	local function __FUNC_CC66_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal15.condition = __FUNC_CC66_
	local registerVal16 = {}
	registerVal16.stateName = "Purchasable"
	local function __FUNC_CCB8_(arg0, arg1, arg2)
		return PropertyIsTrue(registerVal2, "purchasable")
	end

	registerVal16.condition = __FUNC_CCB8_
	local registerVal17 = {}
	registerVal17.stateName = "Disabled_NoListFocus"
	local function __FUNC_CD25_(arg0, arg1, arg2)
		return true
	end

	registerVal17.condition = __FUNC_CD25_
	local registerVal18 = {}
	registerVal18.stateName = "NoListFocus"
	local function __FUNC_CD58_(arg0, arg1, arg2)
		return true
	end

	registerVal18.condition = __FUNC_CD58_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_CD8C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_CD8C_)
	local function __FUNC_CEAA_(arg0)
		arg0.FEButtonPanelShaderContainer:close()
		arg0.FEHelpItemsLabel0:close()
		arg0.btnDisplayText:close()
		arg0.btnDisplayTextStroke:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CEAA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


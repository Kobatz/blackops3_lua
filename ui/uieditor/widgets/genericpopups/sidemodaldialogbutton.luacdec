-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonIdle")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonFocus")
require("ui.uieditor.widgets.Lobby.Common.FE_HelpItemsLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SideModalDialogButton = registerVal1
function CoD.SideModalDialogButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SideModalDialogButton)
	registerVal2.id = "SideModalDialogButton"
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
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanelShaderContainer = registerVal3
	local registerVal4 = CoD.FE_ButtonIdle.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -14.000000, 14.000000)
	registerVal4:setAlpha(0.800000)
	registerVal4:setZoom(10.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FEButtonIdle = registerVal4
	local registerVal5 = CoD.FE_ButtonFocus.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -14.000000, 14.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZoom(10.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FEButtonFocus = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 46.000000, 106.990000)
	registerVal6:setTopBottom(true, false, -115.500000, 147.500000)
	registerVal6:setRGB(0.880000, 1.000000, 0.040000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZRot(90.000000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Glow = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 36.000000, 284.000000)
	registerVal7:setTopBottom(true, false, 6.920000, 26.920000)
	registerVal7:setRGB(0.790000, 0.790000, 0.790000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(10.000000)
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setLetterSpacing(1.000000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1470_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 5.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal7, "setText", __FUNC_1470_)
	registerVal2:addElement(registerVal7)
	registerVal2.btnDisplayText = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 36.000000, 232.000000)
	registerVal8:setTopBottom(true, false, 6.920000, 26.920000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.700000)
	registerVal8:setZoom(10.000000)
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal8:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setLetterSpacing(1.000000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.btnDisplayTextStroke = registerVal8
	local registerVal9 = CoD.FE_HelpItemsLabel.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, 0.000000, 20.000000)
	registerVal9:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FEHelpItemsLabel0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -20.000000, -12.000000)
	registerVal10:setTopBottom(true, false, 12.000000, 20.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(10.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_buttonfocusarrow"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Arrow = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -50.500000, 66.500000)
	registerVal11:setTopBottom(true, false, -24.290000, 58.120000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Glow2 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 5.210000, 31.210000)
	registerVal12:setTopBottom(true, false, 5.500000, 28.500000)
	registerVal2:addElement(registerVal12)
	registerVal2.Image0 = registerVal12
	local function __FUNC_14D1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.btnDisplayText:linkToElementModel(registerVal2, "displayText", true, __FUNC_14D1_)
	local function __FUNC_158A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.btnDisplayTextStroke:linkToElementModel(registerVal2, "displayText", true, __FUNC_158A_)
	local function __FUNC_1642_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.Image0:linkToElementModel(registerVal2, "displayImage", true, __FUNC_1642_)
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_16F4_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(1.000000)
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
		local function __FUNC_1C9D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 36.000000, 284.000000)
			arg0:setTopBottom(true, false, 6.920000, 26.920000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setLeftRight(true, false, 36.000000, 284.000000)
		registerVal2.btnDisplayText:setTopBottom(true, false, 6.920000, 26.920000)
		registerVal2.btnDisplayText:setAlpha(1.000000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		__FUNC_1C9D_(registerVal7, {})
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

	registerVal14.DefaultClip = __FUNC_16F4_
	local function __FUNC_1EE3_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(1.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -14.000000, 14.000000)
		registerVal2.FEButtonFocus:setAlpha(1.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setLeftRight(true, false, 36.000000, 306.000000)
		registerVal2.btnDisplayText:setTopBottom(true, false, 6.920000, 26.920000)
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(-305.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setLeftRight(true, false, 36.000000, 230.000000)
		registerVal2.btnDisplayTextStroke:setTopBottom(true, false, 6.920000, 26.920000)
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

	registerVal14.Focus = __FUNC_1EE3_
	local function __FUNC_24EC_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_2AB8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.500000, 0.500000, 0.500000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(1.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		__FUNC_2AB8_(registerVal3, {})
		local function __FUNC_2CB8_(arg0, arg1)
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
		__FUNC_2CB8_(registerVal4, {})
		local function __FUNC_2E8F_(arg0, arg1)
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
		registerVal2.FEButtonFocus:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -14.000000, 14.000000)
		registerVal2.FEButtonFocus:setAlpha(1.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		__FUNC_2E8F_(registerVal5, {})
		local function __FUNC_30C4_(arg0, arg1)
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
		__FUNC_30C4_(registerVal6, {})
		local function __FUNC_3279_(arg0, arg1)
			local function __FUNC_3485_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 319.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 36.000000, 306.000000)
				arg0:setTopBottom(true, false, 6.500000, 26.500000)
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3485_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 36.000000, 306.130000)
			arg0:setTopBottom(true, false, 6.760000, 26.760000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3485_)
		end

		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setLeftRight(true, false, 36.000000, 306.210000)
		registerVal2.btnDisplayText:setTopBottom(true, false, 6.920000, 26.920000)
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(10.000000)
		__FUNC_3279_(registerVal7, {})
		local function __FUNC_36CB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 36.000000, 306.210000)
			arg0:setTopBottom(true, false, 6.920000, 26.920000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setLeftRight(true, false, 36.000000, 306.210000)
		registerVal2.btnDisplayTextStroke:setTopBottom(true, false, 6.920000, 26.920000)
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		__FUNC_36CB_(registerVal8, {})
		local function __FUNC_390A_(arg0, arg1)
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
		__FUNC_390A_(registerVal10, {})
		local function __FUNC_3B2D_(arg0, arg1)
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
		__FUNC_3B2D_(registerVal11, {})
	end

	registerVal14.LoseFocus = __FUNC_24EC_
	local function __FUNC_3CE1_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_4257_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.500000, 0.500000, 0.500000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(1.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		__FUNC_4257_(registerVal3, {})
		local function __FUNC_4454_(arg0, arg1)
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
		__FUNC_4454_(registerVal4, {})
		local function __FUNC_462B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, -14.000000, 14.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -14.000000, 14.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		__FUNC_462B_(registerVal5, {})
		local function __FUNC_486A_(arg0, arg1)
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
		__FUNC_486A_(registerVal6, {})
		local function __FUNC_4A1D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 36.000000, 308.000000)
			arg0:setTopBottom(true, false, 6.920000, 26.920000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setLeftRight(true, false, 36.000000, 308.000000)
		registerVal2.btnDisplayText:setTopBottom(true, false, 6.920000, 26.920000)
		registerVal2.btnDisplayText:setAlpha(1.000000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		__FUNC_4A1D_(registerVal7, {})
		local function __FUNC_4C63_(arg0, arg1)
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
		__FUNC_4C63_(registerVal8, {})
		local function __FUNC_4E37_(arg0, arg1)
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
		__FUNC_4E37_(registerVal10, {})
		local function __FUNC_5059_(arg0, arg1)
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
		__FUNC_5059_(registerVal11, {})
	end

	registerVal14.GainFocus = __FUNC_3CE1_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_520D_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.500000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.300000)
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
		registerVal2.btnDisplayText:setAlpha(0.100000)
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

	registerVal14.DefaultClip = __FUNC_520D_
	local function __FUNC_575A_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(1.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.800000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -14.000000, 14.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(10.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.700000)
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

	registerVal14.Focus = __FUNC_575A_
	local function __FUNC_5CAB_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_61C5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.500000, 0.500000, 0.500000)
			arg0:setAlpha(0.500000)
			arg0:setZoom(-10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(1.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		__FUNC_61C5_(registerVal3, {})
		local function __FUNC_63BF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.300000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.800000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		__FUNC_63BF_(registerVal4, {})
		local function __FUNC_6593_(arg0, arg1)
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
		registerVal2.FEButtonFocus:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -14.000000, 14.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		__FUNC_6593_(registerVal5, {})
		local function __FUNC_67C8_(arg0, arg1)
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
		__FUNC_67C8_(registerVal6, {})
		local function __FUNC_697D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.100000)
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
		__FUNC_697D_(registerVal7, {})
		local function __FUNC_6B53_(arg0, arg1)
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
		registerVal2.btnDisplayTextStroke:setAlpha(0.700000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		__FUNC_6B53_(registerVal8, {})
		local function __FUNC_6D22_(arg0, arg1)
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
		__FUNC_6D22_(registerVal10, {})
		local function __FUNC_6F45_(arg0, arg1)
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
		__FUNC_6F45_(registerVal11, {})
	end

	registerVal14.LoseFocus = __FUNC_5CAB_
	local function __FUNC_70F9_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_7610_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.500000, 0.500000, 0.500000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.500000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		__FUNC_7610_(registerVal3, {})
		local function __FUNC_7810_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.300000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		__FUNC_7810_(registerVal4, {})
		local function __FUNC_79E7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, false, -14.000000, 14.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -14.000000, 14.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		__FUNC_79E7_(registerVal5, {})
		local function __FUNC_7C21_(arg0, arg1)
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
		__FUNC_7C21_(registerVal6, {})
		local function __FUNC_7DD5_(arg0, arg1)
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
		registerVal2.btnDisplayText:setAlpha(0.100000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		__FUNC_7DD5_(registerVal7, {})
		local function __FUNC_7FAB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.700000)
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
		__FUNC_7FAB_(registerVal8, {})
		local function __FUNC_817F_(arg0, arg1)
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
		__FUNC_817F_(registerVal10, {})
		local function __FUNC_83A1_(arg0, arg1)
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
		__FUNC_83A1_(registerVal11, {})
	end

	registerVal14.GainFocus = __FUNC_70F9_
	registerVal13.Disabled = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Disabled"
	local function __FUNC_8555_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal16.condition = __FUNC_8555_
	registerVal15 = {registerVal16}
	registerVal2:mergeStateConditions(registerVal15)
	local function __FUNC_85A8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_85A8_)
	local function __FUNC_86C6_(arg0)
		arg0.FEButtonPanelShaderContainer:close()
		arg0.FEButtonIdle:close()
		arg0.FEButtonFocus:close()
		arg0.FEHelpItemsLabel0:close()
		arg0.btnDisplayText:close()
		arg0.btnDisplayTextStroke:close()
		arg0.Image0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_86C6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainerHighQuality")
local function __FUNC_234_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ServerBrowserButton = registerVal2
local function __FUNC_284_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ServerBrowserButton)
	registerVal2.id = "ServerBrowserButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanelShaderContainerHighQuality.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -14.000000, 14.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanelShaderContainer = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -14.200000, 14.200000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal4:setShaderVector(0.000000, 0.010000, 0.030000, 0.010000, 0.025000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackOverlay = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal5:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal5:setAlpha(0.800000)
	registerVal5:setZoom(10.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_buttonidlefull"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal5:setShaderVector(0.000000, 0.041667, 0.250000, 0.000000, 0.000000)
	registerVal5:setupNineSliceShader(8.000000, 8.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FEButtonIdle = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, -8.000000, 8.000000)
	registerVal6:setTopBottom(false, false, -20.000000, 20.000000)
	registerVal6:setZoom(10.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_buttonfocusfull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.291262, 0.500000, 0.380000, 0.200000)
	registerVal6:setupNineSliceShader(60.000000, 20.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FEButtonFocus = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, -40.500000, 56.500000)
	registerVal7:setTopBottom(true, true, -25.290000, 22.120000)
	registerVal7:setRGB(0.880000, 1.000000, 0.040000)
	registerVal7:setAlpha(0.450000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Glow = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 12.000000, 284.000000)
	registerVal8:setTopBottom(true, false, 6.920000, 26.920000)
	registerVal8:setRGB(0.790000, 0.790000, 0.790000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(10.000000)
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setLetterSpacing(1.000000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_187E_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal8, "setText", __FUNC_187E_)
	registerVal2:addElement(registerVal8)
	registerVal2.btnDisplayText = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 12.000000, 284.000000)
	registerVal9:setTopBottom(true, false, 6.920000, 26.920000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(0.700000)
	registerVal9:setZoom(10.000000)
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal9:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setLetterSpacing(1.000000)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_18DD_(arg0, arg1)
		TrimLabelIfLanguageReversed(registerVal2, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal9, "setText", __FUNC_18DD_)
	registerVal2:addElement(registerVal9)
	registerVal2.btnDisplayTextStroke = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, -20.000000, -12.000000)
	registerVal10:setTopBottom(true, false, 12.000000, 20.000000)
	registerVal10:setZoom(10.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_buttonfocusarrow"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Arrow = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, true, -29.000000, 49.000000)
	registerVal11:setTopBottom(true, false, -15.290000, 46.120000)
	registerVal11:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Glow2 = registerVal11
	local function __FUNC_193D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.btnDisplayText:linkToElementModel(registerVal2, "displayText", true, __FUNC_193D_)
	local function __FUNC_19F6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.btnDisplayTextStroke:linkToElementModel(registerVal2, "displayText", true, __FUNC_19F6_)
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_1AAE_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(1.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(1.000000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -7.000000, 8.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(1.000000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1AAE_
	local function __FUNC_2059_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(1.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(-305.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, -20.000000, -12.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Over = __FUNC_2059_
	local function __FUNC_260A_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_2B7B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_2B7B_(registerVal3, {})
		local function __FUNC_2D78_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.400000)
		__FUNC_2D78_(registerVal4, {})
		local function __FUNC_2F2D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		__FUNC_2F2D_(registerVal5, {})
		local function __FUNC_3103_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -8.000000, 8.000000)
			arg0:setTopBottom(false, false, -20.000000, 20.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(1.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		__FUNC_3103_(registerVal6, {})
		local function __FUNC_3342_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.450000)
		__FUNC_3342_(registerVal7, {})
		local function __FUNC_34F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(10.000000)
		__FUNC_34F5_(registerVal8, {})
		local function __FUNC_36CB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		__FUNC_36CB_(registerVal9, {})
		local function __FUNC_389A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_389A_(registerVal10, {})
		local function __FUNC_3ABD_(arg0, arg1)
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
		registerVal2.Glow2:setAlpha(1.000000)
		__FUNC_3ABD_(registerVal11, {})
	end

	registerVal13.LoseOver = __FUNC_260A_
	local function __FUNC_3C71_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_41E3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.500000, 0.500000, 0.500000)
			arg0:setAlpha(0.800000)
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
		__FUNC_41E3_(registerVal3, {})
		local function __FUNC_43E0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.400000)
		__FUNC_43E0_(registerVal4, {})
		local function __FUNC_4595_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(1.000000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		__FUNC_4595_(registerVal5, {})
		local function __FUNC_476B_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -8.000000, 8.000000)
			arg0:setTopBottom(false, false, -20.000000, 20.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		__FUNC_476B_(registerVal6, {})
		local function __FUNC_49AF_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_49AF_(registerVal7, {})
		local function __FUNC_4B61_(arg0, arg1)
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
		registerVal2.btnDisplayText:setAlpha(1.000000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		__FUNC_4B61_(registerVal8, {})
		local function __FUNC_4D37_(arg0, arg1)
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

		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		__FUNC_4D37_(registerVal9, {})
		local function __FUNC_4F0B_(arg0, arg1)
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
		__FUNC_4F0B_(registerVal10, {})
		local function __FUNC_512D_(arg0, arg1)
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
		__FUNC_512D_(registerVal11, {})
	end

	registerVal13.GainOver = __FUNC_3C71_
	local function __FUNC_52E1_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_5873_(arg0, arg1)
			local function __FUNC_59C8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
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

			if arg1.interrupted then
				__FUNC_59C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_59C8_)
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		__FUNC_5873_(registerVal3, {})
		local function __FUNC_5BC8_(arg0, arg1)
			local function __FUNC_5D20_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.400000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_5D20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D20_)
		end

		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.000000)
		__FUNC_5BC8_(registerVal4, {})
		local function __FUNC_5ED5_(arg0, arg1)
			local function __FUNC_602C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_602C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_602C_)
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		__FUNC_5ED5_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -7.000000, 8.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_6203_(arg0, arg1)
			local function __FUNC_6358_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_6358_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6358_)
		end

		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		__FUNC_6203_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Intro = __FUNC_52E1_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_652F_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.500000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.300000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -7.000000, 8.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.100000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_652F_
	local function __FUNC_6ADE_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_706F_(arg0, arg1)
			local function __FUNC_71C4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Bounce)
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

			if arg1.interrupted then
				__FUNC_71C4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_71C4_)
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		__FUNC_706F_(registerVal3, {})
		local function __FUNC_73BF_(arg0, arg1)
			local function __FUNC_7514_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.250000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7514_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7514_)
		end

		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.000000)
		__FUNC_73BF_(registerVal4, {})
		local function __FUNC_76C9_(arg0, arg1)
			local function __FUNC_7820_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.300000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7820_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7820_)
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		__FUNC_76C9_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -7.000000, 8.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_79F7_(arg0, arg1)
			local function __FUNC_7B4C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.100000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_7B4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7B4C_)
		end

		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		__FUNC_79F7_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Intro = __FUNC_6ADE_
	local function __FUNC_7D23_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.250000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(0.250000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(-305.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, -20.000000, -12.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Focus = __FUNC_7D23_
	registerVal12.NotAvailable = registerVal13
	registerVal13 = {}
	local function __FUNC_82D7_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.500000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.300000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -7.000000, 8.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.100000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_82D7_
	local function __FUNC_8886_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_8E17_(arg0, arg1)
			local function __FUNC_8F6C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Bounce)
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

			if arg1.interrupted then
				__FUNC_8F6C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8F6C_)
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		__FUNC_8E17_(registerVal3, {})
		local function __FUNC_9167_(arg0, arg1)
			local function __FUNC_92BC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.250000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_92BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 289.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92BC_)
		end

		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.000000)
		__FUNC_9167_(registerVal4, {})
		local function __FUNC_9471_(arg0, arg1)
			local function __FUNC_95C8_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.300000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_95C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95C8_)
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		__FUNC_9471_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -7.000000, 8.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_979F_(arg0, arg1)
			local function __FUNC_98F4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.100000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_98F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98F4_)
		end

		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		__FUNC_979F_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Intro = __FUNC_8886_
	local function __FUNC_9ACB_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.250000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(0.250000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(-305.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, -20.000000, -12.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Focus = __FUNC_9ACB_
	registerVal12.Disabled = registerVal13
	registerVal13 = {}
	local function __FUNC_A07F_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.100000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.300000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -7.000000, 8.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.710000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_A07F_
	local function __FUNC_A62E_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.250000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(0.250000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(-305.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, -20.000000, -12.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Focus = __FUNC_A62E_
	registerVal12.NoListFocus = registerVal13
	registerVal13 = {}
	local function __FUNC_ABE3_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(1.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(1.000000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -7.000000, 8.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(1.000000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_ABE3_
	local function __FUNC_B18D_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(1.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(1.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(-305.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, -20.000000, -12.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Focus = __FUNC_B18D_
	local function __FUNC_B73E_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_BCAF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
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
		registerVal2.FEButtonPanelShaderContainer:setAlpha(1.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(0.000000)
		__FUNC_BCAF_(registerVal3, {})
		local function __FUNC_BEAC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.400000)
		__FUNC_BEAC_(registerVal4, {})
		local function __FUNC_C061_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(10.000000)
		__FUNC_C061_(registerVal5, {})
		local function __FUNC_C237_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -8.000000, 8.000000)
			arg0:setTopBottom(false, false, -20.000000, 20.000000)
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(1.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		__FUNC_C237_(registerVal6, {})
		local function __FUNC_C476_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.450000)
		__FUNC_C476_(registerVal7, {})
		local function __FUNC_C629_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(10.000000)
		__FUNC_C629_(registerVal8, {})
		local function __FUNC_C7FF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			arg0:setZoom(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		__FUNC_C7FF_(registerVal9, {})
		local function __FUNC_C9CE_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
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
		__FUNC_C9CE_(registerVal10, {})
		local function __FUNC_CBF1_(arg0, arg1)
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
		registerVal2.Glow2:setAlpha(1.000000)
		__FUNC_CBF1_(registerVal11, {})
	end

	registerVal13.LoseFocus = __FUNC_B73E_
	local function __FUNC_CDA5_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_D317_(arg0, arg1)
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
		__FUNC_D317_(registerVal3, {})
		local function __FUNC_D514_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.400000)
		__FUNC_D514_(registerVal4, {})
		local function __FUNC_D6C9_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(1.000000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		__FUNC_D6C9_(registerVal5, {})
		local function __FUNC_D89F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, -8.000000, 8.000000)
			arg0:setTopBottom(false, false, -20.000000, 20.000000)
			arg0:setAlpha(1.000000)
			arg0:setZoom(10.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -20.000000, 20.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		__FUNC_D89F_(registerVal6, {})
		local function __FUNC_DAE3_(arg0, arg1)
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

		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		__FUNC_DAE3_(registerVal7, {})
		local function __FUNC_DC95_(arg0, arg1)
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
		registerVal2.btnDisplayText:setAlpha(1.000000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		__FUNC_DC95_(registerVal8, {})
		local function __FUNC_DE6B_(arg0, arg1)
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

		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		__FUNC_DE6B_(registerVal9, {})
		local function __FUNC_E03F_(arg0, arg1)
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
		__FUNC_E03F_(registerVal10, {})
		local function __FUNC_E261_(arg0, arg1)
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
		__FUNC_E261_(registerVal11, {})
	end

	registerVal13.GainFocus = __FUNC_CDA5_
	local function __FUNC_E415_()
		registerVal2:setupElementClipCounter(9.000000)
		local function __FUNC_E9A7_(arg0, arg1)
			local function __FUNC_EAFC_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
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

			if arg1.interrupted then
				__FUNC_EAFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EAFC_)
		end

		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		__FUNC_E9A7_(registerVal3, {})
		local function __FUNC_ECFC_(arg0, arg1)
			local function __FUNC_EE54_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.400000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_EE54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EE54_)
		end

		registerVal4:completeAnimation()
		registerVal2.BlackOverlay:setAlpha(0.000000)
		__FUNC_ECFC_(registerVal4, {})
		local function __FUNC_F009_(arg0, arg1)
			local function __FUNC_F160_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 239.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F160_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F160_)
		end

		registerVal5:completeAnimation()
		registerVal2.FEButtonIdle:setAlpha(0.000000)
		registerVal2.FEButtonIdle:setZoom(0.000000)
		__FUNC_F009_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FEButtonFocus:setLeftRight(true, true, -8.000000, 8.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -7.000000, 8.000000)
		registerVal2.FEButtonFocus:setAlpha(0.000000)
		registerVal2.FEButtonFocus:setZoom(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_F337_(arg0, arg1)
			local function __FUNC_F48C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				arg0:setZoom(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_F48C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F48C_)
		end

		registerVal8:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		__FUNC_F337_(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 3.000000, 11.000000)
		registerVal2.Arrow:setTopBottom(true, false, 12.000000, 20.000000)
		registerVal2.Arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Intro = __FUNC_E415_
	registerVal12.New = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "NotAvailable"
	local function __FUNC_F663_(arg0, arg2, arg3)
		return IsStarterPackNotAvailableButton(arg2, arg1)
	end

	registerVal15.condition = __FUNC_F663_
	local registerVal16 = {}
	registerVal16.stateName = "Disabled"
	local function __FUNC_F6C9_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal16.condition = __FUNC_F6C9_
	local registerVal17 = {}
	registerVal17.stateName = "NoListFocus"
	local function __FUNC_F71C_(arg0, arg2, arg3)
		local registerVal3 = IsCurrentMenu(arg0, "Lobby")
		if registerVal3 then
			registerVal3 = IsFlyoutMenuOpen(arg2, arg1)
		end
		return registerVal3
	end

	registerVal17.condition = __FUNC_F71C_
	local registerVal18 = {}
	registerVal18.stateName = "New"
	local function __FUNC_F7B4_(arg0, arg1, arg2)
		return PropertyIsTrue(registerVal2, "isBreadcrumbNew")
	end

	registerVal18.condition = __FUNC_F7B4_
	registerVal14 = {registerVal15, registerVal16, registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_F825_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_F825_)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "GameSettingsFlyoutOpen")
	local function __FUNC_F942_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "GameSettingsFlyoutOpen"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_F942_)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "BonusModesFlyoutOpen")
	local function __FUNC_FA6C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "BonusModesFlyoutOpen"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal14, __FUNC_FA6C_)
	local function __FUNC_FB96_(arg0)
		arg0.FEButtonPanelShaderContainer:close()
		arg0.btnDisplayText:close()
		arg0.btnDisplayTextStroke:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_FB96_)
	if __FUNC_234_ then
		__FUNC_234_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ServerBrowserButton.new = __FUNC_284_

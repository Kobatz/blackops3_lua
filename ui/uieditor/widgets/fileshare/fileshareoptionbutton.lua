-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonIdle")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonFocus")
require("ui.uieditor.widgets.Lobby.Common.FE_HelpItemsLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FileshareOptionButton = registerVal1
function CoD.FileshareOptionButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareOptionButton)
	registerVal2.id = "FileshareOptionButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -10.000000, 8.000000)
	registerVal3:setTopBottom(false, false, -16.000000, 16.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal3:setAlpha(0.000000)
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
	registerVal5.Image:setShaderVector(0.000000, 0.040541, 0.300000, 0.380000, 0.200000)
	registerVal5.Image:setupNineSliceShader(12.000000, 12.000000)
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
	local function __FUNC_16FB_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 5.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal7, "setText", __FUNC_16FB_)
	registerVal2:addElement(registerVal7)
	registerVal2.btnDisplayText = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 36.000000, 284.000000)
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
	local function __FUNC_1759_(arg0, arg1)
		local registerVal2 = IsCurrentLanguageArabic()
		if not registerVal2 then
			TrimLabelIfLanguageReversed(registerVal2, arg0)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal8, "setText", __FUNC_1759_)
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
	local function __FUNC_17EA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.btnDisplayText:linkToElementModel(registerVal2, "displayText", true, __FUNC_17EA_)
	local function __FUNC_18A2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.btnDisplayTextStroke:linkToElementModel(registerVal2, "displayText", true, __FUNC_18A2_)
	local function __FUNC_195A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.Image0:linkToElementModel(registerVal2, "displayImage", true, __FUNC_195A_)
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_1A0C_()
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

	registerVal14.DefaultClip = __FUNC_1A0C_
	local function __FUNC_1F55_()
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
		registerVal2.FEButtonFocus:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FEButtonFocus:setTopBottom(false, false, -14.000000, 14.000000)
		registerVal2.FEButtonFocus:setAlpha(1.000000)
		registerVal2.FEButtonFocus:setZoom(10.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Glow:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(-305.000000)
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

	registerVal14.Focus = __FUNC_1F55_
	local function __FUNC_24A7_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_29BC_(arg0, arg1)
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
		__FUNC_29BC_(registerVal3, {})
		local function __FUNC_2BBC_(arg0, arg1)
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
		__FUNC_2BBC_(registerVal4, {})
		local function __FUNC_2D93_(arg0, arg1)
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
		__FUNC_2D93_(registerVal5, {})
		local function __FUNC_2FC8_(arg0, arg1)
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
		__FUNC_2FC8_(registerVal6, {})
		local function __FUNC_317D_(arg0, arg1)
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
		__FUNC_317D_(registerVal7, {})
		local function __FUNC_3353_(arg0, arg1)
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
		__FUNC_3353_(registerVal8, {})
		local function __FUNC_3522_(arg0, arg1)
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
		__FUNC_3522_(registerVal10, {})
		local function __FUNC_3745_(arg0, arg1)
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
		__FUNC_3745_(registerVal11, {})
	end

	registerVal14.LoseFocus = __FUNC_24A7_
	local function __FUNC_38F9_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_3E0B_(arg0, arg1)
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
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
		registerVal2.FEButtonPanelShaderContainer:setZoom(-10.000000)
		__FUNC_3E0B_(registerVal3, {})
		local function __FUNC_4008_(arg0, arg1)
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
		__FUNC_4008_(registerVal4, {})
		local function __FUNC_41DF_(arg0, arg1)
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
		__FUNC_41DF_(registerVal5, {})
		local function __FUNC_441E_(arg0, arg1)
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
		__FUNC_441E_(registerVal6, {})
		local function __FUNC_45D1_(arg0, arg1)
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
		__FUNC_45D1_(registerVal7, {})
		local function __FUNC_47A7_(arg0, arg1)
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
		__FUNC_47A7_(registerVal8, {})
		local function __FUNC_497B_(arg0, arg1)
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
		__FUNC_497B_(registerVal10, {})
		local function __FUNC_4B9D_(arg0, arg1)
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
		__FUNC_4B9D_(registerVal11, {})
	end

	registerVal14.GainFocus = __FUNC_38F9_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_4D51_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
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

	registerVal14.DefaultClip = __FUNC_4D51_
	local function __FUNC_529E_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
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

	registerVal14.Focus = __FUNC_529E_
	local function __FUNC_57EA_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_5D00_(arg0, arg1)
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
		__FUNC_5D00_(registerVal3, {})
		local function __FUNC_5F00_(arg0, arg1)
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
		__FUNC_5F00_(registerVal4, {})
		local function __FUNC_60D7_(arg0, arg1)
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
		__FUNC_60D7_(registerVal5, {})
		local function __FUNC_630C_(arg0, arg1)
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
		__FUNC_630C_(registerVal6, {})
		local function __FUNC_64C1_(arg0, arg1)
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
		__FUNC_64C1_(registerVal7, {})
		local function __FUNC_6697_(arg0, arg1)
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
		__FUNC_6697_(registerVal8, {})
		local function __FUNC_6866_(arg0, arg1)
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
		__FUNC_6866_(registerVal10, {})
		local function __FUNC_6A89_(arg0, arg1)
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
		__FUNC_6A89_(registerVal11, {})
	end

	registerVal14.LoseFocus = __FUNC_57EA_
	local function __FUNC_6C3D_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_714F_(arg0, arg1)
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
		__FUNC_714F_(registerVal3, {})
		local function __FUNC_7347_(arg0, arg1)
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
		__FUNC_7347_(registerVal4, {})
		local function __FUNC_751B_(arg0, arg1)
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
		__FUNC_751B_(registerVal5, {})
		local function __FUNC_7755_(arg0, arg1)
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
		__FUNC_7755_(registerVal6, {})
		local function __FUNC_7909_(arg0, arg1)
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
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(0.000000)
		__FUNC_7909_(registerVal7, {})
		local function __FUNC_7ADF_(arg0, arg1)
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
		__FUNC_7ADF_(registerVal8, {})
		local function __FUNC_7CB3_(arg0, arg1)
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
		__FUNC_7CB3_(registerVal10, {})
		local function __FUNC_7ED5_(arg0, arg1)
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
		__FUNC_7ED5_(registerVal11, {})
	end

	registerVal14.GainFocus = __FUNC_6C3D_
	registerVal13.Disabled = registerVal14
	registerVal14 = {}
	local function __FUNC_8089_()
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
		registerVal2.btnDisplayText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.btnDisplayTextStroke:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
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

	registerVal14.DefaultClip = __FUNC_8089_
	local function __FUNC_8690_()
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
		registerVal2.btnDisplayText:setAlpha(0.000000)
		registerVal2.btnDisplayText:setZoom(-305.000000)
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

	registerVal14.Focus = __FUNC_8690_
	local function __FUNC_8BE3_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_90F8_(arg0, arg1)
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
		__FUNC_90F8_(registerVal3, {})
		local function __FUNC_92F8_(arg0, arg1)
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
		__FUNC_92F8_(registerVal4, {})
		local function __FUNC_94CF_(arg0, arg1)
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
		__FUNC_94CF_(registerVal5, {})
		local function __FUNC_9704_(arg0, arg1)
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
		__FUNC_9704_(registerVal6, {})
		local function __FUNC_98B9_(arg0, arg1)
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
		__FUNC_98B9_(registerVal7, {})
		local function __FUNC_9A8F_(arg0, arg1)
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
		__FUNC_9A8F_(registerVal8, {})
		local function __FUNC_9C5E_(arg0, arg1)
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
		__FUNC_9C5E_(registerVal10, {})
		local function __FUNC_9E81_(arg0, arg1)
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
		__FUNC_9E81_(registerVal11, {})
	end

	registerVal14.LoseFocus = __FUNC_8BE3_
	local function __FUNC_A035_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_A547_(arg0, arg1)
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
		__FUNC_A547_(registerVal3, {})
		local function __FUNC_A744_(arg0, arg1)
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
		__FUNC_A744_(registerVal4, {})
		local function __FUNC_A91B_(arg0, arg1)
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
		__FUNC_A91B_(registerVal5, {})
		local function __FUNC_AB5A_(arg0, arg1)
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
		__FUNC_AB5A_(registerVal6, {})
		local function __FUNC_AD0D_(arg0, arg1)
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
		__FUNC_AD0D_(registerVal7, {})
		local function __FUNC_AEE3_(arg0, arg1)
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
		__FUNC_AEE3_(registerVal8, {})
		local function __FUNC_B0B7_(arg0, arg1)
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
		__FUNC_B0B7_(registerVal10, {})
		local function __FUNC_B2D9_(arg0, arg1)
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
		__FUNC_B2D9_(registerVal11, {})
	end

	registerVal14.GainFocus = __FUNC_A035_
	registerVal13.DefaultStateArabic = registerVal14
	registerVal14 = {}
	local function __FUNC_B48D_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanelShaderContainer:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.FEButtonPanelShaderContainer:setAlpha(0.000000)
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
		registerVal2.btnDisplayText:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.btnDisplayTextStroke:setAlpha(0.000000)
		registerVal2.btnDisplayTextStroke:setZoom(0.000000)
		registerVal2.btnDisplayTextStroke:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
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

	registerVal14.DefaultClip = __FUNC_B48D_
	local function __FUNC_BA99_()
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

	registerVal14.Focus = __FUNC_BA99_
	local function __FUNC_BFEB_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_C505_(arg0, arg1)
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
		__FUNC_C505_(registerVal3, {})
		local function __FUNC_C6FF_(arg0, arg1)
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
		__FUNC_C6FF_(registerVal4, {})
		local function __FUNC_C8D3_(arg0, arg1)
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
		__FUNC_C8D3_(registerVal5, {})
		local function __FUNC_CB08_(arg0, arg1)
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
		__FUNC_CB08_(registerVal6, {})
		local function __FUNC_CCBD_(arg0, arg1)
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
		__FUNC_CCBD_(registerVal7, {})
		local function __FUNC_CE93_(arg0, arg1)
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
		__FUNC_CE93_(registerVal8, {})
		local function __FUNC_D062_(arg0, arg1)
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
		__FUNC_D062_(registerVal10, {})
		local function __FUNC_D285_(arg0, arg1)
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
		__FUNC_D285_(registerVal11, {})
	end

	registerVal14.LoseFocus = __FUNC_BFEB_
	local function __FUNC_D439_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_D950_(arg0, arg1)
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
		__FUNC_D950_(registerVal3, {})
		local function __FUNC_DB50_(arg0, arg1)
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
		__FUNC_DB50_(registerVal4, {})
		local function __FUNC_DD27_(arg0, arg1)
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
		__FUNC_DD27_(registerVal5, {})
		local function __FUNC_DF61_(arg0, arg1)
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
		__FUNC_DF61_(registerVal6, {})
		local function __FUNC_E115_(arg0, arg1)
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
		__FUNC_E115_(registerVal7, {})
		local function __FUNC_E2EB_(arg0, arg1)
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
		__FUNC_E2EB_(registerVal8, {})
		local function __FUNC_E4BF_(arg0, arg1)
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
		__FUNC_E4BF_(registerVal10, {})
		local function __FUNC_E6E1_(arg0, arg1)
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
		__FUNC_E6E1_(registerVal11, {})
	end

	registerVal14.GainFocus = __FUNC_D439_
	registerVal13.DisabledArabic = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Disabled"
	local function __FUNC_E895_(arg0, arg2, arg3)
		local registerVal3 = IsDisabled(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageArabic()
		end
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_E895_
	local registerVal17 = {}
	registerVal17.stateName = "DefaultStateArabic"
	local function __FUNC_E91D_(arg0, arg2, arg3)
		local registerVal3 = IsDisabled(arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCurrentLanguageArabic()
		else
		end
		return true
	end

	registerVal17.condition = __FUNC_E91D_
	local registerVal18 = {}
	registerVal18.stateName = "DisabledArabic"
	local function __FUNC_E9AD_(arg0, arg2, arg3)
		local registerVal3 = IsDisabled(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCurrentLanguageArabic()
		end
		return registerVal3
	end

	registerVal18.condition = __FUNC_E9AD_
	registerVal15 = {registerVal16, registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal15)
	local function __FUNC_EA31_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_EA31_)
	local function __FUNC_EB4E_(arg0)
		arg0.FEButtonPanelShaderContainer:close()
		arg0.FEButtonIdle:close()
		arg0.FEButtonFocus:close()
		arg0.FEHelpItemsLabel0:close()
		arg0.btnDisplayText:close()
		arg0.btnDisplayTextStroke:close()
		arg0.Image0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EB4E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


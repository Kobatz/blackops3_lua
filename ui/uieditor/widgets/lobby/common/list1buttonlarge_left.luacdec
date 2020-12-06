-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonIdle")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonFocus")
require("ui.uieditor.widgets.Lobby.Common.FE_HelpItemsLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.List1ButtonLarge_Left = registerVal1
function CoD.List1ButtonLarge_Left.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.List1ButtonLarge_Left)
	registerVal2.id = "List1ButtonLarge_Left"
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
	registerVal6:setLeftRight(true, false, 45.000000, 105.990000)
	registerVal6:setTopBottom(true, false, -115.500000, 147.500000)
	registerVal6:setRGB(0.880000, 1.000000, 0.040000)
	registerVal6:setAlpha(0.000000)
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
	local function __FUNC_13FD_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 5.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal7, "setText", __FUNC_13FD_)
	registerVal2:addElement(registerVal7)
	registerVal2.btnDisplayText = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 12.000000, 284.000000)
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
	local function __FUNC_145D_(arg0, arg1)
		TrimLabelIfLanguageReversed(registerVal2, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal8, "setText", __FUNC_145D_)
	registerVal2:addElement(registerVal8)
	registerVal2.btnDisplayTextStroke = registerVal8
	local registerVal9 = CoD.FE_HelpItemsLabel.new(arg0, arg1)
	registerVal9:setLeftRight(false, true, 0.000000, 20.000000)
	registerVal9:setTopBottom(false, false, -10.000000, 10.000000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Visible"
	local function __FUNC_14BD_(arg0, arg1, arg2)
		return PropertyIsTrue(registerVal2, "isBreadcrumbNew")
	end

	registerVal13.condition = __FUNC_14BD_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
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
	local function __FUNC_152D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.btnDisplayText:linkToElementModel(registerVal2, "displayText", true, __FUNC_152D_)
	local function __FUNC_15E6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.btnDisplayTextStroke:linkToElementModel(registerVal2, "displayText", true, __FUNC_15E6_)
	registerVal12 = {}
	registerVal13 = {}
	local function __FUNC_169E_()
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

	registerVal13.DefaultClip = __FUNC_169E_
	local function __FUNC_1BE5_()
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

	registerVal13.Focus = __FUNC_1BE5_
	local function __FUNC_2137_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_26AB_(arg0, arg1)
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
		__FUNC_26AB_(registerVal3, {})
		local function __FUNC_28A8_(arg0, arg1)
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
		__FUNC_28A8_(registerVal4, {})
		local function __FUNC_2A7F_(arg0, arg1)
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
		__FUNC_2A7F_(registerVal5, {})
		local function __FUNC_2CB4_(arg0, arg1)
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
		__FUNC_2CB4_(registerVal6, {})
		local function __FUNC_2E69_(arg0, arg1)
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
		__FUNC_2E69_(registerVal7, {})
		local function __FUNC_303F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 12.000000, 284.000000)
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
		registerVal2.btnDisplayTextStroke:setLeftRight(true, false, 12.000000, 284.000000)
		registerVal2.btnDisplayTextStroke:setTopBottom(true, false, 6.920000, 26.920000)
		registerVal2.btnDisplayTextStroke:setAlpha(1.000000)
		registerVal2.btnDisplayTextStroke:setZoom(10.000000)
		__FUNC_303F_(registerVal8, {})
		local function __FUNC_327E_(arg0, arg1)
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
		__FUNC_327E_(registerVal10, {})
		local function __FUNC_34A1_(arg0, arg1)
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
		__FUNC_34A1_(registerVal11, {})
	end

	registerVal13.LoseFocus = __FUNC_2137_
	local function __FUNC_3655_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_3B67_(arg0, arg1)
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
		__FUNC_3B67_(registerVal3, {})
		local function __FUNC_3D64_(arg0, arg1)
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
		__FUNC_3D64_(registerVal4, {})
		local function __FUNC_3F3B_(arg0, arg1)
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
		__FUNC_3F3B_(registerVal5, {})
		local function __FUNC_417A_(arg0, arg1)
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
		__FUNC_417A_(registerVal6, {})
		local function __FUNC_432D_(arg0, arg1)
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
		__FUNC_432D_(registerVal7, {})
		local function __FUNC_4503_(arg0, arg1)
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
		__FUNC_4503_(registerVal8, {})
		local function __FUNC_46D7_(arg0, arg1)
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
		__FUNC_46D7_(registerVal10, {})
		local function __FUNC_48F9_(arg0, arg1)
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
		__FUNC_48F9_(registerVal11, {})
	end

	registerVal13.GainFocus = __FUNC_3655_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_4AAD_()
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

	registerVal13.DefaultClip = __FUNC_4AAD_
	local function __FUNC_4FFA_()
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

	registerVal13.Focus = __FUNC_4FFA_
	local function __FUNC_554B_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_5A65_(arg0, arg1)
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
		__FUNC_5A65_(registerVal3, {})
		local function __FUNC_5C5F_(arg0, arg1)
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
		__FUNC_5C5F_(registerVal4, {})
		local function __FUNC_5E33_(arg0, arg1)
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
		__FUNC_5E33_(registerVal5, {})
		local function __FUNC_6068_(arg0, arg1)
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
		__FUNC_6068_(registerVal6, {})
		local function __FUNC_621D_(arg0, arg1)
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
		__FUNC_621D_(registerVal7, {})
		local function __FUNC_63F3_(arg0, arg1)
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
		__FUNC_63F3_(registerVal8, {})
		local function __FUNC_65C2_(arg0, arg1)
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
		__FUNC_65C2_(registerVal10, {})
		local function __FUNC_67E5_(arg0, arg1)
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
		__FUNC_67E5_(registerVal11, {})
	end

	registerVal13.LoseFocus = __FUNC_554B_
	local function __FUNC_6999_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_6EB0_(arg0, arg1)
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
		__FUNC_6EB0_(registerVal3, {})
		local function __FUNC_70B0_(arg0, arg1)
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
		__FUNC_70B0_(registerVal4, {})
		local function __FUNC_7287_(arg0, arg1)
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
		__FUNC_7287_(registerVal5, {})
		local function __FUNC_74C1_(arg0, arg1)
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
		__FUNC_74C1_(registerVal6, {})
		local function __FUNC_7675_(arg0, arg1)
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
		__FUNC_7675_(registerVal7, {})
		local function __FUNC_784B_(arg0, arg1)
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
		__FUNC_784B_(registerVal8, {})
		local function __FUNC_7A1F_(arg0, arg1)
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
		__FUNC_7A1F_(registerVal10, {})
		local function __FUNC_7C41_(arg0, arg1)
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
		__FUNC_7C41_(registerVal11, {})
	end

	registerVal13.GainFocus = __FUNC_6999_
	registerVal12.Disabled = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Disabled"
	local function __FUNC_7DF5_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal15.condition = __FUNC_7DF5_
	registerVal14 = {registerVal15}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_7E48_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_7E48_)
	local function __FUNC_7F66_(arg0)
		arg0.FEButtonPanelShaderContainer:close()
		arg0.FEButtonIdle:close()
		arg0.FEButtonFocus:close()
		arg0.FEHelpItemsLabel0:close()
		arg0.btnDisplayText:close()
		arg0.btnDisplayTextStroke:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_7F66_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


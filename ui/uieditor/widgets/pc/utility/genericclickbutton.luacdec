-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_227_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
	local function __FUNC_2DC_(arg0, arg2)
		if arg0.m_button then
			CoD.PCUtil.SimulateButtonPress(arg1, arg0.m_button)
		end
		return true
	end

	arg0:registerEventHandler("button_action", __FUNC_2DC_)
	local function __FUNC_3A0_(arg1, arg2)
		arg0.m_button = arg2
	end

	arg0.setButton = __FUNC_3A0_
end

local function __FUNC_3E6_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_227_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.GenericClickButton = registerVal3
local function __FUNC_457_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GenericClickButton)
	registerVal2.id = "GenericClickButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 135.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setZoom(10.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_buttonfocusfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.200000, 0.500000, 0.380000, 0.200000)
	registerVal3:setupNineSliceShader(60.000000, 20.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonFocus = registerVal3
	local registerVal4 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 23.000000, -23.000000)
	registerVal4:setTopBottom(false, true, -6.110000, -8.110000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZoom(1.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FocusBarB = registerVal4
	local registerVal5 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 23.000000, -23.000000)
	registerVal5:setTopBottom(true, false, 7.110000, 5.110000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZRot(180.000000)
	registerVal5:setZoom(1.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FocusBarT = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, -11.860000)
	registerVal6:setTopBottom(false, false, -7.000000, 7.000000)
	registerVal6:setYRot(180.000000)
	registerVal6:setZoom(10.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_buttonfocusarrow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Arrow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, -2.500000, 2.500000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Glow21 = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, true, 17.000000, -3.690000)
	registerVal8:setTopBottom(false, false, -10.890000, 10.890000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setText(Engine.Localize("PLATFORM_YES_CAPS"))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal8:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_112A_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal8, "setText", __FUNC_112A_)
	registerVal2:addElement(registerVal8)
	registerVal2.label = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -48.000000, 69.000000)
	registerVal9:setTopBottom(true, false, -24.290000, 58.120000)
	registerVal9:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Glow2 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1189_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 0.000000, -11.860000)
		registerVal2.Arrow:setTopBottom(false, false, -7.000000, 7.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow21:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1189_
	local function __FUNC_1449_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 8.000000, -3.860000)
		registerVal2.Arrow:setTopBottom(false, false, -7.000000, 7.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Glow21:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.Over = __FUNC_1449_
	local function __FUNC_16C0_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonFocus:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 14.500000, -14.500000)
		registerVal2.FocusBarB:setTopBottom(false, true, -5.340000, -9.340000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 14.500000, -14.500000)
		registerVal2.FocusBarT:setTopBottom(true, false, 8.340000, 4.340000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		local function __FUNC_1A93_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 8.000000, -3.860000)
			arg0:setTopBottom(false, false, -7.000000, 7.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, 0.000000, -11.860000)
		registerVal2.Arrow:setTopBottom(false, false, -7.000000, 7.000000)
		__FUNC_1A93_(registerVal6, {})
		local function __FUNC_1C92_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Glow21:setAlpha(0.000000)
		__FUNC_1C92_(registerVal7, {})
		local function __FUNC_1E45_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.Glow2:setAlpha(0.000000)
		__FUNC_1E45_(registerVal9, {})
	end

	registerVal11.GainOver = __FUNC_16C0_
	registerVal10.DefaultState = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_1FF9_(arg0)
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1FF9_)
	if __FUNC_3E6_ then
		__FUNC_3E6_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GenericClickButton.new = __FUNC_457_

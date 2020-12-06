-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ButtonIcon")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_25B_(arg0, arg1)
	arg0:setHandleMouse(true)
end

local function __FUNC_2A8_(arg0, arg1)
	if CoD.isPC then
		__FUNC_25B_(arg0, arg1)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.WelcomeMenu_Button = registerVal3
local function __FUNC_317_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WelcomeMenu_Button)
	registerVal2.id = "WelcomeMenu_Button"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 70.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 45.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -50.880000, 9.000000)
	registerVal3:setTopBottom(false, false, -22.660000, 22.660000)
	registerVal3:setZoom(10.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_buttonfocusfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.461967, 0.441277, 0.380000, 0.200000)
	registerVal3:setupNineSliceShader(60.000000, 20.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonFocus = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -44.950000, -56.810000)
	registerVal4:setTopBottom(true, false, 16.000000, 29.320000)
	registerVal4:setYRot(180.000000)
	registerVal4:setZoom(10.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_buttonfocusarrow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Arrow = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 2.000000, 71.310000)
	registerVal5:setTopBottom(true, false, 12.690000, 34.470000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setText(Engine.Localize("MENU_LETS_GO"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_1290_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 10.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_1290_)
	registerVal2:addElement(registerVal5)
	registerVal2.TextBox2 = registerVal5
	local registerVal6 = CoD.ButtonIcon.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -36.740000, -8.740000)
	registerVal6:setTopBottom(true, false, 8.660000, 36.660000)
	local function __FUNC_12F1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.buttonImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "Controller", "primary_button_image", __FUNC_12F1_)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Visible"
	local function __FUNC_13C5_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal10.condition = __FUNC_13C5_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.ButtonIcon0 = registerVal6
	local registerVal7 = CoD.ButtonIcon.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, -36.740000, -8.740000)
	registerVal7:setTopBottom(true, false, 9.580000, 37.580000)
	registerVal7:setAlpha(0.700000)
	local function __FUNC_1410_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.buttonImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "Controller", "primary_button_image", __FUNC_1410_)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Visible"
	local function __FUNC_14E5_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal11.condition = __FUNC_14E5_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.ButtonIcon00 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -56.810000, 9.000000)
	registerVal8:setTopBottom(false, false, -22.660000, 22.500000)
	registerVal8:setImage(RegisterImage("uie_t7_cp_hud_enemytarget_glow"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Glow21 = registerVal8
	registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -37.310000, 0.000000)
	registerVal9:setTopBottom(false, false, -18.660000, -22.660000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZRot(180.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarT = registerVal9
	registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, -37.310000, 0.000000)
	registerVal10:setTopBottom(false, false, 22.660000, 18.660000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarB0 = registerVal10
	registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1530_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal6:completeAnimation()
		registerVal2.ButtonIcon0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ButtonIcon00:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1530_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_1746_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonFocus:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(1.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal6:completeAnimation()
		registerVal2.ButtonIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ButtonIcon00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow21:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1746_
	local function __FUNC_1B27_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_1F0A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, -38.950000, -50.810000)
			arg0:setTopBottom(true, false, 16.000000, 29.320000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Arrow:setLeftRight(true, false, -44.950000, -56.810000)
		registerVal2.Arrow:setTopBottom(true, false, 16.000000, 29.320000)
		__FUNC_1F0A_(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.ButtonIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ButtonIcon00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow21:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 10.500000, -4.500000)
		registerVal2.FocusBarT:setTopBottom(false, false, -12.660000, -16.660000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarB0:setLeftRight(true, true, 10.500000, -4.500000)
		registerVal2.FocusBarB0:setTopBottom(false, false, 17.660000, 13.660000)
		registerVal2.FocusBarB0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.Over = __FUNC_1B27_
	registerVal11.KeyboardAndMouse = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "KeyboardAndMouse"
	local function __FUNC_210A_(arg0, arg2, arg3)
		local registerVal3 = IsPC()
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_210A_
	registerVal13 = {registerVal14}
	registerVal2:mergeStateConditions(registerVal13)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_2179_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_2179_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "LastInput")
	local function __FUNC_2203_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_2203_)
	local function __FUNC_231F_(arg0)
		arg0.ButtonIcon0:close()
		arg0.ButtonIcon00:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_231F_)
	if __FUNC_2A8_ then
		__FUNC_2A8_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.WelcomeMenu_Button.new = __FUNC_317_

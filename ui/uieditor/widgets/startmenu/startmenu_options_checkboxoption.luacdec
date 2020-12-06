-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_275_(arg0, arg1, arg2)
	local function __FUNC_3C6_(arg0, arg1)
		local registerVal4 = {}
		registerVal4.name = "update_state"
		registerVal4.controller = arg1.controller
		arg0:processEvent(registerVal4)
	end

	arg0:registerEventHandler("options_refresh", __FUNC_3C6_)
	local function __FUNC_45E_(arg1, arg2, arg3, arg4)
		local registerVal4 = arg2:AcceptGamePadButtonInputFromModelCallback(arg3)
		if not arg0.disabled and not arg2.m_disableNavigation and registerVal4 then
			registerVal4 = type(arg0.checkboxAction)
			if registerVal4 == "function" then
				arg0.checkboxAction(arg3, arg0)
				local registerVal6 = {}
				registerVal6.name = "update_state"
				registerVal6.controller = arg3
				arg0:processEvent(registerVal6)
			end
			return true
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_45E_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_CheckBoxOption = registerVal2
local function __FUNC_60C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_CheckBoxOption)
	registerVal2.id = "StartMenu_Options_CheckBoxOption"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.100000, 0.100000, 0.100000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.fullBacking = registerVal3
	local registerVal4 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.870000, 0.370000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.fullBorder = registerVal4
	local registerVal5 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -8.500000, -443.500000)
	registerVal5:setTopBottom(true, true, -13.000000, 13.000000)
	registerVal5:setScale(0.300000)
	registerVal2:addElement(registerVal5)
	registerVal2.checkboxBacking = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 14.750000, 33.250000)
	registerVal6:setTopBottom(true, false, 8.250000, 25.750000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cacselection_checkbox_empty"))
	registerVal2:addElement(registerVal6)
	registerVal2.CheckboxBkg = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 14.750000, 33.250000)
	registerVal7:setTopBottom(true, false, 8.250000, 25.750000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cacselection_checkbox"))
	registerVal2:addElement(registerVal7)
	registerVal2.checkboxCheck = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 47.000000, 500.000000)
	registerVal8:setTopBottom(true, false, 4.500000, 29.500000)
	registerVal8:setTTF("fonts/default.ttf")
	local function __FUNC_11DE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "label", true, __FUNC_11DE_)
	registerVal2:addElement(registerVal8)
	registerVal2.labelText = registerVal8
	local registerVal9 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.StartMenuframenoBG00 = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 2.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarT = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(false, true, -5.500000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarB = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_1296_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.fullBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkboxBacking:setRGB(0.780000, 0.780000, 0.780000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CheckboxBkg:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.CheckboxBkg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.checkboxCheck:setRGB(1.000000, 0.450000, 0.000000)
		registerVal2.checkboxCheck:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.labelText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.labelText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setAlpha(0.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
	end

	registerVal13.DefaultClip = __FUNC_1296_
	local function __FUNC_16F3_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.fullBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkboxBacking:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CheckboxBkg:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.CheckboxBkg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.checkboxCheck:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.labelText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.labelText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 0.000000, 4.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -5.500000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.Focus = __FUNC_16F3_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_1B52_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.fullBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkboxBacking:setRGB(0.780000, 0.780000, 0.780000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CheckboxBkg:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.CheckboxBkg:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_1EF7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.checkboxCheck:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.checkboxCheck:setAlpha(1.000000)
		__FUNC_1EF7_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.labelText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.labelText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1B52_
	local function __FUNC_20CD_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal4:completeAnimation()
		registerVal2.fullBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkboxBacking:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CheckboxBkg:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.CheckboxBkg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_2541_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setRGB(0.980000, 0.440000, 0.040000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.checkboxCheck:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.checkboxCheck:setAlpha(1.000000)
		__FUNC_2541_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.labelText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.labelText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_2728_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(true, false, 0.000000, 4.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 0.000000, 4.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_2728_(registerVal10, {})
		local function __FUNC_2943_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 0.000000, 0.000000)
			arg0:setTopBottom(false, true, -5.500000, 0.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -5.500000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_2943_(registerVal11, {})
	end

	registerVal13.Focus = __FUNC_20CD_
	registerVal12.Checked = registerVal13
	registerVal13 = {}
	local function __FUNC_2B5B_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.checkboxBacking:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CheckboxBkg:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.checkboxCheck:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.checkboxCheck:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.labelText:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal13.DefaultClip = __FUNC_2B5B_
	registerVal12.Disabled = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "Checked"
	local function __FUNC_2DBB_(arg0, arg1, arg2)
		return CheckBoxOptionChecked(arg1, arg2)
	end

	registerVal15.condition = __FUNC_2DBB_
	local registerVal16 = {}
	registerVal16.stateName = "Disabled"
	local function __FUNC_2E17_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal16.condition = __FUNC_2E17_
	registerVal14 = {registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_2E68_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_2E68_)
	local function __FUNC_2F86_(arg0)
		arg0.fullBorder:close()
		arg0.checkboxBacking:close()
		arg0.StartMenuframenoBG00:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.labelText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2F86_)
	if __FUNC_275_ then
		__FUNC_275_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Options_CheckBoxOption.new = __FUNC_60C_

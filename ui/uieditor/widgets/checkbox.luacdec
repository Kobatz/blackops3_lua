-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_PC_KeyBinderTooltip")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.checkbox = registerVal1
function CoD.checkbox.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.checkbox)
	registerVal2.id = "checkbox"
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
	registerVal7:setRGB(1.000000, 0.450000, 0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cacselection_checkbox"))
	registerVal2:addElement(registerVal7)
	registerVal2.checkboxCheck = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 47.000000, 500.000000)
	registerVal8:setTopBottom(true, false, 4.500000, 29.500000)
	registerVal8:setText(Engine.Localize("MENU_NEW"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal8)
	registerVal2.labelText = registerVal8
	local registerVal9 = CoD.StartMenu_Options_PC_KeyBinderTooltip.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 517.500000, 717.500000)
	registerVal9:setTopBottom(true, false, -35.000000, 65.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9.headerText:setText(Engine.Localize(""))
	registerVal9.descText:setText(Engine.Localize(""))
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Invisible"
	local function __FUNC_FDA_(arg0, arg1, arg2)
		local registerVal3 = HasHintText(arg1)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_FDA_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_102D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, nil, true, __FUNC_102D_)
	registerVal2:addElement(registerVal9)
	registerVal2.tooltip = registerVal9
	local registerVal10 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.StartMenuframenoBG00 = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 2.000000, 0.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarT = registerVal11
	registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(false, true, -5.500000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarB = registerVal12
	registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_1139_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.fullBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkboxBacking:setRGB(0.780000, 0.780000, 0.780000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CheckboxBkg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.checkboxCheck:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.labelText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.tooltip:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setAlpha(0.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
	end

	registerVal14.DefaultClip = __FUNC_1139_
	local function __FUNC_157B_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.fullBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkboxBacking:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CheckboxBkg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.checkboxCheck:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.labelText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.tooltip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.Focus = __FUNC_157B_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_190C_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.fullBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkboxBacking:setRGB(0.780000, 0.780000, 0.780000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CheckboxBkg:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_1CC0_(arg0, arg1)
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
		__FUNC_1CC0_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.labelText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.tooltip:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_190C_
	local function __FUNC_1E99_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.fullBorder:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.checkboxBacking:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CheckboxBkg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		local function __FUNC_2311_(arg0, arg1)
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
		__FUNC_2311_(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.labelText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.tooltip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal11:setAlpha(1.000000)
		registerVal11:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal12:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal12:setAlpha(1.000000)
		registerVal12:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
	end

	registerVal14.Focus = __FUNC_1E99_
	registerVal13.Checked = registerVal14
	registerVal2.clipsPerState = registerVal13
	local function __FUNC_24F8_(arg0)
		arg0.fullBorder:close()
		arg0.checkboxBacking:close()
		arg0.tooltip:close()
		arg0.StartMenuframenoBG00:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_24F8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


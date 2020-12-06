-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider_Control_Item")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_2C6_(arg0, arg1, arg2)
	local function __FUNC_342_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		local registerVal2, registerVal3 = arg0.Slider:getRowAndColumnForIndex((registerVal1 - 1.000000))
		arg0.Slider:setActiveIndex(registerVal2, registerVal3, 0.000000)
	end

	arg0:linkToElementModel(arg0, "currentSelection", true, __FUNC_342_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_Slider = registerVal2
local function __FUNC_43E_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_Slider)
	registerVal2.id = "StartMenu_Options_Slider"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 670.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 55.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 39.000000, -338.470000)
	registerVal3:setTopBottom(true, true, 3.000000, -3.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuframenoBG0 = registerVal3
	local registerVal4 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 337.530000, -125.000000)
	registerVal4:setTopBottom(true, true, 3.000000, -3.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.StartMenuframenoBG1 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 59.000000, 281.000000)
	registerVal5:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1261_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "name", true, __FUNC_1261_)
	registerVal2:addElement(registerVal5)
	registerVal2.Title = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 357.270000, 525.270000)
	registerVal6:setTopBottom(true, false, 12.500000, 42.500000)
	registerVal6:setWidgetType(CoD.StartMenu_Options_Slider_Control_Item)
	local function __FUNC_131A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setDataSource(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "optionsDatasource", true, __FUNC_131A_)
	local function __FUNC_13B2_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "alias"
		CoD.Menu.UpdateButtonShownState(registerVal6, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal6:linkToElementModel(registerVal6, "alias", true, __FUNC_13B2_)
	local function __FUNC_156D_(arg0, arg2)
		ProcessListAction(registerVal2, arg0, arg1)
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_156D_)
	local function __FUNC_15CF_(arg0, arg2)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg0, arg1, "alias")
		if registerVal3 then
			StopMPMusicPreview(arg1, arg0)
		end
		return nil
	end

	registerVal6:registerEventHandler("list_item_lose_focus", __FUNC_15CF_)
	local function __FUNC_167F_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_167F_)
	local function __FUNC_1812_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_1812_)
	local function __FUNC_18E2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueNonEmptyString(arg0, arg2, "alias")
		if registerVal4 then
			StopMPMusicPreview(arg2, arg0)
			PlayMPMusicPreview(arg2, arg0)
			return true
		end
	end

	local function __FUNC_19BF_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg0, arg2, "alias")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_PLAY_MUSIC_SAMPLE")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_18E2_, __FUNC_19BF_, false)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "ArrowsHidden"
	local function __FUNC_1B23_(arg0, arg1, arg2)
		return PropertyIsTrue(registerVal2, "hideArrows")
	end

	registerVal10.condition = __FUNC_1B23_
	local registerVal11 = {}
	registerVal11.stateName = "LeftArrowHidden"
	local function __FUNC_1B8C_(arg0, arg1, arg2)
		local registerVal3 = ListLoopEdgesEnabled(registerVal2, "Slider")
		if not registerVal3 then
			registerVal3 = IsFirstListElement(arg1)
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_1B8C_
	local registerVal12 = {}
	registerVal12.stateName = "RightArrowHidden"
	local function __FUNC_1C36_(arg0, arg1, arg2)
		local registerVal3 = ListLoopEdgesEnabled(registerVal2, "Slider")
		if not registerVal3 then
			registerVal3 = IsLastListElement(arg1)
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_1C36_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.Slider = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 337.530000, 542.530000)
	registerVal7:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_1CDD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "altText", true, __FUNC_1CDD_)
	registerVal2:addElement(registerVal7)
	registerVal2.altText = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 337.530000, -127.470000)
	registerVal8:setTopBottom(false, true, -7.000000, -3.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarB = registerVal8
	registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 337.530000, -125.000000)
	registerVal9:setTopBottom(true, false, 3.000000, 7.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarT = registerVal9
	registerVal10 = {}
	registerVal11 = {}
	local function __FUNC_1D96_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.StartMenuframenoBG1:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.altText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.altText:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1D96_
	local function __FUNC_20E8_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.StartMenuframenoBG1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Title:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.altText:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.altText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 337.530000, -125.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -7.000000, -3.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 337.530000, -125.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 3.000000, 7.000000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_20E8_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_2521_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.StartMenuframenoBG1:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Title:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Slider:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.altText:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal11.DefaultClip = __FUNC_2521_
	registerVal10.Disabled = registerVal11
	registerVal2.clipsPerState = registerVal10
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Disabled"
	local function __FUNC_27AA_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal13.condition = __FUNC_27AA_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_27FC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_27FC_)
	local function __FUNC_291A_(arg0, arg2)
		local registerVal2 = IsInDefaultState(arg0)
		registerVal2 = IsSelfModelValueNil(arg0, arg1, "action")
		if registerVal2 and registerVal2 then
			DisableMouseButton(registerVal2, arg1)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_291A_)
	registerVal6.id = "Slider"
	local function __FUNC_29E7_(arg0, arg1)
		local registerVal2 = arg0.Slider:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_29E7_)
	local function __FUNC_2AE6_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.StartMenuframenoBG1:close()
		arg0.Slider:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.Title:close()
		arg0.altText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2AE6_)
	if __FUNC_2C6_ then
		__FUNC_2C6_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Options_Slider.new = __FUNC_43E_

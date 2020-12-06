-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider_Control_Item_Small")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_2D2_(arg0, arg1, arg2)
	local function __FUNC_34E_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		local registerVal2, registerVal3 = arg0.Slider:getRowAndColumnForIndex((registerVal1 - 1.000000))
		arg0.Slider:setActiveIndex(registerVal2, registerVal3, 0.000000)
	end

	arg0:linkToElementModel(arg0, "currentSelection", true, __FUNC_34E_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_Slider_Small = registerVal2
local function __FUNC_44A_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_Slider_Small)
	registerVal2.id = "StartMenu_Options_Slider_Small"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 388.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 55.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -182.470000)
	registerVal3:setTopBottom(true, true, 3.000000, -3.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuframenoBG0 = registerVal3
	local registerVal4 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 208.530000, -1.470000)
	registerVal4:setTopBottom(true, true, 3.000000, -3.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.StartMenuframenoBG1 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 20.000000, 188.000000)
	registerVal5:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_11E9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "name", true, __FUNC_11E9_)
	registerVal2:addElement(registerVal5)
	registerVal2.Title = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 227.270000, 367.270000)
	registerVal6:setTopBottom(false, false, -15.000000, 15.000000)
	registerVal6:setWidgetType(CoD.StartMenu_Options_Slider_Control_Item_Small)
	local function __FUNC_12A2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setDataSource(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "optionsDatasource", true, __FUNC_12A2_)
	local function __FUNC_133A_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "alias"
		CoD.Menu.UpdateButtonShownState(registerVal6, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal6:linkToElementModel(registerVal6, "alias", true, __FUNC_133A_)
	local function __FUNC_14F5_(arg0, arg2)
		ProcessListAction(registerVal2, arg0, arg1)
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_14F5_)
	local function __FUNC_1557_(arg0, arg2)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg0, arg1, "alias")
		if registerVal3 then
			StopMPMusicPreview(arg1, arg0)
		end
		return nil
	end

	registerVal6:registerEventHandler("list_item_lose_focus", __FUNC_1557_)
	local function __FUNC_1607_(arg2, arg3)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_1607_)
	local function __FUNC_179A_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_179A_)
	local function __FUNC_186A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueNonEmptyString(arg0, arg2, "alias")
		if registerVal4 then
			StopMPMusicPreview(arg2, arg0)
			PlayMPMusicPreview(arg2, arg0)
			return true
		end
	end

	local function __FUNC_1947_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueNonEmptyString(arg0, arg2, "alias")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_PLAY_MUSIC_SAMPLE")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_186A_, __FUNC_1947_, false)
	registerVal2:addElement(registerVal6)
	registerVal2.Slider = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 214.000000, 380.000000)
	registerVal7:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_1AAB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "altText", true, __FUNC_1AAB_)
	registerVal2:addElement(registerVal7)
	registerVal2.altText = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 209.530000, -2.470000)
	registerVal8:setTopBottom(false, true, -7.000000, -3.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarB = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 209.530000, -2.470000)
	registerVal9:setTopBottom(true, false, 3.000000, 7.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarT = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1B62_()
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

	registerVal11.DefaultClip = __FUNC_1B62_
	local function __FUNC_1EB4_()
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
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_1EB4_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_2208_()
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

	registerVal11.DefaultClip = __FUNC_2208_
	registerVal10.Disabled = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Disabled"
	local function __FUNC_2492_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal13.condition = __FUNC_2492_
	registerVal12 = {registerVal13}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_24E4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_24E4_)
	local function __FUNC_2602_(arg0, arg2)
		local registerVal2 = IsInDefaultState(arg0)
		registerVal2 = IsSelfModelValueNil(arg0, arg1, "action")
		if registerVal2 and registerVal2 then
			DisableMouseButton(registerVal2, arg1)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_2602_)
	registerVal6.id = "Slider"
	local function __FUNC_26CF_(arg0, arg1)
		local registerVal2 = arg0.Slider:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_26CF_)
	local function __FUNC_27CE_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.StartMenuframenoBG1:close()
		arg0.Slider:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.Title:close()
		arg0.altText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_27CE_)
	if __FUNC_2D2_ then
		__FUNC_2D2_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Options_Slider_Small.new = __FUNC_44A_

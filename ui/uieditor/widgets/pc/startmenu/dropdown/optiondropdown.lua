-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.PC.StartMenu.Dropdown.OptionDropdownItem")
require("ui.uieditor.widgets.Scrollbars.verticalScrollbar")
local function __FUNC_30B_(arg0, arg1)
	if arg0.DropDownList then
		arg0.inUse = (not arg0.inUse)
		if arg0.inUse then
			arg0:setPriority(100.000000)
			arg0.m_disableNavigation = true
			MakeFocusable(arg0.DropDownList)
			SetFocusToElement(arg0, "DropDownList", arg1)
			arg0.DropDownList.m_disableNavigation = nil
			local registerVal2 = type(arg0.dropDownCurrentValue)
			registerVal2 = arg0.dropDownCurrentValue(arg1, arg0)
			local registerVal5 = {}
			registerVal5.value = registerVal2
			local registerVal3 = arg0.DropDownList:findItem(registerVal5, nil, false, nil)
			if registerVal2 == "function" and registerVal3 then
				arg0.DropDownList:setActiveItem(registerVal3)
			end
			registerVal2, registerVal3 = arg0.DropDownList:getLocalSize()
			arg0.listBackground:setTopBottom(false, true, 0.000000, registerVal3)
		else
			arg0:setPriority(0.000000)
			arg0.m_disableNavigation = nil
			MakeNotFocusable(arg0.DropDownList)
			SetLoseFocusToElement(arg0, "DropDownList", arg1)
			arg0.DropDownList.m_disableNavigation = true
		end
		local registerVal4 = {}
		registerVal4.name = "dropdown_triggered"
		registerVal4.widget = arg0
		registerVal4.inUse = arg0.inUse
		registerVal4.controller = arg1
		arg0:dispatchEventToParent(registerVal4)
	end
end

local function __FUNC_6D6_(arg0, arg1, arg2)
	arg0:setForceMouseEventDispatch(true)
	local function __FUNC_AF2_(arg0, arg3)
		local registerVal2 = type(arg0.dropDownItemSelected)
		if registerVal2 == "function" and arg0.inUse then
			registerVal2 = arg0.dropDownItemSelected(arg1, arg0, arg3.element)
			arg0.currentValueText:setText(Engine.Localize(registerVal2))
		end
		__FUNC_30B_(arg0, arg1)
		UpdateState(arg0, arg3)
		arg0.DropDownList:updateDataSource()
		CoD.Menu.UpdateButtonShownState(arg0, arg2, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return true
	end

	arg0:registerEventHandler("dropdown_item_selected", __FUNC_AF2_)
	local function __FUNC_D8C_(arg0, arg2)
		if arg0.inUse then
			__FUNC_30B_(arg0, arg1)
			UpdateState(arg0, arg2)
			return true
		end
		return false
	end

	arg0:registerEventHandler("dropdown_item_cancelled", __FUNC_D8C_)
	local function __FUNC_E20_(arg0, arg2)
		arg0.DropDownList:updateDataSource()
		local registerVal2 = type(arg0.dropDownRefresh)
		if registerVal2 == "function" then
			registerVal2 = arg0.dropDownRefresh(arg1, arg0, arg0.DropDownList)
			arg0.currentValueText:setText(Engine.Localize(registerVal2))
		end
		UpdateState(arg0, arg2)
	end

	arg0:registerEventHandler("options_refresh", __FUNC_E20_)
	arg0.listBackground:setHandleMouseButton(true)
	local function __FUNC_FA7_(arg0, arg1)
		if arg1.inside then
			arg0.m_clickedInside = nil
		end
	end

	arg0.listBackground:registerEventHandler("leftmouseup", __FUNC_FA7_)
	local function __FUNC_1012_(arg0, arg1)
		arg0.m_clickedInside = true
	end

	arg0.listBackground:registerEventHandler("leftmousedown", __FUNC_1012_)
	local function __FUNC_105B_(arg2, arg3)
		if arg0.inUse and not arg2.m_clickedInside then
			__FUNC_30B_(arg0, arg1)
			UpdateState(arg0, arg3)
			return true
		end
		arg2.m_clickedInside = nil
		return false
	end

	arg0.listBackground:registerEventHandler("leftclick_outside", __FUNC_105B_)
	local function __FUNC_1122_(arg0, arg1)
		if arg1.element.m_dropdownItem then
			return arg0:dispatchEventToParent(arg1)
		end
		return true
	end

	arg0:registerEventHandler("mouse_left_click", __FUNC_1122_)
	local function __FUNC_11CC_(arg1, arg2, arg3, arg4)
		local registerVal4 = arg2:AcceptGamePadButtonInputFromModelCallback(arg3)
		if not arg0.disabled and not arg2.m_disableNavigation and registerVal4 then
			if not arg0.inUse then
				__FUNC_30B_(arg0, arg3)
				local registerVal6 = {}
				registerVal6.name = "update_state"
				registerVal6.controller = arg3
				UpdateState(arg0, registerVal6)
			end
			return true
		end
	end

	arg2:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_11CC_)
	if arg2.menuName == "StartMenu_Options_Sound_PC" then
		local function __FUNC_133E_(arg0, arg1, arg2)
			local registerVal3 = type(arg0.dropDownCurrentValue)
			registerVal3 = arg0.dropDownCurrentValue(arg1, arg0)
			local registerVal6 = {}
			registerVal6.value = registerVal3
			local registerVal4 = arg0.DropDownList:findItem(registerVal6, nil, false, nil)
			local registerVal5 = registerVal4:getModel()
			registerVal6 = Engine.GetModel(registerVal5, arg2)
			local registerVal7 = Engine.GetModelValue(registerVal6)
			if registerVal3 == "function" and registerVal4 and registerVal5 and registerVal6 and registerVal7 and registerVal7 ~= "" then
				return registerVal7
			end
			return nil
		end

		local function __FUNC_14FE_(arg0, arg1)
			local registerVal2 = arg0:getModel()
			if registerVal2 then
				local registerVal3 = Engine.CreateModel(registerVal2, "alias")
				Engine.SetModelValue(registerVal3, arg1)
			end
		end

		local function __FUNC_15CD_(arg2, arg3)
			local registerVal2 = __FUNC_133E_(arg0, arg1, "alias")
			if registerVal2 then
				StopMPMusicPreview(arg1, arg0)
				return true
			end
			return false
		end

		arg0:registerEventHandler("list_item_lose_focus", __FUNC_15CD_)
		local function __FUNC_165F_(arg2, arg3)
			local registerVal2 = __FUNC_133E_(arg0, arg1, "alias")
			if registerVal2 then
				StopMPMusicPreview(arg1, arg0)
			end
		end

		arg0:registerEventHandler("lose_focus", __FUNC_165F_)
		local function __FUNC_16DF_(arg1, arg2, arg3, arg4)
			local registerVal4 = __FUNC_133E_(arg0, arg3, "alias")
			if registerVal4 then
				__FUNC_14FE_(arg0, registerVal4)
				StopMPMusicPreview(arg3, arg0)
				PlayMPMusicPreview(arg3, arg0)
				return true
			end
			return false
		end

		local function __FUNC_17AB_(arg1, arg2, arg3)
			local registerVal3 = __FUNC_133E_(arg0, arg3, "alias")
			if registerVal3 then
				CoD.Menu.SetButtonLabel(arg2, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_PLAY_MUSIC_SAMPLE")
				return true
			end
			return false
		end

		arg2:AddButtonCallbackFunction(arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_16DF_, __FUNC_17AB_)
	end
end

local function __FUNC_18E7_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_6D6_(arg0, arg1, arg2)
	end
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.OptionDropdown = registerVal4
local function __FUNC_1957_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.OptionDropdown)
	registerVal2.id = "OptionDropdown"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 250.000000, 519.000000)
	registerVal3:setTopBottom(true, false, 34.000000, 292.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.listBackground = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.100000, 0.100000, 0.100000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.fullBacking = registerVal4
	local registerVal5 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.StartMenuframenoBG00 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 9.340000, 285.000000)
	registerVal6:setTopBottom(true, false, 4.500000, 29.500000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.labelText = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 250.000000, 491.000000)
	registerVal7:setTopBottom(true, false, 7.250000, 26.750000)
	registerVal7:setRGB(0.100000, 0.100000, 0.100000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.dropdownBacking = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 255.000000, 470.000000)
	registerVal8:setTopBottom(true, false, 4.250000, 29.250000)
	registerVal8:setText(Engine.Localize(""))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.currentValueText = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(false, true, -5.500000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarB = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 2.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarT = registerVal10
	local registerVal11 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, true, false, 1.000000, 0.000000, false, true)
	registerVal11:makeFocusable()
	registerVal11:setLeftRight(false, true, -251.000000, 0.000000)
	registerVal11:setTopBottom(true, false, 34.000000, 292.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setWidgetType(CoD.OptionDropdownItem)
	registerVal11:setVerticalCount(10.000000)
	registerVal11:setVerticalScrollbar(CoD.verticalScrollbar)
	registerVal2:addElement(registerVal11)
	registerVal2.DropDownList = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, true, 468.120000, -1.000000)
	registerVal12:setTopBottom(true, true, 4.500000, -4.500000)
	registerVal12:setZRot(90.000000)
	registerVal12:setScale(0.600000)
	registerVal12:setImage(RegisterImage("uie_characterminiselectorarrow"))
	registerVal2:addElement(registerVal12)
	registerVal2.Arrow = registerVal12
	local registerVal13 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal13:setRGB(0.870000, 0.370000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.frameOutline = registerVal13
	local function __FUNC_2969_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.labelText:linkToElementModel(registerVal2, "label", true, __FUNC_2969_)
	local function __FUNC_2A22_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setDataSource(registerVal1)
		end
	end

	registerVal2.DropDownList:linkToElementModel(registerVal2, "datasource", true, __FUNC_2A22_)
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_2ABA_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.listBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.labelText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.currentValueText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.currentValueText:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 0.000000, 4.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DropDownList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Arrow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Arrow:setZRot(90.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.frameOutline:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_2ABA_
	local function __FUNC_2F29_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.listBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal8:completeAnimation()
		registerVal2.currentValueText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DropDownList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Arrow:setZRot(90.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.frameOutline:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.Focus = __FUNC_2F29_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_325C_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal6:completeAnimation()
		registerVal2.labelText:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.currentValueText:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal12:completeAnimation()
		registerVal2.Arrow:setRGB(0.200000, 0.200000, 0.200000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal15.DefaultClip = __FUNC_325C_
	registerVal14.Disabled = registerVal15
	registerVal15 = {}
	local function __FUNC_3424_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.listBackground:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.labelText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.currentValueText:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.DropDownList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Arrow:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Arrow:setZRot(270.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal15.DefaultClip = __FUNC_3424_
	registerVal14.InUse = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Disabled"
	local function __FUNC_3799_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal17.condition = __FUNC_3799_
	local registerVal18 = {}
	registerVal18.stateName = "InUse"
	local function __FUNC_37EC_(arg0, arg1, arg2)
		return DropDownListIsInUse(arg1)
	end

	registerVal18.condition = __FUNC_37EC_
	registerVal16 = {registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal16)
	local function __FUNC_3845_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_3845_)
	local function __FUNC_3962_(arg0, arg2)
		local registerVal2 = IsInDefaultState(arg0)
		if registerVal2 then
			MakeElementNotFocusable(registerVal2, "DropDownList", arg1)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_3962_)
	registerVal11.id = "DropDownList"
	local function __FUNC_3A05_(arg0, arg1)
		local registerVal2 = arg0.DropDownList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_3A05_)
	local function __FUNC_3B0C_(arg0)
		arg0.StartMenuframenoBG00:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.DropDownList:close()
		arg0.frameOutline:close()
		arg0.labelText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3B0C_)
	if __FUNC_18E7_ then
		__FUNC_18E7_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.OptionDropdown.new = __FUNC_1957_

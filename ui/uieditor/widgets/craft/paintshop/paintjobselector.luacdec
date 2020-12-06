-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Craft.Paintshop.PaintjobSelectorOptions")
require("ui.uieditor.widgets.Craft.Paintshop.PaintjobSelectorItem")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PaintjobSelector = registerVal1
function CoD.PaintjobSelector.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PaintjobSelector)
	registerVal2.id = "PaintjobSelector"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 340.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 572.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 338.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 453.000000)
	registerVal3:setWidgetType(CoD.PaintjobSelectorItem)
	registerVal3:setHorizontalCount(3.000000)
	registerVal3:setVerticalCount(4.000000)
	registerVal3:setSpacing(7.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	registerVal3:setDataSource("PaintjobList")
	local function __FUNC_A37_(arg0, arg2)
		PaintjobSelector_GainFocus(registerVal2, arg0, arg1)
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_A37_)
	local function __FUNC_AA0_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_AA0_)
	local function __FUNC_C92_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_C92_)
	local function __FUNC_D62_(arg0, arg1, arg2, arg3)
		local registerVal4 = ListHasElements(arg0)
		registerVal4 = CraftItemIsReadOnly(arg0, arg2)
		if registerVal4 and not registerVal4 then
			OpenEmblemEditor(arg0, arg1, arg2, arg3, "PaintjobSelect")
			return true
		else
			registerVal4 = ListHasElements(arg0)
			registerVal4 = CraftItemIsReadOnly(arg0, arg2)
			if registerVal4 and registerVal4 then
				FileshareShowReadonlyToast(registerVal2, arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_EB4_(arg0, arg1, arg2)
		local registerVal3 = ListHasElements(arg0)
		registerVal3 = CraftItemIsReadOnly(arg0, arg2)
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = ListHasElements(arg0)
			registerVal3 = CraftItemIsReadOnly(arg0, arg2)
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_D62_, __FUNC_EB4_, false)
	local function __FUNC_1098_(arg0, arg1, arg2, arg3)
		local registerVal4 = ListHasElements(arg0)
		registerVal4 = Paintjobs_IsOccupied(arg0, arg2)
		if registerVal4 and registerVal4 then
			OpenPopup(registerVal2, "PaintjobSelectorOptions", arg2, "", "")
			return true
		end
	end

	local function __FUNC_1189_(arg0, arg1, arg2)
		local registerVal3 = ListHasElements(arg0)
		registerVal3 = Paintjobs_IsOccupied(arg0, arg2)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_PAINTJOB_OPTIONS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_1098_, __FUNC_1189_, false)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "EmptySlot"
	local function __FUNC_12F5_(arg0, arg2, arg3)
		local registerVal3 = Paintjobs_IsOccupied(arg2, arg1)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_12F5_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.paintjobsList = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_1356_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.paintjobsList:setLeftRight(true, false, 0.000000, 338.000000)
		registerVal2.paintjobsList:setTopBottom(true, false, 0.000000, 453.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_1356_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	registerVal3.id = "paintjobsList"
	local function __FUNC_14B1_(arg0, arg1)
		local registerVal2 = arg0.paintjobsList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_14B1_)
	local function __FUNC_15B9_(arg0)
		arg0.paintjobsList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_15B9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


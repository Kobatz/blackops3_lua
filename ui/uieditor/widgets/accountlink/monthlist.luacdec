-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.InputButton")
require("ui.uieditor.widgets.AccountLink.MonthItem")
require("ui.uieditor.widgets.Scrollbars.verticalScrollbarNew")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MonthList = registerVal1
function CoD.MonthList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MonthList)
	registerVal2.id = "MonthList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 385.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.InputButton.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.Text:setText(Engine.Localize("MENU_NEW"))
	local function __FUNC_C63_(arg0, arg2)
		ToggleDropdownListInUse_Console(registerVal2, arg1)
		UpdateState(registerVal2, arg2)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("button_action", __FUNC_C63_)
	registerVal2:addElement(registerVal3)
	registerVal2.DropdownRoot = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 12.750000, -12.750000)
	registerVal4:setTopBottom(true, false, 5.500000, 30.500000)
	registerVal4:setText(Engine.Localize(""))
	registerVal4:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.SelectedValue = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, true)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(false, false, -192.500000, 192.500000)
	registerVal5:setTopBottom(false, false, -88.000000, 90.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setDataSource("Month")
	registerVal5:setWidgetType(CoD.MonthItem)
	registerVal5:setVerticalCount(5.000000)
	registerVal5:setVerticalScrollbar(CoD.verticalScrollbarNew)
	local function __FUNC_D2B_(arg0, arg2)
		ToggleDropdownListInUse_Console(registerVal2, arg1)
		UpdateState(registerVal2, arg2)
		AccountLink_SelectMonth(registerVal2, arg0, arg1)
		return nil
	end

	registerVal5:registerEventHandler("list_item_button_action", __FUNC_D2B_)
	registerVal2:addElement(registerVal5)
	registerVal2.DropdownList = registerVal5
	local registerVal6 = {}
	registerVal6.left = registerVal5
	registerVal6.down = registerVal5
	registerVal3.navigation = registerVal6
	registerVal6 = {}
	registerVal6.left = registerVal3
	registerVal6.up = registerVal3
	registerVal5.navigation = registerVal6
	registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_DEF_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal2.DropdownList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_DEF_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_EF0_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal2.DropdownList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_EF0_
	registerVal6.InUse = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "InUse"
	local function __FUNC_FEF_(arg0, arg1, arg2)
		return DropdownListIsInUse_Console(arg1)
	end

	registerVal9.condition = __FUNC_FEF_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_104D_(arg0, arg2)
		local registerVal2 = IsInDefaultState(arg0)
		if registerVal2 then
			MakeElementNotFocusable(registerVal2, "DropdownList", arg1)
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_104D_)
	registerVal3.id = "DropdownRoot"
	registerVal5.id = "DropdownList"
	local function __FUNC_10F1_(arg0, arg1)
		local registerVal2 = arg0.DropdownList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_10F1_)
	local function __FUNC_11F8_(arg0)
		arg0.DropdownRoot:close()
		arg0.DropdownList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11F8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


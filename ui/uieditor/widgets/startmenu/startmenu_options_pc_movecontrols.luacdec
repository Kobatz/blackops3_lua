-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_KeyBinder")
require("ui.uieditor.widgets.PC.Utility.OptionInfoWidget")
local function __FUNC_27F_(arg0, arg1)
	CoD.perController[arg1].controlsCategoryPC = "move"
end

local function __FUNC_316_(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "options_refresh"
	registerVal4.controller = arg1
	arg0:dispatchEventToChildren(registerVal4)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_PC_MoveControls = registerVal3
local function __FUNC_3B0_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_27F_ then
		__FUNC_27F_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_PC_MoveControls)
	registerVal2.id = "StartMenu_Options_PC_MoveControls"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 600.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal3:setTopBottom(true, false, 30.000000, 506.000000)
	registerVal3:setDataSource("OptionKeyBindings")
	registerVal3:setWidgetType(CoD.StartMenu_Options_KeyBinder)
	registerVal3:setVerticalCount(14.000000)
	registerVal3:setSpacing(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.keybindList = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal4:setText(Engine.Localize("MENU_KEYBINDS"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.keybindText = registerVal4
	local registerVal5 = CoD.OptionInfoWidget.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 550.000000, 950.000000)
	registerVal5:setTopBottom(true, false, 30.000000, 330.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.optionInfo = registerVal5
	local function __FUNC_B59_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.description:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal3, "description", true, __FUNC_B59_)
	local function __FUNC_C33_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.title.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal3, "label", true, __FUNC_C33_)
	registerVal3.id = "keybindList"
	local function __FUNC_D23_(arg0, arg1)
		local registerVal2 = arg0.keybindList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_D23_)
	local function __FUNC_E27_(arg0)
		arg0.keybindList:close()
		arg0.optionInfo:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E27_)
	if __FUNC_316_ then
		__FUNC_316_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Options_PC_MoveControls.new = __FUNC_3B0_

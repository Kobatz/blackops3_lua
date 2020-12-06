-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_CheckBoxOption")
require("ui.uieditor.widgets.PC.Utility.OptionInfoWidget")
local function __FUNC_27F_(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "options_refresh"
	registerVal4.controller = arg1
	arg0:dispatchEventToChildren(registerVal4)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_PC_GamepadControls = registerVal2
local function __FUNC_318_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_PC_GamepadControls)
	registerVal2.id = "StartMenu_Options_PC_GamepadControls"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 600.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal3:setTopBottom(true, false, 30.000000, 540.000000)
	registerVal3:setDataSource("OptionGamepadSettingsPC")
	registerVal3:setWidgetType(CoD.StartMenu_Options_CheckBoxOption)
	registerVal3:setVerticalCount(15.000000)
	registerVal3:setSpacing(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.keybindList = registerVal3
	local registerVal4 = CoD.OptionInfoWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 550.000000, 950.000000)
	registerVal4:setTopBottom(true, false, 30.000000, 330.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.optionInfo = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal5:setTopBottom(true, false, 328.000000, 358.000000)
	registerVal5:setText(Engine.Localize("PLATFORM_SPLITSCREEN"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.splitscreenText = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal6:setText(Engine.Localize("PLATFORM_GAMEPAD"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.gamepadText = registerVal6
	local function __FUNC_BF7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.description:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal3, "description", true, __FUNC_BF7_)
	local function __FUNC_CCF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.title.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal3, "label", true, __FUNC_CCF_)
	registerVal3.id = "keybindList"
	local function __FUNC_DBF_(arg0, arg1)
		local registerVal2 = arg0.keybindList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_DBF_)
	local function __FUNC_EC3_(arg0)
		arg0.keybindList:close()
		arg0.optionInfo:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_EC3_)
	if __FUNC_27F_ then
		__FUNC_27F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Options_PC_GamepadControls.new = __FUNC_318_

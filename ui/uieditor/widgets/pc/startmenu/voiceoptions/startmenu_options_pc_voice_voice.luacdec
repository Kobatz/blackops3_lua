-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.PC.StartMenu.Dropdown.OptionDropdown")
require("ui.uieditor.widgets.PC.Utility.OptionInfoWidget")
local function __FUNC_275_(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "options_refresh"
	registerVal4.controller = arg1
	arg0:dispatchEventToChildren(registerVal4)
	arg0.voiceOptionsList.m_managedItemPriority = true
	local function __FUNC_3A5_(arg0, arg1)
		for index2=1.000000, arg0.voiceOptionsList.requestedRowCount, 1.000000 do
			local registerVal6 = arg0.voiceOptionsList:getItemAtPosition(index2, 1.000000)
			if arg1.inUse then
				if registerVal6 ~= arg1.widget then
					registerVal6.m_inputDisabled = true
				else
					registerVal6.m_inputDisabled = false
				end
			end
		end
	end

	arg0:registerEventHandler("dropdown_triggered", __FUNC_3A5_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_PC_Voice_Voice = registerVal2
local function __FUNC_4D9_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_PC_Voice_Voice)
	registerVal2.id = "StartMenu_Options_PC_Voice_Voice"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 600.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal3:setTopBottom(true, false, 30.000000, 370.000000)
	registerVal3:setDataSource("OptionVoiceVoice")
	registerVal3:setWidgetType(CoD.OptionDropdown)
	registerVal3:setVerticalCount(10.000000)
	registerVal3:setSpacing(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.voiceOptionsList = registerVal3
	local registerVal4 = CoD.OptionInfoWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 550.000000, 950.000000)
	registerVal4:setTopBottom(true, false, 30.000000, 330.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.optionInfo = registerVal4
	local function __FUNC_AA8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.description:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal3, "description", true, __FUNC_AA8_)
	local function __FUNC_B83_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.title.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal3, "label", true, __FUNC_B83_)
	registerVal3.id = "voiceOptionsList"
	local function __FUNC_C73_(arg0, arg1)
		local registerVal2 = arg0.voiceOptionsList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_C73_)
	local function __FUNC_D7C_(arg0)
		arg0.voiceOptionsList:close()
		arg0.optionInfo:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D7C_)
	if __FUNC_275_ then
		__FUNC_275_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Options_PC_Voice_Voice.new = __FUNC_4D9_

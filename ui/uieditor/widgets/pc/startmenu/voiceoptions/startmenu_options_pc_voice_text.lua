-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.PC.Utility.OptionInfoWidget")
require("ui.uieditor.widgets.PC.StartMenu.Dropdown.OptionDropdown")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_PC_Voice_Text = registerVal1
function CoD.StartMenu_Options_PC_Voice_Text.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_PC_Voice_Text)
	registerVal2.id = "StartMenu_Options_PC_Voice_Text"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 600.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.OptionInfoWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 550.000000, 950.000000)
	registerVal3:setTopBottom(true, false, 30.000000, 330.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.optionInfo = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal4:setTopBottom(true, false, 30.000000, 370.000000)
	registerVal4:setDataSource("OptionVoiceText")
	registerVal4:setWidgetType(CoD.OptionDropdown)
	registerVal4:setVerticalCount(10.000000)
	registerVal4:setSpacing(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.textOptionsList = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal5:setTopBottom(true, false, 66.000000, 96.000000)
	registerVal5:setText(Engine.Localize("PLATFORM_CHAT_CHANNEL_CAPS"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.ChannelText = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal6:setTopBottom(true, false, 201.000000, 231.000000)
	registerVal6:setText(Engine.Localize("PLATFORM_CHAT_PREFIX_CAPS"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.PrefixText = registerVal6
	local function __FUNC_B5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.description:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal4, "description", true, __FUNC_B5A_)
	local function __FUNC_C33_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.title.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal4, "label", true, __FUNC_C33_)
	registerVal4.id = "textOptionsList"
	local function __FUNC_D23_(arg0, arg1)
		local registerVal2 = arg0.textOptionsList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_D23_)
	local function __FUNC_E2B_(arg0)
		arg0.optionInfo:close()
		arg0.textOptionsList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E2B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


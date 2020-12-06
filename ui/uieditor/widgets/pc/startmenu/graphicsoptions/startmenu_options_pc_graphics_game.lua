-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.PC.StartMenu.Dropdown.OptionDropdown")
require("ui.uieditor.widgets.PC.Utility.OptionInfoWidget")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Graphics_ColorBlindMinimapPreview")
local function __FUNC_2DE_(arg0, arg1, arg2)
	local registerVal5 = {}
	registerVal5.name = "options_refresh"
	registerVal5.controller = arg1
	arg0:dispatchEventToChildren(registerVal5)
	arg0.graphicsList.m_managedItemPriority = true
	local function __FUNC_409_(arg0, arg1)
		for index2=1.000000, arg0.graphicsList.requestedRowCount, 1.000000 do
			local registerVal6 = arg0.graphicsList:getItemAtPosition(index2, 1.000000)
			if arg1.inUse then
				if registerVal6 ~= arg1.widget then
					registerVal6.m_inputDisabled = true
				else
					registerVal6.m_inputDisabled = false
				end
			end
		end
	end

	arg0:registerEventHandler("dropdown_triggered", __FUNC_409_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_PC_Graphics_Game = registerVal2
local function __FUNC_539_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_PC_Graphics_Game)
	registerVal2.id = "StartMenu_Options_PC_Graphics_Game"
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
	registerVal3:setWidgetType(CoD.OptionDropdown)
	registerVal3:setVerticalCount(14.000000)
	registerVal3:setSpacing(0.000000)
	registerVal3:setDataSource("OptionGraphicsGame")
	registerVal2:addElement(registerVal3)
	registerVal2.graphicsList = registerVal3
	local registerVal4 = CoD.OptionInfoWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 550.000000, 950.000000)
	registerVal4:setTopBottom(true, false, 30.000000, 330.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.optionInfo = registerVal4
	local registerVal5 = CoD.StartMenu_Options_Graphics_ColorBlindMinimapPreview.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, 0.000000, 500.000000)
	registerVal5:setTopBottom(true, false, 200.000000, 460.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.StartMenuOptionsGraphicsColorBlindMinimapPreview0 = registerVal5
	local function __FUNC_C24_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.description:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal3, "description", true, __FUNC_C24_)
	local function __FUNC_CFF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.title.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal3, "label", true, __FUNC_CFF_)
	local function __FUNC_DEF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setAlpha(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal3, "minimapAlpha", true, __FUNC_DEF_)
	registerVal3.id = "graphicsList"
	local function __FUNC_E81_(arg0, arg1)
		local registerVal2 = arg0.graphicsList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_E81_)
	local function __FUNC_F88_(arg0)
		arg0.graphicsList:close()
		arg0.optionInfo:close()
		arg0.StartMenuOptionsGraphicsColorBlindMinimapPreview0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F88_)
	if __FUNC_2DE_ then
		__FUNC_2DE_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Options_PC_Graphics_Game.new = __FUNC_539_

-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.StartMenu.SelectionListButton")
require("ui.uieditor.widgets.MenuSpecificWidgets.StartMenu.MissionObjectiveGroup")
local function __FUNC_284_(arg0, arg1)
	arg0.handleGamepadButton = nil
	arg0.m_disableNavigation = true
	local registerVal3 = Engine.DvarString(nil, "mapname")
	local registerVal2 = CoD.GetMapValue(registerVal3, "mapName", Engine.DvarString(nil, "mapname"))
	registerVal3 = Engine.Localize((registerVal2 .. "_CAPS"))
	arg0.locationText:setText(registerVal3)
	local registerVal4, registerVal5, registerVal6, registerVal7 = arg0.locationText:getLocalRect()
	local registerVal9 = arg0.locationText:getText()
	local registerVal8, registerVal9, registerVal10, registerVal11 = GetTextDimensions(registerVal9, CoD.fonts.Big, CoD.textSize.Big)
	arg0.geographicText:setLeftRight(true, false, ((registerVal4 + registerVal10) + 10.000000), ((registerVal4 + registerVal10) + 300.000000))
	local registerVal12 = Engine.Localize((registerVal2 .. "_LOC"))
	arg0.geographicText:setText(registerVal12)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MissionTab = registerVal2
local function __FUNC_5AF_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.MissionTab)
	registerVal2.id = "MissionTab"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1090.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 560.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 20.000000, -20.000000)
	registerVal3:setTopBottom(true, false, 20.000000, 75.000000)
	registerVal3:setRGB(0.820000, 0.820000, 0.830000)
	registerVal2:addElement(registerVal3)
	registerVal2.headerBackground = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 32.000000, 323.000000)
	registerVal4:setTopBottom(true, false, 26.560000, 74.560000)
	registerVal4:setRGB(0.570000, 0.580000, 0.590000)
	registerVal4:setText(Engine.Localize("CPUI_CP_MI_SING_BLACKSTATION_NI_CAPS"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.locationText = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 412.000000, 524.000000)
	registerVal5:setTopBottom(true, false, 41.060000, 71.060000)
	registerVal5:setRGB(0.950000, 0.950000, 0.950000)
	registerVal5:setText(Engine.Localize("CPUI_CP_MI_SING_BLACKSTATION_NI_LOC"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.geographicText = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 20.000000, 280.000000)
	registerVal6:setTopBottom(true, false, 90.000000, 184.000000)
	registerVal6:setDataSource("StartMenuSelectionList")
	registerVal6:setWidgetType(CoD.SelectionListButton)
	registerVal6:setVerticalCount(3.000000)
	local function __FUNC_12A7_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_12A7_)
	local function __FUNC_1437_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_1437_)
	local function __FUNC_1506_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_1567_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1506_, __FUNC_1567_, false)
	registerVal2:addElement(registerVal6)
	registerVal2.selectionList = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 294.000000, 1068.000000)
	registerVal7:setTopBottom(true, false, 90.000000, 520.000000)
	registerVal7:setupCompassMap(Enum.CompassType.COMPASS_TYPE_FULL)
	registerVal2:addElement(registerVal7)
	registerVal2.MinimapFull0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 294.000000, 1068.000000)
	registerVal8:setTopBottom(true, false, 90.000000, 520.000000)
	registerVal8:setupCompassItems(Enum.CompassType.COMPASS_TYPE_FULL)
	registerVal2:addElement(registerVal8)
	registerVal2.MinimapFull1 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 294.000000, 1068.000000)
	registerVal9:setTopBottom(true, false, 90.000000, 520.000000)
	registerVal9:setupCompassOverlay(Enum.CompassType.COMPASS_TYPE_FULL)
	registerVal2:addElement(registerVal9)
	registerVal2.MinimapFull2 = registerVal9
	local registerVal10 = LUI.UIList.new(arg0, arg1, 10.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal10:makeFocusable()
	registerVal10:setLeftRight(true, false, 20.000000, 280.000000)
	registerVal10:setTopBottom(true, false, 190.000000, 1020.000000)
	registerVal10:setDataSource("CurrentObjectivesList")
	registerVal10:setWidgetType(CoD.MissionObjectiveGroup)
	registerVal10:setVerticalCount(3.000000)
	registerVal10:setSpacing(10.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.objectivesList = registerVal10
	local registerVal11 = {}
	registerVal11.down = registerVal10
	registerVal6.navigation = registerVal11
	registerVal11 = {}
	registerVal11.up = registerVal6
	registerVal10.navigation = registerVal11
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal6.id = "selectionList"
	registerVal10.id = "objectivesList"
	local function __FUNC_1662_(arg0, arg1)
		local registerVal2 = arg0.selectionList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1662_)
	local function __FUNC_1769_(arg0)
		arg0.selectionList:close()
		arg0.objectivesList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1769_)
	if __FUNC_284_ then
		__FUNC_284_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MissionTab.new = __FUNC_5AF_

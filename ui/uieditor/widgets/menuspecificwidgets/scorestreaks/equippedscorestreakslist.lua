-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.equippedScoreStreaksButton")
local function __FUNC_23F_(arg0)
	local function __FUNC_2E1_(arg0, arg1)
		arg0.scorestreaks:updateDataSource()
		return arg0.m_eventHandlers.update_state(arg0, arg1)
	end

	arg0:registerEventHandler("update_state", __FUNC_2E1_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.equippedScoreStreaksList = registerVal2
local function __FUNC_364_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.equippedScoreStreaksList)
	registerVal2.id = "equippedScoreStreaksList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 5.000000, -9.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.titleBacking = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 9.000000, 84.000000)
	registerVal4:setTopBottom(true, false, 3.000000, 23.000000)
	registerVal4:setText(Engine.Localize(LocalizeToUpperString("MPUI_SELECTED")))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.title = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 5.000000, -9.000000)
	registerVal5:setTopBottom(true, true, 24.000000, 0.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.100000)
	registerVal2:addElement(registerVal5)
	registerVal2.bodyBacking = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 70.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 10.000000, 465.000000)
	registerVal6:setTopBottom(true, false, 29.000000, 125.000000)
	registerVal6:setDataSource("EquippedScorestreaksList")
	registerVal6:setWidgetType(CoD.equippedScoreStreaksButton)
	registerVal6:setHorizontalCount(3.000000)
	registerVal6:setSpacing(70.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.scorestreaks = registerVal6
	registerVal6.id = "scorestreaks"
	local function __FUNC_AF7_(arg0, arg1)
		local registerVal2 = arg0.scorestreaks:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_AF7_)
	local function __FUNC_BFC_(arg0)
		arg0.scorestreaks:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BFC_)
	if __FUNC_23F_ then
		__FUNC_23F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.equippedScoreStreaksList.new = __FUNC_364_

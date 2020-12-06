-- Decompiled with CoDLUIDecompiler by JariK

require("ui.LUI.LUIVerticalList")
require("ui.LUI.LUIGridLayout")
local registerVal1 = InheritFrom(LUI.GridLayout)
LUI.UIList = registerVal1
local function __FUNC_5E7_(arg0, arg1, arg2)
	if arg0.m_eventHandlers[arg1] then
		local function __FUNC_693_(arg0, arg1)
			arg0.m_eventHandlers[arg1](arg0, arg1)
			return arg2(arg0, arg1)
		end

		arg0:registerEventHandler(arg1, __FUNC_693_)
	else
		arg0:registerEventHandler(arg1, arg2)
	end
end

local function __FUNC_6E0_(arg0, arg1)
	local function __FUNC_8AA_(arg2, arg3)
		if arg3 or arg3.sourceType ~= "list" then
			if arg3.isMouse then
				if not arg0.hasListFocus then
					local registerVal4 = {}
					registerVal4.name = "gain_focus"
					registerVal4.controller = arg3.controller
					registerVal4.selectedIndex = arg2.gridInfoTable.zeroBasedIndex
					registerVal4.isMouse = arg3.isMouse
					arg0:processEvent(registerVal4)
				end
				arg0.super.setActiveItem(arg0, arg2)
				arg0:setListItemInFocus(arg1, nil, arg3.isMouse)
				local registerVal2 = arg0:playSound("list_up")
				if not registerVal2 then
					arg0:playSound("list_right")
				end
				return true
			else
				arg2.updateFocusEvent(arg2)
			end
			return true
		end
		if not arg0.m_managedItemPriority then
			arg2:setPriority(100.000000)
		end
		arg2.super.gainFocus(arg2, arg3)
		arg2:dispatchEventToChildren(arg3)
		registerVal2 = LUI.ShallowCopy(arg3)
		registerVal2.name = "list_item_gain_focus"
		arg2:dispatchEventToParentWithSelf(registerVal2)
		if arg0.buttonPromptGainFocusEventHandler then
			arg0.buttonPromptGainFocusEventHandler(arg2, arg3)
		end
		return true
	end

	__FUNC_5E7_(arg1, "gain_focus", __FUNC_8AA_)
	local function __FUNC_D36_(arg1, arg2)
		if not arg0.m_managedItemPriority then
			arg1:setPriority(0.000000)
		end
		arg1.super.loseFocus(arg1, arg2)
		local registerVal2 = LUI.ShallowCopy(arg2)
		registerVal2.name = "list_item_lose_focus"
		arg0:dispatchEventToParentWithElement(registerVal2, arg1)
		if arg1 == arg0.activeWidget and not arg2.isMouse then
			local registerVal5 = {}
			registerVal5.name = "lose_focus"
			registerVal5.controller = arg2.controller
			arg0:processEvent(registerVal5)
		end
		if arg0.buttonPromptLoseFocusEventHandler then
			arg0.buttonPromptLoseFocusEventHandler(arg1, arg2)
		end
		return true
	end

	__FUNC_5E7_(arg1, "lose_focus", __FUNC_D36_)
	local registerVal2 = {}
	registerVal2.up = arg0.itemNavigationUp
	registerVal2.down = arg0.itemNavigationDown
	registerVal2.left = arg0.itemNavigationLeft
	registerVal2.right = arg0.itemNavigationRight
	arg1.navigation = registerVal2
	arg1.updateFocusEvent = arg0.itemActivate
end

function LUI.UIList.GetListItemFromFocusElement(arg0, arg1)
	local registerVal2 = arg1:getParent()
	if registerVal2 == arg0 then
	else
		local registerVal3 = registerVal2:getParent()
	end
	return registerVal2
end

local function __FUNC_103F_(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
	local registerVal11 = LUI.GridLayout.new(arg0, arg1, true, 0.000000, 0.000000, arg2, arg3, __FUNC_6E0_, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
	registerVal11:setClass(LUI.UIList)
	registerVal11.isUIList = true
	registerVal11.m_focusable = true
	local function __FUNC_176C_(arg0, arg1, arg2, arg3)
		if arg0 == registerVal11.activeWidget then
			local registerVal4 = CoD.Menu.AnyButtonConditionTrue(arg0, arg1, arg2, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
			if registerVal4 then
				registerVal11:playSound("list_action")
			else
				registerVal4 = IsGamepad(arg2)
				if CoD.isPC and not registerVal4 and not registerVal11.m_disableNavigation then
					if registerVal11.vCount ~= 1.000000 then
					end
					if registerVal11.hCount ~= 1.000000 then
					end
					if true and true then
						local registerVal6 = registerVal11:navigateItemRight()
						registerVal6 = registerVal11:navigateItemDown()
						if not arg1 or registerVal6 then
							return true
						end
					end
				end
			end
		end
		return false
	end

	CoD.Menu.AddButtonCallbackFunction(arg0, registerVal11, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_176C_)
	local function __FUNC_1A2F_(arg0, arg1)
		registerVal11:setActiveItem(arg0)
	end

	registerVal11.itemActivate = __FUNC_1A2F_
	local function __FUNC_1A7F_(arg0, arg1, arg2, arg3)
		if not registerVal11.m_disableNavigation then
			local registerVal4 = IsDpadButton(arg3)
			if arg1 or not registerVal4 then
				registerVal4 = registerVal11:navigateItemUp()
				if registerVal4 then
					return true
				end
			end
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg0, registerVal11, arg1, Enum.LUIButton.LUI_KEY_UP, "UPARROW", __FUNC_1A7F_)
	local function __FUNC_1B69_(arg0, arg1, arg2, arg3)
		if not registerVal11.m_disableNavigation then
			local registerVal4 = IsDpadButton(arg3)
			if arg1 or not registerVal4 then
				registerVal4 = registerVal11:navigateItemDown()
				if registerVal4 then
					return true
				end
			end
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg0, registerVal11, arg1, Enum.LUIButton.LUI_KEY_DOWN, "DOWNARROW", __FUNC_1B69_)
	local function __FUNC_1C57_(arg0, arg1, arg2, arg3)
		if not registerVal11.m_disableNavigation then
			local registerVal4 = IsDpadButton(arg3)
			if arg1 or not registerVal4 then
				registerVal4 = registerVal11:navigateItemLeft()
				if registerVal4 then
					return true
				end
			end
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg0, registerVal11, arg1, Enum.LUIButton.LUI_KEY_LEFT, "LEFTARROW", __FUNC_1C57_)
	local function __FUNC_1D43_(arg0, arg1, arg2, arg3)
		if not registerVal11.m_disableNavigation then
			local registerVal4 = IsDpadButton(arg3)
			if arg1 or not registerVal4 then
				registerVal4 = registerVal11:navigateItemRight()
				if registerVal4 then
					return true
				end
			end
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg0, registerVal11, arg1, Enum.LUIButton.LUI_KEY_RIGHT, "RIGHTARROW", __FUNC_1D43_)
	if not CoD.isPC and CoD.isMultiplayer then
		local function __FUNC_1E30_(arg0, arg1, arg2, arg3)
			local registerVal4 = CoD.IsShoutcaster(arg2)
			registerVal4 = registerVal11:navigateItemUp()
			if registerVal4 and not registerVal11.m_disableNavigation and registerVal4 then
				return true
			end
		end

		CoD.Menu.AddButtonCallbackFunction(arg0, registerVal11, arg1, Enum.LUIButton.LUI_KEY_NONE, "UPARROW", __FUNC_1E30_, nil, false, true)
		local function __FUNC_1F09_(arg0, arg1, arg2, arg3)
			local registerVal4 = CoD.IsShoutcaster(arg2)
			registerVal4 = registerVal11:navigateItemDown()
			if registerVal4 and not registerVal11.m_disableNavigation and registerVal4 then
				return true
			end
		end

		CoD.Menu.AddButtonCallbackFunction(arg0, registerVal11, arg1, Enum.LUIButton.LUI_KEY_NONE, "DOWNARROW", __FUNC_1F09_, nil, false, true)
		local function __FUNC_1FE3_(arg0, arg1, arg2, arg3)
			local registerVal4 = CoD.IsShoutcaster(arg2)
			registerVal4 = registerVal11:navigateItemLeft()
			if registerVal4 and not registerVal11.m_disableNavigation and registerVal4 then
				return true
			end
		end

		CoD.Menu.AddButtonCallbackFunction(arg0, registerVal11, arg1, Enum.LUIButton.LUI_KEY_NONE, "LEFTARROW", __FUNC_1FE3_, nil, false, true)
		local function __FUNC_20BB_(arg0, arg1, arg2, arg3)
			local registerVal4 = CoD.IsShoutcaster(arg2)
			registerVal4 = registerVal11:navigateItemRight()
			if registerVal4 and not registerVal11.m_disableNavigation and registerVal4 then
				return true
			end
		end

		CoD.Menu.AddButtonCallbackFunction(arg0, registerVal11, arg1, Enum.LUIButton.LUI_KEY_NONE, "RIGHTARROW", __FUNC_20BB_, nil, false, true)
	end
	if CoD.isPC then
		local function __FUNC_2194_(arg0, arg1, arg2, arg3)
			if not registerVal11.m_disableNavigation then
				return registerVal11:scrollUp()
			end
		end

		CoD.Menu.AddButtonCallbackFunction(arg0, registerVal11, arg1, Enum.LUIButton.LUI_KEY_PCKEY_MWHEELUP, "MWHEELUP", __FUNC_2194_)
		local function __FUNC_2217_(arg0, arg1, arg2, arg3)
			if not registerVal11.m_disableNavigation then
				return registerVal11:scrollDown()
			end
		end

		CoD.Menu.AddButtonCallbackFunction(arg0, registerVal11, arg1, Enum.LUIButton.LUI_KEY_PCKEY_MWHEELDOWN, "MWHEELDOWN", __FUNC_2217_)
	end
	return registerVal11
end

LUI.UIList.new = __FUNC_103F_
function LUI.UIList.isWidgetSelectable(arg0, arg1)
	local registerVal2 = arg1:hasClip("Focus")
	if not registerVal2 and not arg1.onlyChildrenFocusable then
		registerVal2 = arg0.super.isWidgetSelectable(arg0, arg1)
	end
	return registerVal2
end

function LUI.UIList.setListItemInFocus(arg0, arg1, arg2, arg3)
	if arg0.hasListFocus then
		if arg1 then
			if arg1 or arg1.gridInfoTable.parentGrid ~= arg0 then
			end
		end
		local registerVal4 = nil:getModel()
		if nil and registerVal4 then
			local registerVal6 = {}
			registerVal6.name = "gain_focus"
			registerVal6.controller = arg0.controller
			registerVal6.sourceType = "list"
			registerVal6.skipGainFocus = arg2
			registerVal6.isMouse = arg3
			nil:processEvent(registerVal6)
			registerVal6 = {}
			registerVal6.name = "list_focus_changed"
			registerVal6.list = arg0
			local registerVal7 = nil:getModel()
			registerVal6.model = registerVal7
			arg0:dispatchEventToParent(registerVal6)
		end
		return nil
	end
	return nil
end

function LUI.UIList.setActiveItem(arg0, arg1, arg2, arg3, arg4)
	arg0.super.setActiveItem(arg0, arg1, arg2)
	arg0:setListItemInFocus(arg1, arg3)
	if arg0.activeWidget and arg0.activeWidget ~= arg0.activeWidget then
		local registerVal8 = {}
		registerVal8.name = "lose_focus"
		registerVal8.controller = arg0.controller
		registerVal8.skipLoseFocus = arg4
		arg0.activeWidget:processEvent(registerVal8)
	end
end

function LUI.UIList.gainFocus(arg0, arg1)
	if not arg0.m_focusable then
		return false
	end
	if arg0.vCount ~= 1.000000 then
	end
	if arg0.hCount ~= 1.000000 then
	end
	if not arg0.ignoreSavedActive then
		if arg1.button then
			if true then
				if arg1.button ~= "left" and arg1.button ~= "right" and arg1.button ~= "up" and arg1.button ~= "down" then
				end
			end
		end
	end
	arg0.hasListFocus = true
	local registerVal8 = {}
	registerVal8.name = "update_state"
	registerVal8.menu = arg0.menu
	arg0:processEvent(registerVal8)
	if arg1.saveEvent then
		local registerVal6 = arg0:setActiveIndex(arg1.saveEvent.focusRow, arg1.saveEvent.focusColumn, arg1.overrideScrollTime)
		if arg1.saveEvent.originalEvent and registerVal6 then
			registerVal8 = {}
			registerVal8.name = "restore_focus"
			registerVal8.saveEvent = arg1.saveEvent.originalEvent
			arg0:dispatchEventToChildren(registerVal8)
		else
			if arg1.selectIndex then
				registerVal6, registerVal7 = arg0:getRowAndColumnForIndex(arg1.selectIndex)
				registerVal8 = arg0:setActiveIndex(registerVal6, registerVal7, arg1.overrideScrollTime)
			else
				if arg0.savedActiveIndex and true then
					registerVal6, registerVal7 = arg0:getRowAndColumnForIndex(arg0.savedActiveIndex)
					registerVal8 = arg0:setActiveIndex(registerVal6, registerVal7)
				end
			end
		end
	end
	if not registerVal8 then
		registerVal6 = arg0:getFirstSelectableItem()
		if arg1.button == "up" then
			registerVal7 = arg0:getLastSelectableItem()
		end
		if registerVal7 then
			arg0:setActiveItem(registerVal7)
		end
	end
	registerVal8 = {}
	registerVal8.name = "gain_list_focus"
	registerVal8.controller = arg0.controller
	arg0:processEventToParent(registerVal8)
	return true
end

function LUI.UIList.loseFocus(arg0, arg1)
	if arg0.hasListFocus then
		arg0:setActiveItem(nil)
		arg0.hasListFocus = false
		local registerVal5 = {}
		registerVal5.name = "update_state"
		registerVal5.menu = arg0.menu
		arg0:processEvent(registerVal5)
		arg0.super.setActiveItem(arg0, arg0.activeWidget)
		registerVal5 = {}
		registerVal5.name = "lose_list_focus"
		registerVal5.controller = arg0.controller
		arg0:processEventToParent(registerVal5)
		return true
	end
	return false
end

function LUI.UIList.RecordCurrFocusedElemID(arg0, arg1)
	if arg0.activeWidget then
		local registerVal5 = {}
		registerVal5.name = arg1.name
		registerVal5.controller = arg0.controller
		registerVal5.id = arg0.id
		local registerVal6 = {}
		registerVal6 = {arg0.id}
		registerVal5.idStack = registerVal6
		registerVal5.listFocus = arg1.id
		registerVal5.focusRow = arg0.activeWidget.gridInfoTable.gridRowIndex
		registerVal5.focusColumn = arg0.activeWidget.gridInfoTable.gridColIndex
		registerVal5.originalEvent = arg1
		registerVal5.isMouse = arg1.isMouse
		arg0:dispatchEventToParent(registerVal5)
		return true
	end
	return false
end

function LUI.UIList.processButtonAction(arg0, arg1)
	if arg0.hasListFocus then
		return arg0:dispatchEventToChildren(arg1)
	end
	return false
end

function LUI.UIList.updateButtonPromptEventHandlers(arg0)
	arg0.buttonPromptGainFocusEventHandler = arg0.m_eventHandlers.gain_focus
	arg0.buttonPromptLoseFocusEventHandler = arg0.m_eventHandlers.lose_focus
	arg0.buttonPromptGamepadButtonEventHandler = arg0.m_eventHandlers.gamepad_button
	if arg0.customWidgetSetup then
		local function __FUNC_3389_(arg0, arg1)
			arg0.customWidgetSetup(arg0, arg1)
			local function __FUNC_3440_(arg1, arg2)
				if arg1 == arg0.activeWidget then
					local registerVal2 = arg1:handleGamepadButton(arg2)
					if not registerVal2 and arg0.buttonPromptGamepadButtonEventHandler then
						local registerVal3 = arg0.buttonPromptGamepadButtonEventHandler(arg1, arg2)
					end
					return registerVal3
				end
			end

			arg1:registerEventHandler("gamepad_button", __FUNC_3440_)
			arg1.buttonPromptAddFunctions = arg0.buttonPromptAddFunctions
		end

		arg0.customWidgetSetup = __FUNC_3389_
	end
	arg0:clearLayout(true)
	arg0:updateLayout(0.000000)
	arg0.m_eventHandlers.gain_focus = LUI.UIList.gainFocus
	arg0.m_eventHandlers.lose_focus = LUI.UIList.loseFocus
	arg0.m_eventHandlers.gamepad_button = nil
end

function LUI.UIList.disableDPadNav(arg0, arg1)
	arg0.dpadDisabled = arg1
end

LUI.UIList:registerEventHandler("gain_focus", LUI.UIList.gainFocus)
LUI.UIList:registerEventHandler("lose_focus", LUI.UIList.loseFocus)
LUI.UIList:registerEventHandler("record_curr_focused_elem_id", LUI.UIList.RecordCurrFocusedElemID)
LUI.UIList:registerEventHandler("button_action", LUI.UIList.processButtonAction)
LUI.UIList.id = "LUIList"
LUI.UIList.setActiveOnUpdate = false

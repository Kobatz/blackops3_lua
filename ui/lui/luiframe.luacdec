-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
LUI.UIFrame = registerVal1
function LUI.UIFrame.new(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = LUI.UIElement.new()
	registerVal5:setClass(LUI.UIFrame)
	registerVal5.controller = arg1
	registerVal5.framedWidget = nil
	registerVal5.widgetType = nil
	registerVal5.menu = arg0
	registerVal5.horizontalPadding = arg2
	registerVal5.verticalPadding = arg3
	registerVal5.m_focusable = true
	registerVal5.anyChildUsesUpdateState = true
	registerVal5.scaleWithWidget = true
	return registerVal5
end

function LUI.UIFrame.close(arg0)
	if arg0.framedWidget ~= nil then
		CoD.Menu.RemoveFromCurrMenuNameList(arg0.framedWidget.id)
		arg0.framedWidget:close()
	end
	LUI.UIElement.close(arg0)
end

function LUI.UIFrame.changeFrameWidget(arg0, arg1, arg2)
	local registerVal3 = type(arg1)
	if registerVal3 == "string" then
		registerVal3 = LUI.getTableFromPath(arg1)
	end
	if arg0.widgetType == registerVal3 then
		return 
	end
	if arg0.framedWidget then
		if arg0.hasFrameFocus then
			local registerVal5 = {}
			registerVal5.name = "lose_focus"
			registerVal5.controller = arg0.controller
			arg0.framedWidget:processEvent(registerVal5)
		end
		CoD.Menu.RemoveFromCurrMenuNameList(arg0.framedWidget.id)
		arg0.framedWidget:close()
		arg0.framedWidget = nil
	end
	arg0.widgetType = registerVal3
	if not arg0.widgetType then
		return 
	end
	if arg0.widgetType and arg0.widgetType.new then
		registerVal3 = arg0.widgetType.new(arg0.menu, arg0.controller)
		arg0.framedWidget = registerVal3
		if arg0.scaleWithWidget then
			registerVal3, registerVal4, registerVal5, registerVal6 = arg0.framedWidget:getLocalRect()
			arg0:setWidth(((registerVal5 - registerVal3) + (arg0.horizontalPadding * 2.000000)))
			arg0:setHeight(((registerVal6 - registerVal4) + (arg0.verticalPadding * 2.000000)))
		end
		CoD.Menu.AddToCurrMenuNameList(arg0.framedWidget.id)
		arg0.framedWidget.m_disableNavigation = true
		arg0:addElement(arg0.framedWidget)
		arg0.framedWidget:setTopBottom(true, true, arg0.horizontalPadding, -arg0.horizontalPadding)
		arg0.framedWidget:setLeftRight(true, true, arg0.verticalPadding, -arg0.verticalPadding)
		local function __FUNC_E2E_(arg1)
			arg0.framedWidget:setModel(arg1)
		end

		arg0.framedWidget:linkToElementModel(arg0, nil, false, __FUNC_E2E_)
		registerVal5 = {}
		registerVal5.name = "update_state"
		registerVal5.menu = arg0.menu
		arg0.framedWidget:processEvent(registerVal5)
		registerVal5 = {}
		registerVal5.name = "menu_loaded"
		registerVal5.menu = arg0.menu
		arg0.framedWidget:processEvent(registerVal5)
		if arg0.hasFrameFocus and not arg2 then
			registerVal5 = {}
			registerVal5.name = "gain_focus"
			registerVal5.controller = arg0.controller
			arg0.framedWidget:processEvent(registerVal5)
		end
	end
end

function LUI.UIFrame.setWidgetType(arg0, arg1)
	arg0:changeFrameWidget(arg1)
end

function LUI.UIFrame.updateFrameEvent(arg0, arg1)
	arg0:changeFrameWidget(arg1.widget)
	return true
end

function LUI.UIFrame.gainFocus(arg0, arg1)
	if not arg0.m_focusable then
		return false
	end
	arg0.hasFrameFocus = true
	if arg1.saveEvent and arg1.saveEvent.originalEvent and arg1.saveEvent.originalEvent.idStack[1.000000] == "framedWidget" and arg0.framedWidget then
		arg1.saveEvent.originalEvent.idStack[1.000000] = arg0.framedWidget.id
		local registerVal4 = {}
		registerVal4.name = "restore_focus"
		registerVal4.saveEvent = arg1.saveEvent.originalEvent
		return arg0:dispatchEventToChildren(registerVal4)
	end
	return arg0:dispatchEventToChildren(arg1)
end

function LUI.UIFrame.loseFocus(arg0, arg1)
	arg0.hasFrameFocus = false
	return arg0:dispatchEventToChildren(arg1)
end

function LUI.UIFrame.restoreState(arg0, arg1)
	if arg0.id == arg1.id then
		local registerVal4 = {}
		registerVal4.name = "gain_focus"
		registerVal4.saveEvent = arg1.saveEvent
		return arg0:processEvent(registerVal4)
	end
	return false
end

function LUI.UIFrame.RecordCurrFocusedElemID(arg0, arg1)
	if arg1 or not arg0.framedWidget then
		if arg1.isMouse then
			arg1.idStack[1.000000] = "framedWidget"
			local registerVal4 = {}
			registerVal4.name = arg1.name
			registerVal4.controller = arg1.controller
			registerVal4.id = arg0.id
			local registerVal5 = {}
			registerVal5 = {arg0.id}
			registerVal4.idStack = registerVal5
			registerVal4.originalEvent = arg1
			return arg0:dispatchEventToParent(registerVal4)
		end
	end
	return false
end

LUI.UIFrame:registerEventHandler("gain_focus", LUI.UIFrame.gainFocus)
LUI.UIFrame:registerEventHandler("lose_focus", LUI.UIFrame.loseFocus)
LUI.UIFrame:registerEventHandler("update_frame", LUI.UIFrame.updateFrameEvent)
LUI.UIFrame:registerEventHandler("record_curr_focused_elem_id", LUI.UIFrame.RecordCurrFocusedElemID)
LUI.UIFrame:registerEventHandler("mouse_focus", LUI.UIFrame.gainFocus)
LUI.UIFrame.id = "LUIFrame"

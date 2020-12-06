-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = {}
registerVal1.id = "LUIElement"
local registerVal2 = {}
registerVal2.left = 0.000000
registerVal2.top = 0.000000
registerVal2.right = 0.000000
registerVal2.bottom = 0.000000
registerVal2.leftAnchor = false
registerVal2.topAnchor = false
registerVal2.bottomAnchor = false
registerVal2.rightAnchor = false
registerVal2.red = 1.000000
registerVal2.green = 1.000000
registerVal2.blue = 1.000000
registerVal2.alpha = 1.000000
registerVal2.alphaMultiplier = 1.000000
registerVal1.m_defaultAnimationState = registerVal2
LUI.UIElement = registerVal1
LUI.UIContainer = {}
function LUI.UIElement.addElement(arg0, arg1)
	local registerVal2 = arg0:canAddElement(arg1)
	if registerVal2 then
		arg0:addElementToC(arg1)
	end
end

function LUI.UIElement.addElementBefore(arg0, arg1)
	local registerVal2 = arg1:getParent()
	if not registerVal2 then
		error("LUI Error: Element has no parent!")
		return 
	end
	local registerVal3 = registerVal2:canAddElement(arg0)
	if registerVal3 then
		arg0:addElementBeforeInC(arg1)
	end
end

function LUI.UIElement.addElementAfter(arg0, arg1)
	local registerVal2 = arg1:getParent()
	if not registerVal2 then
		error("LUI Error: Element has no parent!")
		return 
	end
	local registerVal3 = registerVal2:canAddElement(arg0)
	if registerVal3 then
		arg0:addElementAfterInC(arg1)
	end
end

function LUI.UIElement.canAddElement(arg0, arg1)
	if arg1 == nil then
		error("LUI Error: Tried to add nil element!")
		return false
	end
	local registerVal2 = arg1:getParent()
	if registerVal2 == arg0 then
		return false
	end
	return true
end

function LUI.UIElement.unsubscribeFromAllModels(arg0)
	arg0:unregisterAllElementModelBindings()
	arg0:unsubscribeFromGlobalModels()
	arg0:unsubscribeFromAllModelsInC()
end

function LUI.UIElement.setModel(arg0, arg1, arg2)
	local registerVal3 = arg0:getModel()
	arg0:setModelInC(arg1)
	registerVal3, registerVal4, registerVal5 = ipairs(arg0.linkedElementModels)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		value7.element:updateElementLinkedModels(arg0)
	end
end

function LUI.UIElement.registerElementModelBinding(arg0, arg1)
	if not arg0.linkedElementModels then
		arg0.linkedElementModels = {}
	end
	local registerVal2, registerVal3, registerVal4 = ipairs(arg0.linkedElementModels)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if value6.element == arg1 then
			value6.count = (value6.count + 1.000000)
			return 
		end
	end
	registerVal4 = {}
	registerVal4.element = arg1
	registerVal4.count = 1.000000
	table.insert(arg0.linkedElementModels, registerVal4)
end

function LUI.UIElement.unregisterElementModelBinding(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = ipairs(arg0.linkedElementModels)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if value6.element == arg1 then
			value6.count = (value6.count - 1.000000)
			table.remove(arg0.linkedElementModels, index5)
		else
		end
	end
end

function LUI.UIElement.unregisterAllElementModelBindings(arg0)
	arg0:unsubscribeFromElementBindings(nil)
	local registerVal1, registerVal2, registerVal3 = ipairs(arg0.linkedElementModels)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.element then
			value5.element:unsubscribeFromElementBindings(arg0)
		end
	end
end

function LUI.UIElement.bindElementModel(arg0, arg1)
	local registerVal2 = arg1.element:getModel()
	if registerVal2 and arg1.modelPath then
		local registerVal4 = Engine.GetModel(registerVal2, arg1.modelPath)
	else
	end
	if arg1.requiresSubscription then
		if registerVal2 then
			registerVal4 = arg0:subscribeToModel(registerVal2, arg1.updateFn)
			arg1.subscription = registerVal4
		else
			arg1.updateFn(registerVal2)
		end
	end
end

function LUI.UIElement.subscribeToElementModel(arg0, arg1, arg2, arg3)
	arg0:linkToElementModel(arg1, arg2, true, arg3)
end

function LUI.UIElement.linkToElementModel(arg0, arg1, arg2, arg3, arg4)
	if not arg0.elementModelBindings then
		arg0.elementModelBindings = {}
	end
	arg1:registerElementModelBinding(arg0)
	local registerVal5 = {}
	registerVal5.element = arg1
	registerVal5.modelPath = arg2
	registerVal5.requiresSubscription = arg3
	registerVal5.updateFn = arg4
	table.insert(arg0.elementModelBindings, registerVal5)
	arg0:bindElementModel(registerVal5)
end

function LUI.UIElement.unsubscribeFromElementBindings(arg0, arg1)
	if arg0.elementModelBindings[1.000000].element ~= arg1 then
	else
		if arg0.elementModelBindings[1.000000].subscription ~= nil then
			arg0:removeSubscription(arg0.elementModelBindings[1.000000].subscription)
		end
		arg0.elementModelBindings[1.000000].element:unregisterElementModelBinding(arg0)
		table.remove(arg0.elementModelBindings, 1.000000)
	end
end

function LUI.UIElement.updateElementLinkedModels(arg0, arg1)
	if not arg0.elementModelBindings then
		return 
	end
	local registerVal2, registerVal3, registerVal4 = ipairs(arg0.elementModelBindings)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if value6.element == arg1 then
			if value6.subscription ~= nil then
				arg0:removeSubscription(value6.subscription)
			end
			arg0:bindElementModel(value6)
		end
	end
end

function LUI.UIElement.bindGlobalModel(arg0, arg1, arg2)
	local registerVal4 = DataSources[arg2.dataSource].getModel(arg1)
	if DataSources[arg2.dataSource] and DataSources[arg2.dataSource].getModel and registerVal4 then
		if arg2.modelPath then
			local registerVal6 = Engine.GetModel(registerVal4, arg2.modelPath)
		else
		end
		if registerVal4 then
			registerVal6 = arg0:subscribeToModel(registerVal4, arg2.updateFn)
			arg2.subscription = registerVal6
		end
	end
end

function LUI.UIElement.subscribeToGlobalModel(arg0, arg1, arg2, arg3, arg4)
	if not arg0.globalModelBindings then
		arg0.globalModelBindings = {}
	end
	local registerVal5 = {}
	registerVal5.dataSource = arg2
	registerVal5.modelPath = arg3
	registerVal5.updateFn = arg4
	table.insert(arg0.globalModelBindings, registerVal5)
	arg0:bindGlobalModel(arg1, registerVal5)
	return registerVal5.subscription
end

function LUI.UIElement.unsubscribeFromGlobalModels(arg0)
	if not arg0.globalModelBindings then
		return 
	end
	local registerVal1, registerVal2, registerVal3 = ipairs(arg0.globalModelBindings)
	for index4,value5 in registerVal1, registerVal2, registerVal3 do
		if value5.subscription ~= nil then
			arg0:removeSubscription(value5.subscription)
		end
	end
	arg0.globalModelBindings = nil
end

function LUI.UIElement.isClosed(arg0)
	local registerVal1 = arg0:getParent()
	if registerVal1 ~= nil then
	end
	return true
end

function LUI.UIElement.close(arg0)
	arg0:unsubscribeFromAllModels()
	local registerVal1 = arg0:getParent()
	if registerVal1 ~= nil then
		registerVal1:removeElement(arg0)
	end
	if LUI.currentMouseFocus == arg0 then
		LUI.currentMouseFocus = nil
	end
	if LUI.currentNavFocus == arg0 then
		LUI.currentNavFocus = nil
	end
	arg0:closeElementInC()
end

function LUI.UIElement.closeAndRefocus(arg0, arg1)
	local registerVal2 = arg0:isInFocus()
	if registerVal2 then
		arg0:processEvent(LUI.UIButton.LoseFocusEvent)
		arg1:processEvent(LUI.UIButton.GainFocusEvent)
	end
	arg0:close()
end

function LUI.UIElement.getFullID(arg0)
	local registerVal2 = arg0:getParent()
	local registerVal3 = registerVal2:getParent()
	return (registerVal2.id .. "/" .. arg0.id)
end

function LUI.UIElement.isInputDisabledOnChain(arg0)
	if arg0.m_inputDisabled then
		return true
	end
	local registerVal1 = arg0:getParent()
	return false
end

function LUI.UIElement.getSoundSet(arg0)
	if arg0.soundSet then
		return arg0.soundSet
	end
	local registerVal2 = arg0:getParent()
end

function LUI.UIElement.findSoundAlias(arg0, arg1)
	if arg0.soundSet and SoundSet[arg0.soundSet] and SoundSet[arg0.soundSet][arg1] then
		return SoundSet[arg0.soundSet][arg1]
	end
	local registerVal3 = arg0:getParent()
end

function LUI.UIElement.setPlaySoundDirect(arg0, arg1)
	arg0.playSoundDirect = arg1
end

function LUI.UIElement.playSound(arg0, arg1, arg2)
	if not arg0.playSoundDirect then
		local registerVal3 = arg0:findSoundAlias(arg1)
		if registerVal3 then
			if arg2 ~= nil then
				Engine.PlaySound(registerVal3, arg2)
			else
				Engine.PlaySound(registerVal3)
			end
			return true
		else
			if arg2 ~= nil then
				Engine.PlaySound(arg1, arg2)
			else
				Engine.PlaySound(arg1)
			end
		end
	end
end

function LUI.UIElement.playActionSFX(arg0)
	arg0:playSound("action")
end

function LUI.UIElement.getLocalSize(arg0)
	if arg0.getNextRect then
		local registerVal5, registerVal6, registerVal7, registerVal8 = arg0:getNextRect()
	else
		registerVal5, registerVal6, registerVal7, registerVal8 = arg0:getLocalRect()
	end
	return (registerVal7 - registerVal5), CoDLUIDecompiler.LuaRegister
end

function LUI.UIElement.setMouseDisabled(arg0, arg1)
	arg0.m_mouseDisabled = arg1
	arg0.handleMouseMove = (not )
	arg0.handleMouseButton = (not (not ))
end

function LUI.UIElement.toggleMouse(arg0)
	arg0.m_mouseDisabled = (not arg0.m_mouseDisabled)
end

function LUI.UIElement.setHandleMouse(arg0, arg1)
	arg0.handleMouseMove = arg1
	arg0.handleMouseButton = arg1
end

function LUI.UIElement.toggleHandleMouse(arg0)
	arg0.handleMouseMove = (not arg0.handleMouseMove)
	arg0.handleMouseButton = (not arg0.handleMouseButton)
end

function LUI.UIElement.setHandleMouseMove(arg0, arg1)
	arg0.handleMouseMove = arg1
end

function LUI.UIElement.toggleHandleMouseMove(arg0)
	arg0.handleMouseMove = (not arg0.handleMouseMove)
end

function LUI.UIElement.setHandleMouseButton(arg0, arg1)
	arg0.handleMouseButton = arg1
end

function LUI.UIElement.toggleHandleMouseButton(arg0)
	arg0.handleMouseButton = arg0.handleMouseButton
end

function LUI.UIElement.setForceMouseEventDispatch(arg0, arg1)
	arg0.m_forceMouseEventDispatch = arg1
end

function LUI.UIElement.clearMouseFocus(arg0)
	if LUI.currentMouseFocus then
		LUI.currentMouseFocus = nil
		LUI.currentMouseFocus.m_mouseOver = nil
	end
end

function LUI.UIElement.IsMouseInsideElement(arg0, arg1)
	local registerVal2, registerVal3 = ProjectRootCoordinate(arg1.rootName, arg1.x, arg1.y)
	if registerVal2 == nil or registerVal3 == nil then
		return false
	end
	local registerVal4 = Engine.IsMouseInsideElement(arg0, arg1.rootName, registerVal2, registerVal3)
	if registerVal4 ~= nil then
		return registerVal4, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
	end
	local registerVal5, registerVal6, registerVal7, registerVal8 = arg0:getRect()
	if registerVal5 ~= nil and registerVal6 <= registerVal3 and registerVal3 <= registerVal8 and registerVal5 > registerVal2 or registerVal2 > registerVal7 then
	end
	return true, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

local function __FUNC_4103_(arg0, arg1)
	local registerVal2 = LUI.UIElement.IsMouseInsideElement(arg0, arg1)
	if arg0 and not arg0.m_keepFocusAsParent and arg0 ~= LUI.currentMouseFocus and arg0 ~= LUI.currentNavFocus and not registerVal2 then
		registerVal2 = arg0:isInFocus()
		if not registerVal2 and not arg1 or arg0.hasFrameFocus then
			local registerVal4 = {}
			registerVal4.name = "lose_focus"
			registerVal4.controller = arg1.controller
			registerVal4.isMouse = true
			registerVal4.ignoreFocusCheck = true
			arg0:processEvent(registerVal4)
		end
		arg0.m_mouseOver = nil
		registerVal2 = arg0:getParent()
		LUI.UIElement(registerVal2, arg1)
	end
end

local function __FUNC_4395_(arg0, arg1)
	local registerVal2 = arg0:hasClip("Focus")
	registerVal2 = arg0:hasClip("Active")
	if not arg1 or registerVal2 then
		if arg0.m_skipMouseFocus then
			return 
		end
	end
	if not LUI.currentMouseFocus then
	end
	local registerVal6 = {}
	registerVal6.name = "gain_focus"
	registerVal6.controller = arg1.controller
	registerVal6.isMouse = true
	local registerVal4 = arg0:processEvent(registerVal6)
	if arg0 ~= LUI.currentMouseFocus and registerVal4 then
		__FUNC_4103_(LUI.currentNavFocus, arg1)
		if not arg0.gridInfoTable then
			arg0:playSound("gain_focus")
		end
		registerVal6 = {}
		registerVal6.name = "mouse_focus"
		registerVal6.element = arg0
		registerVal6.controller = arg1.controller
		arg0:dispatchEventToParent(registerVal6)
	end
end

local function __FUNC_4621_(arg0, arg1)
	if arg1 or arg0.disabledAllowNav then
		local registerVal2 = arg0:isVisible()
		if not arg0.m_inputDisabled and not arg1 or not registerVal2 then
			return 
		end
	end
	if arg0.handleMouseMove and not arg1.waitingForKeyBind then
		registerVal2, registerVal3, registerVal4 = LUI.UIElement.IsMouseInsideElement(arg0, arg1)
		local registerVal5 = Engine.IsMouseInsideElement(LUI.currentMouseFocus, arg1.rootName, registerVal3, registerVal4)
		if registerVal2 and LUI.currentMouseFocus ~= nil and arg0 ~= LUI.currentMouseFocus and arg0.m_focusable and not arg0.m_preventFromBeingCurrentMouseFocus and registerVal5 then
			return 
		end
		if registerVal2 then
			if arg0.m_mouseOver == nil or LUI.currentMouseFocus ~= arg0 then
				registerVal5 = arg0:isInFocus()
				if not registerVal5 then
					registerVal5 = arg0:hasClip("Over")
					if arg0.m_mouseOver == nil and registerVal5 then
						arg0.m_mouseOver = true
						local registerVal7 = {}
						registerVal7.name = "mouseenter"
						registerVal7.controller = arg1.controller
						registerVal7.isMouse = true
						arg0:processEvent(registerVal7)
					else
						registerVal5 = arg0:hasClip("Over")
						__FUNC_4395_(arg0, arg1)
						DebugPrint(("^1LUI_MOUSE: ^2inside element that is not the currentMouseFocus -- " .. arg0.id))
						LUI.currentMouseFocus = arg0
						if arg0.m_focusable and not arg0.m_preventFromBeingCurrentMouseFocus and not registerVal5 and arg0.m_focusable and LUI.currentMouseFocus ~= arg0 and not arg0.m_preventFromBeingCurrentMouseFocus and not LUI.currentMouseFocus and arg0.m_focusable and not arg0.m_preventFromBeingCurrentMouseFocus then
							DebugPrint(("^1LUI_MOUSE: ^2setting currentMouseFocus -- " .. arg0.id))
							LUI.currentMouseFocus = arg0
						else
							if arg0.m_mouseOver ~= nil then
								arg0.m_mouseOver = nil
								registerVal7 = {}
								registerVal7.name = "mouseleave"
								registerVal7.controller = arg1.controller
								registerVal7.isMouse = true
								arg0:processEvent(registerVal7)
							end
							registerVal5 = arg0:isInFocus()
							if arg0 ~= LUI.currentMouseFocus and not arg0.m_preventFromBeingCurrentMouseFocus and arg0 ~= LUI.currentNavFocus and registerVal5 then
								registerVal7 = {}
								registerVal7.name = "lose_focus"
								registerVal7.controller = arg1.controller
								registerVal7.isMouse = true
								arg0:processEvent(registerVal7)
							end
						end
					end
				end
			end
		end
		if arg0.m_eventHandlers.mousedrag ~= nil and arg0.m_leftMouseDown ~= nil then
			registerVal7 = {}
			registerVal7.name = "mousedrag"
			registerVal7.controller = arg1.controller
			registerVal7.root = arg1.root
			registerVal7.x = registerVal3
			registerVal7.y = registerVal4
			arg0.m_eventHandlers.mousedrag(arg0, registerVal7)
		end
	end
	registerVal2 = LUI.UIElement.IsMouseInsideElement(arg0, arg1)
	if not arg1 or registerVal2 then
		arg0:dispatchEventToChildren(arg1)
	end
end

LUI.UIElement.MouseMoveEvent = __FUNC_4621_
function LUI.UIElement.mouseEnter(arg0, arg1)
	if not arg0.m_active then
		local registerVal3 = arg0:playClip("GainOver")
		if registerVal3 then
			arg0.nextClip = "Over"
		else
			registerVal3 = arg0:playClip("Over")
		end
	end
	return registerVal3
end

function LUI.UIElement.mouseLeave(arg0, arg1)
	local registerVal2 = arg0:isInFocus()
	if not registerVal2 and not arg0.m_active then
		registerVal2 = arg0:playClip("LoseOver")
		if registerVal2 then
			arg0.nextClip = "DefaultClip"
		else
			arg0:playClip("DefaultClip")
		end
	end
end

function LUI.UIElement.LeftMouseDown(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "button_over_down"
	registerVal4.controller = arg1.controller
	arg0:processEvent(registerVal4)
end

function LUI.UIElement.RightMouseDown(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "button_over_down"
	registerVal4.controller = arg1.controller
	arg0:processEvent(registerVal4)
end

function LUI.UIElement.LeftMouseUp(arg0, arg1)
	if arg1.inside then
		if arg1 or arg0.disabledAllowNav then
			if arg0.m_eventHandlers.button_action then
				local registerVal4 = {}
				registerVal4.name = "button_action"
				registerVal4.controller = arg1.controller
				registerVal4.isMouse = true
				return arg0:processEvent(registerVal4)
			else
				registerVal4 = {}
				registerVal4.name = "mouse_left_click"
				registerVal4.element = arg0
				registerVal4.controller = arg1.controller
				registerVal4.inside = arg1.inside
				return arg0:dispatchEventToParent(registerVal4)
			end
		end
	end
end

function LUI.UIElement.RightMouseUp(arg0, arg1)
	if arg1.inside then
		local registerVal4 = {}
		registerVal4.name = "button_actionsecondary"
		registerVal4.controller = arg1.controller
		registerVal4.isMouse = true
		local registerVal2 = arg0:processEvent(registerVal4)
		if not arg0.disabled and registerVal2 then
			return registerVal2
		else
			registerVal4 = {}
			registerVal4.name = "button_up"
			arg0:processEvent(registerVal4)
		end
	end
end

local function __FUNC_548C_(arg0, arg1)
	if arg1 or arg0.disabledAllowNav then
		local registerVal2 = arg0:isVisible()
		if not arg0.m_inputDisabled and not arg1 or not registerVal2 then
			return 
		end
	end
	if arg0.handleMouseButton then
		registerVal2, registerVal3, registerVal4 = LUI.UIElement.IsMouseInsideElement(arg0, arg1)
		if arg1.name == "mouseup" then
			if arg1.button == "left" then
				if arg0.m_leftMouseDown ~= nil then
					arg0.m_leftMouseDown = nil
					local registerVal5 = arg0:hasClip("Over")
					if arg0.m_focusable and registerVal5 then
						registerVal5 = arg0:isInFocus()
						if not registerVal5 then
							__FUNC_4395_(arg0, arg1)
						else
							local registerVal7 = {}
							registerVal7.name = "leftmouseup"
							registerVal7.controller = arg1.controller
							registerVal7.root = arg1.root
							registerVal7.x = registerVal3
							registerVal7.y = registerVal4
							registerVal7.inside = registerVal2
							registerVal5 = arg0.m_eventHandlers.leftmouseup(arg0, registerVal7)
							return registerVal5
							registerVal7 = {}
							registerVal7.name = "leftmouseup"
							registerVal7.controller = arg1.controller
							registerVal7.root = arg1.root
							registerVal7.x = registerVal3
							registerVal7.y = registerVal4
							registerVal7.inside = registerVal2
							registerVal5 = arg0.m_eventHandlers.leftmouseup(arg0, registerVal7)
							if arg0.m_eventHandlers.leftmouseup ~= nil and registerVal5 and arg0.m_eventHandlers.leftmouseup ~= nil and registerVal5 then
								return registerVal5
							end
						end
					end
				end
				registerVal7 = {}
				registerVal7.name = "leftclick_outside"
				registerVal7.controller = arg1.controller
				registerVal7.root = arg1.root
				registerVal7.x = registerVal3
				registerVal7.y = registerVal4
				registerVal7.inside = registerVal2
				registerVal5 = arg0.m_eventHandlers.leftclick_outside(arg0, registerVal7)
				if not registerVal2 and arg0.m_eventHandlers.leftclick_outside ~= nil and registerVal5 then
					return registerVal5
				end
			end
			arg0.m_rightMouseDown = nil
			registerVal7 = {}
			registerVal7.name = "rightmouseup"
			registerVal7.controller = arg1.controller
			registerVal7.root = arg1.root
			registerVal7.x = registerVal3
			registerVal7.y = registerVal4
			registerVal7.inside = registerVal2
			registerVal5 = arg0.m_eventHandlers.rightmouseup(arg0, registerVal7)
			if arg1.button == "right" and arg0.m_rightMouseDown ~= nil and arg0.m_eventHandlers.rightmouseup ~= nil and registerVal5 then
				return registerVal5
			end
		end
		if registerVal2 and arg1.name == "mousedown" then
			if arg1.button == "left" and arg0.m_eventHandlers.leftmousedown ~= nil and arg0.m_leftMouseDown == nil then
				arg0.m_leftMouseDown = true
				registerVal7 = {}
				registerVal7.name = "leftmousedown"
				registerVal7.controller = arg1.controller
				registerVal7.root = arg1.root
				registerVal7.x = registerVal3
				registerVal7.y = registerVal4
				registerVal7.inside = registerVal2
				arg0.m_eventHandlers.leftmousedown(arg0, registerVal7)
			end
			if arg1.button == "right" and arg0.m_eventHandlers.rightmousedown ~= nil and arg0.m_rightMouseDown == nil then
				arg0.m_rightMouseDown = true
				registerVal7 = {}
				registerVal7.name = "rightmousedown"
				registerVal7.controller = arg1.controller
				registerVal7.root = arg1.root
				registerVal7.x = registerVal3
				registerVal7.y = registerVal4
				registerVal7.inside = registerVal2
				arg0.m_eventHandlers.rightmousedown(arg0, registerVal7)
			end
		end
	end
	registerVal2 = LUI.UIElement.IsMouseInsideElement(arg0, arg1)
	if not arg1 or registerVal2 then
		arg0:dispatchEventToChildren(arg1)
	end
end

LUI.UIElement.MouseButtonEvent = __FUNC_548C_
function LUI.UIElement.AcceptGamePadButtonInput(arg0, arg1)
	if not arg1 or arg0.occludedBy then
		return false
	end
	local registerVal2 = Engine.IsControllerBeingUsed(arg1.controller)
	if arg0.m_ownerController and arg0.m_ownerController ~= arg1.controller and not arg1 or registerVal2 then
		return true
	else
		if arg0.m_ownerController and arg0.m_ownerController ~= arg1.controller then
			arg1.name = "unused_gamepad_button"
			arg0:processEvent(arg1)
			arg0:dispatchEventToChildren(arg1)
			arg1.name = arg1.name
		end
	end
end

function LUI.UIElement.AcceptGamePadButtonInputFromModelCallback(arg0, arg1)
	if not arg1 or arg0.occludedBy then
		return false
	end
	local registerVal2 = Engine.IsControllerBeingUsed(arg1)
	if arg0.m_ownerController and arg0.m_ownerController ~= arg1 and not arg1 or registerVal2 then
		return true
	end
	return false
end

function LUI.UIElement.DoNavigationForGamePadButton(arg0, arg1)
	return arg0:handleGamepadButton(arg1)
end

function LUI.UIElement.GamepadButton(arg0, arg1)
	if arg0.m_inputDisabled then
		return 
	end
	local registerVal2 = arg0:handleGamepadButton(arg1)
	if not registerVal2 then
		if arg0.m_ownerController == nil or arg0.m_ownerController == arg1.controller then
			return arg0:dispatchEventToChildren(arg1)
		else
			return true
		end
	end
end

function LUI.UIElement.GamepadButton_DPadOnly(arg0, arg1)
	if arg1.qualifier ~= "dpad" then
		return 
	end
	LUI.UIElement.GamepadButton(arg0, arg1)
end

function LUI.UIElement.doNavigationForElement(arg0, arg1, arg2, arg3)
	local registerVal5 = type(arg2)
	if registerVal5 == "table" then
		registerVal5, registerVal6, registerVal7 = ipairs(arg2)
		for index8,value9 in registerVal5, registerVal6, registerVal7 do
			local registerVal10 = arg0:doNavigationForElement(arg1, value9, arg3)
			if registerVal10 then
				return true
			end
		end
		return false
	else
		registerVal7 = {}
		registerVal7.name = "gain_focus"
		registerVal7.controller = arg1.controller
		registerVal7.button = arg1.button
		registerVal5 = arg2:processEvent(registerVal7)
		if registerVal5 then
			if arg3 then
				registerVal7 = {}
				registerVal7.name = "lose_focus"
				registerVal7.controller = arg1.controller
				registerVal7.button = arg1.button
				registerVal7.ignoreFocusCheck = true
				arg3:processEvent(registerVal7)
			else
				registerVal7 = {}
				registerVal7.name = "lose_focus"
				registerVal7.controller = arg1.controller
				registerVal7.button = arg1.button
				registerVal7.ignoreFocusCheck = true
				arg0:processEvent(registerVal7)
			end
			registerVal5 = arg2:playSound("gain_focus")
			if not registerVal5 and arg2.gainFocusSFX then
				Engine.PlaySound(arg2.gainFocusSFX)
			end
			return true
		end
	end
	{}[arg2] = true
end

function LUI.UIElement.doNavigationForElementFromModelCallback(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = type(arg3)
	if registerVal6 == "table" then
		registerVal6, registerVal7, registerVal8 = ipairs(arg3)
		for index9,value10 in registerVal6, registerVal7, registerVal8 do
			local registerVal11 = arg0:doNavigationForElementFromModelCallback(arg1, arg2, value10, arg4)
			if registerVal11 then
				return true
			end
		end
		return false
	else
		registerVal8 = {}
		registerVal8.name = "gain_focus"
		registerVal8.controller = arg1
		registerVal8.button = arg2
		registerVal6 = arg3:processEvent(registerVal8)
		if registerVal6 then
			if arg4 then
				registerVal8 = {}
				registerVal8.name = "lose_focus"
				registerVal8.controller = arg1
				registerVal8.button = arg2
				registerVal8.ignoreFocusCheck = true
				arg4:processEvent(registerVal8)
			else
				registerVal8 = {}
				registerVal8.name = "lose_focus"
				registerVal8.controller = arg1
				registerVal8.button = arg2
				registerVal8.ignoreFocusCheck = true
				arg0:processEvent(registerVal8)
			end
			registerVal6 = arg3:playSound("gain_focus")
			if not registerVal6 and arg3.gainFocusSFX then
				Engine.PlaySound(arg3.gainFocusSFX)
			end
			return true
		end
	end
	{}[arg3] = true
end

function LUI.UIElement.GetCorrespondingGamepadButtonForKey(arg0)
	if arg0 == "DOWNARROW" or arg0 == "MWHEELDOWN" then
		return "down"
	else
		if arg0 == "UPARROW" or arg0 == "MWHEELUP" then
			return "up"
		else
			if arg0 == "RIGHTARROW" then
				return "right"
			else
				if arg0 == "LEFTARROW" then
					return "left"
				else
					if arg0 == "ENTER" then
						return "primary"
					end
				end
			end
		end
	end
	return nil
end

function LUI.UIElement.GetCorrespondingGamepadButtonString(arg0)
	if arg0 == Enum.LUIButton.LUI_KEY_DOWN then
		return "down"
	else
		if arg0 == Enum.LUIButton.LUI_KEY_UP then
			return "up"
		else
			if arg0 == Enum.LUIButton.LUI_KEY_LEFT then
				return "left"
			else
				if arg0 == Enum.LUIButton.LUI_KEY_RIGHT then
					return "right"
				end
			end
		end
	end
	return nil
end

function LUI.UIElement.handleGamepadButton(arg0, arg1, arg2)
	if not arg1 or arg0.forceChildNavigation then
		return 
	end
	local registerVal3 = arg0:isInFocus()
	if not registerVal3 then
		if arg0.navigation and arg2 and arg1.down == true then
			local registerVal4 = LUI.UIElement.GetCorrespondingGamepadButtonForKey(arg1.key)
			if arg1.button == "key_shortcut" and registerVal4 then
				arg1.button = registerVal4
			end
			if registerVal4 ~= nil and arg0.m_disableNavigation ~= true then
				if arg0.navigationSounds and arg0.navigationSounds[registerVal4] then
					Engine.PlaySound(arg0.navigationSounds[registerVal4])
				end
				if arg0.navigation[registerVal4] ~= nil then
					local registerVal5 = type(arg0.navigation[registerVal4])
					registerVal5 = arg0.navigation[registerVal4](arg0, arg1.controller)
					if registerVal5 == "function" and registerVal5 == true then
						return true
					end
					registerVal5 = type(registerVal5)
					local registerVal7, registerVal8, registerVal9 = ipairs(registerVal5)
					for index10,value11 in registerVal7, registerVal8, registerVal9 do
						if value11.lastFocusedTimestamp then
							if arg1 or nil < value11.lastFocusedTimestamp then
							end
						end
					end
					registerVal5 = arg0:doNavigationForElement(arg1, value11, arg2)
					if registerVal5 then
						return true
					end
				end
				if registerVal4 == "primary" and not arg0.disabled then
					registerVal7 = {}
					registerVal7.name = "button_action"
					registerVal7.controller = arg1.controller
					arg0:processEvent(registerVal7)
					return true
				end
			end
			if not arg2 then
			end
			registerVal4 = arg0:getParent()
			return registerVal4:handleGamepadButton(arg1, arg0)
			registerVal3 = arg0:getParent()
			if registerVal4 and arg0.navigation and arg0 and arg1.down == true and registerVal3 then
				return registerVal3:handleGamepadButton(arg1, arg0)
			end
		end
	end

function LUI.UIElement.setActive(arg0, arg1)
	if arg0.m_preventFromBeingActive then
		return 
	end
	local registerVal2 = arg0:playClip("GainActive")
	if registerVal2 then
		arg0.nextClip = "Active"
	else
		arg0:playClip("Active")
	end
	arg0.m_active = true
	arg0:dispatchEventToChildren(arg1)
end

function LUI.UIElement.setInactive(arg0, arg1)
	if arg0.m_preventFromBeingActive and not arg0.m_active then
		return 
	end
	local registerVal2 = arg0:playClip("LoseActive")
	if registerVal2 then
		arg0.nextClip = "DefaultClip"
	else
		arg0:playClip("DefaultClip")
	end
	arg0.m_active = nil
	arg0:dispatchEventToChildren(arg1)
end

function LUI.UIElement.gainFocus(arg0, arg1)
	if arg0.m_focusable and not arg0.onlyChildrenFocusable then
		arg0:setFocus(true)
		local registerVal3 = Engine.milliseconds()
		arg0.lastFocusedTimestamp = registerVal3
		if not arg0.m_preventFromBeingCurrentNavFocus then
			LUI.currentNavFocus = arg0
		end
		if not arg0.m_preventFromBeingCurrentMouseFocus then
			LUI.currentMouseFocus = arg0
		end
		registerVal3 = arg0:playClip("GainFocus")
		if not arg1.skipGainFocus and registerVal3 then
			arg0.nextClip = "Focus"
		else
			registerVal3 = arg0:playClip("Focus")
		end
		if not arg0.clipsPerState then
		end
		local registerVal5 = {}
		registerVal5.name = "record_curr_focused_elem_id"
		registerVal5.id = arg0.id
		registerVal5.controller = arg1.controller
		local registerVal6 = {}
		registerVal6 = {arg0.id}
		registerVal5.idStack = registerVal6
		registerVal5.isMouse = arg1.isMouse
		arg0:dispatchEventToParent(registerVal5)
		if true and not arg0.m_focusable then
			return false
		end
	end
	if true then
		return true
	end
	return arg0:dispatchEventToChildren(arg1)
end

function LUI.UIElement.loseFocus(arg0, arg1)
	if arg0.m_focusable then
		local registerVal2 = arg0:isInFocus()
		if not arg1 or arg1.ignoreFocusCheck then
			arg0:setFocus(false)
			if LUI.currentMouseFocus == arg0 then
				LUI.currentMouseFocus = nil
			end
			if LUI.currentNavFocus == arg0 then
				LUI.currentNavFocus = nil
			end
			registerVal2 = arg0:playClip("Selected")
			if arg1 or not registerVal2 then
				registerVal2 = arg0:playClip("LoseFocus")
				if not arg1.skipLoseFocus and registerVal2 then
					arg0.nextClip = "DefaultClip"
				else
					arg0:playClip("DefaultClip")
				end
			end
		end
	end
	arg0:dispatchEventToChildren(arg1)
end

function LUI.UIElement.processEvent(arg0, arg1)
	if arg0.m_eventHandlers[arg1.name] ~= nil then
		return arg0.m_eventHandlers[arg1.name](arg0, arg1)
	else
		return arg0:dispatchEventToChildren(arg1)
	end
end

function LUI.UIElement.processEventToParent(arg0, arg1)
	if arg0.m_eventHandlers[arg1.name] ~= nil then
		return arg0.m_eventHandlers[arg1.name](arg0, arg1)
	else
		return arg0:dispatchEventToParent(arg1)
	end
end

function LUI.UIElement.getRoot(arg0)
	if not arg0 then
		return 
	end
	local registerVal1 = arg0:getParent()
	local registerVal2 = registerVal1:getParent()
	return registerVal1
end

function LUI.UIElement.dispatchEventToRoot(arg0, arg1)
	local registerVal2 = arg0:getParent()
	local registerVal3 = registerVal2:getParent()
	if registerVal3 == nil then
		if registerVal2.m_eventHandlers[arg1.name] ~= nil then
			registerVal2.m_eventHandlers[arg1.name](registerVal2, arg1)
		end
		registerVal2:dispatchEventToChildren(arg1)
		return 
	end
end

function LUI.UIElement.dispatchEventToParent(arg0, arg1)
	local registerVal2 = arg0:getParent()
	if registerVal2.m_eventHandlers[arg1.name] then
		return registerVal2.m_eventHandlers[arg1.name](registerVal2, arg1)
	end
	local registerVal4 = registerVal2:getParent()
end

function LUI.UIElement.dispatchEventToParentWithSelf(arg0, arg1)
	local registerVal2 = arg0:getParent()
	if registerVal2.m_eventHandlers[arg1.name] then
		return registerVal2.m_eventHandlers[arg1.name](arg0, arg1)
	end
	local registerVal4 = registerVal2:getParent()
end

function LUI.UIElement.dispatchEventToParentWithElement(arg0, arg1, arg2)
	if arg0.m_eventHandlers[arg1.name] then
		return arg0.m_eventHandlers[arg1.name](arg2, arg1)
	end
	local registerVal5 = arg0:getParent()
end

function LUI.UIElement.dispatchEventToChildren(arg0, arg1)
	local registerVal2 = arg0:getFirstChild()
	if registerVal2 == nil then
		return 
	end
	local registerVal3 = registerVal2:getNextSibling()
	local registerVal4 = registerVal2:processEvent(arg1)
	if registerVal4 then
		return registerVal4
	end
end

function LUI.UIElement.registerEventHandler(arg0, arg1, arg2)
	arg0.m_eventHandlers[arg1] = arg2
end

function LUI.UIElement.isFocusable(arg0)
	return arg0.m_focusable
end

function LUI.UIElement.clearNavigationTable(arg0)
	arg0.navigation = {}
end

function LUI.UIElement.makeFocusable(arg0)
	arg0.m_focusable = true
	arg0.navigation = {}
end

function LUI.UIElement.makeFocusableWithoutResettingNavigation(arg0)
	arg0.m_focusable = true
end

function LUI.UIElement.makeNotFocusable(arg0)
	arg0.m_focusable = false
end

function LUI.UIElement.isIDNamed(arg0)
	local registerVal1 = string.find(arg0.id, ".")
	if registerVal1 then
		return true
	end
	return false
end

function LUI.UIElement.getFirstInFocus(arg0)
	local registerVal1 = arg0:isInFocus()
	if registerVal1 then
		return arg0
	end
	registerVal1 = arg0:getFirstChild()
	local registerVal2 = registerVal1:getFirstInFocus()
	if registerVal2 then
		return registerVal2
	end
	local registerVal3 = registerVal1:getNextSibling()
	registerVal2 = arg0:getNextSibling()
	if registerVal2 then
		return registerVal2:getFirstInFocus()
	end
end

function LUI.UIElement.doesElementOrChildHaveFocus(arg0)
	local registerVal1 = arg0:isInFocus()
	if registerVal1 then
		return true
	end
	registerVal1 = arg0:getFirstChild()
	local registerVal2 = registerVal1:doesElementOrChildHaveFocus()
	if registerVal2 then
		return true
	end
	registerVal2 = registerVal1:getNextSibling()
	return false
end

function LUI.UIElement.hasChildWithID(arg0, arg1)
	if arg0.id == arg1 then
		return true
	end
	local registerVal2 = arg0:getFirstChild()
	local registerVal3 = registerVal2:hasChildWithID(arg1)
	if registerVal3 then
		return true
	end
	registerVal3 = registerVal2:getNextSibling()
	return false
end

function LUI.UIElement.saveState(arg0)
	local registerVal1 = arg0:isIDNamed()
	if not registerVal1 then
		local registerVal3 = arg0:getFullID()
		error(("LUI Error: Tried to save menu state, but element has no name: " .. registerVal3))
		return 
	end
	if arg0.lastFocusedElemEvent and arg0.lastFocusedElemEvent.id then
		registerVal3 = {}
		registerVal3.id = arg0.lastFocusedElemEvent.id
		registerVal3.saveEvent = arg0.lastFocusedElemEvent
		LUI.savedMenuStates[arg0.id] = registerVal3
	else
		LUI.savedMenuStates[arg0.id] = nil
	end
end

function LUI.UIElement.clearSavedState(arg0)
	local registerVal1 = arg0:isIDNamed()
	if not registerVal1 then
		local registerVal3 = arg0:getFullID()
		error(("LUI Error: Tried to save menu state, but element has no name: " .. registerVal3))
		return 
	end
	LUI.savedMenuStates[arg0.id] = nil
end

function LUI.UIElement.restoreState(arg0)
	local registerVal1 = arg0:isIDNamed()
	if not registerVal1 then
		local registerVal3 = arg0:getFullID()
		error(("LUI Error: Tried to restore menu state, but element has no name: " .. registerVal3))
		return 
	end
	registerVal1 = Engine.DvarBool(nil, "rat_playback_enabled")
	if registerVal1 then
		return 
	end
	if LUI.savedMenuStates[arg0.id] ~= nil and LUI.savedMenuStates[arg0.id].id then
		local registerVal4 = {}
		registerVal4.name = "restore_focus"
		registerVal4.id = LUI.savedMenuStates[arg0.id].id
		registerVal4.data = LUI.savedMenuStates[arg0.id].data
		registerVal4.saveEvent = LUI.savedMenuStates[arg0.id].saveEvent
		return arg0:processEvent(registerVal4)
	end
end

function LUI.UIElement.restoreFocus(arg0, arg1)
	if arg1.saveEvent and arg1.saveEvent.idStack and 0.000000 < #arg1.saveEvent.idStack and arg0.id == arg1.saveEvent.idStack[1.000000] then
		if #arg1.saveEvent.idStack == 1.000000 then
			local registerVal5 = {}
			registerVal5.name = "gain_focus"
			registerVal5.saveEvent = arg1.saveEvent
			return arg0:processEvent(registerVal5)
		else
			table.remove(arg1.saveEvent.idStack, 1.000000)
			return arg0:dispatchEventToChildren(arg1)
		end
	end
	return false
end

function LUI.UIElement.animate(arg0, arg1)
	if arg0.m_animationStates[arg1.animationStateName] then
		arg0:animateToState(arg1.animationStateName, arg1.duration, arg1.easeIn, arg1.easeOut)
		if arg1.animateChildren then
			arg0:dispatchEventToChildren(arg1)
		else
			arg0:dispatchEventToChildren(arg1)
		end
	end
end

function LUI.UIElement.hide(arg0)
	arg0:setAlpha(0.000000)
end

function LUI.UIElement.show(arg0)
	arg0:setAlpha(1.000000)
end

function LUI.UIElement.rotateRandomly(arg0, arg1)
	if not arg0.m_eventHandlers.rotate_randomly then
		arg0:registerEventHandler("rotate_randomly", LUI.UIElement.rotateRandomly)
		arg0:addElement(LUI.UITimer.new(2500.000000, "rotate_randomly", false, arg0))
	end
	arg0:beginAnimation("rotate_randomly", 2500.000000, true, true)
	arg0:setXRot(math.random(-45.000000, 45.000000))
	arg0:setYRot(math.random(-45.000000, 45.000000))
end

function LUI.UIElement.spinRandomly(arg0, arg1)
	if not arg0.m_eventHandlers.spin_randomly then
		arg0:registerEventHandler("spin_randomly", LUI.UIElement.rotateRandomly)
		arg0:addElement(LUI.UITimer.new(2500.000000, "spin_randomly", false, arg0))
	end
	arg0:beginAnimation("rotate_randomly", 2500.000000, true, true)
	arg0:setZRot(math.random(-90.000000, 90.000000))
end

function LUI.UIElement.flicker(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	if not arg1 then
	end
	if not arg2 then
	end
	if not arg3 then
	end
	if not arg4 then
	end
	if not arg5 then
	end
	if not arg6 then
	end
	arg0.lowFlickerAlpha = 0.200000
	arg0.highFlickerAlpha = 0.700000
	arg0.endFlickerAlpha = 1.000000
	arg0:registerEventHandler("close_flicker_timer", LUI.UIElement.CloseFlickerTimer)
	arg0:alternateStates(1000.000000, LUI.UIElement.LowFlickerAlternate, LUI.UIElement.HighFlickerAlternate, 50.000000, 150.000000, LUI.UIElement.EndFlickerAlternate)
end

function LUI.UIElement.LowFlickerAlternate(arg0, arg1)
	arg0:beginAnimation("lower_alpha", arg1)
	arg0:setAlpha(arg0.lowFlickerAlpha)
end

function LUI.UIElement.HighFlickerAlternate(arg0, arg1)
	arg0:beginAnimation("raise_alpha", arg1)
	arg0:setAlpha(arg0.highFlickerAlpha)
end

function LUI.UIElement.EndFlickerAlternate(arg0, arg1)
	arg0:beginAnimation("end_alpha", arg1)
	arg0:setAlpha(arg0.endFlickerAlpha)
	arg0.lowFlickerAlpha = nil
	arg0.highFlickerAlpha = nil
	arg0.endFlickerAlpha = nil
end

function LUI.UIElement.CloseFlickerTimer(arg0, arg1)
	if arg0.lowFlickerAlpha then
		arg0:closeStateAlternator()
	end
end

function LUI.UIElement.closeStateAlternator(arg0)
	if arg0.alternatorTimer then
		arg0.alternatorTimer:close()
		arg0.alternatorTimer = nil
	end
	if arg0.alternatorEnd then
		arg0:alternatorEnd()
		arg0.alternatorEnd = nil
	end
end

function LUI.UIElement.UpdateStateAlternater(arg0, arg1)
	if arg1.next ~= "first" and arg1.next ~= "second" then
		arg0:closeStateAlternator()
		return 
	end
	if arg1.next == "first" then
	end
	local registerVal4 = math.random(arg1.lowTime, arg1.highTime)
	if arg1.timeLeft <= registerVal4 and not arg1.isInfinite then
	end
	arg1.func1(arg0, (arg1.timeLeft + 1.000000))
	if not arg1.isInfinite then
	end
	local registerVal8 = {}
	registerVal8.name = "update_state_alternate"
	registerVal8.isInfinite = arg1.isInfinite
	registerVal8.next = "final"
	registerVal8.func1 = arg1.func1
	registerVal8.func2 = arg1.func2
	registerVal8.timeLeft = (arg1.timeLeft - (arg1.timeLeft + 1.000000))
	registerVal8.lowTime = arg1.lowTime
	registerVal8.highTime = arg1.highTime
	local registerVal6 = LUI.UITimer.new((arg1.timeLeft + 1.000000), registerVal8, true, arg0)
	arg0.alternatorTimer = registerVal6
	arg0:addElement(arg0.alternatorTimer)
end

function LUI.UIElement.alternateStates(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	if arg0.alternatorEnd then
		return 
	end
	if not arg1 then
	end
	if arg2 == nil or arg3 == nil then
		return 
	end
	if arg6 == nil then
	end
	if not arg4 then
	end
	if not arg5 then
	end
	arg0.alternatorEnd = arg3
	arg0:registerEventHandler("update_state_alternate", LUI.UIElement.UpdateStateAlternater)
	local registerVal9 = {}
	registerVal9.name = "update_state_alternate"
	if 1000.000000 ~= 0.000000 then
	end
	registerVal9.isInfinite = true
	registerVal9.next = "first"
	registerVal9.func1 = arg2
	registerVal9.func2 = arg3
	registerVal9.timeLeft = 1000.000000
	registerVal9.lowTime = 50.000000
	registerVal9.highTime = 150.000000
	arg0:processEvent(registerVal9)
end

function LUI.UIElement.CloseAnimationQueue(arg0)
	if arg0.queueTimer then
		arg0.queueTimer:close()
		arg0.queueTimer = nil
	end
end

local function __FUNC_9DB8_(arg0, arg1, arg2)
	if # == 0.000000 then
		return 0.000000
	end
	if arg1[1.000000].time == nil then
	end
	if arg1[1.000000].funct then
		arg1[1.000000].funct(arg0, 0.000000, arg1[1.000000])
	end
	if arg2 then
		table.insert(arg1, arg1[1.000000])
	end
	table.remove(arg1, 1.000000)
	return 0.000000
end

local function __FUNC_9EFB_(arg0)
	if not arg0.queueTimer then
		return 
	end
	if arg0.queueTimer.timerEvent then
	end
	if arg0.queueTimer.timerEvent.queue and arg0.queueTimer.timerEvent.queue[#arg0.queueTimer.timerEvent].funct then
		arg0.queueTimer.timerEvent.queue[#arg0.queueTimer.timerEvent].funct(arg0, 0.000000, arg0.queueTimer.timerEvent.queue[#])
	end
	arg0.queueTimer:close()
	arg0.queueTimer = nil
end

local function __FUNC_A043_(arg0, arg1)
	if #arg1.queue == 0.000000 or not arg0.queueTimer then
		LUI.UIElement.CloseAnimationQueue(arg0)
		return 
	end
	local registerVal3 = __FUNC_9DB8_(arg0, arg1.queue, arg1.repeats)
	arg0.queueTimer.interval = registerVal3
end

LUI.UIElement.QueueAnimation = __FUNC_A043_
local function __FUNC_A17C_(arg0, arg1, arg2, arg3)
	if not arg1 then
		return 
	end
	if arg0.queueTimer then
		__FUNC_9EFB_(arg0)
	end
	arg0:registerEventHandler("queue_animation", LUI.UIElement.QueueAnimation)
	if 0.000000 == 0.000000 then
		local registerVal5 = __FUNC_9DB8_(arg0, arg1, arg3)
	end
	if 0.000000 < #registerVal5 then
		local registerVal7 = {}
		registerVal7.name = "queue_animation"
		registerVal7.repeats = arg3
		registerVal7.queue = arg1
		registerVal5 = LUI.UITimer.new(registerVal5, registerVal7, false, arg0)
		arg0.queueTimer = registerVal5
		arg0:addElement(arg0.queueTimer)
	end
end

LUI.UIElement.animationQueue = __FUNC_A17C_
function LUI.UIElement.NextListAnimation(arg0, arg1)
	if arg1._index == 1.000000 and arg0._queueTimer ~= nil then
		arg0._queueTimer:close()
	end
	if arg1.interrupted then
		arg1._index = arg1._lastIndex
	end
	if arg1._index <= arg1._lastIndex then
		local registerVal2 = arg1._anims[arg1._index](arg0, arg1)
		arg1._index = (arg1._index + 1.000000)
		local registerVal3 = LUI.UITimer.new(registerVal2, arg1, true, arg0)
		arg0._queueTimer = registerVal3
		arg0:addElement(arg0._queueTimer)
	else
		arg0._queueTimer = nil
		arg0:registerEventHandler("anim_done", nil)
		registerVal2 = arg0:getParent()
		registerVal2:childClipFinished()
	end
end

function LUI.UIElement.ViewportAnimation(arg0, arg1)
	if not arg0.viewportScaleTime then
		arg0.viewportScaleTime = arg1.timeElapsed
	else
		arg0.viewportScaleTime = (arg0.viewportScaleTime + arg1.timeElapsed)
	end
	if 1.000000 < (arg0.viewportScaleTime / arg1.scaleDuration) then
		arg1.timer:close()
		arg0.viewportScaleTime = nil
	end
	Engine.SetViewport(arg1.controller, (0.100000 - ((arg1.startScale + ((arg1.endScale - arg1.startScale) * 1.000000)) / 10.000000)), (0.500000 - ((arg1.startScale + ((arg1.endScale - arg1.startScale) * 1.000000)) / 2.000000)), (arg1.startScale + ((arg1.endScale - arg1.startScale) * 1.000000)))
end

function LUI.UIElement.animateViewport(arg0, arg1, arg2, arg3, arg4)
	local registerVal9 = {}
	registerVal9.name = "viewport_animation"
	registerVal9.controller = arg1
	registerVal9.startScale = arg2
	registerVal9.endScale = arg3
	registerVal9.scaleDuration = arg4
	arg0:addElement(LUI.UITimer.new(1.000000, registerVal9, false, arg0))
end

function LUI.UIElement.animateToNextState(arg0, arg1, arg2, arg3, arg4)
	local function __FUNC_A94C_(arg0, arg5)
		if not arg5.interrupted then
			arg0:animateToState(arg1, arg2, arg3, arg4)
		end
	end

	return __FUNC_A94C_
end

function LUI.UIElement.CompleteAnimationEvent(arg0, arg1)
	arg0:completeAnimation()
	arg0:dispatchEventToChildren(arg1)
end

function LUI.UIElement.UpdateSafeArea(arg0, arg1, arg2)
	if arg2 == nil and arg1 ~= nil then
	end
	local registerVal3, registerVal4, registerVal5, registerVal6 = Engine.GetUserSafeAreaForController(arg1.controller)
	arg0:setLeftRight(false, false, registerVal3, registerVal5)
	arg0:setTopBottom(false, false, registerVal4, registerVal6)
end

function LUI.UIElement.sizeToSafeArea(arg0, arg1)
	arg0:UpdateSafeArea(nil, arg1)
	arg0:registerEventHandler("update_safe_area", arg0.UpdateSafeArea)
end

function LUI.UIElement.setState(arg0, arg1, arg2)
	if arg0.currentState == arg1 and not arg0.ignoreCurrentStateCheck then
		return 
	end
	if not arg2 then
		local registerVal4 = arg0:hasClip(arg1)
	else
	end
	arg0.currentState = arg1
	local registerVal7 = arg0:isInFocus()
	registerVal7 = arg0:hasClip("Focus")
	if registerVal7 and registerVal7 then
	end
	if true then
		arg0.nextClip = "Focus"
		arg0.currentClipIsTransitionClip = false
		arg0.clipsPerState[arg0.currentState][arg1]()
	else
		arg0:playClip("Focus")
	end
end

function LUI.UIElement.mergeStateConditions(arg0, arg1, arg2)
	if not arg2 then
		if not arg0.stateConditions then
			arg0.stateConditions = {}
		end
	end
	local function __FUNC_AF3A_(arg0)
		local registerVal1, registerVal2, registerVal3 = ipairs(arg0.stateConditions)
		for index4,value5 in registerVal1, registerVal2, registerVal3 do
			if value5.stateName == arg0 then
				return index4
			end
		end
		return nil
	end

	local registerVal4, registerVal5, registerVal6 = ipairs(arg1)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = __FUNC_AF3A_(value8.stateName)
		if registerVal9 == nil then
			table.insert(arg0.stateConditions, LUI.ShallowCopy(value8))
		else
			local registerVal10 = LUI.ShallowCopy(value8)
			arg0.stateConditions[registerVal9] = registerVal10
		end
	end
end

function LUI.UIElement.clipOver(arg0, arg1)
	if arg0.nextClip then
		arg0:playClip(arg0.nextClip)
	end
end

function LUI.UIElement.playClip(arg0, arg1)
	arg0.nextClip = nil
	arg0.currentClipIsTransitionClip = false
	if not arg0.currentState then
		arg0.currentState = "DefaultState"
	end
	if arg0.clipsPerState and arg0.clipsPerState[arg0.currentState] and arg0.clipsPerState[arg0.currentState][arg1] then
		arg0.clipsPerState[arg0.currentState][arg1]()
		return true
	end
	return false
end

function LUI.UIElement.hasClip(arg0, arg1)
	if arg0.clipsPerState and arg0.clipsPerState[arg0.currentState] and arg0.clipsPerState[arg0.currentState][arg1] then
		return true
	end
	return false
end

function LUI.UIElement.setupElementClipCounter(arg0, arg1)
	arg0.elementsPlayingClips = arg1
	if arg0.elementsPlayingClips == 0.000000 then
		local registerVal4 = {}
		registerVal4.name = "clip_over"
		arg0:processEvent(registerVal4)
	end
end

function LUI.UIElement.childClipFinished(arg0)
	arg0.elementsPlayingClips = (arg0.elementsPlayingClips - 1.000000)
	if arg0.elementsPlayingClips == 0.000000 then
		local registerVal3 = {}
		registerVal3.name = "clip_over"
		arg0:processEvent(registerVal3)
	end
end

function LUI.UIElement.clipFinished(arg0, arg1)
	local registerVal2 = arg0:getParent()
	if registerVal2 ~= nil then
		if arg1 or registerVal2.currentClipIsTransitionClip then
			registerVal2:childClipFinished()
		end
	end
end

function LUI.UIElement.updateState(arg0, arg1)
	if not arg1.menu then
	end
	if arg0.updateElementState then
		arg1.menu = arg0
		arg0:updateElementState(arg0, arg1)
		if arg0.anyChildUsesUpdateState then
			arg0:dispatchEventToChildren(arg1)
		end
		return 
	end
	local registerVal3 = arg0:getParent()
end

function LUI.UIElement.RecordCurrFocusedElemID(arg0, arg1)
	if not arg1.idStack then
		error(("LUI Error: " .. arg1.name .. " processed without event.idStack "))
	end
	table.insert(arg1.idStack, 1.000000, arg0.id)
	return arg0:dispatchEventToParent(arg1)
end

function LUI.UIElement.setFontBasedOnSize(arg0, arg1)
	if CoD.GetFontBasedOnSize then
		arg0:setFont(CoD.GetFontBasedOnSize(arg1))
	end
end

function LUI.UIElement.playBitchinFX(arg0, arg1, arg2, arg3)
	arg0:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	arg0:beginAnimation("bitchin", arg1, arg2, arg3)
	arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
end

function LUI.UIElement.playBitchinFXReverse(arg0, arg1, arg2, arg3)
	arg0:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	arg0:beginAnimation("bitchin", arg1, arg2, arg3)
	arg0:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
end

function LUI.UIElement.setClass(arg0, arg1)
	local registerVal2 = getmetatable(arg0)
	local registerVal4 = getmetatable(registerVal2.__newindex)
	if not registerVal4 then
		local registerVal5 = {}
		registerVal5.__index = arg1
		setmetatable(registerVal2.__newindex, registerVal5)
	else
		registerVal5.__index = arg1
	end
	registerVal5 = getmetatable(registerVal2.__newindex.m_eventHandlers)
	if not registerVal5 then
		local registerVal6 = {}
		registerVal6.__index = arg1.m_eventHandlers
		setmetatable(registerVal2.__newindex.m_eventHandlers, registerVal6)
	else
		registerVal6.__index = arg1.m_eventHandlers
	end
end

function LUI.UIElement.getParentMenu(arg0)
	local registerVal2 = arg0:getParent()
	return registerVal2
end

function LUI.UIElement.findSibling(arg0, arg1)
	local registerVal2 = arg0:getParent()
	if registerVal2 and registerVal2[arg1] then
		return registerVal2[arg1]
	end
end

local registerVal5 = {}
registerVal5.complete_animation = LUI.UIElement.CompleteAnimationEvent
registerVal5.mousemove = LUI.UIElement.MouseMoveEvent
registerVal5.mouseenter = LUI.UIElement.mouseEnter
registerVal5.mouseleave = LUI.UIElement.mouseLeave
registerVal5.mousedown = LUI.UIElement.MouseButtonEvent
registerVal5.leftmousedown = LUI.UIElement.LeftMouseDown
registerVal5.rightmousedown = LUI.UIElement.RightMouseDown
registerVal5.mouseup = LUI.UIElement.MouseButtonEvent
registerVal5.leftmouseup = LUI.UIElement.LeftMouseUp
registerVal5.rightmouseup = LUI.UIElement.RightMouseUp
registerVal5.gamepad_button = LUI.UIElement.GamepadButton
registerVal5.gain_focus = LUI.UIElement.gainFocus
registerVal5.lose_focus = LUI.UIElement.loseFocus
registerVal5.gain_active = LUI.UIElement.setActive
registerVal5.lose_active = LUI.UIElement.setInactive
registerVal5.restore_focus = LUI.UIElement.restoreFocus
registerVal5.close = LUI.UIElement.close
registerVal5.animate = LUI.UIElement.animate
registerVal5.viewport_animation = LUI.UIElement.ViewportAnimation
registerVal5.clip_over = LUI.UIElement.clipOver
registerVal5.update_state = LUI.UIElement.updateState
registerVal5.record_curr_focused_elem_id = LUI.UIElement.RecordCurrFocusedElemID
LUI.UIElement.m_eventHandlers = registerVal5
function LUI.UIElement.new(arg0)
	local registerVal1 = ConstructLUIElement()
	if  or not registerVal1 then
		registerVal1 = ConstructLUIElement(LUI.UIElement.m_defaultAnimationState)
	end
	LUI.UIElement.setClass(registerVal1, LUI.UIElement)
	registerVal1:setLayoutCached(false)
	registerVal1.anyChildUsesUpdateState = false
	if arg0 then
		registerVal1:registerAnimationState("default", arg0)
		registerVal1:animateToState("default")
	end
	return registerVal1
end

registerVal5 = {}
local function __FUNC_BDC9_(arg0, arg1)
	return arg0
end

registerVal5.__index = __FUNC_BDC9_
local function __FUNC_BDF8_()
	return nil
end

registerVal5.__call = __FUNC_BDF8_
local function __FUNC_BE2C_()
end

registerVal5.__newIndex = __FUNC_BE2C_
LUI.UIElement.fakeElemMetaTable = registerVal5
function LUI.UIElement.createFake()
	local registerVal0 = setmetatable({}, LUI.UIElement.fakeElemMetaTable)
	return registerVal0
end

function LUI.UIElement.showDebugTimer(arg0, arg1)
	local function __FUNC_BFBE_(arg0, arg1)
		arg0.playClip(arg0, arg1)
		if arg0.elementsPlayingClips ~= nil and 0.000000 < arg0.elementsPlayingClips then
			local registerVal2 = Engine.SetDebugTimerInfo((arg0.id .. ":" .. arg0.currentState .. ":" .. arg1), arg0._debugTimerIndex)
			arg0._debugTimerIndex = registerVal2
		end
	end

	arg0.playClip = __FUNC_BFBE_
	local function __FUNC_C102_(arg0, arg1)
		if arg0._debugTimerIndex ~= nil then
			Engine.SetDebugTimerInfo("", arg0._debugTimerIndex)
			arg0._debugTimerIndex = nil
		end
		LUI.UIElement.clipOver(arg0, arg1)
	end

	arg0:registerEventHandler("clip_over", __FUNC_C102_)
	local function __FUNC_C212_(arg0)
		arg0.close(arg0)
		if arg0._debugTimerIndex ~= nil then
			Engine.SetDebugTimerInfo("", arg0._debugTimerIndex)
			arg0._debugTimerIndex = nil
		end
	end

	arg0.close = __FUNC_C212_
end

registerVal5 = {}
registerVal5.left = 0.000000
registerVal5.top = 0.000000
registerVal5.right = 0.000000
registerVal5.bottom = 0.000000
registerVal5.leftAnchor = true
registerVal5.topAnchor = true
registerVal5.rightAnchor = true
registerVal5.bottomAnchor = true
LUI.UIElement.ContainerState = registerVal5
function LUI.UIContainer.new()
	return LUI.UIElement.new(LUI.UIElement.ContainerState)
end


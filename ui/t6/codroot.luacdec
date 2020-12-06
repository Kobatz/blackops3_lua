-- Decompiled with CoDLUIDecompiler by JariK

LUI.CoDRoot = {}
function LUI.CoDRoot.ProcessEvent(arg0, arg1)
	if arg1.immediate == true then
		LUI.CoDRoot.ProcessEventNow(arg0, arg1)
	else
		table.insert(arg0.eventQueue, arg1)
		if 20.000000 < #table.insert then
			DebugPrint(("LUI WARNING: Event queue exceeded 20 events! " .. arg1.name .. ". Size is " .. #table.insert))
		end
	end
end

function LUI.CoDRoot.ProcessEvents(arg0, arg1)
	if 60.000000 < # then
		DebugPrint(("LUI WARNING: Event queue reached " .. # .. "!. ** Emergency event processing kicked off. ** "))
	else
		if 40.000000 < # then
			local registerVal5 = math.floor((# / 10.000000))
			DebugPrint(("LUI WARNING: Event queue reached " .. # .. ". Processing " .. registerVal5 .. " events this frame."))
		else
		end
	end
	for index5=1.000000, 1.000000, 1.000000 do
		if arg0.eventQueue[1.000000] ~= nil then
			table.remove(arg0.eventQueue, 1.000000)
			LUI.CoDRoot.ProcessEventNow(arg0, arg0.eventQueue[1.000000])
		end
	end
end

function LUI.CoDRoot.ProcessEventNow(arg0, arg1)
	if arg1.name ~= "process_events" then
		Engine.PIXBeginEvent(arg1.name)
		Engine.EventProcessed()
	end
	local registerVal2 = arg0:propagateEvent(arg1)
	if registerVal2 then
		Engine.PIXEndEvent()
		return registerVal2
	end
	local registerVal3 = LUI.UIElement.processEvent(arg0, arg1)
	if arg1.name ~= "process_events" then
		Engine.PIXEndEvent()
	end
	return registerVal3
end

function LUI.CoDRoot.DontPropagateEvent(arg0, arg1)
end

function LUI.CoDRoot.PropagateEventToPrimaryRoot(arg0, arg1)
	if LUI.primaryRoot ~= nil and LUI.primaryRoot ~= arg0 and arg1.name ~= "resize" and arg1.name ~= "addmenu" then
		return LUI.UIElement.processEvent(LUI.primaryRoot, arg1)
	end
end

function LUI.CoDRoot.CloseAll(arg0, arg1)
	arg0:removeAllChildren()
	return true
end

function LUI.CoDRoot.CloseMenu(arg0, arg1)
	local registerVal2 = arg0:getFirstChild()
	if registerVal2.menuName == arg1.menuName then
		registerVal2:close()
	end
	local registerVal3 = registerVal2:getNextSibling()
	return true
end

function LUI.CoDRoot.PrintElementTree(arg0, arg1)
	for index3=1.000000, arg1.depth, 1.000000 do
	end
	arg1.depth = (arg1.depth + 1.000000)
	print(("" .. "	"), arg0.id)
	local registerVal3 = arg0:getFirstChild()
	local registerVal4 = registerVal3:getNextSibling()
	LUI.CoDRoot.PrintElementTree(registerVal3, arg1)
end

function LUI.CoDRoot.new(arg0)
	local registerVal1 = LUI.UIRoot.new(arg0)
	registerVal1.eventQueue = {}
	registerVal1.numEvents = 0.000000
	registerVal1:registerEventHandler("process_events", LUI.CoDRoot.ProcessEvents)
	registerVal1:registerEventHandler("close_all", LUI.CoDRoot.CloseAll)
	registerVal1:registerEventHandler("close_menu", LUI.CoDRoot.CloseMenu)
	registerVal1:registerEventHandler("print_element_tree", LUI.CoDRoot.PrintElementTree)
	local function __FUNC_102D_()
		return true
	end

	registerVal1:registerEventHandler("gamepad_button", __FUNC_102D_)
	registerVal1.propagateEvent = LUI.CoDRoot.PropagateEventToPrimaryRoot
	registerVal1.processEvent = LUI.CoDRoot.ProcessEvent
	if LUI.primaryRoot == nil then
		LUI.primaryRoot = registerVal1
	end
	return registerVal1
end


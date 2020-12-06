-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.CoD9Button")
CoD.CategoryButton = {}
function CoD.CategoryButton.Action(arg0, arg1)
	if arg0.actionEventName ~= nil then
		local registerVal4 = {}
		registerVal4.name = arg0.actionEventName
		registerVal4.controller = arg1.controller
		registerVal4.itemInfo = arg0.itemInfo
		arg0:dispatchEventToParent(registerVal4)
	end
end

function CoD.CategoryButton.GainFocus(arg0, arg1)
	local registerVal2 = CoD.CoD9Button.GainFocus(arg0, arg1)
	if arg0.gainFocusEventName ~= nil then
		local registerVal5 = {}
		registerVal5.name = arg0.gainFocusEventName
		registerVal5.controller = arg1.controller
		registerVal5.itemInfo = arg0.itemInfo
		registerVal5.owner = arg0
		arg0:dispatchEventToParent(registerVal5)
	end
	return registerVal2
end

function CoD.CategoryButton.LoseFocus(arg0, arg1)
	CoD.CoD9Button.LoseFocus(arg0, arg1)
	if arg0.loseFocusEventName ~= nil then
		local registerVal4 = {}
		registerVal4.name = arg0.loseFocusEventName
		registerVal4.controller = arg1.controller
		arg0:dispatchEventToParent(registerVal4)
	end
end

function CoD.CategoryButton.new(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = CoD.CoD9Button.new(arg0, arg1)
	registerVal5.id = ("CoD9Button.CategoryButton." .. arg4.name)
	registerVal5.gainFocusEventName = arg2
	registerVal5.loseFocusEventName = arg3
	registerVal5.itemInfo = arg4
	registerVal5:registerEventHandler("button_action", CoD.CategoryButton.Action)
	registerVal5:registerEventHandler("gain_focus", CoD.CategoryButton.GainFocus)
	registerVal5:registerEventHandler("lose_focus", CoD.CategoryButton.LoseFocus)
	return registerVal5
end


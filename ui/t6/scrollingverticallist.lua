-- Decompiled with CoDLUIDecompiler by JariK

CoD.ScrollingVerticalList = {}
CoD.ScrollingVerticalList.ScrollBarWidth = 4.000000
CoD.ScrollingVerticalList.ScrollBarInactiveWidth = 2.000000
function CoD.ScrollingVerticalList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new(arg0)
	registerVal2.id = "ScrollingVerticalList"
	local registerVal4 = {}
	registerVal4.left = 0.000000
	registerVal4.top = 0.000000
	registerVal4.right = 0.000000
	registerVal4.bottom = 0.000000
	registerVal4.leftAnchor = true
	registerVal4.topAnchor = true
	registerVal4.rightAnchor = true
	registerVal4.bottomAnchor = true
	registerVal4.spacing = arg1
	local registerVal3 = LUI.UIVerticalList.new(registerVal4)
	registerVal3:setUseStencil(true)
	registerVal2:addElement(registerVal3)
	registerVal2.verticalList = registerVal3
	registerVal2[registerVal3.id] = registerVal3
	local registerVal8 = {}
	registerVal8.name = "gamepad_button"
	registerVal8.button = "up"
	registerVal8.down = true
	registerVal3:addElement(LUI.UIButtonRepeater.new("up", registerVal8))
	registerVal8 = {}
	registerVal8.name = "gamepad_button"
	registerVal8.button = "down"
	registerVal8.down = true
	registerVal3:addElement(LUI.UIButtonRepeater.new("down", registerVal8))
	registerVal4 = LUI.UIVerticalScrollbar.new(registerVal3, CoD.ScrollingVerticalList.ScrollBarInactiveWidth, CoD.ScrollingVerticalList.ScrollBarWidth, 1.000000, 1.000000, 1.000000, 0.500000, 0.100000)
	registerVal2:addElement(registerVal4)
	registerVal2.scrollbar = registerVal4
	registerVal2.addElementToList = CoD.ScrollingVerticalList.AddElementToList
	return registerVal2
end

function CoD.ScrollingVerticalList.AddElementToList(arg0, arg1)
	arg0.verticalList:addElement(arg1)
	arg0.verticalList[arg1.id] = arg1
	if arg1.m_focusable then
		local registerVal2 = LUI.UIElement.new()
		registerVal2.id = "ScrollingVerticalList_GainFocusListener"
		registerVal2:registerEventHandler("gain_focus", CoD.ScrollingVerticalList.GainFocusListenerTriggered)
		registerVal2.scrollbar = arg0.scrollbar
		arg1:addElement(registerVal2)
	end
end

function CoD.ScrollingVerticalList.GainFocusListenerTriggered(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "focus_changed"
	arg0.scrollbar:processEvent(registerVal4)
end


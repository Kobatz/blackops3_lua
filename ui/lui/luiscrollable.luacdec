-- Decompiled with CoDLUIDecompiler by JariK

LUI.UIScrollable = {}
local function __FUNC_184_(arg0, arg1)
	arg0.container:addElement(arg1)
end

local function __FUNC_1EF_(arg0, arg1, arg2, arg3, arg4)
	local registerVal8 = {}
	registerVal8.left = arg1
	registerVal8.right = (arg1 + arg0.containerWidth)
	registerVal8.leftAnchor = true
	arg0.container:registerAnimationState("scroll_target", registerVal8)
	arg0.container:animateToState("scroll_target", arg2, arg3, arg4)
end

local function __FUNC_321_(arg0, arg1, arg2, arg3, arg4)
	local registerVal5 = arg0:getHeight()
	if 0.000000 < arg1 then
	else
		if 0.000000 < (-arg0.containerHeight + registerVal5) then
		end
	end
	local registerVal9 = {}
	registerVal9.top = (-arg0.containerHeight + registerVal5)
	registerVal9.bottom = ((-arg0.containerHeight + registerVal5) + arg0.containerHeight)
	registerVal9.topAnchor = true
	registerVal9.bottomAnchor = false
	arg0.container:registerAnimationState("scroll_target", registerVal9)
	arg0.container:animateToState("scroll_target", arg2, arg3, arg4)
end

local function __FUNC_4D1_(arg0, arg1, arg2, arg3)
	if arg1 == nil or arg2 == nil then
		error("Cannot create scrollable component without valid dimensions!")
		return 
	end
	local registerVal4 = LUI.UIElement.new(arg0)
	registerVal4.id = "LUIScrollable"
	registerVal4:setHandleMouse(true)
	if arg3 == true then
		local registerVal6 = {}
		registerVal6.left = (-arg1 / 2.000000)
		registerVal6.top = (-arg2 / 2.000000)
		registerVal6.right = (arg1 / 2.000000)
		registerVal6.bottom = (arg2 / 2.000000)
		registerVal6.leftAnchor = false
		registerVal6.topAnchor = false
		registerVal6.rightAnchor = false
		registerVal6.bottomAnchor = false
		registerVal6.zoom = 0.000000
		local registerVal5 = LUI.UIElement.new(registerVal6)
		registerVal4.container = registerVal5
	else
		registerVal6 = {}
		registerVal6.left = 0.000000
		registerVal6.top = 0.000000
		registerVal6.right = arg1
		registerVal6.bottom = arg2
		registerVal6.leftAnchor = true
		registerVal6.topAnchor = true
		registerVal6.rightAnchor = false
		registerVal6.bottomAnchor = false
		registerVal6.zoom = 0.000000
		registerVal5 = LUI.UIElement.new(registerVal6)
		registerVal4.container = registerVal5
	end
	registerVal4.container.id = "LUIScrollable_Container"
	registerVal4:setUseStencil(true)
	registerVal4.containerWidth = arg1
	registerVal4.containerHeight = arg2
	registerVal4:addElement(registerVal4.container)
	registerVal4.addElement = __FUNC_184_
	registerVal4.scrollX = __FUNC_1EF_
	registerVal4.scrollY = __FUNC_321_
	return registerVal4
end

LUI.UIScrollable.new = __FUNC_4D1_

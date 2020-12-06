-- Decompiled with CoDLUIDecompiler by JariK

LUI.UIRoot = {}
local function __FUNC_19E_(arg0, arg1)
	local registerVal2 = {}
	registerVal2.left = (-arg1.width / 2.000000)
	registerVal2.top = (-arg1.height / 2.000000)
	registerVal2.right = (arg1.width / 2.000000)
	registerVal2.bottom = (arg1.height / 2.000000)
	registerVal2.leftAnchor = false
	registerVal2.topAnchor = false
	registerVal2.rightAnchor = false
	registerVal2.bottomAnchor = false
	arg0:registerAnimationState("default", registerVal2)
	arg0:animateToState("default")
end

local function __FUNC_34B_(arg0, arg1)
	arg1.root = arg0
	arg0:dispatchEventToChildren(arg1)
end

local function __FUNC_3B3_(arg0, arg1)
	arg0:setLayoutCached(false)
	arg0:dispatchEventToChildren(arg1)
end

local function __FUNC_42E_(arg0, arg1)
	Engine.GCStop()
	if LUI.createMenu[arg1.menu] then
		local registerVal4 = LUI.createMenu[arg1.menu](arg1.controller)
		if arg1.controller then
			if not CoD.MenuNavigation then
				CoD.MenuNavigation = {}
			end
			if not CoD.MenuNavigation[arg1.controller] then
				CoD.MenuNavigation[arg1.controller] = {}
			end
			local registerVal7 = {}
			registerVal7 = {registerVal4.menuName}
			table.insert(CoD.MenuNavigation[arg1.controller], registerVal7)
		end
		arg0:addElement(registerVal4)
		registerVal7 = {}
		registerVal7.name = "menu_opened"
		registerVal7.controller = arg1.controller
		registerVal4:processEvent(registerVal7)
	else
		error(("LUI Error: Tried to add nonexistent menu " .. arg1.menu))
	end
	Engine.GCRestart()
	return true
end

local function __FUNC_717_(arg0, arg1)
	return (arg0.m_currentAnimationState.left + (arg1.left * arg0.m_currentAnimationState.unitsToPixels)), CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister, CoDLUIDecompiler.LuaRegister
end

local function __FUNC_85E_(arg0, arg1)
	return (arg1 * arg0.m_currentAnimationState.unitsToPixels)
end

local function __FUNC_8E0_(arg0, arg1, arg2)
	return arg0:RootPixelsToUnits(arg1, arg2)
end

local function __FUNC_93B_(arg0)
	local registerVal2 = {}
	registerVal2.left = 0.000000
	registerVal2.top = 0.000000
	registerVal2.right = 0.000000
	registerVal2.bottom = 0.000000
	registerVal2.leftAnchor = false
	registerVal2.topAnchor = false
	registerVal2.rightAnchor = false
	registerVal2.bottomAnchor = false
	local registerVal1 = LUI.UIElement.new(registerVal2)
	registerVal1.id = "LUIRoot"
	registerVal1.unitsToPixelsRect = __FUNC_717_
	registerVal1.pixelsToUnits = __FUNC_8E0_
	registerVal1.unitsToPixels = __FUNC_85E_
	registerVal1:registerEventHandler("resize", __FUNC_19E_)
	registerVal1:registerEventHandler("addmenu", __FUNC_42E_)
	registerVal1:registerEventHandler("mousemove", __FUNC_34B_)
	registerVal1:registerEventHandler("mousedown", __FUNC_34B_)
	registerVal1:registerEventHandler("mouseup", __FUNC_34B_)
	registerVal1:registerEventHandler("controller_changed", __FUNC_3B3_)
	registerVal1.name = arg0
	registerVal1:setRoot()
	LUI.roots[arg0] = registerVal1
	return registerVal1
end

LUI.UIRoot.new = __FUNC_93B_

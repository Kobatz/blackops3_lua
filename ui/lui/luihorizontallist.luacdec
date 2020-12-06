-- Decompiled with CoDLUIDecompiler by JariK

LUI.UIHorizontalList = {}
local function __FUNC_230_(arg0, arg1, arg2)
	local registerVal4 = {}
	registerVal4.leftAnchor = true
	registerVal4.rightAnchor = false
	registerVal4.left = 0.000000
	registerVal4.right = arg1
	registerVal4.topAnchor = true
	registerVal4.bottomAnchor = true
	registerVal4.top = 0.000000
	registerVal4.bottom = 0.000000
	local registerVal3 = LUI.UIElement.new(registerVal4)
	registerVal3:setPriority(arg2)
	arg0:addElement(registerVal3)
	return registerVal3
end

local function __FUNC_3A7_(arg0)
	local registerVal1 = LUI.UIElement.new(arg0)
	registerVal1.id = "LUIHorizontalList"
	registerVal1:setupUIHorizontalList()
	registerVal1.addSpacer = __FUNC_230_
	registerVal1.addElement = LUI.UIHorizontalList.AddElement
	registerVal1.removeElement = LUI.UIHorizontalList.RemoveElement
	registerVal1:registerEventHandler("gain_focus", LUI.UIHorizontalList.gainFocus)
	return registerVal1
end

LUI.UIHorizontalList.new = __FUNC_3A7_
function LUI.UIHorizontalList.AddElement(arg0, arg1)
	LUI.UIElement.addElement(arg0, arg1)
	arg0:setLayoutCached(false)
	LUI.UIHorizontalList.UpdateNavigation(arg0)
end

function LUI.UIHorizontalList.RemoveElement(arg0, arg1)
	LUI.UIElement.removeElement(arg0, arg1)
	arg0:setLayoutCached(false)
	LUI.UIHorizontalList.UpdateNavigation(arg0)
end

function LUI.UIHorizontalList.UpdateNavigation(arg0)
	local registerVal3 = arg0:getFirstChild()
	if registerVal3.m_focusable then
		if nil == nil then
		end
		if nil ~= nil then
			nil.navigation.right = registerVal3
			registerVal3.navigation.left = nil
		end
		if registerVal3.navigation ~= nil and arg0.navigation ~= nil then
			if registerVal3.navigation.down == nil and arg0.navigation.down ~= nil then
				registerVal3.navigation.down = arg0.navigation.down
			end
			if registerVal3.navigation.up == nil and arg0.navigation.up ~= nil then
				registerVal3.navigation.up = arg0.navigation.up
			end
		end
	end
	local registerVal4 = registerVal3:getNextSibling()
	if registerVal3 ~= nil then
		if arg0.navigation ~= nil and arg0.navigation.right ~= nil and arg0.navigation.right.m_focusable == true then
			registerVal3.navigation.right = arg0.navigation.right
			arg0.navigation.right.navigation.left = registerVal3
		else
			if registerVal3 ~= registerVal3 then
				registerVal3.navigation.right = registerVal3
				registerVal3.navigation.left = registerVal3
			end
		end
		if arg0.navigation ~= nil and arg0.navigation.left ~= nil and arg0.navigation.left.m_focusable == true then
			registerVal3.navigation.left = arg0.navigation.left
			arg0.navigation.left.navigation.right = registerVal3
		end
	end
end

function LUI.UIHorizontalList.gainFocus(arg0)
	local registerVal2 = arg0:getFirstChild()
	if registerVal2.m_focusable and nil == nil then
	end
	local registerVal3 = registerVal2:getNextSibling()
	if registerVal2 ~= nil then
		local registerVal5 = {}
		registerVal5.name = "gain_focus"
		return registerVal2:processEvent(registerVal5)
	end
	return false
end


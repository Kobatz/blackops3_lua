-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
LUI.UIVerticalList = registerVal1
LUI.UIVerticalList.id = "LUIVerticalList"
function LUI.UIVerticalList.addSpacer(arg0, arg1, arg2)
	local registerVal4 = {}
	registerVal4.leftAnchor = true
	registerVal4.rightAnchor = true
	registerVal4.left = 0.000000
	registerVal4.right = 0.000000
	registerVal4.topAnchor = true
	registerVal4.bottomAnchor = false
	registerVal4.top = 0.000000
	registerVal4.bottom = arg1
	local registerVal3 = LUI.UIElement.new(registerVal4)
	registerVal3:setPriority(arg2)
	arg0:addElement(registerVal3)
	return registerVal3
end

function LUI.UIVerticalList.new(arg0)
	local registerVal1 = LUI.UIElement.new(arg0)
	registerVal1:setClass(LUI.UIVerticalList)
	registerVal1:setupUIVerticalList()
	return registerVal1
end

function LUI.UIVerticalList.addElement(arg0, arg1)
	LUI.UIElement.addElement(arg0, arg1)
	arg0:setLayoutCached(false)
	LUI.UIVerticalList.UpdateNavigation(arg0)
end

function LUI.UIVerticalList.removeElement(arg0, arg1)
	LUI.UIElement.removeElement(arg0, arg1)
	arg0:setLayoutCached(false)
	LUI.UIVerticalList.UpdateNavigation(arg0)
end

function LUI.UIVerticalList.addElementToTop(arg0, arg1)
	local registerVal2 = arg0:getFirstChild()
	if registerVal2 ~= nil then
		LUI.UIElement.addElementBefore(arg1, registerVal2)
		arg0:setLayoutCached(false)
		LUI.UIVerticalList.UpdateNavigation(arg0)
	else
		LUI.UIVerticalList.addElement(arg0, arg1)
	end
end

function LUI.UIVerticalList.selectElementIndex(arg0, arg1)
	local registerVal2 = arg0:getFirstChild()
	if registerVal2.m_focusable then
		if (0.000000 + 1.000000) == arg1 then
			local registerVal6 = {}
			registerVal6.name = "gain_focus"
			registerVal2:processEvent(registerVal6)
		else
			registerVal6 = {}
			registerVal6.name = "lose_focus"
			registerVal2:processEvent(registerVal6)
		end
	end
	local registerVal4 = registerVal2:getNextSibling()
end

function LUI.UIVerticalList.UpdateNavigation(arg0, arg1)
	local registerVal4 = arg0:getFirstChild()
	if registerVal4.m_focusable then
		if nil == nil then
		end
		if nil ~= nil then
			nil.navigation.down = registerVal4
			registerVal4.navigation.up = nil
		end
		if registerVal4.navigation ~= nil and arg0.navigation ~= nil then
			if registerVal4.navigation.left == nil and arg0.navigation.left ~= nil then
				registerVal4.navigation.left = arg0.navigation.left
			end
			if registerVal4.navigation.right == nil and arg0.navigation.right ~= nil then
				registerVal4.navigation.right = arg0.navigation.right
			end
		end
		if arg0.navigationFocusSound ~= nil then
			registerVal4.gainFocusSFX = arg0.navigationFocusSound
		end
		if registerVal4.navigationSounds then
			registerVal4.navigationSounds.up = nil
			registerVal4.navigationSounds.down = nil
		end
	end
	local registerVal5 = registerVal4:getNextSibling()
	if registerVal4 ~= nil and not arg0.disableWrapping then
		if arg0.navigation ~= nil and arg0.navigation.down ~= nil then
			registerVal4.navigation.down = arg0.navigation.down
			registerVal5 = type(arg0.navigation.down)
			if registerVal5 == "userdata" and arg0.navigation.down.m_focusable == true then
				arg0.navigation.down.navigation.up = registerVal4
			else
				if registerVal4 ~= registerVal4 then
					registerVal4.navigation.down = registerVal4
					registerVal4.navigation.up = registerVal4
				else
					registerVal4.navigation.down = nil
					registerVal4.navigation.up = nil
				end
			end
		end
		registerVal4.navigation.up = arg0.navigation.up
		registerVal5 = type(arg0.navigation.up)
		arg0.navigation.up.navigation.down = registerVal4
		if arg0.navigation ~= nil and arg0.navigation.up ~= nil and registerVal5 == "userdata" and arg0.navigation.up.m_focusable == true and registerVal4 ~= nil and arg0.disableWrapping and arg0.navigationFailSound then
			registerVal4.navigationSounds = {}
			registerVal4.navigationSounds = {}
			registerVal4.navigationSounds.up = arg0.navigationFailSound
			registerVal4.navigationSounds.down = arg0.navigationFailSound
		end
	end
	if arg1 then
		arg0:dispatchEventToChildren(arg1)
	end
end

function LUI.UIVerticalList.gainFocus(arg0)
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

function LUI.UIVerticalList.gainFocusSkipDisabled(arg0)
	local registerVal3 = arg0:getFirstChild()
	if registerVal3.m_focusable then
		if nil == nil then
		end
		if not registerVal3.disabled then
		else
		else
			local registerVal4 = registerVal3:getNextSibling()
		end
	end
	if registerVal3 ~= nil then
	end
	if registerVal3 ~= nil then
		local registerVal6 = {}
		registerVal6.name = "gain_focus"
		registerVal3:processEvent(registerVal6)
	end
end

function LUI.UIVerticalList.addNavigationFocusSound(arg0, arg1)
	arg0.navigationFocusSound = arg1
	LUI.UIVerticalList.UpdateNavigation(arg0)
end

function LUI.UIVerticalList.addNavigationFailSound(arg0, arg1)
	arg0.navigationFailSound = arg1
	LUI.UIVerticalList.UpdateNavigation(arg0)
end

LUI.UIVerticalList:registerEventHandler("gain_focus", LUI.UIVerticalList.gainFocus)
LUI.UIVerticalList:registerEventHandler("gain_focus_skip_disabled", LUI.UIVerticalList.gainFocusSkipDisabled)
LUI.UIVerticalList:registerEventHandler("menu_loaded", LUI.UIVerticalList.UpdateNavigation)

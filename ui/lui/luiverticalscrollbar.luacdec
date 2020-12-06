-- Decompiled with CoDLUIDecompiler by JariK

LUI.UIVerticalScrollbar = {}
LUI.UIVerticalScrollbar.InactiveDelay = 500.000000
LUI.UIVerticalScrollbar.InactiveDuration = 250.000000
function LUI.UIVerticalScrollbar.new(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal9 = {}
	registerVal9.left = 0.000000
	registerVal9.top = 0.000000
	registerVal9.right = arg2
	registerVal9.bottom = 0.000000
	registerVal9.leftAnchor = false
	registerVal9.topAnchor = true
	registerVal9.rightAnchor = true
	registerVal9.bottomAnchor = true
	registerVal9.alpha = arg6
	local registerVal8 = LUI.UIElement.new(registerVal9)
	registerVal8.id = "LUIVerticalScrollbar"
	local registerVal12 = {}
	registerVal12.left = 0.000000
	registerVal12.right = arg1
	registerVal12.leftAnchor = false
	registerVal12.rightAnchor = true
	registerVal12.alpha = arg7
	registerVal8:registerAnimationState("inactive", registerVal12)
	registerVal8:animateToState("inactive")
	local registerVal10 = {}
	registerVal10.left = 0.000000
	registerVal10.top = 0.000000
	registerVal10.right = 0.000000
	registerVal10.bottom = 0.000000
	registerVal10.leftAnchor = true
	registerVal10.topAnchor = true
	registerVal10.rightAnchor = true
	registerVal10.bottomAnchor = false
	registerVal10.red = arg3
	registerVal10.green = arg4
	registerVal10.blue = arg5
	registerVal9 = LUI.UIImage.new(registerVal10)
	registerVal8.image = registerVal9
	registerVal8:addElement(registerVal8.image)
	registerVal8.verticalList = arg0
	registerVal8:registerEventHandler("list_scroll", LUI.UIVerticalScrollbar.UpdateScrollbar)
	registerVal8:registerEventHandler("focus_changed", LUI.UIVerticalScrollbar.FocusChanged)
	registerVal8:registerEventHandler("inactive", LUI.UIVerticalScrollbar.Inactive)
	return registerVal8
end

function LUI.UIVerticalScrollbar.UpdateScrollbar(arg0, arg1)
	if arg1.list == arg0.verticalList then
		if arg1.noScroll then
			arg0.image:setAlpha(0.000000)
		else
			arg0.image:setAlpha(1.000000)
		end
		local registerVal5 = {}
		registerVal5.top = arg1.scrollHandlePosition
		registerVal5.bottom = (arg1.scrollHandlePosition + arg1.scrollHandleSize)
		registerVal5.topAnchor = true
		registerVal5.bottomAnchor = false
		arg0.image:registerAnimationState("default", registerVal5)
		arg0.image:animateToState("default")
	end
	arg0:dispatchEventToChildren(arg1)
end

function LUI.UIVerticalScrollbar.FocusChanged(arg0, arg1)
	if not CoD.useController then
		arg0:animateToState("default")
	end
	if arg0.inactiveTimer then
		arg0.inactiveTimer:close()
		arg0.inactiveTimer:reset()
		arg0:addElement(arg0.inactiveTimer)
	else
		local registerVal2 = LUI.UITimer.new(LUI.UIVerticalScrollbar.InactiveDelay, "inactive", true)
		arg0.inactiveTimer = registerVal2
		arg0:addElement(arg0.inactiveTimer)
	end
end

function LUI.UIVerticalScrollbar.Inactive(arg0, arg1)
	arg0:animateToState("inactive", LUI.UIVerticalScrollbar.InactiveDuration)
end


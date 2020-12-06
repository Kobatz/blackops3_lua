-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
LUI.UIText = registerVal1
function LUI.UIText.addElement(arg0, arg1)
	if arg1.id ~= "LUITimer" then
		DebugPrint("WARNING: An element is being added to a UIText element. This will cause undesired behavior!")
	end
	LUI.UIElement.addElement(arg0, arg1)
end

function LUI.UIText.addElementBefore(arg0, arg1)
	if newChildElement.id ~= "LUITimer" then
		DebugPrint("WARNING: An element is being added to a UIText element. This will cause undesired behavior!")
	end
	LUI.UIElement.addElementBefore(arg0, arg1)
end

function LUI.UIText.addElementAfter(arg0, arg1)
	if newChildElement.id ~= "LUITimer" then
		DebugPrint("WARNING: An element is being added to a UIText element. This will cause undesired behavior!")
	end
	LUI.UIElement.addElementAfter(arg0, arg1)
end

function LUI.UIText.new(arg0, arg1)
	if arg0 ~= nil and arg0.red == nil and arg0.green == nil and arg0.blue == nil then
		arg0.red = CoD.DefaultTextColor.r
		arg0.green = CoD.DefaultTextColor.g
		arg0.blue = CoD.DefaultTextColor.b
	end
	local registerVal2 = LUI.UIElement.new(arg0)
	registerVal2:setClass(LUI.UIText)
	if not arg1 then
		registerVal2:setupUIText()
	else
		registerVal2:setupUITextUncached()
	end
	return registerVal2
end

function LUI.UIText.TransitionComplete_OutState(arg0, arg1)
	arg0:setText(arg0.replaceContentData.text)
	arg0:registerEventHandler(("transition_complete_" .. arg0.replaceContentData.outState), nil)
	arg0:animateToState(arg0.replaceContentData.inState, arg0.replaceContentData.inDuration)
	arg0.replaceContentData = nil
end

function LUI.UIText.setText(arg0, arg1, arg2, arg3, arg4, arg5)
	if arg2 ~= nil and arg3 ~= nil then
		arg0.replaceContentData = {}
		arg0.replaceContentData.outState = arg2
		arg0.replaceContentData.inState = arg3
		arg0.replaceContentData.outDuration = arg4
		arg0.replaceContentData.inDuration = arg5
		arg0.replaceContentData.text = arg1
		arg0:registerEventHandler(("transition_complete_" .. arg2), LUI.UIText.TransitionComplete_OutState)
		arg0:animateToState(arg2, arg4)
		return 
	end
	arg0:setTextInC(arg1)
end

function LUI.UIText.getText(arg0)
	if not arg0.getTextFromC then
		return "temporary text unless exes are posted - jcolvin"
	end
	return arg0:getTextFromC()
end

LUI.UIText.id = "LUIText"

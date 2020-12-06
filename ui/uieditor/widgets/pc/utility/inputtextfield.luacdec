-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C7_(arg0, arg1, arg2)
	arg0.cursor = "|"
	local function __FUNC_350_()
		local registerVal0 = arg0:getWidth()
		local registerVal1 = arg0.inputText:getTextWidth()
		local registerVal2, registerVal3, registerVal4, registerVal5 = arg0.inputText:getLocalLeftRight()
		local registerVal8 = arg0.dummyText:getTextWidth()
		local registerVal9, registerVal10, registerVal11, registerVal12 = arg0.dummyText:getLocalLeftRight()
		local registerVal15 = math.min((registerVal1 - registerVal0), (registerVal8 - registerVal0))
		if registerVal15 <= 0.000000 or registerVal0 == 0.000000 then
		else
		end
		arg0.cursorText:setText(arg0.cursor)
		arg0.cursorText:setLeftRight(registerVal9, registerVal10, (((5.000000 + registerVal8) - 2.000000) - (0.000000 + 15.000000)), ((((5.000000 + registerVal8) - 2.000000) - (0.000000 + 15.000000)) + 1.000000))
		arg0.inputText:setLeftRight(registerVal2, registerVal3, (5.000000 - (0.000000 + 15.000000)), (((5.000000 + registerVal1) - (0.000000 + 15.000000)) + 1.000000))
	end

	arg0.updateCursor = __FUNC_350_
	local function __FUNC_5A0_(arg1, arg2)
		local registerVal2 = Dvar.ui_keyboard_dvar_edit:get()
		if registerVal2 then
			arg0.inputText:setText(registerVal2)
		end
		if arg2.overstrike then
			arg0.cursor = "_"
		else
			arg0.cursor = "|"
		end
		if arg2.cursorPos then
			local registerVal3 = string.sub(registerVal2, 1.000000, arg2.cursorPos)
			arg0.dummyText:setText(registerVal3)
		end
		arg0.updateCursor()
	end

	arg0:registerEventHandler("ui_keyboard_update", __FUNC_5A0_)
	local registerVal3 = Dvar.ui_keyboard_dvar_edit:get()
	if registerVal3 then
		arg0.inputText:setText(registerVal3)
		arg0.dummyText:setText(registerVal3)
		arg0.updateCursor()
	end
end

local function __FUNC_792_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_1C7_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.InputTextField = registerVal3
local function __FUNC_803_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.InputTextField)
	registerVal2.id = "InputTextField"
	registerVal2.soundSet = "FrontendMain"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.310000, 0.310000, 0.310000)
	registerVal2:addElement(registerVal3)
	registerVal2.fullBackground = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 5.000000, 395.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize(""))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.dummyText = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 5.000000, 395.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal5:setText(Engine.Localize(""))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.inputText = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 5.000000, 395.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal6:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal6:setText(Engine.Localize(""))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.cursorText = registerVal6
	if __FUNC_792_ then
		__FUNC_792_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.InputTextField.new = __FUNC_803_

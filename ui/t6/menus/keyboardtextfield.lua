-- Decompiled with CoDLUIDecompiler by JariK

CoD.KeyboardTextField = {}
CoD.KeyboardTextField.HeaderFontName = "Big"
CoD.KeyboardTextField.InputFontName = "Big"
CoD.KeyboardTextField.InputLeft = 5.000000
CoD.KeyboardTextField.CursorAlpha = 0.800000
local function __FUNC_2FC_(arg0)
	local registerVal1 = string.len(arg0)
	return string.rep("*", registerVal1)
end

function LUI.createMenu.KeyboardTextField(arg0, arg1)
	if CoD.isSinglePlayer then
		local registerVal3 = CoD.Menu.NewSmallPopup("KeyboardTextField", true, 0.900000)
	else
		registerVal3 = CoD.Menu.NewSmallPopup("KeyboardTextField")
	end
	registerVal3:setOwner(arg0)
	registerVal3:addBackButton()
	registerVal3:registerEventHandler("ui_keyboard_update", CoD.KeyboardTextField.Update)
	registerVal3:registerEventHandler("ui_keyboard_complete", CoD.KeyboardTextField.Complete)
	registerVal3:registerEventHandler("blink_cursor", CoD.KeyboardTextField.BlinkCursor)
	registerVal3:registerEventHandler("button_prompt_back", CoD.KeyboardTextField.ButtonPromptBack)
	if arg1 and arg1.isPassword then
		registerVal3.isPassword = true
	end
	local registerVal8 = LUI.UIText.new()
	registerVal3.header = registerVal8
	registerVal3.header:setLeftRight(true, false, 0.000000, 0.000000)
	registerVal3.header:setTopBottom(true, false, 0.000000, (0.000000 + CoD.textSize[CoD.KeyboardTextField.HeaderFontName]))
	registerVal3.header:setFont(CoD.fonts[CoD.KeyboardTextField.HeaderFontName])
	registerVal3:addElement(registerVal3.header)
	local registerVal12 = LUI.UIElement.new()
	registerVal12:setLeftRight(true, true, 0.000000, -0.000000)
	registerVal12:setTopBottom(true, false, ((0.000000 + CoD.textSize[CoD.KeyboardTextField.HeaderFontName]) + 40.000000), (((0.000000 + CoD.textSize[CoD.KeyboardTextField.HeaderFontName]) + 40.000000) + CoD.textSize[CoD.KeyboardTextField.InputFontName]))
	registerVal12:setUseStencil(true)
	registerVal3:addElement(registerVal12)
	registerVal3.inputContainerWidth = ((CoD.Menu.SmallPopupWidth - (0.000000 * 2.000000)) - 15.000000)
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal13:setRGB(0.500000, 0.500000, 0.500000)
	registerVal13:setAlpha(0.500000)
	registerVal12:addElement(registerVal13)
	local registerVal14 = LUI.UITightText.new()
	registerVal14:setLeftRight(true, false, CoD.KeyboardTextField.InputLeft, 0.000000)
	registerVal14:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal14:setFont(CoD.fonts[CoD.KeyboardTextField.InputFontName])
	registerVal3.inputText = registerVal14
	registerVal12:addElement(registerVal3.inputText)
	local registerVal15 = LUI.UITightText.new()
	registerVal15:setLeftRight(true, false, CoD.KeyboardTextField.InputLeft, 0.000000)
	registerVal15:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal15:setFont(CoD.fonts[CoD.KeyboardTextField.InputFontName])
	registerVal15:setRGB(CoD.BOIIOrange.r, CoD.BOIIOrange.g, CoD.BOIIOrange.b)
	registerVal15:setAlpha(CoD.KeyboardTextField.CursorAlpha)
	registerVal3.cursorText = registerVal15
	registerVal12:addElement(registerVal3.cursorText)
	registerVal3.cursor = "|"
	registerVal3.cursorAlpha = CoD.KeyboardTextField.CursorAlpha
	local registerVal18 = {}
	registerVal18.leftAnchor = true
	registerVal18.rightAnchor = false
	registerVal18.left = 0.000000
	registerVal18.right = (0.000000 + 100.000000)
	registerVal18.topAnchor = true
	registerVal18.bottomAnchor = false
	registerVal18.top = (((0.000000 + CoD.textSize[CoD.KeyboardTextField.HeaderFontName]) + 40.000000) + 80.000000)
	registerVal18.bottom = ((((0.000000 + CoD.textSize[CoD.KeyboardTextField.HeaderFontName]) + 40.000000) + 80.000000) + CoD.CoD9Button.Height)
	local registerVal17 = CoD.CoD9Button.new(registerVal18, "ui_keyboard_complete")
	registerVal3.okButton = registerVal17
	registerVal3.okButton:setLabel(Engine.Localize("MENU_OK_CAPS"))
	registerVal3:addElement(registerVal3.okButton)
	local registerVal19 = {}
	registerVal19.name = "gain_focus"
	registerVal3.okButton:processEvent(registerVal19)
	registerVal3:addElement(LUI.UITimer.new(500.000000, "blink_cursor", false, registerVal3))
	local registerVal21 = {}
	registerVal21.name = "ui_keyboard_update"
	registerVal21.controller = arg0
	registerVal21.overstrike = false
	registerVal3:addElement(LUI.UITimer.new(50.000000, registerVal21, true, registerVal3))
	return registerVal3
end

function CoD.KeyboardTextField.ButtonPromptBack(arg0, arg1)
	Engine.Exec(arg1.controller, "ui_keyboard_cancel")
	arg0:goBack(arg1.controller)
end

function CoD.KeyboardTextField.BlinkCursor(arg0, arg1)
	if arg0.cursorAlpha == 0.000000 then
		arg0.cursorAlpha = CoD.KeyboardTextField.CursorAlpha
	else
		arg0.cursorAlpha = 0.000000
	end
	arg0.cursorText:beginAnimation("cursor_alpha", 0.000000)
	arg0.cursorText:setAlpha(arg0.cursorAlpha)
end

function CoD.KeyboardTextField.Complete(arg0, arg1)
	Engine.Exec(arg1.controller, "ui_keyboard_complete")
	arg0:goBack(arg1.controller)
end

local function __FUNC_12AC_(arg0, arg1)
	local registerVal2 = Dvar.ui_keyboardtitle:get()
	if registerVal2 ~= nil then
		arg0.header:setText(registerVal2)
	end
	local registerVal3 = Dvar.ui_keyboard_dvar_edit:get()
	if arg0.isPassword then
		local registerVal4 = __FUNC_2FC_(registerVal3)
	end
	if registerVal4 ~= nil then
		arg0.inputText:setText(registerVal4)
		if arg1.overstrike then
			arg0.cursor = "_"
		else
			arg0.cursor = "|"
		end
		if not arg1.cursorPos then
			local registerVal5 = string.len(registerVal4)
			arg1.cursorPos = registerVal5
		end
		registerVal5 = string.sub(registerVal4, 1.000000, arg1.cursorPos)
		GetTextDimensions(registerVal5, CoD.fonts[CoD.KeyboardTextField.InputFontName], CoD.textSize[CoD.KeyboardTextField.InputFontName])
		{} = {}
		arg0.cursorText:setText(arg0.cursor)
		if 0.000000 < ({}[3.000000] - arg0.inputContainerWidth) then
			arg0.inputText:setLeftRight(true, false, ((CoD.KeyboardTextField.InputLeft - ({}[3.000000] - arg0.inputContainerWidth)) - 15.000000), 0.000000)
			arg0.cursorText:setLeftRight(true, false, ((((CoD.KeyboardTextField.InputLeft - ({}[3.000000] - arg0.inputContainerWidth)) - 15.000000) + {}[3.000000]) + -4.000000), 0.000000)
		else
			arg0.inputText:setLeftRight(true, false, CoD.KeyboardTextField.InputLeft, 0.000000)
			arg0.cursorText:setLeftRight(true, false, ((CoD.KeyboardTextField.InputLeft + {}[3.000000]) + -4.000000), 0.000000)
		end
	end
end

CoD.KeyboardTextField.Update = __FUNC_12AC_

-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.fe_LeftContainer")
require("ui.uieditor.widgets.PC.Utility.InputTextField")
local function __FUNC_25D_(arg0, arg1, arg2)
	local function __FUNC_2CF_(arg1, arg2)
		local registerVal2 = Dvar.ui_keyboardtitle:get()
		if registerVal2 then
			arg0.title:setText(Engine.Localize(registerVal2))
		end
		if arg0.inputTextField and arg0.inputTextField.updateCursor then
			arg0.inputTextField.updateCursor()
		end
	end

	arg0:registerEventHandler("menu_loaded", __FUNC_2CF_)
end

local function __FUNC_449_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_25D_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.TextInputWidget = registerVal3
local function __FUNC_4BB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.TextInputWidget)
	registerVal2.id = "TextInputWidget"
	registerVal2.soundSet = "FrontendMain"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 250.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.fullBackground = registerVal3
	local registerVal4 = CoD.fe_LeftContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 13.500000, 444.500000)
	registerVal4:setTopBottom(false, true, -38.500000, -6.500000)
	local function __FUNC_B7D_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_B7D_)
	registerVal2:addElement(registerVal4)
	registerVal2.leftButtonPrompts = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, -1.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 33.000000, 81.000000)
	registerVal5:setText(Engine.Localize(""))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.title = registerVal5
	local registerVal6 = CoD.InputTextField.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 50.000000, 450.000000)
	registerVal6:setTopBottom(true, false, 110.000000, 150.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.inputTextField = registerVal6
	local function __FUNC_BCE_(arg0)
		arg0.leftButtonPrompts:close()
		arg0.inputTextField:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BCE_)
	if __FUNC_449_ then
		__FUNC_449_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.TextInputWidget.new = __FUNC_4BB_

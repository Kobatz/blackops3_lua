-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C9_(arg0, arg1, arg2)
	CoD.setupVerticalScrollingTextWidget(arg0, arg1)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.verticalScrollingTextBox = registerVal2
local function __FUNC_247_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.verticalScrollingTextBox)
	registerVal2.id = "verticalScrollingTextBox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 600.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 200.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setText(Engine.Localize("MENU_NEW"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.textBox = registerVal3
	if __FUNC_1C9_ then
		__FUNC_1C9_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.verticalScrollingTextBox.new = __FUNC_247_

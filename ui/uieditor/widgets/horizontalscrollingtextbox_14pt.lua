-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.horizontalScrollingTextBox_14pt = registerVal1
function CoD.horizontalScrollingTextBox_14pt.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.horizontalScrollingTextBox_14pt)
	registerVal2.id = "horizontalScrollingTextBox_14pt"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 600.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 14.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 10000.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 14.000000)
	registerVal3:setText(Engine.Localize("MENU_NEW"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.textBox = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Theater_HintText = registerVal1
function CoD.Theater_HintText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Theater_HintText)
	registerVal2.id = "Theater_HintText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 15.000000, 280.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 20.000000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setText(Engine.Localize("MENU_NEW"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.ItemHintText = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 1.000000, 10.820000)
	registerVal4:setTopBottom(true, false, 7.090000, 16.910000)
	registerVal4:setAlpha(0.600000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_gunsmith_arrow_white"))
	registerVal2:addElement(registerVal4)
	registerVal2.Arrow = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


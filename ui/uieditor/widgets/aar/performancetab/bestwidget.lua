-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BestWidget = registerVal1
function CoD.BestWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BestWidget)
	registerVal2.id = "BestWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 51.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -7.000000, 57.000000)
	registerVal3:setTopBottom(true, false, -8.000000, 56.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_aar_bestbadge"))
	registerVal2:addElement(registerVal3)
	registerVal2.Badge = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 4.000000, 18.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setText(Engine.Localize("MPUI_BEST_CAPS"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(2.400000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.BestLabel = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


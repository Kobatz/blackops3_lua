-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_LabelSubHeadingD = registerVal1
function CoD.FE_LabelSubHeadingD.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_LabelSubHeadingD)
	registerVal2.id = "FE_LabelSubHeadingD"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 122.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 122.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 29.000000)
	registerVal3:setText("")
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.Label0 = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


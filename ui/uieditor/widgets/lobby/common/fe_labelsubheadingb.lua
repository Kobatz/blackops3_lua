-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_LabelSubHeadingB = registerVal1
function CoD.FE_LabelSubHeadingB.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_LabelSubHeadingB)
	registerVal2.id = "FE_LabelSubHeadingB"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 84.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 19.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 84.000000)
	registerVal3:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal3:setRGB(0.580000, 0.640000, 0.650000)
	registerVal3:setText(Engine.Localize("GAMES"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setLetterSpacing(1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Label1 = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


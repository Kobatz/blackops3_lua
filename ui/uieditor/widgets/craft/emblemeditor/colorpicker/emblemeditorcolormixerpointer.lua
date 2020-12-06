-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorColorMixerPointer = registerVal1
function CoD.EmblemEditorColorMixerPointer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorColorMixerPointer)
	registerVal2.id = "EmblemEditorColorMixerPointer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 2.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 26.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.line = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -16.000000, 16.000000)
	registerVal4:setTopBottom(true, false, -19.500000, 12.500000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_minimap_arrow"))
	registerVal2:addElement(registerVal4)
	registerVal2.arrow = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


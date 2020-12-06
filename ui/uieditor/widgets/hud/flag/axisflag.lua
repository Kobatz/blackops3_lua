-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AxisFlag = registerVal1
function CoD.AxisFlag.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AxisFlag)
	registerVal2.id = "AxisFlag"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 44.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 78.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.420000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_widget_ctf_faction_enemys_cdp"))
	registerVal2:addElement(registerVal3)
	registerVal2.Flag = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


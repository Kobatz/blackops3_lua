-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CombatRecord_LineDivider = registerVal1
function CoD.CombatRecord_LineDivider.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecord_LineDivider)
	registerVal2.id = "CombatRecord_LineDivider"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 25.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 13.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal3:setAlpha(0.660000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image6 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 6.500000, -7.000000)
	registerVal4:setTopBottom(true, false, 5.000000, 13.000000)
	registerVal4:setAlpha(0.660000)
	registerVal4:setZRot(90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image60 = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


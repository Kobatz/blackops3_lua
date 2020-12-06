-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_AbilityGlow = registerVal1
function CoD.AmmoWidget_AbilityGlow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_AbilityGlow)
	registerVal2.id = "AmmoWidget_AbilityGlow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 132.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 132.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_img_t7_hud_cm_heroringglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_HeroAbilityRingGold = registerVal1
function CoD.AmmoWidget_HeroAbilityRingGold.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_HeroAbilityRingGold)
	registerVal2.id = "AmmoWidget_HeroAbilityRingGold"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 14.000000, -14.000000)
	registerVal3:setTopBottom(true, true, 14.000000, -14.000000)
	registerVal3:setRGB(0.950000, 0.800000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringpattern"))
	registerVal2:addElement(registerVal3)
	registerVal2.imgHeroRingGoldWpn = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 14.000000, -14.000000)
	registerVal4:setTopBottom(true, true, 14.000000, -14.000000)
	registerVal4:setRGB(0.950000, 0.800000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_ammowidget_ringpattern"))
	registerVal2:addElement(registerVal4)
	registerVal2.imgHeroRingGoldWpn0 = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


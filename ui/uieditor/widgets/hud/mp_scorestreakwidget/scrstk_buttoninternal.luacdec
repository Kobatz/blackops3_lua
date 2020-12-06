-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScrStk_ButtonInternal = registerVal1
function CoD.ScrStk_ButtonInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScrStk_ButtonInternal)
	registerVal2.id = "ScrStk_ButtonInternal"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 52.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, 22.000000, 28.500000)
	registerVal3:setTopBottom(false, false, -6.500000, 6.500000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_arrowhorz"))
	registerVal2:addElement(registerVal3)
	registerVal2.ArrowSide = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -32.000000, 24.000000)
	registerVal4:setTopBottom(false, false, -18.000000, 18.000000)
	registerVal4:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_box"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal4)
	registerVal2.Box = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -28.000000, 20.000000)
	registerVal5:setTopBottom(false, false, -24.000000, 24.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_ks_auto_sentry_widget"))
	registerVal2:addElement(registerVal5)
	registerVal2.Icon = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_LeaderIcon = registerVal1
function CoD.Social_LeaderIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_LeaderIcon)
	registerVal2.id = "Social_LeaderIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -1.000000, 23.000000)
	registerVal3:setTopBottom(true, false, -4.000000, 28.000000)
	registerVal3:setRGB(ColorSet.PartyOther.r, ColorSet.PartyOther.g, ColorSet.PartyOther.b)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_iconpartyleader"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.Leader = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


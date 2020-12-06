-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterLoadoutItemBackgroundAngle = registerVal1
function CoD.CodCasterLoadoutItemBackgroundAngle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterLoadoutItemBackgroundAngle)
	registerVal2.id = "CodCasterLoadoutItemBackgroundAngle"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 72.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 38.000000, -31.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_codcaster_loadoutbackingcenter"))
	registerVal2:addElement(registerVal3)
	registerVal2.Center = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 2.000000, 38.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_codcaster_loadoutbackingleftangle"))
	registerVal2:addElement(registerVal4)
	registerVal2.Left = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -31.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_codcaster_loadoutbackingcenter"))
	registerVal2:addElement(registerVal5)
	registerVal2.Right = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, -2.000000, 6.000000)
	registerVal6:setImage(RegisterImage("uie_t7_codcaster_loadouttopbar"))
	registerVal2:addElement(registerVal6)
	registerVal2.topbar = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


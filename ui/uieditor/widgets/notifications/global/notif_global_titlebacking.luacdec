-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Notif_Global_TitleBacking = registerVal1
function CoD.Notif_Global_TitleBacking.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Notif_Global_TitleBacking)
	registerVal2.id = "Notif_Global_TitleBacking"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_notif_global_titlebacking_left"))
	registerVal2:addElement(registerVal3)
	registerVal2.left = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -32.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_notif_global_titlebacking_right"))
	registerVal2:addElement(registerVal4)
	registerVal2.right = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 32.000000, -32.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_notif_global_titlebacking_center"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image0 = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Notif_Global_TitleBackingLine = registerVal1
function CoD.Notif_Global_TitleBackingLine.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Notif_Global_TitleBackingLine)
	registerVal2.id = "Notif_Global_TitleBackingLine"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 136.000000)
	registerVal3:setTopBottom(true, false, 4.000000, 36.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_notif_global_titlebacking_line"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.TitleBackingLine = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -136.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 4.000000, 36.000000)
	registerVal4:setYRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_notif_global_titlebacking_line"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


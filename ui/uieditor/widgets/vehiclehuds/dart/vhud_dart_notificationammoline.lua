-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_dart_NotificationAmmoLine = registerVal1
function CoD.vhud_dart_NotificationAmmoLine.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_dart_NotificationAmmoLine)
	registerVal2.id = "vhud_dart_NotificationAmmoLine"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 79.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 8.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 79.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 7.900000)
	registerVal3:setAlpha(0.080000)
	registerVal3:setZoom(-20.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_notificationline"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.NotificationAmmoLineTop1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 79.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 7.900000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_notificationline"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.NotificationAmmoLineTop = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 79.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 7.900000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_notificationline"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.NotificationAmmoLineTop0 = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


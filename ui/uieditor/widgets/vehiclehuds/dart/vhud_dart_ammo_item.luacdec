-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_dart_ammo_item = registerVal1
function CoD.vhud_dart_ammo_item.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_dart_ammo_item)
	registerVal2.id = "vhud_dart_ammo_item"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -24.000000, 24.000000)
	registerVal3:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal3:setScale(1.200000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_notificationboxammo"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.NotificationAmmoBox1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setScale(1.200000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_notificationboxammoline"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.agrIconMissileLine1 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_707_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.NotificationAmmoBox1:setAlpha(0.000000)
		registerVal2.NotificationAmmoBox1:setScale(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.agrIconMissileLine1:setAlpha(1.000000)
		registerVal2.agrIconMissileLine1:setScale(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_707_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_8C0_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.NotificationAmmoBox1:setAlpha(1.000000)
		registerVal2.NotificationAmmoBox1:setScale(1.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.agrIconMissileLine1:setAlpha(1.000000)
		registerVal2.agrIconMissileLine1:setScale(1.200000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8C0_
	registerVal5.On = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


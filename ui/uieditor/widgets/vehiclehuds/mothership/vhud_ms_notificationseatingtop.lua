-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_NotificationSeatingTop = registerVal1
function CoD.vhud_ms_NotificationSeatingTop.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_NotificationSeatingTop)
	registerVal2.id = "vhud_ms_NotificationSeatingTop"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 19.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -9.500000, 9.500000)
	registerVal3:setTopBottom(true, false, 18.750000, 28.250000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_damagepassenger"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -17.000000, -2.000000)
	registerVal4:setTopBottom(false, false, -14.130000, 0.880000)
	registerVal4:setZRot(90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_seatingarrow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image2 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_702_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_702_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_762_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_762_
	registerVal5.Invisible = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


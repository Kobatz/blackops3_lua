-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_NotificationSeatingSide = registerVal1
function CoD.vhud_ms_NotificationSeatingSide.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_NotificationSeatingSide)
	registerVal2.id = "vhud_ms_NotificationSeatingSide"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 33.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 15.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -16.500000, 2.500000)
	registerVal3:setTopBottom(true, false, 2.750000, 12.250000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_damagepassenger"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.msSeatingBoxL = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -15.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -7.500000, 7.500000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_seatingarrow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6E7_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_6E7_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_746_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.msSeatingBoxL:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_746_
	registerVal5.Invisible = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


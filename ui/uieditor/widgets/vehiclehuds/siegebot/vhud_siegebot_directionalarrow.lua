-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_siegebot_directionalarrow = registerVal1
function CoD.vhud_siegebot_directionalarrow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_siegebot_directionalarrow)
	registerVal2.id = "vhud_siegebot_directionalarrow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 106.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 106.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 25.000000, 82.070000)
	registerVal3:setTopBottom(true, false, 15.000000, 43.000000)
	registerVal3:setImage(RegisterImage("uie_t7_mp_hud_vehicle_siegebot_circlelockedarrow2"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Arrow = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5E8_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_5E8_
	local function __FUNC_64A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.StartUp = __FUNC_64A_
	local function __FUNC_6AA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Zoom = __FUNC_6AA_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Notif_Camo_CenterBacking = registerVal1
function CoD.Notif_Camo_CenterBacking.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Notif_Camo_CenterBacking)
	registerVal2.id = "Notif_Camo_CenterBacking"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 215.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 155.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 77.500000)
	registerVal3:setTopBottom(false, false, -77.500000, 77.500000)
	registerVal3:setRGB(0.160000, 0.160000, 0.160000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_notif_camo_center_fill_stretch"))
	registerVal2:addElement(registerVal3)
	registerVal2.CenterFillL = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 77.500000, -77.500000)
	registerVal4:setTopBottom(false, false, -77.500000, 77.500000)
	registerVal4:setRGB(0.160000, 0.160000, 0.160000)
	registerVal4:setAlpha(0.400000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_notif_camo_center_fill"))
	registerVal2:addElement(registerVal4)
	registerVal2.CenterStretch = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -77.500000, 0.000000)
	registerVal5:setTopBottom(false, false, -77.500000, 77.500000)
	registerVal5:setRGB(0.160000, 0.160000, 0.160000)
	registerVal5:setAlpha(0.400000)
	registerVal5:setZRot(180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_notif_camo_center_fill_stretch"))
	registerVal2:addElement(registerVal5)
	registerVal2.CenterFillL0 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_73E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_73E_
	local function __FUNC_79E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.TimeUp = __FUNC_79E_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


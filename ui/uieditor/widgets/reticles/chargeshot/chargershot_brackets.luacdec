-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChargerShot_Brackets = registerVal1
function CoD.ChargerShot_Brackets.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChargerShot_Brackets)
	registerVal2.id = "ChargerShot_Brackets"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 807.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 582.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -403.500000, -331.500000)
	registerVal3:setTopBottom(false, false, -291.000000, -219.000000)
	registerVal3:setRGB(1.000000, 0.850000, 0.070000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setScale(0.700000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_chargeshot_braquets"))
	registerVal2:addElement(registerVal3)
	registerVal2.CornerBraquets = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, 331.880000, 403.880000)
	registerVal4:setTopBottom(false, false, -291.000000, -219.000000)
	registerVal4:setRGB(1.000000, 0.850000, 0.070000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setZRot(-90.000000)
	registerVal4:setScale(0.700000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_chargeshot_braquets"))
	registerVal2:addElement(registerVal4)
	registerVal2.CornerBraquets0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -403.500000, -331.500000)
	registerVal5:setTopBottom(false, false, 218.830000, 290.830000)
	registerVal5:setRGB(1.000000, 0.850000, 0.070000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setZRot(90.000000)
	registerVal5:setScale(0.700000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_chargeshot_braquets"))
	registerVal2:addElement(registerVal5)
	registerVal2.CornerBraquets1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, 331.880000, 403.880000)
	registerVal6:setTopBottom(false, false, 218.830000, 290.830000)
	registerVal6:setRGB(1.000000, 0.850000, 0.070000)
	registerVal6:setAlpha(0.500000)
	registerVal6:setZRot(180.000000)
	registerVal6:setScale(0.700000)
	registerVal6:setImage(RegisterImage("uie_t7_hud_chargeshot_braquets"))
	registerVal2:addElement(registerVal6)
	registerVal2.CornerBraquets10 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_865_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_865_
	local function __FUNC_8C6_()
		registerVal2:setupElementClipCounter(0.000000)
		registerVal2.nextClip = "Fire"
	end

	registerVal8.Fire = __FUNC_8C6_
	local function __FUNC_94E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.Cancel = __FUNC_94E_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


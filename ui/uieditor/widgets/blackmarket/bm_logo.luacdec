-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Logo = registerVal1
function CoD.BM_Logo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Logo)
	registerVal2.id = "BM_Logo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 324.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 121.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 338.800000)
	registerVal3:setTopBottom(true, false, 0.000000, 121.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_screen_header"))
	registerVal2:addElement(registerVal3)
	registerVal2.logo = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 150.400000, 313.300000)
	registerVal4:setTopBottom(true, false, 52.860000, 69.860000)
	registerVal4:setRGB(0.490000, 0.590000, 0.590000)
	registerVal4:setScale(0.800000)
	registerVal4:setText(Engine.Localize("MPUI_CONTRABAND_CAPS"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setLetterSpacing(8.199995)
	registerVal2:addElement(registerVal4)
	registerVal2.text = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -160.270000, -16.270000)
	registerVal5:setTopBottom(true, false, -15.430000, 128.570000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_aar_bm_challenge"))
	registerVal2:addElement(registerVal5)
	registerVal2.contractsLogo = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_799_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_799_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BlackmarketRewards54i = registerVal1
function CoD.BlackmarketRewards54i.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BlackmarketRewards54i)
	registerVal2.id = "BlackmarketRewards54i"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 188.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 44.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 44.070000, 187.670000)
	registerVal3:setTopBottom(true, false, 7.000000, 24.000000)
	registerVal3:setRGB(0.940000, 0.890000, 0.590000)
	registerVal3:setScale(0.800000)
	registerVal3:setText(Engine.Localize("MPUI_BM_CONTRACT_SPECIAL_CONTRACTS"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setLetterSpacing(8.000000)
	registerVal3:setLineSpacing(-0.900000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.text = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 60.900000)
	registerVal4:setTopBottom(true, false, 0.000000, 43.500000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_notif_blackmarket_54i"))
	registerVal2:addElement(registerVal4)
	registerVal2.i54 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_7F2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.text:setLeftRight(true, false, 44.070000, 187.670000)
		registerVal2.text:setTopBottom(true, false, 7.000000, 24.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_7F2_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_949_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.text:setLeftRight(true, false, 44.400000, 188.000000)
		registerVal2.text:setTopBottom(true, false, 13.250000, 30.250000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_949_
	registerVal5.SideBet = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


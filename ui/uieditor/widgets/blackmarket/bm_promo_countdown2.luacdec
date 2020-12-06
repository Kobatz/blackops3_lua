-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Promo_Countdown2 = registerVal1
function CoD.BM_Promo_Countdown2.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Promo_Countdown2)
	registerVal2.id = "BM_Promo_Countdown2"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 99.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, 0.000000, 60.000000)
	registerVal3:setTopBottom(true, false, -30.000000, 66.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_promo_titlebg_right"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg00 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 47.000000)
	registerVal4:setTopBottom(true, false, -30.000000, 66.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_promo_titlebg_center"))
	registerVal2:addElement(registerVal4)
	registerVal2.bg = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 47.000000, 0.000000)
	registerVal5:setTopBottom(true, false, -30.000000, 66.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_promo_titlebg_right_center"))
	registerVal2:addElement(registerVal5)
	registerVal2.bg0 = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 19.000000, 99.000000)
	registerVal6:setTopBottom(true, false, 10.000000, 30.000000)
	registerVal6:setText(Engine.Localize("MPUI_BM_PROMO_EXPIRES"))
	registerVal6:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal6:setLetterSpacing(1.100000)
	local function __FUNC_884_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, -10.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_884_)
	registerVal2:addElement(registerVal6)
	registerVal2.Expires = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_8E5_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_8E5_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_946_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.bg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal8.DefaultClip = __FUNC_946_
	registerVal7.visible = registerVal8
	registerVal2.clipsPerState = registerVal7
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


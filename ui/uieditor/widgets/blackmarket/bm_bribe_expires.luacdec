-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Bribe_Expires = registerVal1
function CoD.BM_Bribe_Expires.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Bribe_Expires)
	registerVal2.id = "BM_Bribe_Expires"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 82.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 56.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -72.780000, 38.890000)
	registerVal3:setTopBottom(false, false, -27.920000, 27.920000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_bribe_expires_left_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 38.890000, -34.250000)
	registerVal4:setTopBottom(false, false, -27.920000, 27.920000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_bribe_expires_center_bg"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image00 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -34.250000, 13.610000)
	registerVal5:setTopBottom(false, false, -27.920000, 27.920000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_bribe_expires_right_bg"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image000 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 15.500000, -15.500000)
	registerVal6:setTopBottom(false, false, -7.500000, 9.500000)
	registerVal6:setRGB(0.690000, 1.000000, 0.830000)
	registerVal6:setText(Engine.Localize("MPUI_BM_PROMO_EXPIRES"))
	registerVal6:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal6:setLetterSpacing(-1.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_9ED_(arg0, arg1)
		ScaleWidgetToLabelRightAlignedNoReverse(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal6, "setText", __FUNC_9ED_)
	registerVal2:addElement(registerVal6)
	registerVal2.Text = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_A62_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.Text:setRGB(0.690000, 1.000000, 0.830000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_A62_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_B67_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.Text:setRGB(0.770000, 0.080000, 0.080000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_B67_
	registerVal7.NearExpiryTime = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "NearExpiryTime"
	local function __FUNC_C6B_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_C6B_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ThrustMeterChevron = registerVal1
function CoD.ThrustMeterChevron.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ThrustMeterChevron)
	registerVal2.id = "ThrustMeterChevron"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 229.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -5.000000, 11.000000)
	registerVal3:setTopBottom(false, true, -12.000000, 4.000000)
	registerVal3:setScale(0.800000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_boost_arrow"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, 4.000000, 12.000000)
	registerVal4:setTopBottom(false, true, -12.000000, 4.000000)
	registerVal4:setScale(1.200000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_boost_arrow2"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image00 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_634_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_634_
	local function __FUNC_696_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.Image00:setLeftRight(false, false, 4.000000, 12.000000)
		registerVal2.Image00:setTopBottom(false, true, -12.000000, 4.000000)
		registerVal2.Image00:setAlpha(1.000000)
		registerVal2.Image00:setYRot(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Drain = __FUNC_696_
	local function __FUNC_84B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.Image00:setLeftRight(false, false, 5.000000, 13.000000)
		registerVal2.Image00:setTopBottom(false, true, -12.000000, 4.000000)
		registerVal2.Image00:setAlpha(1.000000)
		registerVal2.Image00:setYRot(180.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Fill = __FUNC_84B_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


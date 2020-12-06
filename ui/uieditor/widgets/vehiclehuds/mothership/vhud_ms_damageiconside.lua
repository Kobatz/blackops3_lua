-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_DamageIconSide = registerVal1
function CoD.vhud_ms_DamageIconSide.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_DamageIconSide)
	registerVal2.id = "vhud_ms_DamageIconSide"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 26.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 26.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_damageredside"))
	registerVal2:addElement(registerVal3)
	registerVal2.msDamageRight = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_555_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.msDamageRight:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_555_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_654_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.msDamageRight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_654_
	registerVal4.Invisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


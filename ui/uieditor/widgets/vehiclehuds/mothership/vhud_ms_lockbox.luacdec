-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_LockBox = registerVal1
function CoD.vhud_ms_LockBox.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_LockBox)
	registerVal2.id = "vhud_ms_LockBox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 55.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 55.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -39.350000, 39.350000)
	registerVal3:setTopBottom(false, false, -23.500000, 22.590000)
	registerVal3:setRGB(1.000000, 0.520000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_textlockonglow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Glow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -27.590000, 27.590000)
	registerVal4:setTopBottom(false, false, -27.500000, 27.680000)
	registerVal4:setRGB(1.000000, 0.070000, 0.000000)
	registerVal4:setAlpha(0.700000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_textlockon"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.msLockOn = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_766_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.msLockOn:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_766_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_8B6_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.msLockOn:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8B6_
	registerVal5.On = registerVal6
	registerVal6 = {}
	local function __FUNC_A0B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.msLockOn:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A0B_
	registerVal5.HasLock = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


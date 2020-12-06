-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_LockArrow = registerVal1
function CoD.vhud_ms_LockArrow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_LockArrow)
	registerVal2.id = "vhud_ms_LockArrow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 36.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -12.000000, 11.000000)
	registerVal3:setTopBottom(false, false, -12.000000, 11.000000)
	registerVal3:setRGB(1.000000, 0.030000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal3:setZRot(90.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_lockarrow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_65A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_65A_
	local function __FUNC_756_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.StartUp = __FUNC_756_
	local function __FUNC_7B6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Zoom = __FUNC_7B6_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_816_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Image0:setRGB(1.000000, 0.000000, 0.060000)
		registerVal2.Image0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_816_
	registerVal4.On = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


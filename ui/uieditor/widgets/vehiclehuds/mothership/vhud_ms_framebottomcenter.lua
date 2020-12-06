-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_FrameBottomCenter = registerVal1
function CoD.vhud_ms_FrameBottomCenter.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_FrameBottomCenter)
	registerVal2.id = "vhud_ms_FrameBottomCenter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 519.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.740000, 0.940000, 0.990000)
	registerVal3:setAlpha(0.600000)
	registerVal3:setXRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_topframecenter"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.msBottomFrameCenter = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.740000, 0.940000, 0.990000)
	registerVal4:setAlpha(0.100000)
	registerVal4:setXRot(180.000000)
	registerVal4:setZoom(-50.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_topframecenter"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.msBottomFrameCenterDepth = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_789_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_789_
	local function __FUNC_7EA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.StartUp = __FUNC_7EA_
	local function __FUNC_84A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Zoom = __FUNC_84A_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_8AA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_8AA_
	local function __FUNC_90A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultState = __FUNC_90A_
	registerVal5.Zoom = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


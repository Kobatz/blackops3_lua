-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_FrameBottomLeft = registerVal1
function CoD.vhud_ms_FrameBottomLeft.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_FrameBottomLeft)
	registerVal2.id = "vhud_ms_FrameBottomLeft"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 481.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 145.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.740000, 0.940000, 0.990000)
	registerVal3:setAlpha(0.060000)
	registerVal3:setXRot(180.000000)
	registerVal3:setYRot(-180.000000)
	registerVal3:setZoom(-40.000000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_topframeside"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.740000, 0.940000, 0.990000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setXRot(180.000000)
	registerVal4:setYRot(-180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_mothership_topframeside"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.msBottomFrameLeft = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_79F_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_79F_
	local function __FUNC_7FE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.StartUp = __FUNC_7FE_
	local function __FUNC_85E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Zoom = __FUNC_85E_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_8BE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_8BE_
	local function __FUNC_91E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultState = __FUNC_91E_
	registerVal5.Zoom = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


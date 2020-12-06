-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_HashRingLarge")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_OutsideHashRing = registerVal1
function CoD.vhud_ms_OutsideHashRing.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_OutsideHashRing)
	registerVal2.id = "vhud_ms_OutsideHashRing"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 151.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 430.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.VehicleGround_HashRingLarge.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, -137.000000, -6.000000)
	registerVal3:setTopBottom(false, false, -139.000000, 149.000000)
	registerVal3:setRGB(0.350000, 0.350000, 0.350000)
	registerVal3:setZoom(800.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.VehicleGroundHashRingLarge000 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_708_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_708_
	local function __FUNC_76A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.StartUp = __FUNC_76A_
	local function __FUNC_7CA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Zoom = __FUNC_7CA_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_82A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_82A_
	local function __FUNC_88A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultState = __FUNC_88A_
	registerVal4.Zoom = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_8EA_(arg0)
		arg0.VehicleGroundHashRingLarge000:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8EA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


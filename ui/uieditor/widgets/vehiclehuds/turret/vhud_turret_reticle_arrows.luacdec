-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_CenterInnerRingElement")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_turret_reticle_arrows = registerVal1
function CoD.vhud_turret_reticle_arrows.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_turret_reticle_arrows)
	registerVal2.id = "vhud_turret_reticle_arrows"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 69.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.VehicleGround_CenterInnerRingElement.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -25.000000, 32.000000)
	registerVal3:setTopBottom(false, false, -34.500000, 34.500000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setZRot(45.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.RingElement0 = registerVal3
	local registerVal4 = CoD.VehicleGround_CenterInnerRingElement.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -32.000000, 25.000000)
	registerVal4:setTopBottom(false, false, -34.500000, 34.500000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setYRot(180.000000)
	registerVal4:setZRot(45.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.RingElement00 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_74C_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_74C_
	local function __FUNC_7AE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.StartUp = __FUNC_7AE_
	local function __FUNC_80E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Zoom = __FUNC_80E_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_86E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_86E_
	local function __FUNC_8CE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultState = __FUNC_8CE_
	registerVal5.Zoom = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_92E_(arg0)
		arg0.RingElement0:close()
		arg0.RingElement00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_92E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


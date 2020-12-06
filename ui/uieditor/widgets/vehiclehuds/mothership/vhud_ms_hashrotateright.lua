-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_HashText")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_HashIcon")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_HashRingLarge")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_ms_HashRotateRight = registerVal1
function CoD.vhud_ms_HashRotateRight.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_ms_HashRotateRight)
	registerVal2.id = "vhud_ms_HashRotateRight"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 225.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 491.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.VehicleGround_HashText.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -51.830000, 54.170000)
	registerVal3:setTopBottom(false, false, -14.600000, 11.400000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal3:setShaderVector(0.000000, 0.100000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 5.000000, 7.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.VehicleGroundHashText0 = registerVal3
	local registerVal4 = CoD.VehicleGround_HashIcon.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, 47.870000, 79.870000)
	registerVal4:setTopBottom(false, false, -11.860000, 4.140000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.VehicleGroundHashIcon0 = registerVal4
	local registerVal5 = CoD.VehicleGround_HashRingLarge.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -243.000000, -112.000000)
	registerVal5:setTopBottom(false, false, -148.860000, 139.140000)
	registerVal5:setRGB(0.350000, 0.350000, 0.350000)
	registerVal5:setZoom(800.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.VehicleGroundHashRingLarge000 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_A49_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_A49_
	local function __FUNC_AAA_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_C28_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 1759.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_C28_)
	end

	registerVal7.StartUp = __FUNC_AAA_
	local function __FUNC_DDD_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.Zoom = __FUNC_DDD_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_E3E_(arg0)
		arg0.VehicleGroundHashText0:close()
		arg0.VehicleGroundHashIcon0:close()
		arg0.VehicleGroundHashRingLarge000:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E3E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


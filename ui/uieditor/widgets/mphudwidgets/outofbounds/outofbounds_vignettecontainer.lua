-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteBack")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.outofbounds_VignetteContainer = registerVal1
function CoD.outofbounds_VignetteContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.outofbounds_VignetteContainer)
	registerVal2.id = "outofbounds_VignetteContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.VehicleGround_VignetteBack.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.VignetteBack = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5F1_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_6DA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 3930.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.200000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.VignetteBack:setAlpha(0.000000)
		__FUNC_6DA_(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_5F1_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_88D_(arg0)
		arg0.VignetteBack:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_88D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


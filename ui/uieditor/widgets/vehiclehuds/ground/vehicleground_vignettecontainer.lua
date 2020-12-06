-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteBack")
require("ui.uieditor.widgets.VehicleHUDs.Ground.VehicleGround_VignetteFore")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VehicleGround_VignetteContainer = registerVal1
function CoD.VehicleGround_VignetteContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.VehicleGround_VignetteContainer)
	registerVal2.id = "VehicleGround_VignetteContainer"
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
	local registerVal4 = CoD.VehicleGround_VignetteFore.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.600000)
	registerVal2:addElement(registerVal4)
	registerVal2.VignetteFore = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_702_()
		registerVal2:setupElementClipCounter(2.000000)
		local function __FUNC_840_(arg0, arg1)
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
		__FUNC_840_(registerVal3, {})
		local function __FUNC_9F5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 3029.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.VignetteFore:setAlpha(0.000000)
		__FUNC_9F5_(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_702_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_BA9_(arg0)
		arg0.VignetteBack:close()
		arg0.VignetteFore:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BA9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


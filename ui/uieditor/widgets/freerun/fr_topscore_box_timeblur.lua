-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Freerun.FR_TopScore_Box_TimeBlurInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_TopScore_Box_TimeBlur = registerVal1
function CoD.FR_TopScore_Box_TimeBlur.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FR_TopScore_Box_TimeBlur)
	registerVal2.id = "FR_TopScore_Box_TimeBlur"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 540.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 87.000000)
	local registerVal3 = CoD.FR_TopScore_Box_TimeBlurInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 539.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 86.810000)
	registerVal3:setRGB(0.860000, 0.860000, 0.860000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 30.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FRTopScoreBoxTimeBlurInternal = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_731_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_731_
	local function __FUNC_792_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Penalty = __FUNC_792_
	local function __FUNC_7F2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.FaultAnim = __FUNC_7F2_
	local function __FUNC_852_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.RetryAnim = __FUNC_852_
	local function __FUNC_8B2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.SetCheckpointDelta = __FUNC_8B2_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_912_(arg0)
		arg0.FRTopScoreBoxTimeBlurInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_912_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


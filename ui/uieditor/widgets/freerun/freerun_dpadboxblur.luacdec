-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Freerun.freerun_DpadBoxBlurInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.freerun_DpadBoxBlur = registerVal1
function CoD.freerun_DpadBoxBlur.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.freerun_DpadBoxBlur)
	registerVal2.id = "freerun_DpadBoxBlur"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 290.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 83.000000)
	local registerVal3 = CoD.freerun_DpadBoxBlurInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 290.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 81.000000)
	registerVal3:setRGB(0.860000, 0.860000, 0.860000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 30.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.freerunDpadBoxBlurInternal = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_718_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_718_
	local function __FUNC_77A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Penalty = __FUNC_77A_
	local function __FUNC_7DA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.FaultAnim = __FUNC_7DA_
	local function __FUNC_83A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.RetryAnim = __FUNC_83A_
	local function __FUNC_89A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.SetCheckpointDelta = __FUNC_89A_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_8FA_(arg0)
		arg0.freerunDpadBoxBlurInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8FA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.freerun_DpadBoxBlurInternal = registerVal1
function CoD.freerun_DpadBoxBlurInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.freerun_DpadBoxBlurInternal)
	registerVal2.id = "freerun_DpadBoxBlurInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 290.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 83.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -135.000000, 86.000000)
	registerVal3:setTopBottom(false, false, -26.090000, 41.180000)
	registerVal3:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_blur"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.DpadBoxBlur = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_678_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_678_
	local function __FUNC_6DA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Penalty = __FUNC_6DA_
	local function __FUNC_73A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.FaultAnim = __FUNC_73A_
	local function __FUNC_79A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.RetryAnim = __FUNC_79A_
	local function __FUNC_7FA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.SetCheckpointDelta = __FUNC_7FA_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


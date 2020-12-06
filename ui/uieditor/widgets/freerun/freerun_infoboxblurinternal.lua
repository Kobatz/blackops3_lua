-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.freerun_InfoBoxBlurInternal = registerVal1
function CoD.freerun_InfoBoxBlurInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.freerun_InfoBoxBlurInternal)
	registerVal2.id = "freerun_InfoBoxBlurInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 206.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 206.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, -14.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_blur"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.InfoBarBlur = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_664_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_664_
	local function __FUNC_6C6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Penalty = __FUNC_6C6_
	local function __FUNC_726_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.FaultAnim = __FUNC_726_
	local function __FUNC_786_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.RetryAnim = __FUNC_786_
	local function __FUNC_7E6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.SetCheckpointDelta = __FUNC_7E6_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


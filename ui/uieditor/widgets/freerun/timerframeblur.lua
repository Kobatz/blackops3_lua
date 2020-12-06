-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Freerun.timerframblurInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.timerframeblur = registerVal1
function CoD.timerframeblur.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.timerframeblur)
	registerVal2.id = "timerframeblur"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 235.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 63.000000)
	local registerVal3 = CoD.timerframblurInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 235.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 63.000000)
	registerVal3:setRGB(0.860000, 0.860000, 0.860000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2_highquality"))
	registerVal3:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.timerframblurInternal = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6DA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_6DA_
	local function __FUNC_73A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Penalty = __FUNC_73A_
	local function __FUNC_79A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.FaultAnim = __FUNC_79A_
	local function __FUNC_7FA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.RetryAnim = __FUNC_7FA_
	local function __FUNC_85A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.SetCheckpointDelta = __FUNC_85A_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_8BA_(arg0)
		arg0.timerframblurInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8BA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


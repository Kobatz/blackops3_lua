-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_TopScore_Box_FooterBlurInternal = registerVal1
function CoD.FR_TopScore_Box_FooterBlurInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FR_TopScore_Box_FooterBlurInternal)
	registerVal2.id = "FR_TopScore_Box_FooterBlurInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 554.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 54.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 553.920000)
	registerVal3:setTopBottom(true, false, 0.000000, 53.570000)
	registerVal3:setImage(RegisterImage("uie_t7_freerun_hud_topscores_footerbox"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.HighScoreFooterBox = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_682_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_682_
	local function __FUNC_6E2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Penalty = __FUNC_6E2_
	local function __FUNC_742_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.FaultAnim = __FUNC_742_
	local function __FUNC_7A2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.RetryAnim = __FUNC_7A2_
	local function __FUNC_802_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.SetCheckpointDelta = __FUNC_802_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Outcome_title_PnlLineInt = registerVal1
function CoD.Outcome_title_PnlLineInt.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Outcome_title_PnlLineInt)
	registerVal2.id = "Outcome_title_PnlLineInt"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 23.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 4.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -11.500000, 11.500000)
	registerVal3:setTopBottom(false, false, -2.000000, 2.000000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal3:setShaderVector(0.000000, 0.000000, 20.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.LineBlur = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_609_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_609_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_66A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LineBlur:setRGB(0.050000, 1.000000, 0.000000)
		registerVal2.LineBlur:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_66A_
	registerVal4.VictoryGreen = registerVal5
	registerVal5 = {}
	local function __FUNC_7A6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LineBlur:setRGB(1.000000, 0.010000, 0.000000)
		registerVal2.LineBlur:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7A6_
	registerVal4.DefeatRed = registerVal5
	registerVal5 = {}
	local function __FUNC_8E2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.LineBlur:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.LineBlur:setAlpha(0.300000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8E2_
	registerVal4.OvertimeOrange = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


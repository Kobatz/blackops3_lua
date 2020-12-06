-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Outcome_title_PnlCenterInt = registerVal1
function CoD.Outcome_title_PnlCenterInt.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Outcome_title_PnlCenterInt)
	registerVal2.id = "Outcome_title_PnlCenterInt"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 701.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 55.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 54.900000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal3:setShaderVector(0.000000, 0.000000, 20.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.TopFrameBlur = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_5F4_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_5F4_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_656_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_656_
	registerVal4.VictoryGreen = registerVal5
	registerVal5 = {}
	local function __FUNC_6B6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_6B6_
	registerVal4.DefeatRed = registerVal5
	registerVal5 = {}
	local function __FUNC_716_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_716_
	registerVal4.OvertimeOrange = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_DistanceBarWidget = registerVal1
function CoD.FR_DistanceBarWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.FR_DistanceBarWidget)
	registerVal2.id = "FR_DistanceBarWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 547.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 61.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 546.610000)
	registerVal3:setTopBottom(true, false, 0.000000, 60.730000)
	registerVal3:setImage(RegisterImage("uie_t7_freerun_hud_distancebar"))
	registerVal2:addElement(registerVal3)
	registerVal2.DistanceBar = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 6.000000, 45.760000)
	registerVal4:setTopBottom(true, false, 17.340000, 57.100000)
	registerVal4:setImage(RegisterImage("uie_t7_freerun_hud_distancebar_self"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 50.000000, 89.760000)
	registerVal5:setTopBottom(true, false, 17.340000, 57.100000)
	registerVal5:setImage(RegisterImage("uie_t7_freerun_hud_distancebar_ghost"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image1 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_725_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_725_
	local function __FUNC_786_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.Penalty = __FUNC_786_
	local function __FUNC_7E6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.FaultAnim = __FUNC_7E6_
	local function __FUNC_846_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.RetryAnim = __FUNC_846_
	local function __FUNC_8A6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.SetCheckpointDelta = __FUNC_8A6_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreInfo_RdTri = registerVal1
function CoD.ScoreInfo_RdTri.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreInfo_RdTri)
	registerVal2.id = "ScoreInfo_RdTri"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 8.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal3:setAlpha(0.500000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_scorewidget_rdtriline"))
	registerVal2:addElement(registerVal3)
	registerVal2.TriLine = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 8.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_scorewidget_rdtrifill"))
	registerVal2:addElement(registerVal4)
	registerVal2.TriFill = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_60F_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.TriFill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_60F_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_70B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.TriFill:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_70B_
	registerVal5.Active = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


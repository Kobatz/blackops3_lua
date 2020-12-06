-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_PanelScale")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScrStk_PanelContainer = registerVal1
function CoD.ScrStk_PanelContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScrStk_PanelContainer)
	registerVal2.id = "ScrStk_PanelContainer"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 61.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 166.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreInfo_PanelScale.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -30.500000, 30.500000)
	registerVal3:setTopBottom(false, false, -86.000000, 83.000000)
	registerVal3:setRGB(0.550000, 0.580000, 0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_65A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setLeftRight(false, false, -30.500000, 30.500000)
		registerVal2.Panel:setTopBottom(false, false, 40.000000, 83.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_65A_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7B2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setLeftRight(false, false, -30.500000, 30.500000)
		registerVal2.Panel:setTopBottom(false, false, -2.000000, 83.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7B2_
	registerVal4.Scr2 = registerVal5
	registerVal5 = {}
	local function __FUNC_90A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setLeftRight(false, false, -30.500000, 30.500000)
		registerVal2.Panel:setTopBottom(false, false, -44.000000, 83.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_90A_
	registerVal4.Scr3 = registerVal5
	registerVal5 = {}
	local function __FUNC_A62_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setLeftRight(false, false, -30.500000, 30.500000)
		registerVal2.Panel:setTopBottom(false, false, -83.000000, 83.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A62_
	registerVal4.Scr4 = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_BBA_(arg0)
		arg0.Panel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BBA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


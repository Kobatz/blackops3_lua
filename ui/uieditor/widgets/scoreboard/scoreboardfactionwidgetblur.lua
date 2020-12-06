-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.EndGameFlow.Top3PlayerScoreBlurBox")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreboardFactionWidgetBlur = registerVal1
function CoD.ScoreboardFactionWidgetBlur.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.ScoreboardFactionWidgetBlur)
	registerVal2.id = "ScoreboardFactionWidgetBlur"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 234.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 84.000000)
	local registerVal3 = CoD.Top3PlayerScoreBlurBox.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Top3PlayerScoreBlurBox = registerVal3
	local registerVal4 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.450000)
	registerVal2:addElement(registerVal4)
	registerVal2.VSpanel = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_796_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_796_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_8FC_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Top3PlayerScoreBlurBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8FC_
	registerVal5.Frontend = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_A5F_(arg0)
		arg0.Top3PlayerScoreBlurBox:close()
		arg0.VSpanel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A5F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


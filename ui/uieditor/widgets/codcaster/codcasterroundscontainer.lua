-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.CodCaster.CodCasterRoundsUnlimited")
require("ui.uieditor.widgets.CodCaster.CodCasterRounds")
require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_RdTriCont")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.codcasterRoundsContainer = registerVal1
function CoD.codcasterRoundsContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.codcasterRoundsContainer)
	registerVal2.id = "codcasterRoundsContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 5.250000, 92.250000)
	registerVal3:setTopBottom(true, false, 11.500000, 28.630000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.650000)
	registerVal2:addElement(registerVal3)
	registerVal2.VSpanel = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 4.000000, 93.500000)
	registerVal4:setTopBottom(true, false, 7.500000, 40.130000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.HighlightFrame = registerVal4
	local registerVal5 = CoD.CodCasterRoundsUnlimited.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 10.250000, 85.750000)
	registerVal5:setTopBottom(true, false, 11.000000, 34.630000)
	registerVal2:addElement(registerVal5)
	registerVal2.CodCasterRoundsUnlimited = registerVal5
	local registerVal6 = CoD.CodCasterRounds.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 10.250000, 85.750000)
	registerVal6:setTopBottom(true, false, 10.000000, 34.630000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.CodCasterRounds = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 9.250000, 85.750000)
	registerVal7:setTopBottom(true, false, 11.500000, 27.500000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("MP_OVERTIME_CAPS"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setLetterSpacing(0.600000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.Overtime = registerVal7
	local registerVal8 = CoD.ScoreInfo_RdTriCont.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 9.250000, 87.500000)
	registerVal8:setTopBottom(true, false, 7.000000, 15.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal8:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.TriCont = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_E43_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HighlightFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CodCasterRoundsUnlimited:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CodCasterRounds:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Overtime:setLeftRight(true, false, 7.250000, 90.750000)
		registerVal2.Overtime:setTopBottom(true, false, 11.500000, 27.500000)
		registerVal2.Overtime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TriCont:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_E43_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_119E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HighlightFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CodCasterRoundsUnlimited:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CodCasterRounds:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Overtime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TriCont:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_119E_
	registerVal9.Invisible = registerVal10
	registerVal10 = {}
	local function __FUNC_1465_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HighlightFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CodCasterRoundsUnlimited:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CodCasterRounds:setLeftRight(true, false, 7.250000, 90.750000)
		registerVal2.CodCasterRounds:setTopBottom(true, false, 10.000000, 34.630000)
		registerVal2.CodCasterRounds:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Overtime:setLeftRight(true, false, 7.250000, 90.750000)
		registerVal2.Overtime:setTopBottom(true, false, 11.500000, 27.500000)
		registerVal2.Overtime:setAlpha(1.000000)
		registerVal2.Overtime:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
		registerVal2.Overtime:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
		registerVal2.Overtime:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Overtime:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.Overtime:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TriCont:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1465_
	registerVal9.Overtime = registerVal10
	registerVal10 = {}
	local function __FUNC_19DE_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HighlightFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CodCasterRoundsUnlimited:setAlpha(0.000000)
		registerVal2.CodCasterRoundsUnlimited:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CodCasterRounds:setLeftRight(true, false, 7.250000, 90.750000)
		registerVal2.CodCasterRounds:setTopBottom(true, false, 10.000000, 34.630000)
		registerVal2.CodCasterRounds:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Overtime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TriCont:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_19DE_
	registerVal9.RoundBasedNoLimit = registerVal10
	registerVal10 = {}
	local function __FUNC_1DDF_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.VSpanel:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.HighlightFrame:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CodCasterRoundsUnlimited:setLeftRight(true, false, 7.250000, 90.250000)
		registerVal2.CodCasterRoundsUnlimited:setTopBottom(true, false, 11.000000, 34.630000)
		registerVal2.CodCasterRoundsUnlimited:setAlpha(0.000000)
		registerVal2.CodCasterRoundsUnlimited:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CodCasterRounds:setLeftRight(true, false, 3.000000, 89.250000)
		registerVal2.CodCasterRounds:setTopBottom(true, false, 10.000000, 34.630000)
		registerVal2.CodCasterRounds:setAlpha(1.000000)
		registerVal2.CodCasterRounds:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Overtime:setLeftRight(true, false, 9.250000, 87.250000)
		registerVal2.Overtime:setTopBottom(true, false, 11.500000, 24.000000)
		registerVal2.Overtime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TriCont:setLeftRight(true, false, 7.250000, 92.250000)
		registerVal2.TriCont:setTopBottom(true, false, 5.000000, 13.000000)
		registerVal2.TriCont:setAlpha(1.000000)
		registerVal2.TriCont:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1DDF_
	registerVal9.RoundBasedLimitedRounds = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_2379_(arg0)
		arg0.VSpanel:close()
		arg0.HighlightFrame:close()
		arg0.CodCasterRoundsUnlimited:close()
		arg0.CodCasterRounds:close()
		arg0.TriCont:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2379_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


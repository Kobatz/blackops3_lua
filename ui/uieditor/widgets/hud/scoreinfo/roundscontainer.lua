-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.Games")
require("ui.uieditor.widgets.HUD.ScoreInfo.Rounds")
require("ui.uieditor.widgets.HUD.ScoreInfo.RoundsUnlimited")
require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_RdTriCont")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RoundsContainer = registerVal1
function CoD.RoundsContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RoundsContainer)
	registerVal2.id = "RoundsContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 87.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Games.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -53.500000, 53.500000)
	registerVal3:setTopBottom(false, false, -7.130000, 18.130000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal3:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Games = registerVal3
	local registerVal4 = CoD.Rounds.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -53.500000, 53.500000)
	registerVal4:setTopBottom(false, false, -7.130000, 18.130000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Rounds = registerVal4
	local registerVal5 = CoD.RoundsUnlimited.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -53.500000, 53.500000)
	registerVal5:setTopBottom(false, false, -7.130000, 18.130000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal5:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.RoundsUnlimited = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, -53.500000, 53.500000)
	registerVal6:setTopBottom(false, false, -5.000000, 11.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setText(Engine.Localize("MP_OVERTIME_CAPS"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal6:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(0.600000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.Overtime = registerVal6
	local registerVal7 = CoD.ScoreInfo_RdTriCont.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -42.500000, 42.500000)
	registerVal7:setTopBottom(false, false, -14.000000, -6.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal7:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.TriCont = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_FA4_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.Rounds:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RoundsUnlimited:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Overtime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TriCont:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_FA4_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_11AA_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.Rounds:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RoundsUnlimited:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Overtime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TriCont:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_11AA_
	registerVal8.Invisible = registerVal9
	registerVal9 = {}
	local function __FUNC_13AE_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.Rounds:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RoundsUnlimited:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Overtime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TriCont:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_13AE_
	registerVal8.Overtime = registerVal9
	registerVal9 = {}
	local function __FUNC_15B7_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Games:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Rounds:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RoundsUnlimited:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Overtime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TriCont:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_15B7_
	registerVal8.Infected = registerVal9
	registerVal9 = {}
	local function __FUNC_1812_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.Rounds:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RoundsUnlimited:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Overtime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TriCont:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1812_
	registerVal8.RoundBasedNoLimit = registerVal9
	registerVal9 = {}
	local function __FUNC_1A1B_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.Rounds:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.RoundsUnlimited:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Overtime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TriCont:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1A1B_
	registerVal8.RoundBasedLimitedRounds = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_1C23_(arg0)
		arg0.Games:close()
		arg0.Rounds:close()
		arg0.RoundsUnlimited:close()
		arg0.TriCont:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C23_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


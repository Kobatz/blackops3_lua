-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreInfo_Meter = registerVal1
function CoD.ScoreInfo_Meter.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreInfo_Meter)
	registerVal2.id = "ScoreInfo_Meter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 53.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 88.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal3:setImage(RegisterImage("uie_t7_core_hud_scorewidget_simplemeterback"))
	registerVal2:addElement(registerVal3)
	registerVal2.ImgMeterEnvBack = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 2.000000, -1.670000)
	registerVal4:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_damagewidget_hess_meterfill"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_angled_wipe_normal"))
	registerVal4:setShaderVector(0.000000, 0.840000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ImgMeterEnvFill = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 84.000000)
	registerVal5:setTopBottom(true, false, 2.000000, 6.000000)
	registerVal5:setImage(RegisterImage("uie_t7_core_hud_scorewidget_simplemeterfill"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal5:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.ImgMeterEnvFillLine = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 128.000000, 151.000000)
	registerVal6:setTopBottom(true, false, 5.000000, 19.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Image0 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 178.500000, 201.500000)
	registerVal7:setTopBottom(true, false, 5.000000, 19.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Image1 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_A27_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ImgMeterEnvBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImgMeterEnvFill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ImgMeterEnvFillLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.DefaultClip = __FUNC_A27_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_BE9_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ImgMeterEnvBack:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImgMeterEnvFill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ImgMeterEnvFillLine:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.DefaultClip = __FUNC_BE9_
	registerVal8.Visible = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Visible"
	local function __FUNC_DB2_(arg0, arg1, arg2)
		local registerVal3 = HideScoreMeterDueToGameType()
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_DB2_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


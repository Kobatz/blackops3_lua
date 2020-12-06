-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BM_Contracts_PercentCompleteWidget = registerVal1
function CoD.BM_Contracts_PercentCompleteWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BM_Contracts_PercentCompleteWidget)
	registerVal2.id = "BM_Contracts_PercentCompleteWidget"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 144.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 144.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_blackmarket_contract_complete"))
	registerVal2:addElement(registerVal3)
	registerVal2.AllCompleteIcon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_blackmarket_contract_inprogressbacker"))
	registerVal2:addElement(registerVal4)
	registerVal2.BackgroundRing = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, -1.000000, -1.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contract_inprogress"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal5:setShaderVector(0.000000, 0.500001, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.050000, 0.050000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.percentCompleteCircle = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal6:setRGB(0.600000, 1.000000, 0.930000)
	registerVal6:setScale(0.900000)
	registerVal6:setText(Engine.Localize("50%"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.040000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(0.500000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.percentText = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_BCC_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.percentText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_BCC_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_DF5_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.percentText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_DF5_
	registerVal7.Complete = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Complete"
	local function __FUNC_1018_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "Complete")
	end

	registerVal10.condition = __FUNC_1018_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


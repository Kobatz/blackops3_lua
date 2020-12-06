-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AAR_Contracts_PercentCompleteWidget = registerVal1
function CoD.AAR_Contracts_PercentCompleteWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AAR_Contracts_PercentCompleteWidget)
	registerVal2.id = "AAR_Contracts_PercentCompleteWidget"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 124.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 124.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.360000, 0.360000, 0.360000)
	registerVal3:setAlpha(0.350000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_aar_whiteringback"))
	registerVal2:addElement(registerVal3)
	registerVal2.BackgroundRing = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.950000, 0.910000, 0.110000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_aar_whiteringthin"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal4:setShaderVector(0.000000, 0.500001, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.percentCompleteCircle = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal5:setAlpha(0.800000)
	registerVal5:setText(Engine.Localize("50%"))
	registerVal5:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.percentText = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -35.000000, 35.000000)
	registerVal6:setTopBottom(false, false, -35.000000, 35.000000)
	registerVal6:setRGB(0.360000, 0.360000, 0.360000)
	registerVal6:setAlpha(0.350000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_challenges_crosslines"))
	registerVal2:addElement(registerVal6)
	registerVal2.CrossLines = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setRGB(0.950000, 0.910000, 0.110000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_aar_whiteringthin"))
	registerVal2:addElement(registerVal7)
	registerVal2.percentCompleteCircle0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 39.000000, -39.000000)
	registerVal8:setTopBottom(true, true, 43.000000, -35.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_aar_yellowstar"))
	registerVal2:addElement(registerVal8)
	registerVal2.star = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_C93_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CrossLines:setRGB(0.360000, 0.360000, 0.360000)
		registerVal2.CrossLines:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.star:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_C93_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_F3F_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BackgroundRing:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.percentText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CrossLines:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.percentCompleteCircle0:setAlpha(1.000000)
		registerVal2.percentCompleteCircle0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.star:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_F3F_
	registerVal9.Complete = registerVal10
	registerVal2.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Complete"
	local function __FUNC_12B3_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "Complete")
	end

	registerVal12.condition = __FUNC_12B3_
	registerVal11 = {registerVal12}
	registerVal2:mergeStateConditions(registerVal11)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


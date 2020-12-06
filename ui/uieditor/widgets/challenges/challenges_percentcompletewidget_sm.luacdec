-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_PercentCompleteWidget_SM = registerVal1
function CoD.Challenges_PercentCompleteWidget_SM.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_PercentCompleteWidget_SM)
	registerVal2.id = "Challenges_PercentCompleteWidget_SM"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 45.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 45.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -4.500000, 4.500000)
	registerVal3:setTopBottom(true, true, -4.500000, 4.500000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_challenges_complete_icon"))
	registerVal2:addElement(registerVal3)
	registerVal2.AllCompleteIcon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.360000, 0.360000, 0.360000)
	registerVal4:setAlpha(0.350000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_aar_whiteringback"))
	registerVal2:addElement(registerVal4)
	registerVal2.percentCompleteBackground = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -22.500000, 22.500000)
	registerVal5:setTopBottom(false, false, -22.500000, 22.500000)
	registerVal5:setRGB(0.360000, 0.360000, 0.360000)
	registerVal5:setAlpha(0.350000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_challenges_crosslines"))
	registerVal2:addElement(registerVal5)
	registerVal2.CrossLines = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setRGB(0.950000, 0.910000, 0.110000)
	registerVal6:setAlpha(0.900000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_aar_whiteringthin_md"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_clock_normal"))
	registerVal6:setShaderVector(0.000000, 0.500001, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.500000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.percentCompleteCircle = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -18.000000, 18.000000)
	registerVal7:setTopBottom(false, false, -7.500000, 9.500000)
	registerVal7:setAlpha(0.800000)
	registerVal7:setText(Engine.Localize("50%"))
	registerVal7:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_C55_(arg0, arg1)
		local registerVal2 = IsPercentTextAt100Percent(arg1)
		if registerVal2 then
			SetState(registerVal2, "Complete")
		else
			registerVal2 = IsPercentTextAt100Percent(arg1)
			if not registerVal2 then
				SetState(registerVal2, "DefaultState")
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal7, "setText", __FUNC_C55_)
	registerVal2:addElement(registerVal7)
	registerVal2.percentText = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_D29_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.percentCompleteBackground:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CrossLines:setRGB(0.360000, 0.360000, 0.360000)
		registerVal2.CrossLines:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.percentText:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_D29_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_FF2_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.AllCompleteIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.percentCompleteBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.CrossLines:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.percentCompleteCircle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.percentText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_FF2_
	registerVal8.Complete = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Complete"
	local function __FUNC_1277_(arg0, arg1, arg2)
		return IsSelfInState(registerVal2, "Complete")
	end

	registerVal11.condition = __FUNC_1277_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


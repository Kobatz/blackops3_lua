-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterPlayerListRowHighlight = registerVal1
function CoD.CodCasterPlayerListRowHighlight.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CodCasterPlayerListRowHighlight)
	registerVal2.id = "CodCasterPlayerListRowHighlight"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_codcaster_highlight"))
	local function __FUNC_9DF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setRGB(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_9DF_)
	registerVal2:addElement(registerVal3)
	registerVal2.axisbg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_codcaster_highlight"))
	local function __FUNC_A6F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Factions", "alliesFactionColor", __FUNC_A6F_)
	registerVal2:addElement(registerVal4)
	registerVal2.alliesbg = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal5:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_codcaster_highlight"))
	registerVal2:addElement(registerVal5)
	registerVal2.freebg = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_AFF_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.axisbg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.alliesbg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_AFF_
	local function __FUNC_C50_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.axisbg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.Focus = __FUNC_C50_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_D49_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.axisbg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.alliesbg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.freebg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_D49_
	registerVal6.Allies = registerVal7
	registerVal7 = {}
	local function __FUNC_EF5_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.axisbg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.alliesbg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.freebg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_EF5_
	registerVal6.Axis = registerVal7
	registerVal7 = {}
	local function __FUNC_10A1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.axisbg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.alliesbg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.freebg:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_10A1_
	registerVal6.Free = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Allies"
	local function __FUNC_124D_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "team", Enum.team_t.TEAM_ALLIES)
		if registerVal3 then
			registerVal3 = IsGametypeTeambased()
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_124D_
	local registerVal10 = {}
	registerVal10.stateName = "Axis"
	local function __FUNC_133F_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualToEnum(arg2, arg1, "team", Enum.team_t.TEAM_AXIS)
		if registerVal3 then
			registerVal3 = IsGametypeTeambased()
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_133F_
	local registerVal11 = {}
	registerVal11.stateName = "Free"
	local function __FUNC_142D_(arg0, arg1, arg2)
		return true
	end

	registerVal11.condition = __FUNC_142D_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1460_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "team"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "team", true, __FUNC_1460_)
	local function __FUNC_157A_(arg0)
		arg0.axisbg:close()
		arg0.alliesbg:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_157A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


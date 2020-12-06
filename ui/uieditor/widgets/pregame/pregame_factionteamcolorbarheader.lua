-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Pregame_FactionTeamColorBarHeader = registerVal1
function CoD.Pregame_FactionTeamColorBarHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Pregame_FactionTeamColorBarHeader)
	registerVal2.id = "Pregame_FactionTeamColorBarHeader"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 3.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 2.980000)
	local function __FUNC_772_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setRGB(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Factions", "axisFactionColor", __FUNC_772_)
	registerVal2:addElement(registerVal3)
	registerVal2.AxisColor = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 2.980000)
	local function __FUNC_803_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setRGB(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Factions", "alliesFactionColor", __FUNC_803_)
	registerVal2:addElement(registerVal4)
	registerVal2.AlliesColor = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_893_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.AxisColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AlliesColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_893_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_9EA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.AxisColor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AlliesColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_9EA_
	registerVal5.IfAxisTeam = registerVal6
	registerVal6 = {}
	local function __FUNC_B47_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.AxisColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.AlliesColor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B47_
	registerVal5.IfAlliesTeam = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "IfAxisTeam"
	local function __FUNC_CA3_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "intData", Enum.team_t.TEAM_AXIS)
	end

	registerVal8.condition = __FUNC_CA3_
	local registerVal9 = {}
	registerVal9.stateName = "IfAlliesTeam"
	local function __FUNC_D67_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "intData", Enum.team_t.TEAM_ALLIES)
	end

	registerVal9.condition = __FUNC_D67_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_E2D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "intData"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "intData", true, __FUNC_E2D_)
	local function __FUNC_F49_(arg0)
		arg0.AxisColor:close()
		arg0.AlliesColor:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F49_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


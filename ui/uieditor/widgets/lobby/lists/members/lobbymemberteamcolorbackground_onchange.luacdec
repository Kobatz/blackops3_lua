-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyMemberTeamColorBackground_OnChange = registerVal1
function CoD.LobbyMemberTeamColorBackground_OnChange.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbyMemberTeamColorBackground_OnChange)
	registerVal2.id = "LobbyMemberTeamColorBackground_OnChange"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(ColorSet.CodCaster.r, ColorSet.CodCaster.g, ColorSet.CodCaster.b)
	registerVal3:setAlpha(0.250000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.spectatorColor = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(ColorSet.FactionAllies.r, ColorSet.FactionAllies.g, ColorSet.FactionAllies.b)
	registerVal4:setAlpha(0.000000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal4)
	registerVal2.alliesColor = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setRGB(ColorSet.FactionAxis.r, ColorSet.FactionAxis.g, ColorSet.FactionAxis.b)
	registerVal5:setAlpha(0.000000)
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal5)
	registerVal2.axisColor = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_9E1_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.spectatorColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.alliesColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.axisColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_9E1_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_B96_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.spectatorColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.alliesColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.axisColor:setAlpha(0.600000)
		registerVal2.axisColor:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B96_
	registerVal6.Axis = registerVal7
	registerVal7 = {}
	local function __FUNC_DEC_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.spectatorColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.alliesColor:setAlpha(0.750000)
		registerVal2.alliesColor:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.axisColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_DEC_
	registerVal6.Allies = registerVal7
	registerVal7 = {}
	local function __FUNC_104C_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.spectatorColor:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.alliesColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.axisColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_104C_
	registerVal6.Spectator = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Axis"
	local function __FUNC_1207_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "teamSwitch", Enum.team_t.TEAM_AXIS)
	end

	registerVal9.condition = __FUNC_1207_
	local registerVal10 = {}
	registerVal10.stateName = "Allies"
	local function __FUNC_12CE_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "teamSwitch", Enum.team_t.TEAM_ALLIES)
	end

	registerVal10.condition = __FUNC_12CE_
	local registerVal11 = {}
	registerVal11.stateName = "Spectator"
	local function __FUNC_1398_(arg0, arg2, arg3)
		return IsSelfModelValueEqualToEnum(arg2, arg1, "teamSwitch", Enum.team_t.TEAM_SPECTATOR)
	end

	registerVal11.condition = __FUNC_1398_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_1467_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "teamSwitch"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "teamSwitch", true, __FUNC_1467_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


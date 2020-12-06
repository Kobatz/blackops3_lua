-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CodCaster.CodCasterHeaderTeamBased")
require("ui.uieditor.widgets.CodCaster.CodCasterHeaderNonTeamBased")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterHeaderWidget = registerVal1
function CoD.CodCasterHeaderWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterHeaderWidget)
	registerVal2.id = "CodCasterHeaderWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 561.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 131.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CodCasterHeaderTeamBased.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -296.000000, 295.000000)
	registerVal3:setTopBottom(true, false, -2.000000, 130.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.CodCasterHeaderTeamBased = registerVal3
	local registerVal4 = CoD.CodCasterHeaderNonTeamBased.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -297.000000, 294.000000)
	registerVal4:setTopBottom(true, false, -5.000000, 126.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.CodCasterHeaderNonTeamBased = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_919_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CodCasterHeaderTeamBased:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CodCasterHeaderNonTeamBased:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_919_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A91_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CodCasterHeaderTeamBased:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CodCasterHeaderNonTeamBased:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A91_
	registerVal5.VisibleTeamBased = registerVal6
	registerVal6 = {}
	local function __FUNC_C0E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CodCasterHeaderTeamBased:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.CodCasterHeaderNonTeamBased:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C0E_
	registerVal5.VisibleNonTeamBased = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "VisibleTeamBased"
	local function __FUNC_D8A_(arg0, arg2, arg3)
		local registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_qs_scorepanel", 1.000000)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
			if not registerVal3 then
				registerVal3 = IsGametypeTeambased()
				if not registerVal3 then
					registerVal3 = IsGameTypeEqualToString("infect")
				else
				end
			end
		end
		return true
	end

	registerVal8.condition = __FUNC_D8A_
	local registerVal9 = {}
	registerVal9.stateName = "VisibleNonTeamBased"
	local function __FUNC_F46_(arg0, arg2, arg3)
		local registerVal3 = IsCodCasterProfileValueEqualTo(arg1, "shoutcaster_qs_scorepanel", 1.000000)
		if registerVal3 then
			registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
			if not registerVal3 then
				registerVal3 = IsGametypeTeambased()
			else
			end
		end
		return true
	end

	registerVal9.condition = __FUNC_F46_
	registerVal7 = {registerVal8, registerVal9}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "CodCaster.profileSettingsUpdated")
	local function __FUNC_10C1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CodCaster.profileSettingsUpdated"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_10C1_)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN))
	local function __FUNC_11F6_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_SCOREBOARD_OPEN)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_11F6_)
	local function __FUNC_1382_(arg0)
		arg0.CodCasterHeaderTeamBased:close()
		arg0.CodCasterHeaderNonTeamBased:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1382_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


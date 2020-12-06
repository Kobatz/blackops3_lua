-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Scoreboard.ScoreboardFactionWidgetBlur")
require("ui.uieditor.widgets.AAR.PerformanceTab.AAR_PT_Numbers")
require("ui.uieditor.widgets.Scoreboard.ScoreboardFactionNameWidget")
require("ui.uieditor.widgets.Scoreboard.ScoreboardFFANameWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreboardFactionWidget = registerVal1
function CoD.ScoreboardFactionWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.ScoreboardFactionWidget)
	registerVal2.id = "ScoreboardFactionWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 84.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreboardFactionWidgetBlur.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Frontend"
	local function __FUNC_14AB_(arg0, arg1, arg2)
		local registerVal3 = IsInGame()
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_14AB_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.ScoreboardFactionWidgetBlur = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -75.610000, 94.500000)
	registerVal4:setTopBottom(false, false, -68.390000, 87.440000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.300000)
	registerVal4:setImage(RegisterImage("uie_t7_core_hud_mapwidget_panelglow"))
	registerVal2:addElement(registerVal4)
	registerVal2.IconGlowPanel = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -65.500000, 65.500000)
	registerVal5:setTopBottom(false, false, -64.500000, 64.500000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setScale(1.200000)
	registerVal5:setImage(RegisterImage("uie_t7_mp_hud_faction_icon_faction1"))
	registerVal2:addElement(registerVal5)
	registerVal2.FactionIcon = registerVal5
	registerVal6 = CoD.AAR_PT_Numbers.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -13.500000, 211.500000)
	registerVal6:setTopBottom(true, false, 24.000000, 79.050000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal6:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6.Numbers:setRGB(0.720000, 0.750000, 0.820000)
	registerVal6.Numbers:setText(Engine.Localize("2150"))
	registerVal2:addElement(registerVal6)
	registerVal2.Score0 = registerVal6
	registerVal7 = CoD.ScoreboardFactionNameWidget.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 2.020000, 139.040000)
	registerVal7:setTopBottom(true, false, 3.000000, 29.000000)
	registerVal7.FactionName:setText(Engine.Localize("MPUI_AXIS_CAPS"))
	registerVal2:addElement(registerVal7)
	registerVal2.ScoreboardFactionNameWidget = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 137.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 84.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.ffaEmblem = registerVal8
	local registerVal9 = CoD.AAR_PT_Numbers.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, -13.500000, 211.500000)
	registerVal9:setTopBottom(true, false, 24.000000, 79.050000)
	registerVal9:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal9:setShaderVector(0.000000, 0.200000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal9.Numbers:setRGB(0.720000, 0.750000, 0.820000)
	registerVal9.Numbers:setText(Engine.Localize("2150"))
	registerVal2:addElement(registerVal9)
	registerVal2.ffaScore = registerVal9
	local registerVal10 = CoD.ScoreboardFactionNameWidget.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 2.020000, 139.040000)
	registerVal10:setTopBottom(true, false, 3.000000, 29.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10.FactionName:setText(Engine.Localize("MPUI_AXIS_CAPS"))
	registerVal2:addElement(registerVal10)
	registerVal2.ffaName = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 2.020000, 234.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal11:setRGB(ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FactionColor = registerVal11
	local registerVal12 = CoD.ScoreboardFFANameWidget.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 3.500000, 230.500000)
	registerVal12:setTopBottom(true, false, 58.000000, 84.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12.FactionName:setText(Engine.Localize("WWWWWWWWWWWWWWWWW"))
	registerVal2:addElement(registerVal12)
	registerVal2.ScoreboardFFANameWidget = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_14F6_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.FactionIcon:setLeftRight(false, false, -63.970000, 66.870000)
		registerVal2.FactionIcon:setTopBottom(false, false, -54.840000, 73.890000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Score0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ScoreboardFactionNameWidget:setLeftRight(true, false, 2.020000, 139.040000)
		registerVal2.ScoreboardFactionNameWidget:setTopBottom(true, false, 0.000000, 26.000000)
		registerVal2.ScoreboardFactionNameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.ffaScore:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ffaName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FactionColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ScoreboardFFANameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_14F6_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_18F6_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal4:completeAnimation()
		registerVal2.IconGlowPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FactionIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Score0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ScoreboardFactionNameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.ffaEmblem:setLeftRight(true, false, 1.000000, 201.610000)
		registerVal2.ffaEmblem:setTopBottom(true, false, 85.000000, 208.000000)
		registerVal2.ffaEmblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ffaScore:setLeftRight(true, false, -13.500000, 211.500000)
		registerVal2.ffaScore:setTopBottom(true, false, 1.000000, 56.050000)
		registerVal2.ffaScore:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ffaName:setLeftRight(true, false, 2.020000, 139.040000)
		registerVal2.ffaName:setTopBottom(true, false, 58.000000, 84.000000)
		registerVal2.ffaName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal12:completeAnimation()
		registerVal12.FactionName:completeAnimation()
		registerVal2.ScoreboardFFANameWidget:setLeftRight(true, false, 1.500000, 200.000000)
		registerVal2.ScoreboardFFANameWidget:setTopBottom(true, false, 58.000000, 84.000000)
		registerVal2.ScoreboardFFANameWidget:setAlpha(1.000000)
		registerVal2.ScoreboardFFANameWidget.FactionName:setText(Engine.Localize("WWWWWWWWWWWWWWWW"))
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_18F6_
	registerVal13.FFA = registerVal14
	registerVal14 = {}
	local function __FUNC_1ED9_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.FactionIcon:setLeftRight(false, false, -90.500000, 90.500000)
		registerVal2.FactionIcon:setTopBottom(false, false, -57.240000, 57.240000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Score0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ScoreboardFactionNameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.ffaScore:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ffaName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FactionColor:setLeftRight(true, false, 0.000000, 200.000000)
		registerVal2.FactionColor:setTopBottom(true, false, 0.000000, 4.000000)
		registerVal2.FactionColor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ScoreboardFFANameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1ED9_
	registerVal13.CodCaster = registerVal14
	registerVal14 = {}
	local function __FUNC_22D5_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.FactionIcon:setLeftRight(false, false, -90.500000, 90.500000)
		registerVal2.FactionIcon:setTopBottom(false, false, -57.240000, 57.240000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Score0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ScoreboardFactionNameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.ffaScore:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ffaName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FactionColor:setLeftRight(true, false, 0.000000, 200.000000)
		registerVal2.FactionColor:setTopBottom(true, false, 0.000000, 4.000000)
		registerVal2.FactionColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ScoreboardFFANameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_22D5_
	registerVal13.CodCasterAAR = registerVal14
	registerVal14 = {}
	local function __FUNC_26D1_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal5:completeAnimation()
		registerVal2.FactionIcon:setLeftRight(false, false, -63.970000, 66.870000)
		registerVal2.FactionIcon:setTopBottom(false, false, -54.840000, 73.890000)
		registerVal2.FactionIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Score0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ScoreboardFactionNameWidget:setLeftRight(true, false, 2.020000, 139.040000)
		registerVal2.ScoreboardFactionNameWidget:setTopBottom(true, false, 0.000000, 26.000000)
		registerVal2.ScoreboardFactionNameWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.ffaScore:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ffaName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FactionColor:setLeftRight(true, false, 0.000000, 200.000000)
		registerVal2.FactionColor:setTopBottom(true, false, 0.000000, 4.000000)
		registerVal2.FactionColor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.ScoreboardFFANameWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_26D1_
	registerVal13.TeamCoDCaster = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "FFA"
	local function __FUNC_2B48_(arg0, arg2, arg3)
		local registerVal3 = IsTeamBasedOrInfect(arg1)
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_2B48_
	local registerVal17 = {}
	registerVal17.stateName = "CodCaster"
	local function __FUNC_2BA5_(arg0, arg2, arg3)
		local registerVal3 = Engine.IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
		return registerVal3
	end

	registerVal17.condition = __FUNC_2BA5_
	local registerVal18 = {}
	registerVal18.stateName = "CodCasterAAR"
	local function __FUNC_2C77_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal18.condition = __FUNC_2C77_
	local registerVal19 = {}
	registerVal19.stateName = "TeamCoDCaster"
	local function __FUNC_2CC1_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal19.condition = __FUNC_2CC1_
	registerVal15 = {registerVal16, registerVal17, registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "MapVote.mapVoteMapPreviousGametype")
	local function __FUNC_2D0D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MapVote.mapVoteMapPreviousGametype"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_2D0D_)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR))
	local function __FUNC_2E44_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = ("UIVisibilityBit." .. Enum.UIVisibilityBit.BIT_TEAM_SPECTATOR)
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_2E44_)
	local function __FUNC_2FD1_(arg0)
		arg0.ScoreboardFactionWidgetBlur:close()
		arg0.Score0:close()
		arg0.ScoreboardFactionNameWidget:close()
		arg0.ffaScore:close()
		arg0.ffaName:close()
		arg0.ScoreboardFFANameWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2FD1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_FeaturedCardsContainerControllerIndicator")
require("ui.uieditor.widgets.Leaderboard.Leaderboard_GameModeTabItem")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Leaderboard_GameModeTabInternal = registerVal1
function CoD.Leaderboard_GameModeTabInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Leaderboard_GameModeTabInternal)
	registerVal2.id = "Leaderboard_GameModeTabInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 220.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 2.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:setLeftRight(false, false, -99.000000, 99.000000)
	registerVal3:setTopBottom(true, false, 40.000000, 48.000000)
	registerVal3:setWidgetType(CoD.FE_FeaturedCardsContainerControllerIndicator)
	registerVal3:setHorizontalCount(20.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Selected"
	local function __FUNC_93F_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualToSelfModelValue(arg2, arg1, "leaderboardDef", "lbDef")
	end

	registerVal7.condition = __FUNC_93F_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "leaderboardDef")
	local function __FUNC_9DC_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "leaderboardDef"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_9DC_)
	local function __FUNC_B00_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lbDef"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "lbDef", true, __FUNC_B00_)
	registerVal2:addElement(registerVal3)
	registerVal2.IndicatorsGrid = registerVal3
	local registerVal4 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 2.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:setLeftRight(false, false, -110.000000, 110.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 40.000000)
	registerVal4:setWidgetType(CoD.Leaderboard_GameModeTabItem)
	local function __FUNC_C1B_(arg2, arg3)
		SetupTabs(arg0, arg2, arg1)
		if not nil then
			local registerVal3 = arg2:dispatchEventToChildren(arg3)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_C1B_)
	registerVal2:addElement(registerVal4)
	registerVal2.Tabs = registerVal4
	local function __FUNC_CAC_(arg0)
		arg0.IndicatorsGrid:close()
		arg0.Tabs:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CAC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


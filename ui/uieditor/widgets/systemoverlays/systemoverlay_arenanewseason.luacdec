-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ArenaNewSeasonText")
require("ui.uieditor.widgets.Arena.ArenaResultWidget")
local function __FUNC_2F5_(arg0)
	if CoD.ArenaUtility.ArenaNewSeasonStats then
		CoD.ArenaUtility.ArenaNewSeasonStats = nil
	end
	return CoD.ArenaUtility.ArenaNewSeasonStats
end

local registerVal1 = ListHelper_SetupDataSource("ArenaNewSeasonStats", __FUNC_2F5_)
DataSources.ArenaNewSeasonStats = registerVal1
local function __FUNC_3BD_(arg0, arg1)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "arenaNewSeasonState")
	Engine.SetModelValue(registerVal3, "defaultState")
end

local function __FUNC_4BE_(arg0, arg1)
	local function __FUNC_57A_(arg0, arg1)
	end

	arg0:registerEventHandler("bonus_stars_clip_start", __FUNC_57A_)
	local function __FUNC_5B5_(arg0, arg2)
		if (0.000000 - 1.000000) == 0.000000 then
			SetControllerModelValue(arg1, "arenaNewSeasonState", "seasonStart")
		end
	end

	arg0:registerEventHandler("bonus_stars_clip_over", __FUNC_5B5_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_ArenaNewSeason = registerVal3
local function __FUNC_669_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_3BD_ then
		__FUNC_3BD_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_ArenaNewSeason)
	registerVal2.id = "systemOverlay_ArenaNewSeason"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.systemOverlay_Layout_ArenaNewSeasonText.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 86.000000, 881.000000)
	registerVal3:setTopBottom(true, false, 10.000000, 60.000000)
	local function __FUNC_EEB_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_EEB_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "SeasonFinale"
	local function __FUNC_F3A_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "arenaNewSeasonState", "seasonFinale")
	end

	registerVal7.condition = __FUNC_F3A_
	local registerVal8 = {}
	registerVal8.stateName = "BonusStars"
	local function __FUNC_FCC_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "arenaNewSeasonState", "bonusStars")
	end

	registerVal8.condition = __FUNC_FCC_
	local registerVal9 = {}
	registerVal9.stateName = "SeasonStart"
	local function __FUNC_105E_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "arenaNewSeasonState", "seasonStart")
	end

	registerVal9.condition = __FUNC_105E_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "arenaNewSeasonState")
	local function __FUNC_10EF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "arenaNewSeasonState"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_10EF_)
	registerVal2:addElement(registerVal3)
	registerVal2.ArenaNewSeasonText = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 56.000000, 1151.000000)
	registerVal4:setTopBottom(true, false, 74.000000, 299.000000)
	registerVal4:setWidgetType(CoD.ArenaResultWidget)
	registerVal4:setHorizontalCount(5.000000)
	registerVal4:setSpacing(0.000000)
	registerVal4:setDataSource("ArenaNewSeasonStats")
	local function __FUNC_1215_(arg0, arg2)
		SetControllerModelValue(arg1, "arenaNewSeasonState", "seasonFinale")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_1215_)
	local function __FUNC_12E9_(arg2)
		UpdateSelfElementState(arg0, registerVal4, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "PerController", "arenaNewSeasonState", __FUNC_12E9_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "SeasonFinale"
	local function __FUNC_134C_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "arenaNewSeasonState", "seasonFinale")
	end

	registerVal8.condition = __FUNC_134C_
	registerVal9 = {}
	registerVal9.stateName = "BonusStars"
	local function __FUNC_13E0_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "arenaNewSeasonState", "bonusStars")
		if registerVal3 then
			registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "newSeasonPoints", 0.000000)
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_13E0_
	local registerVal10 = {}
	registerVal10.stateName = "SeasonStart"
	local function __FUNC_14D5_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg1, "arenaNewSeasonState", "seasonStart")
		if registerVal3 then
			registerVal3 = IsSelfModelValueGreaterThan(arg2, arg1, "newSeasonPoints", 0.000000)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_14D5_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "arenaNewSeasonState")
	local function __FUNC_15CA_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "arenaNewSeasonState"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_15CA_)
	local function __FUNC_16F1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "newSeasonPoints"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "newSeasonPoints", true, __FUNC_16F1_)
	registerVal2:addElement(registerVal4)
	registerVal2.ArenaResultList = registerVal4
	registerVal4.id = "ArenaResultList"
	local function __FUNC_1815_(arg0, arg1)
		local registerVal2 = arg0.ArenaResultList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1815_)
	local function __FUNC_191F_(arg0)
		arg0.ArenaNewSeasonText:close()
		arg0.ArenaResultList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_191F_)
	if __FUNC_4BE_ then
		__FUNC_4BE_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.systemOverlay_ArenaNewSeason.new = __FUNC_669_

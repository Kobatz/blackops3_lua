-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Leaderboard.Leaderboard_GameModeTabItem")
local function __FUNC_23A_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	Engine.CreateModel(registerVal3, "classSetValue")
end

local function __FUNC_2EF_(arg0, arg1)
	local function __FUNC_365_(arg0, arg1)
		arg0.Tabs:updateDataSource()
	end

	arg0:registerEventHandler("class_set_name_change", __FUNC_365_)
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ChooseClass_ClassSetTabInternal = registerVal3
local function __FUNC_3CC_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_23A_ then
		__FUNC_23A_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseClass_ClassSetTabInternal)
	registerVal2.id = "ChooseClass_ClassSetTabInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 220.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 2.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:setLeftRight(false, false, -110.000000, 110.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 38.000000)
	registerVal3:setWidgetType(CoD.Leaderboard_GameModeTabItem)
	registerVal2:addElement(registerVal3)
	registerVal2.Tabs = registerVal3
	local registerVal4 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 2.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:setLeftRight(false, false, -50.000000, 50.000000)
	registerVal4:setTopBottom(true, false, 40.000000, 140.000000)
	registerVal4:setHorizontalCount(20.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.IndicatorsGrid = registerVal4
	local function __FUNC_854_(arg0)
		arg0.Tabs:close()
		arg0.IndicatorsGrid:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_854_)
	if __FUNC_2EF_ then
		__FUNC_2EF_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseClass_ClassSetTabInternal.new = __FUNC_3CC_

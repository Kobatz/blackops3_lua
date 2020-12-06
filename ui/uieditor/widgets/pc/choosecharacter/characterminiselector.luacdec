-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.PC.ChooseCharacter.CharacterMiniSelectorItem")
require("ui.uieditor.widgets.PC.ChooseCharacter.CharacterMiniSelectorLeftButton")
require("ui.uieditor.widgets.PC.ChooseCharacter.CharacterMiniSelectorRightButton")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
local function __FUNC_3BB_(arg0)
	local registerVal1 = Engine.GetHeroList(CoD.CCUtility.customizationMode)
	local registerVal3, registerVal4, registerVal5 = ipairs(registerVal1)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = {}
		local registerVal9 = {}
		registerVal9.name = value7.displayName
		registerVal9.disabled = value7.disabled
		registerVal8.models = registerVal9
		registerVal9 = CoDShared.IsLootHero(value7)
		if registerVal9 then
			registerVal9 = AllowLootHero(arg0)
			if registerVal9 then
				table.insert({}, 1.000000, registerVal8)
			else
				table.insert({}, registerVal8)
			end
		end
	end
	registerVal3, registerVal4, registerVal5 = ipairs({})
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		value7.models.index = index6
	end
	return {}
end

local registerVal2 = DataSourceHelpers.ListSetup("HeroesListMini", __FUNC_3BB_, true)
DataSources.HeroesListMini = registerVal2
local function __FUNC_622_(arg0)
	local registerVal1, registerVal2 = arg0.characterGrid:getLocalSize()
	arg0.characterGrid:setLeftRight(false, false, -(registerVal1 / 2.000000), (registerVal1 / 2.000000))
	arg0:setLeftRight(false, false, -((registerVal1 + 100.000000) / 2.000000), ((registerVal1 + 100.000000) / 2.000000))
end

local function __FUNC_6F5_(arg0, arg1)
	arg0:setForceMouseEventDispatch(true)
	arg0.characterGrid:setDataSource("HeroesListMini")
	local function __FUNC_8B7_(arg2, arg3)
		local registerVal3 = Engine.GetModel(arg3.model, "index")
		if arg3.list == arg0.characterGrid and arg3.model and registerVal3 then
			local registerVal4 = Engine.GetModelValue(registerVal3)
			local registerVal7 = {}
			registerVal7.name = "mini_item_selected"
			registerVal7.index = registerVal4
			registerVal7.controller = arg1
			arg0:dispatchEventToParent(registerVal7)
		end
		return true
	end

	arg0:registerEventHandler("list_active_changed", __FUNC_8B7_)
	local function __FUNC_A55_(arg0, arg1)
		arg0.characterGrid:setActiveIndex(1.000000, arg1.index)
	end

	arg0:registerEventHandler("sync_mini_selector", __FUNC_A55_)
	local function __FUNC_AE7_(arg0, arg2)
		SelectPreviousItemIfPossible(arg0, arg0.characterGrid, arg1)
	end

	arg0:registerEventHandler("mini_selector_left", __FUNC_AE7_)
	local function __FUNC_B69_(arg0, arg2)
		SelectNextItemIfPossible(arg0, arg0.characterGrid, arg1)
	end

	arg0:registerEventHandler("mini_selector_right", __FUNC_B69_)
	local function __FUNC_BE9_(arg0, arg1)
		__FUNC_622_(arg0)
	end

	arg0:registerEventHandler("menu_opened", __FUNC_BE9_)
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.CharacterMiniSelector = registerVal4
local function __FUNC_C20_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CharacterMiniSelector)
	registerVal2.id = "CharacterMiniSelector"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 4.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal3:setLeftRight(false, false, -598.000000, 598.000000)
	registerVal3:setTopBottom(true, true, 5.000000, -5.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setWidgetType(CoD.CharacterMiniSelectorItem)
	registerVal3:setHorizontalCount(50.000000)
	registerVal3:setSpacing(4.000000)
	local function __FUNC_1505_(arg0, arg2)
		SelectItemIfPossible(registerVal2, arg0, arg1, arg2)
		PlaySoundSetSound(registerVal2, "list_up")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("mouse_left_click", __FUNC_1505_)
	registerVal2:addElement(registerVal3)
	registerVal2.characterGrid = registerVal3
	local registerVal4 = CoD.CharacterMiniSelectorLeftButton.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 30.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.leftButton = registerVal4
	local registerVal5 = CoD.CharacterMiniSelectorRightButton.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -30.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.rightButton = registerVal5
	local registerVal6 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 30.000000, -30.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FETitleNumBrdr0 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_15E3_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.characterGrid:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.leftButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.rightButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FETitleNumBrdr0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_15E3_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_17F3_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.characterGrid:setLeftRight(true, true, 44.000000, -44.000000)
		registerVal2.characterGrid:setTopBottom(true, true, 5.000000, -5.000000)
		registerVal2.characterGrid:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.leftButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.rightButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FETitleNumBrdr0:setLeftRight(true, true, 30.000000, -30.000000)
		registerVal2.FETitleNumBrdr0:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_17F3_
	registerVal7.Visible = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Visible"
	local function __FUNC_1AD6_(arg0, arg2, arg3)
		local registerVal3 = IsPC()
		if registerVal3 then
			registerVal3 = IsGamepad(arg1)
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1AD6_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	if registerVal2.m_eventHandlers.input_source_changed then
		local function __FUNC_1B45_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.input_source_changed(arg1, arg2)
		end

		registerVal2:registerEventHandler("input_source_changed", __FUNC_1B45_)
	else
		registerVal2:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "LastInput")
	local function __FUNC_1BCF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1BCF_)
	local function __FUNC_1CEB_(arg0)
		arg0.characterGrid:close()
		arg0.leftButton:close()
		arg0.rightButton:close()
		arg0.FETitleNumBrdr0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1CEB_)
	if __FUNC_6F5_ then
		__FUNC_6F5_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.CharacterMiniSelector.new = __FUNC_C20_

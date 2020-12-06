-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_CardWidget")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.CallingCards.CallingCards_BlackMarket_Profiler")
local function __FUNC_354_(arg0)
	local registerVal2, registerVal3, registerVal4 = ipairs(CoD.BlackMarketUtility.CommonCallingCardsTable)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		if value6.isBMClassified then
			local registerVal9 = CoD.BlackMarketUtility.ClassifiedName()
			registerVal9 = Engine.Localize("MPUI_BLACKMARKET_ITEM_CLASSIFIED_DESC", "MENU_CALLING_CARD")
		end
		local registerVal11 = {}
		local registerVal12 = {}
		local registerVal13 = Engine.Localize(registerVal9)
		registerVal12.title = registerVal13
		registerVal12.description = registerVal9
		registerVal13 = {}
		registerVal13.rarity = value6.rarity
		registerVal13.duplicateCount = value6.duplicateCount
		registerVal12.rarityType = registerVal13
		registerVal12.iconId = value6.iconId
		registerVal12.isBMClassified = value6.isBMClassified
		registerVal11.models = registerVal12
		table.insert({}, registerVal11)
	end
	table.sort({}, CoD.BlackMarketUtility.SortUnlocksModelIconId)
	return {}
end

local registerVal1 = DataSourceHelpers.ListSetup("CallingCardsBlackMarket", __FUNC_354_, true)
DataSources.CallingCardsBlackMarket = registerVal1
registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Stickerbook_BlackMarket = registerVal1
function CoD.CallingCards_Stickerbook_BlackMarket.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_Stickerbook_BlackMarket)
	registerVal2.id = "CallingCards_Stickerbook_BlackMarket"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 10.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 10.000000, 750.000000)
	registerVal3:setTopBottom(true, false, 16.000000, 496.000000)
	registerVal3:setDataSource("CallingCardsBlackMarket")
	registerVal3:setWidgetType(CoD.CallingCards_CardWidget)
	registerVal3:setHorizontalCount(3.000000)
	registerVal3:setVerticalCount(7.000000)
	registerVal3:setSpacing(10.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	local function __FUNC_E71_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:linkToElementModel(registerVal3, "isBMClassified", true, __FUNC_E71_)
	local function __FUNC_1033_(arg2, arg3)
		local registerVal3 = IsElementInState(arg2, "New")
		if registerVal3 then
			CallingCards_SetOld(arg2, arg1)
			UpdateSelfElementState(arg0, arg2, arg1)
		end
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_1033_)
	local function __FUNC_1104_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_1104_)
	local function __FUNC_1297_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_1297_)
	local function __FUNC_1366_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal4 then
			CallingCards_SetPlayerBackground(arg1, arg0, arg2)
			PlaySoundSetSound(registerVal2, "action")
			return true
		end
	end

	local function __FUNC_1463_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		if not registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1366_, __FUNC_1463_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardGrid = registerVal3
	local registerVal4 = CoD.CallingCards_BlackMarket_Profiler.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -379.000000, -29.000000)
	registerVal4:setTopBottom(true, true, 14.000000, -24.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCardsBlackMarketProfiler = registerVal4
	local function __FUNC_15B8_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal3, nil, false, __FUNC_15B8_)
	registerVal3.id = "CallingCardGrid"
	local function __FUNC_160A_(arg0, arg1)
		local registerVal2 = arg0.CallingCardGrid:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_160A_)
	local function __FUNC_1713_(arg0)
		arg0.CallingCardGrid:close()
		arg0.CallingCardsBlackMarketProfiler:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1713_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


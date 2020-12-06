-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_BlackMarket_Set_Widget")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local function __FUNC_302_(arg0)
	local function __FUNC_761_(arg0, arg1, arg2, arg3, arg4)
		CoD.perController[arg2].BlackMarketUtility_CurrentCallingCardSetName = arg3.setName
		local registerVal5 = OpenPopup(arg4, "CallingCards_BlackMarket", arg2)
		registerVal5.callingCardShowcaseSlot = arg4.callingCardShowcaseSlot
	end

	local registerVal3, registerVal4, registerVal5 = CoD.BlackMarketUtility.BuildCallingCardSets(arg0)
	if 0.000000 < registerVal3 then
	end
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.title = ""
	registerVal10.setCount = registerVal4
	registerVal10.rarityType.rarity = "MPUI_BM_COMMON"
	registerVal10.iconId = 0.000000
	registerVal10.isSetBMClassified = false
	registerVal10.isSetContractClassified = false
	registerVal10.newCount = registerVal5
	registerVal9.models = registerVal10
	registerVal10 = {}
	registerVal10.commonSet = true
	registerVal10.action = __FUNC_761_
	registerVal10.actionParam = {}
	registerVal9.properties = registerVal10
	table.insert({}, registerVal9)
	local registerVal7, registerVal8, registerVal9 = pairs(CoD.BlackMarketUtility.CallingCardsTable)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		local registerVal13 = BlackMarketHideMasterCallingCards()
		if value11.isBMClassified == false and not value11.isContractClassified and not registerVal13 then
		end
		local registerVal15 = {}
		local registerVal16 = {}
		registerVal16.title = (value11.title .. "_SET")
		registerVal16.setCount = value11.setCount
		registerVal16.rarityType.rarity = value11.rarity
		registerVal16.iconId = value11.masterCardIconId
		registerVal16.isSetBMClassified = value11.isSetBMClassified
		registerVal16.isSetContractClassified = value11.isSetContractClassified
		registerVal16.newCount = value11.newCount
		registerVal15.models = registerVal16
		registerVal16 = {}
		registerVal16.action = __FUNC_761_
		local registerVal17 = {}
		registerVal17.setName = value11.name
		registerVal16.actionParam = registerVal17
		registerVal15.properties = registerVal16
		table.insert({}, registerVal15)
	end
	return {}
end

local registerVal1 = DataSourceHelpers.ListSetup("CallingCardSetBlackMarket", __FUNC_302_, true)
DataSources.CallingCardSetBlackMarket = registerVal1
registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Set_BlackMarket = registerVal1
function CoD.CallingCards_Set_BlackMarket.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_Set_BlackMarket)
	registerVal2.id = "CallingCards_Set_BlackMarket"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 10.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(false, false, -463.000000, 463.000000)
	registerVal3:setTopBottom(true, false, 36.000000, 461.000000)
	registerVal3:setWidgetType(CoD.CallingCards_BlackMarket_Set_Widget)
	registerVal3:setHorizontalCount(3.000000)
	registerVal3:setVerticalCount(3.000000)
	registerVal3:setSpacing(10.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	registerVal3:setDataSource("CallingCardSetBlackMarket")
	local function __FUNC_F88_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isSetBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:linkToElementModel(registerVal3, "isSetBMClassified", true, __FUNC_F88_)
	local function __FUNC_114E_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isSetContractClassified"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:linkToElementModel(registerVal3, "isSetContractClassified", true, __FUNC_114E_)
	local function __FUNC_1318_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_1318_)
	local function __FUNC_14AB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_14AB_)
	local function __FUNC_157A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isSetBMClassified")
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isSetContractClassified")
		if not registerVal4 and not registerVal4 then
			CopyElementToPerControllerTable(arg2, arg0, "currentCallingCardBlackMarketElement")
			ProcessListAction(registerVal2, arg0, arg2)
			PlaySoundSetSound(registerVal2, "action")
			return true
		end
	end

	local function __FUNC_1713_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isSetBMClassified")
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isSetContractClassified")
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_157A_, __FUNC_1713_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardSet = registerVal3
	registerVal3.id = "CallingCardSet"
	local function __FUNC_18A8_(arg0, arg1)
		local registerVal2 = arg0.CallingCardSet:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_18A8_)
	local function __FUNC_19B2_(arg0)
		arg0.CallingCardSet:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_19B2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_BlackMarketMasterCardWidget")
require("ui.uieditor.widgets.CallingCards.CallingCardsSet_BlackMarketWidget")
require("ui.uieditor.widgets.CallingCards.CallingCards_BlackMarket_Profiler")
local registerVal1 = {}
local function __FUNC_3F5_(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.GetModel(registerVal2, "CallingCardsBlackMarketMasterCard")
	if registerVal1 == nil then
		local registerVal3 = Engine.GetModelForController(arg0)
		registerVal2 = Engine.CreateModel(registerVal3, "CallingCardsBlackMarketMasterCard")
		Engine.CreateModel(registerVal2, "title")
		Engine.CreateModel(registerVal2, "description")
		Engine.CreateModel(registerVal2, "rarityType.rarity")
		Engine.CreateModel(registerVal2, "iconId")
		Engine.CreateModel(registerVal2, "isBMClassified")
		Engine.CreateModel(registerVal2, "isContractClassified")
		Engine.CreateModel(registerVal2, "isSideBet")
	end
	return registerVal2
end

registerVal1.getModel = __FUNC_3F5_
local function __FUNC_66E_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.GetModel(registerVal3, "CallingCardsBlackMarketMasterCard")
	if registerVal2 == nil then
		registerVal3 = DataSources.CallingCardsBlackMarketMasterCard.getModel(arg0)
	end
	if not arg1 or arg1.isContractClassified then
		local registerVal5 = CoD.BlackMarketUtility.ClassifiedName()
		registerVal5 = Engine.Localize("MPUI_BM_MASTER_CALLING_CARD_DESC", arg1.totalSetCount)
	end
	local registerVal6 = Engine.GetModel(registerVal3, "title")
	Engine.SetModelValue(registerVal6, Engine.Localize(registerVal5))
	registerVal6 = Engine.GetModel(registerVal3, "description")
	Engine.SetModelValue(registerVal6, registerVal5)
	registerVal6 = Engine.GetModel(registerVal3, "rarityType.rarity")
	Engine.SetModelValue(registerVal6, arg1.rarity)
	registerVal6 = Engine.GetModel(registerVal3, "iconId")
	Engine.SetModelValue(registerVal6, arg1.masterCardIconId)
	registerVal6 = Engine.GetModel(registerVal3, "isBMClassified")
	Engine.SetModelValue(registerVal6, arg1.isBMClassified)
	registerVal6 = Engine.GetModel(registerVal3, "isContractClassified")
	Engine.SetModelValue(registerVal6, arg1.isContractClassified)
	registerVal6 = Engine.GetModel(registerVal3, "isSideBet")
	Engine.SetModelValue(registerVal6, IsViewingSideBetCallingCardSet(arg0))
end

registerVal1.setModelValues = __FUNC_66E_
DataSources.CallingCardsBlackMarketMasterCard = registerVal1
local function __FUNC_B57_(arg0)
	local registerVal4 = CoD.BlackMarketUtility.GetCallingCardSetTable(CoD.perController[arg0].BlackMarketUtility_CurrentCallingCardSetName)
	if CoD.perController[arg0].BlackMarketUtility_CurrentCallingCardSetName and registerVal4 then
	end
	registerVal4, registerVal5, registerVal6 = ipairs(registerVal4.callingCards)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal10 = Engine.Localize("MPUI_BM_SET_PIECE_X_OF_Y", index7, registerVal4.totalSetCount)
		if not {} or value8.isContractClassified then
			local registerVal11 = CoD.BlackMarketUtility.ClassifiedName()
			registerVal11 = IsViewingSideBetCallingCardSet(arg0)
			if registerVal11 then
				registerVal11 = Engine.Localize("CONTRACT_SIDE_BET_COMPLETE_PREVIOUS_FIRST")
			else
				registerVal11 = IsViewingSpecialContractCallingCardSet(arg0)
				if registerVal11 then
					registerVal11 = Engine.Localize("CONTRACT_CALLING_CARD_CLASSIFIED_DESC")
				else
					registerVal11 = Engine.Localize("MPUI_BLACKMARKET_ITEM_CLASSIFIED_DESC", "MENU_CALLING_CARD")
				else
					registerVal11 = IsViewingSideBetCallingCardSet(arg0)
					if registerVal11 then
					end
				end
			end
		end
		local registerVal13 = {}
		local registerVal14 = {}
		local registerVal15 = Engine.Localize(registerVal11)
		registerVal14.title = registerVal15
		registerVal14.description = (value8.description .. "

" .. registerVal11)
		registerVal15 = {}
		registerVal15.rarity = value8.rarity
		registerVal15.duplicateCount = value8.duplicateCount
		registerVal14.rarityType = registerVal15
		registerVal14.iconId = value8.iconId
		registerVal14.isBMClassified = value8.isBMClassified
		registerVal14.isContractClassified = value8.isContractClassified
		registerVal14.isLocked = value8.isLocked
		registerVal13.models = registerVal14
		table.insert({}, registerVal13)
	end
	registerVal4 = LuaUtils.IsTableEmpty(registerVal4)
	if not registerVal4 then
		DataSources.CallingCardsBlackMarketMasterCard.setModelValues(arg0, registerVal4)
	end
	return {}
end

registerVal1 = DataSourceHelpers.ListSetup("CallingCardsBlackMarketCardSet", __FUNC_B57_, true)
DataSources.CallingCardsBlackMarketCardSet = registerVal1
registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Stickerbook_Set_BlackMarket = registerVal1
function CoD.CallingCards_Stickerbook_Set_BlackMarket.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_Stickerbook_Set_BlackMarket)
	registerVal2.id = "CallingCards_Stickerbook_Set_BlackMarket"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CallingCards_BlackMarketMasterCardWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 8.000000, 758.000000)
	registerVal3:setTopBottom(false, true, -121.000000, -23.000000)
	local function __FUNC_1CB2_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "CallingCardsBlackMarketMasterCard", nil, __FUNC_1CB2_)
	local function __FUNC_1D02_(arg0)
		registerVal3.MasterCallingCardIcon:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "CallingCardsBlackMarketMasterCard", nil, __FUNC_1D02_)
	local function __FUNC_1D7D_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:linkToElementModel(registerVal3, "isBMClassified", true, __FUNC_1D7D_)
	local function __FUNC_1F3F_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isContractClassified"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:linkToElementModel(registerVal3, "isContractClassified", true, __FUNC_1F3F_)
	local function __FUNC_2105_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		registerVal3 = IsElementInState(arg2, "New")
		if registerVal3 then
			CallingCards_SetOld(arg2, arg1)
			UpdateSelfElementState(arg0, arg2, arg1)
			SetElementModelToFocusedElementModel(registerVal2, arg2, "CallingCardsBlackMarketProfiler")
		else
			registerVal3 = IsElementInState(arg2, "Invisible")
			if not registerVal3 then
				SetElementModelToFocusedElementModel(registerVal2, arg2, "CallingCardsBlackMarketProfiler")
			else
				CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("gain_focus", __FUNC_2105_)
	local function __FUNC_23E9_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_23E9_)
	local function __FUNC_24BA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isContractClassified")
		if not registerVal4 and not registerVal4 then
			CallingCards_SetPlayerBackground(arg1, arg0, arg2)
			PlaySoundSetSound(registerVal2, "action")
			return true
		end
	end

	local function __FUNC_25F1_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isContractClassified")
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_24BA_, __FUNC_25F1_, false)
	registerVal2:addElement(registerVal3)
	registerVal2.MasterCallingCardWidget = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 13.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 10.000000, 756.000000)
	registerVal4:setTopBottom(true, false, 16.000000, 391.000000)
	registerVal4:setWidgetType(CoD.CallingCardsSet_BlackMarketWidget)
	registerVal4:setHorizontalCount(3.000000)
	registerVal4:setVerticalCount(4.000000)
	registerVal4:setSpacing(13.000000)
	registerVal4:setDataSource("CallingCardsBlackMarketCardSet")
	local function __FUNC_2782_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isBMClassified"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:linkToElementModel(registerVal4, "isBMClassified", true, __FUNC_2782_)
	local function __FUNC_2943_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isLocked"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:linkToElementModel(registerVal4, "isLocked", true, __FUNC_2943_)
	local function __FUNC_2AFD_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isContractClassified"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:linkToElementModel(registerVal4, "isContractClassified", true, __FUNC_2AFD_)
	local function __FUNC_2CC5_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		SetElementModelToFocusedElementModel(registerVal2, arg2, "CallingCardsBlackMarketProfiler")
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_2CC5_)
	local function __FUNC_2EC2_(arg2, arg3)
		local registerVal3 = IsElementInState(arg2, "New")
		if registerVal3 then
			CallingCards_SetOld(arg2, arg1)
			UpdateSelfElementState(arg0, arg2, arg1)
			SetElementModelToFocusedElementModel(registerVal2, arg2, "CallingCardsBlackMarketProfiler")
		else
			SetElementModelToFocusedElementModel(registerVal2, arg2, "CallingCardsBlackMarketProfiler")
		end
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_2EC2_)
	local function __FUNC_3017_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_3017_)
	local function __FUNC_30E6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isLocked")
		registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isContractClassified")
		if not registerVal4 and not registerVal4 and not registerVal4 then
			CallingCards_SetPlayerBackground(arg1, arg0, arg2)
			PlaySoundSetSound(registerVal2, "action")
			return true
		end
	end

	local function __FUNC_324B_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isBMClassified")
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isLocked")
		registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isContractClassified")
		if not registerVal3 and not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_30E6_, __FUNC_324B_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCardGrid = registerVal4
	local registerVal5 = CoD.CallingCards_BlackMarket_Profiler.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -379.000000, -29.000000)
	registerVal5:setTopBottom(true, true, 14.000000, -24.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.CallingCardsBlackMarketProfiler = registerVal5
	local registerVal6 = {}
	registerVal6.up = registerVal4
	registerVal3.navigation = registerVal6
	registerVal6 = {}
	registerVal6.down = registerVal3
	registerVal4.navigation = registerVal6
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "MasterCallingCardWidget"
	registerVal4.id = "CallingCardGrid"
	local function __FUNC_3408_(arg0, arg1)
		local registerVal2 = arg0.CallingCardGrid:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_3408_)
	local function __FUNC_3513_(arg0)
		arg0.MasterCallingCardWidget:close()
		arg0.CallingCardGrid:close()
		arg0.CallingCardsBlackMarketProfiler:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3513_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


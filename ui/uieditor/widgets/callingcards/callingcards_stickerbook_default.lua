-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CallingCards_CardWidget")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Challenges.Challenges_CallingCardProfiler")
local function __FUNC_347_(arg0)
	local registerVal2 = Engine.GetBackgroundsForCategoryName(arg0, "default")
	local function __FUNC_A22_(arg0, arg1)
		if arg0.models.isPackage ~= arg1.models.isPackage then
			return arg0.models.isPackage
		end
		if arg0.models.isPackage and arg0.properties.packageSortIndex and arg1.properties.packageSortIndex then
			if arg0.properties.packageSortIndex >= arg1.properties.packageSortIndex then
			end
			return true
		end
		if arg0.models.isLocked ~= arg1.models.isLocked then
			return arg1.models.isLocked
		end
		if arg0.models.iconId >= arg1.models.iconId then
		end
		return true
	end

	local function __FUNC_C4F_(arg0, arg1, arg2, arg3, arg4)
		CallingCards_SetPlayerBackground(arg4, arg1, arg2)
	end

	local function __FUNC_CB6_(arg0)
		if arg0.isContractBg then
		end

	local registerVal6, registerVal7, registerVal8 = ipairs(registerVal2)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		local registerVal11 = Engine.Localize(value10.description)
		if value10.isContractBg and value10.isBGLocked then
			local registerVal13 = CoD.BlackMarketUtility.ClassifiedName()
			registerVal13 = Engine.Localize("MPUI_CONTRACT_ITEM_CLASSIFIED_DESC", "MENU_CALLING_CARD")
		end
		registerVal13, registerVal14, registerVal15 = ipairs(CoD.SpecialCallingCards)
		for index16,value17 in registerVal13, registerVal14, registerVal15 do
			if value10.description == value17.backgroundDescription then
				local registerVal18 = Engine.GetInventoryItemQuantity(arg0, value17.itemId)
				if {} or registerVal18 == 0.000000 then
					value10.isBGLocked = true
				end
			end
		end
		if value10.isBGLocked then
			registerVal13 = IsLive()
			if value10.isContractBg and registerVal13 then
				registerVal15 = {}
				local registerVal16 = {}
				registerVal16.title = registerVal13
				registerVal16.description = registerVal13
				registerVal16.iconId = value10.id
				registerVal16.isLocked = value10.isBGLocked
				registerVal16.isContractBg = value10.isContractBg
				registerVal16.isPackage = false
				registerVal15.models = registerVal16
				registerVal16 = {}
				registerVal16.action = __FUNC_C4F_
				registerVal15.properties = registerVal16
				table.insert({}, registerVal15)
			end
		end
	end
	registerVal6 = InFrontend()
	registerVal6 = AreCodPointsEnabled(arg0)
	registerVal6, registerVal7, registerVal8 = ipairs(CoD.StoreUtility.CWLPackages)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		registerVal11 = CoD.StoreUtility.IsCWLV2Package(value10)
		registerVal11 = CoD.StoreUtility.IsInventoryItemVisible(arg0, value10)
		registerVal11 = CoD.StoreUtility.IsInventoryItemPurchased(arg0, value10)
		if not registerVal11 and registerVal11 and not registerVal11 then
			registerVal11 = CoD.StoreUtility.GetCWLPackageCallingCardModel(arg0, value10)
			registerVal11.properties.packageSortIndex = index9
			table.insert({}, registerVal11)
		end
	end
	table.sort({}, __FUNC_A22_)
	return {}
end

local registerVal1 = DataSourceHelpers.ListSetup("CallingCardsDefault", __FUNC_347_, true)
DataSources.CallingCardsDefault = registerVal1
registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_Stickerbook_Default = registerVal1
function CoD.CallingCards_Stickerbook_Default.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_Stickerbook_Default)
	registerVal2.id = "CallingCards_Stickerbook_Default"
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
	registerVal3:setWidgetType(CoD.CallingCards_CardWidget)
	registerVal3:setHorizontalCount(3.000000)
	registerVal3:setVerticalCount(7.000000)
	registerVal3:setSpacing(10.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	registerVal3:setDataSource("CallingCardsDefault")
	local function __FUNC_1815_(arg2, arg3)
		local registerVal3 = IsElementInState(arg2, "New")
		if registerVal3 then
			CallingCards_SetOld(arg2, arg1)
			UpdateSelfElementState(arg0, arg2, arg1)
		end
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_1815_)
	local function __FUNC_18E8_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_18E8_)
	local function __FUNC_1A7B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_1A7B_)
	local function __FUNC_1B4A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Locked")
		registerVal4 = IsElementInState(arg0, "ContractClassified")
		if not registerVal4 and not registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			PlaySoundSetSound(registerVal2, "action")
			return true
		end
	end

	local function __FUNC_1C5C_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "Locked")
		registerVal3 = IsElementInState(arg0, "ContractClassified")
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1B4A_, __FUNC_1C5C_, false)
	local function __FUNC_1DD8_(arg0)
		UpdateDataSource(registerVal2, registerVal3, arg1)
		CallingCards_SetOld(registerVal3, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "PerController", "StoreRoot.InventoryItemPurchaseSuccessful", __FUNC_1DD8_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "ContractClassified"
	local function __FUNC_1E63_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isLocked")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isContractBg")
		end
		return registerVal3
	end

	registerVal7.condition = __FUNC_1E63_
	local registerVal8 = {}
	registerVal8.stateName = "Locked"
	local function __FUNC_1F06_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_1F06_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_1F51_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "isBMClassified", true, __FUNC_1F51_)
	local function __FUNC_2074_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "isLocked", true, __FUNC_2074_)
	local function __FUNC_2192_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isContractBg"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "isContractBg", true, __FUNC_2192_)
	local function __FUNC_22B2_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPackage"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "isPackage", true, __FUNC_22B2_)
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardGrid = registerVal3
	local registerVal4 = CoD.Challenges_CallingCardProfiler.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -379.000000, -29.000000)
	registerVal4:setTopBottom(true, true, 14.000000, -22.000000)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "ContractClassified"
	local function __FUNC_23CF_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isLocked")
		if registerVal3 then
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "isContractBg")
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_23CF_
	local registerVal9 = {}
	registerVal9.stateName = "Locked"
	local function __FUNC_2472_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_2472_
	local registerVal10 = {}
	registerVal10.stateName = "LockedOneTier"
	local function __FUNC_24BD_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal10.condition = __FUNC_24BD_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_2509_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isBMClassified"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "isBMClassified", true, __FUNC_2509_)
	local function __FUNC_262C_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "isLocked", true, __FUNC_262C_)
	local function __FUNC_274A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isContractBg"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "isContractBg", true, __FUNC_274A_)
	local function __FUNC_286A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideProgress"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "hideProgress", true, __FUNC_286A_)
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCardProfiler = registerVal4
	local function __FUNC_298A_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal3, nil, false, __FUNC_298A_)
	local registerVal5 = {}
	registerVal5.right = registerVal4
	registerVal3.navigation = registerVal5
	registerVal5 = {}
	registerVal5.left = registerVal3
	registerVal4.navigation = registerVal5
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "CallingCardGrid"
	registerVal4.id = "CallingCardProfiler"
	local function __FUNC_29DA_(arg0, arg1)
		local registerVal2 = arg0.CallingCardGrid:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_29DA_)
	local function __FUNC_2AE3_(arg0)
		arg0.CallingCardGrid:close()
		arg0.CallingCardProfiler:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2AE3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


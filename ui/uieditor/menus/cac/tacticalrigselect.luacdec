-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.SelectMenuWidgetNew")
require("ui.uieditor.menus.CAC.Popups.OutOfUnlockTokens")
require("ui.uieditor.widgets.CPSystems.TacticalMode.GridItemTacticalRig")
require("ui.uieditor.widgets.CAC.cac_ElemsSideListBoxes")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.CAC.GridItemUpgradeInfo")
local function __FUNC_39C_(arg0, arg1)
	if CoD.isSafehouse and CoD.perController[arg0].everythingUnlocked and arg1 == "cybercom_emergencyreserve" then
		return false
	end
	return true
end

local function __FUNC_4A0_(arg0, arg1)
	local registerVal2 = IsCampaign()
	if registerVal2 then
		arg0.disableBlur = true
	end
	CoD.GenericCACSelectionPreLoadFunc(arg0, arg1, "cybercom_tacrig1")
	local registerVal3, registerVal4, registerVal5 = ipairs(CoD.UnlockablesTable.cybercom_tacrig2)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		local registerVal8 = Engine.GetModelValue(Engine.GetModel(value7, "itemIndex"))
		local registerVal9 = Engine.GetModelValue(Engine.GetModel(value7, "ref"))
		local registerVal10 = LUI.endswith(registerVal9, "_pro")
		if registerVal10 then
			local registerVal13 = string.len("_pro")
			registerVal10 = string.sub(registerVal9, 1.000000, -(registerVal13 + 1.000000))
			{}[registerVal10] = registerVal8
		end
	end
	registerVal3, registerVal4, registerVal5 = ipairs(CoD.UnlockablesTable.cybercom_tacrig1)
	for index6,value7 in registerVal3, registerVal4, registerVal5 do
		registerVal8 = Engine.GetModelValue(Engine.GetModel(value7, "itemIndex"))
		registerVal9 = Engine.GetModelValue(Engine.GetModel(value7, "ref"))
		registerVal10 = LUI.endswith(registerVal9, "_pro")
		if not registerVal10 and {}[registerVal9] then
			registerVal10 = __FUNC_39C_(arg1, registerVal9)
			if registerVal10 == false then
				Engine.SetItemRestrictionState(registerVal8, Enum.ItemRestrictionState.ITEM_RESTRICTION_STATE_RESTRICTED)
				table.insert(CoD.perController[arg1].restrictedItemIndices, registerVal8)
			end
			local registerVal11 = Engine.CreateModel(value7, "upgradeItemIndex")
			Engine.SetModelValue(registerVal11, {}[registerVal9])
		end
	end
end

local function __FUNC_A28_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("TacticalRigSelect")
	if __FUNC_4A0_ then
		__FUNC_4A0_(registerVal1, arg0)
	end
	registerVal1.soundSet = "CAC_LethalGrenade"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "TacticalRigSelect.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 64.000000, 370.000000)
	registerVal3:setTopBottom(true, false, 78.000000, 667.000000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.LeftPanel = registerVal3
	local registerVal4 = CoD.SelectMenuWidgetNew.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4.background.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_TACTICAL_RIG_CAPS"))
	registerVal4.selectionInfoWidget.previewImage.image:setImage(RegisterImage("uie_default_black_0_alpha_0"))
	registerVal4.selectionInfoWidget.previewImage.image:setMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
	registerVal4.selectionInfoWidget.itemName.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize("WEAPON_AR_STANDARD"))
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "GridLayout"
	local function __FUNC_1B7C_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal8.condition = __FUNC_1B7C_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal1:addElement(registerVal4)
	registerVal1.selectMenuWidget = registerVal4
	local function __FUNC_1BC9_(arg0)
		local registerVal1 = Engine.GetModelValue(Engine.GetModel(arg0, "loadoutSlot"))
		if registerVal1 ~= "cybercom_tacrig1" then
		end
		return true
	end

	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 7.000000, 0.000000, __FUNC_1BC9_, true, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 77.000000, 357.000000)
	registerVal5:setTopBottom(true, false, 136.000000, 633.000000)
	registerVal5:setDataSource("Unlockables")
	registerVal5:setWidgetType(CoD.GridItemTacticalRig)
	registerVal5:setVerticalCount(7.000000)
	registerVal5:setSpacing(7.000000)
	local function __FUNC_1CA0_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "itemIndex"
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal5, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal5:linkToElementModel(registerVal5, "itemIndex", true, __FUNC_1CA0_)
	local function __FUNC_1EC6_(arg1, arg2)
		SetCACItemAsOld(arg1, arg0)
		UpdateSelfElementState(registerVal1, arg1, arg0)
		FocusClassItem(registerVal1, arg1, arg0)
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_1EC6_)
	local function __FUNC_1F81_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_1F81_)
	local function __FUNC_217B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_217B_)
	local function __FUNC_224A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
		registerVal4 = IsCACItemPurchased(arg0, arg2)
		registerVal4 = IsCACHaveTokens(arg2)
		if not registerVal4 and not registerVal4 and registerVal4 then
			OpenUnlockClassItemDialog(arg1, arg0, arg2)
			return true
		else
			registerVal4 = IsCACItemPurchased(arg0, arg2)
			registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
			registerVal4 = IsCACHaveTokens(arg2)
			if not registerVal4 and not registerVal4 and not registerVal4 then
				SetUnlockConfirmationInfo(arg0, arg2)
				OpenOverlay(registerVal1, "OutOfUnlockTokens", arg2, "", "")
				return true
			else
				registerVal4 = IsCACItemLocked(arg1, arg0, arg2)
				registerVal4 = IsCACItemPurchased(arg0, arg2)
				registerVal4 = IsCACItemBanned(arg1, arg0, arg2)
				if not registerVal4 and registerVal4 and not registerVal4 then
					SetClassItem(registerVal1, arg0, arg2)
					return true
				else
					registerVal4 = IsCACItemBanned(arg1, arg0, arg2)
					if registerVal4 then
						OpenGenericSmallPopup(arg1, arg2, "MENU_TACTICAL_RIG_CAPS", "MENU_TRAINING_SIM_NOTAVAILABLE", "t7_icon_connect_overlays_bkg", "MENU_OK", "", "")
						return true
					end
				end
			end
		end
	end

	local function __FUNC_25B3_(arg0, arg1, arg2)
		local registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
		registerVal3 = IsCACItemPurchased(arg0, arg2)
		registerVal3 = IsCACHaveTokens(arg2)
		if not registerVal3 and not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsCACItemPurchased(arg0, arg2)
			registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
			registerVal3 = IsCACHaveTokens(arg2)
			if not registerVal3 and not registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			else
				registerVal3 = IsCACItemLocked(arg1, arg0, arg2)
				registerVal3 = IsCACItemPurchased(arg0, arg2)
				registerVal3 = IsCACItemBanned(arg1, arg0, arg2)
				if not registerVal3 and registerVal3 and not registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
					return true
				else
					registerVal3 = IsCACItemBanned(arg1, arg0, arg2)
					if registerVal3 then
						CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_RESTRICTED")
						return true
					end
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_224A_, __FUNC_25B3_, false)
	local function __FUNC_2922_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsCACHaveTokens(arg2)
		registerVal4 = IsCACItemUpgradable(arg1, arg0, arg2)
		if not registerVal4 and registerVal4 then
			SetUpgradeConfirmationInfo(arg0, arg2)
			OpenOverlay(registerVal1, "OutOfUnlockTokens", arg2, "", "")
			return true
		else
			registerVal4 = IsCACItemUpgradable(arg1, arg0, arg2)
			if registerVal4 then
				OpenUpgradeClassItemDialog(arg1, arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_2AA4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_UPGRADE")
		local registerVal3 = IsCACHaveTokens(arg2)
		registerVal3 = IsCACItemUpgradable(arg1, arg0, arg2)
		if not registerVal3 and registerVal3 then
			return true
		else
			registerVal3 = IsCACItemUpgradable(arg1, arg0, arg2)
			if registerVal3 then
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "U", __FUNC_2922_, __FUNC_2AA4_, false)
	registerVal1:addElement(registerVal5)
	registerVal1.selectionList = registerVal5
	local registerVal6 = CoD.cac_ElemsSideListBoxes.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 18.870000, 71.870000)
	registerVal6:setTopBottom(true, false, -12.000000, 658.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.cacElemsSideListBoxes0 = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal7:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal7:setRGB(0.900000, 0.900000, 0.900000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal7)
	registerVal1.CategoryListLine = registerVal7
	registerVal8 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(false, true, -65.000000, 0.000000)
	local function __FUNC_2C3C_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("menu_loaded", __FUNC_2C3C_)
	registerVal1:addElement(registerVal8)
	registerVal1.feFooterContainer = registerVal8
	local registerVal9 = CoD.GridItemUpgradeInfo.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 401.660000, 642.820000)
	registerVal9:setTopBottom(true, false, 570.310000, 643.500000)
	registerVal1:addElement(registerVal9)
	registerVal1.GridItemUpgradeInfo = registerVal9
	local function __FUNC_2CD1_(arg1)
		registerVal4:setModel(arg1, arg0)
	end

	registerVal4:linkToElementModel(registerVal5, nil, false, __FUNC_2CD1_)
	local function __FUNC_2D22_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.selectionInfoWidget.itemName.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal5, "name", true, __FUNC_2D22_)
	local function __FUNC_2E64_(arg1)
		registerVal9:setModel(arg1, arg0)
	end

	registerVal9:linkToElementModel(registerVal5, nil, false, __FUNC_2E64_)
	local function __FUNC_2EB6_(arg1, arg2)
		SetElementStateByElementName(registerVal1, "selectMenuWidget", arg0, "Update")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_2EB6_)
	local function __FUNC_2F89_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2FDC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2F89_, __FUNC_2FDC_, false)
	registerVal5.id = "selectionList"
	registerVal8:setModel(registerVal1.buttonModel, arg0)
	local registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	local registerVal10 = registerVal1:restoreState()
	if not registerVal10 then
		registerVal12 = {}
		registerVal12.name = "gain_focus"
		registerVal12.controller = arg0
		registerVal1.selectionList:processEvent(registerVal12)
	end
	local function __FUNC_30D9_(arg1)
		arg1.LeftPanel:close()
		arg1.selectMenuWidget:close()
		arg1.selectionList:close()
		arg1.cacElemsSideListBoxes0:close()
		arg1.feFooterContainer:close()
		arg1.GridItemUpgradeInfo:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "TacticalRigSelect.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_30D9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.TacticalRigSelect = __FUNC_A28_

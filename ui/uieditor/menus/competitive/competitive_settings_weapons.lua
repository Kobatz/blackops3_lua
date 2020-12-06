-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_Background")
require("ui.uieditor.widgets.Controls.Slider_Small")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Competitive.Competitive_Settings_SelectedItemInfo")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.GameSettings.GameSettings_TabBar")
local registerVal0 = {}
local registerVal1 = {}
local registerVal2 = {}
registerVal2.weapon_smg = true
registerVal1.weapon_category = registerVal2
registerVal1.name = "MPUI_WEAPON_SMG_ABBR_CAPS_WITH_S"
registerVal1.tabWidget = "Competitive_Settings_Weapons_SMG"
registerVal2 = {}
local registerVal3 = {}
registerVal3.weapon_assault = true
registerVal2.weapon_category = registerVal3
registerVal2.name = "MPUI_WEAPON_ASSAULT_CAPS"
registerVal2.tabWidget = "Competitive_Settings_Weapons_AR"
registerVal3 = {}
local registerVal4 = {}
registerVal4.weapon_cqb = true
registerVal3.weapon_category = registerVal4
registerVal3.name = "MPUI_CQBS_CAPS"
registerVal3.tabWidget = "Competitive_Settings_Weapons_CQB"
registerVal4 = {}
local registerVal5 = {}
registerVal5.weapon_lmg = true
registerVal4.weapon_category = registerVal5
registerVal4.name = "MPUI_WEAPON_LMG_ABBR_CAPS_WITH_S"
registerVal4.tabWidget = "Competitive_Settings_Weapons_LMG"
registerVal5 = {}
local registerVal6 = {}
registerVal6.weapon_sniper = true
registerVal5.weapon_category = registerVal6
registerVal5.name = "MPUI_WEAPON_SNIPER_CAPS"
registerVal5.tabWidget = "Competitive_Settings_Weapons_SNIPER"
registerVal6 = {}
local registerVal7 = {}
registerVal7.weapon_pistol = true
registerVal7.weapon_launcher = true
registerVal7.weapon_special = true
registerVal7.weapon_knife = true
registerVal6.weapon_category = registerVal7
registerVal6.name = "MPUI_WEAPON_SECONDARIES_CAPS"
registerVal6.tabWidget = "Competitive_Settings_Weapons_SECONDARY"
registerVal0 = {registerVal1, registerVal2, registerVal3, registerVal4, registerVal5, registerVal6}
local function __FUNC_7E3_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.index = -1.000000
	registerVal5.tabIcon = CoD.buttonStrings.shoulderl
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_mouseDisabled = true
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	local registerVal2, registerVal3, registerVal4 = ipairs(CoD.Craft.WeaponGroupNames)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal9 = {}
		local registerVal10 = {}
		registerVal10.tabName = value6.name
		registerVal10.tabWidget = registerVal0[index5].tabWidget
		registerVal9.models = registerVal10
		registerVal10 = {}
		registerVal10.groupIndex = index5
		registerVal9.properties = registerVal10
		table.insert({}, registerVal9)
	end
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.index = -1.000000
	registerVal5.tabIcon = CoD.buttonStrings.shoulderr
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_mouseDisabled = true
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal3 = Engine.GetModelForController(arg0)
	registerVal2 = Engine.CreateModel(registerVal3, "GametypeSettings")
	registerVal3 = Engine.CreateModel(registerVal2, "selectedItemSettingGroup")
	Engine.SetModelValue(registerVal3, {}[2.000000].groupIndex)
	registerVal5 = Engine.GetModelForController(arg0)
	registerVal4 = Engine.GetModel(registerVal5, "GametypeSettings")
	registerVal5 = Engine.CreateModel(registerVal4, "selectedItemSettingGroupCount")
	Engine.SetModelValue(registerVal5, (#{} - 2.000000))
	return {}
end

local function __FUNC_C55_(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "GametypeSettings")
	registerVal2 = Engine.CreateModel(registerVal1, "selectedItemSettingGroup")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	for index6=0.000000, 255.000000, 1.000000 do
		if CoD.statsTable then
			local registerVal10 = CoD.CACUtility.GetIdForItemRef(index6)
		end
		local registerVal11 = Engine.ItemIndexValid(index6)
		registerVal11 = CoD.BlackMarketUtility.IsUnreleasedBlackMarketItem(registerVal10)
		if registerVal11 and not registerVal11 then
			registerVal11 = IsThermometerUnlockIndexGreaterThanorEqualTo(CoD.ContractWeaponTiers[registerVal10])
			if registerVal1 or registerVal11 then
				registerVal11 = Engine.GetUnlockableInfoByIndex(index6)
				if registerVal11.image ~= nil and registerVal11.image ~= "" then
				end
				if registerVal0[registerVal3].weapon_category[registerVal11.group] ~= nil and 0.000000 <= registerVal11.allocation then
					local registerVal21 = tostring(index6)
					registerVal21 = CoD.GameSettingsUtility.GetRestrictionOptions()
					local registerVal24 = {}
					registerVal24.itemIndex = index6
					local function __FUNC_129B_(arg0)
						return Engine.GetItemRestrictionState(arg0.itemIndex)
					end

					local function __FUNC_132C_(arg0)
						local registerVal1 = Engine.GetItemRestrictionState(arg0.itemIndex, true)
						Engine.SetItemRestrictionState(arg0.itemIndex, registerVal1)
					end

					table.insert({}, CoD.OptionsUtility.CreateItemRestrictionSettings(arg0, registerVal11.name, "", ("CompetitiveSettings_ItemRestriction_" .. registerVal21), registerVal21, (registerVal11.image .. "_pu"), CoD.OptionsUtility.GametypeSettingsSetItemRestrictionState, registerVal24, __FUNC_129B_, __FUNC_132C_))
				end
			end
		end
	end
	local function __FUNC_1405_(arg0, arg1)
		if arg0.models.name >= arg1.models.name then
		end
		return true
	end

	table.sort({}, __FUNC_1405_)
	return {}
end

local function __FUNC_1492_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "selectedItemSettingGroup")
	if arg1.selectedTabChangedModel then
		arg1:removeSubscription(arg1.selectedTabChangedModel)
	end
	local function __FUNC_16F3_()
		arg1:clearSavedActiveIndex()
		arg1:clearSavedState()
		arg1:updateDataSource(false, false)
	end

	local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_16F3_, false)
	arg1.selectedTabChangedModel = registerVal5
	local registerVal6 = Engine.GetGlobalModel()
	registerVal5 = Engine.CreateModel(registerVal6, "GametypeSettings")
	registerVal6 = Engine.CreateModel(registerVal5, "Update")
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local function __FUNC_179A_()
		arg1:updateDataSource(false)
	end

	local registerVal7 = arg1:subscribeToModel(registerVal6, __FUNC_179A_, false)
	arg1.updateSubscription = registerVal7
end

registerVal5 = DataSourceHelpers.ListSetup("CompetitiveSettingsRestrictionsTabs", __FUNC_7E3_, nil, nil, nil)
DataSources.CompetitiveSettingsRestrictionsTabs = registerVal5
registerVal5 = DataSourceHelpers.ListSetup("CompetitiveSettingsItemOptions", __FUNC_C55_, nil, nil, __FUNC_1492_)
DataSources.CompetitiveSettingsItemOptions = registerVal5
local function __FUNC_17EE_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "GametypeSettings")
	registerVal3 = Engine.CreateModel(registerVal2, "selectedItemSettingGroup")
	Engine.SetModelValue(registerVal3, 1.000000)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_1945_(arg0, arg1)
	arg0.Tabs:setForceMouseEventDispatch(true)
	local function __FUNC_1A0B_(arg2, arg3)
		if arg3.grid == arg0.Tabs.Tabs then
			SetCompetitiveItemSettingsFilter(arg0, arg2, arg1, arg3.grid.savedActiveIndex)
		end
	end

	arg0:registerEventHandler("grid_item_changed", __FUNC_1A0B_)
end

local function __FUNC_1AF4_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "selectedItemSettingGroup")
	local function __FUNC_1C61_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		arg0.Tabs:setActiveIndex(1.000000, (registerVal1 + 1.000000))
	end

	arg0:subscribeToModel(registerVal4, __FUNC_1C61_)
	if CoD.isPC then
		__FUNC_1945_(arg0, arg1, arg2)
	end
end

local function __FUNC_1D16_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Competitive_Settings_Weapons")
	if __FUNC_17EE_ then
		__FUNC_17EE_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Competitive_Settings_Weapons.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.GameSettings_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.MenuFrame.titleLabel:setText(Engine.Localize("MENU_WEAPONS_CAPS"))
	registerVal3.MenuFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_WEAPONS_CAPS"))
	registerVal3.GameSettingsSelectedItemInfo.ToolTip:setAlpha(0.000000)
	registerVal3.GameSettingsSelectedItemInfo.GameModeInfo:setAlpha(0.000000)
	registerVal3.GameSettingsSelectedItemInfo.GameModeName:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.GameSettingsBackground = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 27.000000, 697.000000)
	registerVal4:setTopBottom(true, false, 153.000000, 627.000000)
	registerVal4:setDataSource("CompetitiveSettingsItemOptions")
	registerVal4:setWidgetType(CoD.Slider_Small)
	registerVal4:setVerticalCount(14.000000)
	registerVal4:setVerticalCounter(CoD.verticalCounter)
	local function __FUNC_2B3B_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_2B3B_)
	local function __FUNC_2D7D_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_2D7D_)
	local function __FUNC_2E4E_(arg0, arg1, arg2, arg3)
		AdjustCompetitiveItemSettingsFilter(registerVal1, arg0, arg2, "-1")
		return true
	end

	local function __FUNC_2ED1_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_2E4E_, __FUNC_2ED1_, false)
	local function __FUNC_2FBA_(arg0, arg1, arg2, arg3)
		AdjustCompetitiveItemSettingsFilter(registerVal1, arg0, arg2, "1")
		return true
	end

	local function __FUNC_303C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_2FBA_, __FUNC_303C_, false)
	local function __FUNC_3126_(arg0, arg1, arg2, arg3)
		OpenGameSettingsOptionsMenu(registerVal1, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_3195_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_3126_, __FUNC_3195_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.Options = registerVal4
	local registerVal5 = CoD.Competitive_Settings_SelectedItemInfo.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "SquareImage"
	local function __FUNC_328D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_328D_
	local registerVal10 = {}
	registerVal10.stateName = "WeaponImage"
	local function __FUNC_32D9_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal10.condition = __FUNC_32D9_
	registerVal8 = {registerVal9, registerVal10}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal1:addElement(registerVal5)
	registerVal1.CompetitiveSettingsSelectedItemInfo = registerVal5
	local registerVal6 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal6:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal6)
	registerVal1.FEMenuLeftGraphics = registerVal6
	local registerVal7 = CoD.GameSettings_TabBar.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 0.000000, 1614.000000)
	registerVal7:setTopBottom(true, false, 87.000000, 125.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.Tabs = registerVal7
	local function __FUNC_3324_(arg0, arg1, arg2, arg3)
		ForceNotifyGlobalModel(arg2, "GametypeSettings.Update")
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_33F2_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3324_, __FUNC_33F2_, false)
	registerVal3.MenuFrame:setModel(registerVal1.buttonModel, arg0)
	registerVal4.id = "Options"
	registerVal10 = {}
	registerVal10.name = "menu_loaded"
	registerVal10.controller = arg0
	registerVal1:processEvent(registerVal10)
	registerVal10 = {}
	registerVal10.name = "update_state"
	registerVal10.menu = registerVal1
	registerVal1:processEvent(registerVal10)
	registerVal8 = registerVal1:restoreState()
	if not registerVal8 then
		registerVal10 = {}
		registerVal10.name = "gain_focus"
		registerVal10.controller = arg0
		registerVal1.Options:processEvent(registerVal10)
	end
	local function __FUNC_34ED_(arg1)
		arg1.GameSettingsBackground:close()
		arg1.Options:close()
		arg1.CompetitiveSettingsSelectedItemInfo:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.Tabs:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Competitive_Settings_Weapons.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_34ED_)
	if __FUNC_1AF4_ then
		__FUNC_1AF4_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Competitive_Settings_Weapons = __FUNC_1D16_

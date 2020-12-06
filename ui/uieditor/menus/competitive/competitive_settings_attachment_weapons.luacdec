-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_Background")
require("ui.uieditor.widgets.Controls.Slider_Small")
require("ui.uieditor.widgets.Competitive.Competitive_Settings_SelectedItemInfo")
require("ui.uieditor.widgets.GameSettings.GameSettings_TabBar")
local registerVal0 = {}
local registerVal1 = {}
local registerVal2 = {}
registerVal2[Enum.itemGroup_t.ITEMGROUP_SMG] = true
registerVal1.weapon_category = registerVal2
registerVal1.name = "MPUI_WEAPON_SMG_ABBR_CAPS_WITH_S"
registerVal2 = {}
local registerVal3 = {}
registerVal3[Enum.itemGroup_t.ITEMGROUP_ASSAULT] = true
registerVal2.weapon_category = registerVal3
registerVal2.name = "MPUI_WEAPON_ASSAULT_CAPS"
registerVal3 = {}
local registerVal4 = {}
registerVal4[Enum.itemGroup_t.ITEMGROUP_CQB] = true
registerVal3.weapon_category = registerVal4
registerVal3.name = "MPUI_CQBS_CAPS"
registerVal4 = {}
local registerVal5 = {}
registerVal5[Enum.itemGroup_t.ITEMGROUP_LMG] = true
registerVal4.weapon_category = registerVal5
registerVal4.name = "MPUI_WEAPON_LMG_ABBR_CAPS_WITH_S"
registerVal5 = {}
local registerVal6 = {}
registerVal6[Enum.itemGroup_t.ITEMGROUP_SNIPER] = true
registerVal5.weapon_category = registerVal6
registerVal5.name = "MPUI_WEAPON_SNIPER_CAPS"
registerVal6 = {}
local registerVal7 = {}
registerVal7[Enum.itemGroup_t.ITEMGROUP_PISTOL] = true
registerVal7[Enum.itemGroup_t.ITEMGROUP_LAUNCHER] = true
registerVal7[Enum.itemGroup_t.ITEMGROUP_SPECIAL] = true
registerVal7[Enum.itemGroup_t.ITEMGROUP_KNIFE] = true
registerVal6.weapon_category = registerVal7
registerVal6.name = "MPUI_WEAPON_SECONDARIES_CAPS"
registerVal0 = {registerVal1, registerVal2, registerVal3, registerVal4, registerVal5, registerVal6}
local function __FUNC_726_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "attachmentWeaponUpdate")
	if arg1.attachmentUpdateSubscription then
		arg1:removeSubscription(arg1.attachmentUpdateSubscription)
	end
	local function __FUNC_93B_()
		arg1:updateDataSource(false)
	end

	local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_93B_, false)
	arg1.attachmentUpdateSubscription = registerVal5
	registerVal5 = Engine.CreateModel(registerVal3, "Update")
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local function __FUNC_98E_()
		arg1:updateDataSource(false)
	end

	local registerVal6 = arg1:subscribeToModel(registerVal5, __FUNC_98E_, false)
	arg1.updateSubscription = registerVal6
end

local function __FUNC_9E2_(arg0, arg1, arg2, arg3)
	local function __FUNC_A87_(arg0)
		local registerVal2, registerVal3 = CoD.CACUtility.GetAllItems()
		local registerVal4, registerVal5, registerVal6 = pairs(registerVal2)
		for index7,value8 in registerVal4, registerVal5, registerVal6 do
			if value8.attachments and value8.attachments[arg3.index] and arg2.weapon_category[value8.groupIndex] then
				if value8.image ~= nil and value8.image ~= "" then
				end
				local registerVal17 = tostring(index7)
				registerVal17 = CoD.GameSettingsUtility.GetRestrictionOptions()
				local registerVal20 = {}
				registerVal20.attachmentIndex = arg3.index
				registerVal20.weaponIndex = index7
				local function __FUNC_E4F_(arg0)
					return Engine.GetAttachmentRestrictionState(arg0.attachmentIndex, arg0.weaponIndex, false)
				end

				local function __FUNC_F11_(arg0)
					local registerVal1 = Engine.GetAttachmentRestrictionState(arg0.attachmentIndex, arg0.weaponIndex, true)
					Engine.SetAttachmentRestrictionState(arg0.attachmentIndex, arg0.weaponIndex, registerVal1)
				end

				table.insert({}, CoD.OptionsUtility.CreateItemRestrictionSettings(arg0, value8.name, "", ("ItemRestriction_" .. registerVal17), registerVal17, (value8.image .. "_pu"), CoD.OptionsUtility.GametypeSettingsSetAttachmentRestrictionStateForWeapon, registerVal20, __FUNC_E4F_, __FUNC_F11_))
			end
		end
		return {}
	end

	local function __FUNC_1028_(arg0, arg1, arg2)
		local registerVal4 = Engine.GetGlobalModel()
		local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
		registerVal4 = Engine.CreateModel(registerVal3, "updateWeaponList")
		if arg1.weaponUpdateSubscription then
			arg1:removeSubscription(arg1.weaponUpdateSubscription)
		end
		local function __FUNC_1235_()
			arg1:updateDataSource(true)
		end

		local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_1235_, false)
		arg1.weaponUpdateSubscription = registerVal5
		registerVal5 = Engine.CreateModel(registerVal3, "Update")
		if arg1.updateSubscription then
			arg1:removeSubscription(arg1.updateSubscription)
		end
		local function __FUNC_128A_()
			arg1:updateDataSource(false)
		end

		local registerVal6 = arg1:subscribeToModel(registerVal5, __FUNC_128A_, false)
		arg1.updateSubscription = registerVal6
	end

	local registerVal5 = DataSourceHelpers.ListSetup(arg1, __FUNC_A87_, nil, nil, __FUNC_1028_)
	DataSources[arg1] = registerVal5
	return arg1
end

local function __FUNC_12DE_(arg0, arg1, arg2, arg3)
	local function __FUNC_1383_(arg0)
		local registerVal7 = Engine.Localize("MENU_ALL_VAR", arg2.name)
		local registerVal10 = CoD.GameSettingsUtility.GetGroupRestrictionOptions()
		local registerVal13 = {}
		registerVal13.attachmentIndex = arg3.index
		registerVal13.weaponGroups = arg2.weapon_category
		local function __FUNC_1681_(arg0)
			local registerVal3, registerVal4 = CoD.CACUtility.GetAllItems()
			local registerVal6, registerVal7, registerVal8 = pairs(registerVal3)
			for index9,value10 in registerVal6, registerVal7, registerVal8 do
				if value10.attachments and value10.attachments[arg3.index] and arg0.weaponGroups[value10.groupIndex] then
					if nil == nil then
						local registerVal11 = Engine.GetAttachmentRestrictionState(arg0.attachmentIndex, index9, false)
					else
						registerVal11 = Engine.GetAttachmentRestrictionState(arg0.attachmentIndex, index9, false)
						if registerVal11 ~= registerVal11 then
							return -1.000000
						end
					end
				end
			end
			return registerVal11
		end

		local function __FUNC_18B1_(arg0)
			local registerVal3, registerVal4 = CoD.CACUtility.GetAllItems()
			local registerVal5, registerVal6, registerVal7 = pairs(registerVal3)
			for index8,value9 in registerVal5, registerVal6, registerVal7 do
				if value9.attachments and value9.attachments[arg3.index] and arg0.weaponGroups[value9.groupIndex] then
					local registerVal10 = Engine.GetAttachmentRestrictionState(arg0.attachmentIndex, index8, true)
					Engine.SetAttachmentRestrictionState(arg0.attachmentIndex, index8, registerVal10)
					print(("Setting Weapon Attachment Restriction: Attachment: " .. arg0.attachmentIndex .. " Weapon: " .. index8 .. " State: " .. registerVal10))
				end
			end
		end

		table.insert({}, CoD.OptionsUtility.CreateItemRestrictionSettings(arg0, registerVal7, "", ("WeaponAttachmentGroup_" .. arg2.name), registerVal10, arg3.image, CoD.OptionsUtility.GametypeSettingsSetAttachmentRestrictionStateForGroup, registerVal13, __FUNC_1681_, __FUNC_18B1_))
		return {}
	end

	local function __FUNC_1B6F_(arg0, arg1, arg2)
		local registerVal4 = Engine.GetGlobalModel()
		local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
		registerVal4 = Engine.CreateModel(registerVal3, "updateWeaponGroup")
		if arg1.groupUpdateSubscription then
			arg1:removeSubscription(arg1.groupUpdateSubscription)
		end
		local function __FUNC_1D79_()
			arg1:updateDataSource(true)
		end

		local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_1D79_, false)
		arg1.groupUpdateSubscription = registerVal5
		registerVal5 = Engine.CreateModel(registerVal3, "Update")
		if arg1.updateSubscription then
			arg1:removeSubscription(arg1.updateSubscription)
		end
		local function __FUNC_1DCE_()
			arg1:updateDataSource(false)
		end

		local registerVal6 = arg1:subscribeToModel(registerVal5, __FUNC_1DCE_, false)
		arg1.updateSubscription = registerVal6
	end

	local registerVal5 = DataSourceHelpers.ListSetup(arg1, __FUNC_1383_, nil, nil, __FUNC_1B6F_)
	DataSources[arg1] = registerVal5
	return arg1
end

local function __FUNC_1E22_(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "GametypeSettings")
	registerVal2 = Engine.GetModelValue(Engine.CreateModel(registerVal1, "selectedAttachment"))
	local registerVal3, registerVal4 = CoD.CACUtility.GetAllItems()
	local registerVal6, registerVal7, registerVal8 = ipairs(registerVal0)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		value10.active = false
	end
	registerVal6, registerVal7, registerVal8 = pairs(registerVal4[registerVal2].items)
	for index9,value10 in registerVal6, registerVal7, registerVal8 do
		local registerVal12, registerVal13, registerVal14 = ipairs(registerVal0)
		for index15,value16 in registerVal12, registerVal13, registerVal14 do
			if value16.weapon_category[registerVal3[value10.itemIndex].groupIndex] then
				value16.active = true
			end
		end
	end
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.index = -1.000000
	registerVal10.tabIcon = CoD.buttonStrings.shoulderl
	registerVal9.models = registerVal10
	registerVal10 = {}
	registerVal10.m_mouseDisabled = true
	registerVal9.properties = registerVal10
	table.insert({}, registerVal9)
	registerVal7, registerVal8, registerVal9 = ipairs(registerVal0)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		if value11.active == true then
			registerVal14 = {}
			local registerVal15 = {}
			registerVal15.tabName = value11.name
			local registerVal16 = __FUNC_9E2_(arg0, ("WeaponAttachments_" .. index10), value11, registerVal4[registerVal2])
			registerVal15.listDatasource = registerVal16
			registerVal16 = __FUNC_12DE_(arg0, ("WeaponAttachmentsAll_" .. index10), value11, registerVal4[registerVal2])
			registerVal15.allItemsDatasource = registerVal16
			registerVal15.tabIcon = ""
			registerVal14.models = registerVal15
			registerVal15 = {}
			registerVal15.groups = registerVal0[index10]
			registerVal15.groupIndex = index10
			registerVal14.properties = registerVal15
			table.insert({}, registerVal14)
		end
	end
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.index = -1.000000
	registerVal10.tabIcon = CoD.buttonStrings.shoulderr
	registerVal9.models = registerVal10
	registerVal10 = {}
	registerVal10.m_mouseDisabled = true
	registerVal9.properties = registerVal10
	table.insert({}, registerVal9)
	registerVal8 = Engine.GetModelForController(arg0)
	registerVal7 = Engine.CreateModel(registerVal8, "GametypeSettings")
	registerVal9 = Engine.CreateModel(registerVal7, "selectedTab")
	Engine.SetModelValue(registerVal9, {}[2.000000].properties.groupIndex)
	registerVal9 = Engine.CreateModel(registerVal7, "tabCount")
	Engine.SetModelValue(registerVal9, (#registerVal7 - 2.000000))
	return {}
end

registerVal6 = DataSourceHelpers.ListSetup("CompetitiveSettingsAttachmentWeaponTabs", __FUNC_1E22_, nil, nil, nil)
DataSources.CompetitiveSettingsAttachmentWeaponTabs = registerVal6
local function __FUNC_249E_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "GametypeSettings")
	registerVal3 = Engine.CreateModel(registerVal2, "selectedTab")
	Engine.SetModelValue(registerVal3, 1.000000)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_25E8_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "GametypeSettings")
	registerVal3 = Engine.CreateModel(registerVal2, "updateWeaponList")
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_26F6_(arg0, arg1, arg2)
	arg0.Tabs:setForceMouseEventDispatch(true)
	local function __FUNC_27BB_(arg2, arg3)
		if arg3.grid == arg0.Tabs.Tabs then
			SetGameSettingsTab(arg0, arg2, arg1, arg3.grid.savedActiveIndex)
		end
	end

	arg0:registerEventHandler("grid_item_changed", __FUNC_27BB_)
end

local function __FUNC_2896_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "selectedTab")
	local function __FUNC_2AF5_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if not registerVal1 then
		end
		arg0.Tabs:setActiveIndex(1.000000, (0.000000 + 1.000000))
	end

	arg0:subscribeToModel(registerVal4, __FUNC_2AF5_)
	local function __FUNC_2BBB_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0.Options:setDataSource(registerVal1)
		end
	end

	arg0.Options:linkToElementModel(arg0.Tabs.Tabs, "listDatasource", true, __FUNC_2BBB_)
	local function __FUNC_2C6F_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			arg0.AllWeaponsOption:setDataSource(registerVal1)
		end
	end

	arg0.AllWeaponsOption:linkToElementModel(arg0.Tabs.Tabs, "allItemsDatasource", true, __FUNC_2C6F_)
	if CoD.isPC then
		__FUNC_26F6_(arg0, arg1, arg2)
	end
end

local function __FUNC_2D2C_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Competitive_Settings_Attachment_Weapons")
	if __FUNC_25E8_ then
		__FUNC_25E8_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Competitive_Settings_Attachment_Weapons.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.GameSettings_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.MenuFrame.titleLabel:setText(Engine.Localize(GametypeSettingsAttachmentHeader(arg0, "MPUI_ATTACHMENTS_CAPS")))
	registerVal3.MenuFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(GametypeSettingsAttachmentHeader(arg0, "MPUI_ATTACHMENTS_CAPS")))
	registerVal3.GameSettingsSelectedItemInfo.ToolTip:setAlpha(0.000000)
	registerVal3.GameSettingsSelectedItemInfo.GameModeInfo:setAlpha(0.000000)
	registerVal3.GameSettingsSelectedItemInfo.GameModeName:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.GameSettingsBackground = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 27.000000, 697.000000)
	registerVal4:setTopBottom(true, false, 192.000000, 700.000000)
	registerVal4:setWidgetType(CoD.Slider_Small)
	registerVal4:setVerticalCount(15.000000)
	local function __FUNC_3CDB_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetElementStateByElementName(registerVal1, "CompetitiveSettingsSelectedItemInfo", arg0, "WeaponImage")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_3CDB_)
	local function __FUNC_3F9D_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_3F9D_)
	local function __FUNC_406E_(arg0, arg1, arg2, arg3)
		AdjustGameSettingsTab(registerVal1, arg0, arg2, "-1")
		return true
	end

	local function __FUNC_40E3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_406E_, __FUNC_40E3_, false)
	local function __FUNC_41CA_(arg0, arg1, arg2, arg3)
		AdjustGameSettingsTab(registerVal1, arg0, arg2, "1")
		return true
	end

	local function __FUNC_423E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_41CA_, __FUNC_423E_, false)
	local function __FUNC_4326_(arg0, arg1, arg2, arg3)
		OpenGameSettingsOptionsMenu(registerVal1, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_4395_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_4326_, __FUNC_4395_, false)
	local function __FUNC_448D_(arg1)
		ForceNotifyGlobalModel(arg0, "GametypeSettings.Update")
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "close", __FUNC_448D_)
	registerVal1:addElement(registerVal4)
	registerVal1.Options = registerVal4
	local registerVal5 = CoD.Competitive_Settings_SelectedItemInfo.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.CompetitiveSettingsSelectedItemInfo = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 27.000000, 697.000000)
	registerVal6:setTopBottom(true, false, 139.000000, 171.000000)
	registerVal6:setWidgetType(CoD.Slider_Small)
	local function __FUNC_4509_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		SetElementStateByElementName(registerVal1, "CompetitiveSettingsSelectedItemInfo", arg0, "SquareImage")
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_4509_)
	local function __FUNC_47CD_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_47CD_)
	local function __FUNC_489E_(arg0, arg1, arg2, arg3)
		AdjustGameSettingsTab(registerVal1, arg0, arg2, "-1")
		return true
	end

	local function __FUNC_4913_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_489E_, __FUNC_4913_, false)
	local function __FUNC_49FA_(arg0, arg1, arg2, arg3)
		AdjustGameSettingsTab(registerVal1, arg0, arg2, "1")
		return true
	end

	local function __FUNC_4A6E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_49FA_, __FUNC_4A6E_, false)
	local function __FUNC_4B56_(arg0, arg1, arg2, arg3)
		OpenGameSettingsOptionsMenu(registerVal1, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_4BC5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_4B56_, __FUNC_4BC5_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.AllWeaponsOption = registerVal6
	local registerVal7 = CoD.GameSettings_TabBar.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 0.000000, 1614.000000)
	registerVal7:setTopBottom(true, false, 87.000000, 125.000000)
	registerVal7.Tabs:setDataSource("CompetitiveSettingsAttachmentWeaponTabs")
	local function __FUNC_4CBD_(arg1, arg2)
		ForceNotifyGlobalModel(arg0, "GametypeSettings.updateWeaponList")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("menu_loaded", __FUNC_4CBD_)
	registerVal1:addElement(registerVal7)
	registerVal1.Tabs = registerVal7
	local registerVal8 = {}
	registerVal8.up = registerVal6
	registerVal4.navigation = registerVal8
	registerVal8 = {}
	registerVal8.down = registerVal4
	registerVal6.navigation = registerVal8
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_4D84_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_4E01_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_4D84_, __FUNC_4E01_, false)
	registerVal3.MenuFrame:setModel(registerVal1.buttonModel, arg0)
	registerVal4.id = "Options"
	registerVal6.id = "AllWeaponsOption"
	local registerVal10 = {}
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
		registerVal1.AllWeaponsOption:processEvent(registerVal10)
	end
	local function __FUNC_4EFD_(arg1)
		arg1.GameSettingsBackground:close()
		arg1.Options:close()
		arg1.CompetitiveSettingsSelectedItemInfo:close()
		arg1.AllWeaponsOption:close()
		arg1.Tabs:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Competitive_Settings_Attachment_Weapons.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4EFD_)
	if __FUNC_2896_ then
		__FUNC_2896_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Competitive_Settings_Attachment_Weapons = __FUNC_2D2C_

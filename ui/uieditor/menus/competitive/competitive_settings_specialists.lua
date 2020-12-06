-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_Background")
require("ui.uieditor.widgets.Competitive.Competitive_SettingsList_Specialist")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Competitive.Competitive_Settings_SelectedItemInfo")
local function __FUNC_387_(arg0, arg1, arg2)
	local function __FUNC_41F_(arg0)
		local registerVal2, registerVal3, registerVal4 = ipairs(arg2)
		for index5,value6 in registerVal2, registerVal3, registerVal4 do
			local registerVal7 = Engine.ItemIndexValid(value6)
			registerVal7 = Engine.GetUnlockableInfoByIndex(value6)
			local registerVal8 = LUI.startswith(registerVal7.loadoutSlot, "hero")
			if registerVal7 and 0.000000 <= registerVal7.allocation and registerVal8 then
				local registerVal18 = tostring(value6)
				registerVal18 = CoD.GameSettingsUtility.GetRestrictionOptions()
				local registerVal21 = {}
				registerVal21.itemIndex = value6
				local function __FUNC_82D_(arg0)
					return Engine.GetItemRestrictionState(arg0.itemIndex)
				end

				local function __FUNC_8C0_(arg0)
					local registerVal1 = Engine.GetItemRestrictionState(arg0.itemIndex, true)
					Engine.SetItemRestrictionState(arg0.itemIndex, registerVal1)
				end

				table.insert({}, CoD.OptionsUtility.CreateItemRestrictionSettings(arg0, registerVal7.name, "", ("CompetitiveSettings_ItemRestriction_" .. registerVal18), registerVal18, registerVal7.image, CoD.OptionsUtility.GametypeSettingsSetItemRestrictionState, registerVal21, __FUNC_82D_, __FUNC_8C0_))
			end
		end
		if 0.000000 < #registerVal2 then
			{}[1.000000].properties.first = true
			{}[#{}[1.000000].properties].properties.last = true
		end
		return {}
	end

	local registerVal4 = DataSourceHelpers.ListSetup(arg1, __FUNC_41F_)
	DataSources[arg1] = registerVal4
	return arg1
end

local function __FUNC_999_(arg0)
	local registerVal2 = Engine.GetHeroList(Enum.eModes.MODE_MULTIPLAYER)
	local registerVal4, registerVal5, registerVal6 = ipairs(registerVal2)
	for index7,value8 in registerVal4, registerVal5, registerVal6 do
		local registerVal9 = CoDShared.IsLootHero(value8)
		if value8.disabled ~= true and not registerVal9 then
			local registerVal10 = Engine.CurrentSessionMode()
			registerVal9 = Engine.GetLoadoutItemIndexForHero(registerVal10, (index7 - 1.000000), Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_WEAPON)
			local registerVal11 = Engine.CurrentSessionMode()
			registerVal10 = Engine.GetLoadoutItemIndexForHero(registerVal11, (index7 - 1.000000), Enum.heroLoadoutTypes_e.HERO_LOADOUT_TYPE_GADGET)
			local registerVal13 = {}
			local registerVal14 = {}
			local registerVal15 = Engine.Localize(value8.displayName)
			registerVal14.name = registerVal15
			local registerVal18 = tostring(index7)
			registerVal18 = {}
			registerVal18 = {registerVal9, registerVal10}
			registerVal15 = __FUNC_387_(arg0, ("CompetitiveSettings_HeroRestriction_" .. registerVal18), registerVal18)
			registerVal14.optionsDatasource = registerVal15
			registerVal13.models = registerVal14
			table.insert({}, registerVal13)
		end
	end
	return {}
end

local function __FUNC_D64_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "Update")
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local function __FUNC_ED5_()
		arg1:updateDataSource(false)
	end

	local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_ED5_, false)
	arg1.updateSubscription = registerVal5
end

local registerVal4 = DataSourceHelpers.ListSetup("CompetitiveSettingsSpecialistOptions", __FUNC_999_, nil, nil, __FUNC_D64_)
DataSources.CompetitiveSettingsSpecialistOptions = registerVal4
local function __FUNC_F2A_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_F7D_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Competitive_Settings_Specialists")
	if __FUNC_F2A_ then
		__FUNC_F2A_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Competitive_Settings_Specialists.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.GameSettings_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.MenuFrame.titleLabel:setText(Engine.Localize("HEROES_SPECIALISTS_CAPS"))
	registerVal3.MenuFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("HEROES_SPECIALISTS_CAPS"))
	registerVal3.GameSettingsSelectedItemInfo.ToolTip:setAlpha(0.000000)
	registerVal3.GameSettingsSelectedItemInfo.GameModeInfo:setAlpha(0.000000)
	registerVal3.GameSettingsSelectedItemInfo.GameModeName:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.GameSettingsBackground = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 27.000000, 697.000000)
	registerVal4:setTopBottom(true, false, 139.000000, 579.000000)
	registerVal4:setDataSource("CompetitiveSettingsSpecialistOptions")
	registerVal4:setWidgetType(CoD.Competitive_SettingsList_Specialist)
	registerVal4:setVerticalCount(4.000000)
	registerVal4:setSpacing(0.000000)
	registerVal4:setVerticalCounter(CoD.verticalCounter)
	registerVal1:addElement(registerVal4)
	registerVal1.Options = registerVal4
	local registerVal5 = CoD.Competitive_Settings_SelectedItemInfo.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "SquareImage"
	local function __FUNC_1B1E_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal9.condition = __FUNC_1B1E_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal1:addElement(registerVal5)
	registerVal1.CompetitiveSettingsSelectedItemInfo = registerVal5
	local function __FUNC_1B68_(arg0, arg1, arg2, arg3)
		ForceNotifyGlobalModel(arg2, "GametypeSettings.Update")
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_1C36_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1B68_, __FUNC_1C36_, false)
	registerVal3.MenuFrame:setModel(registerVal1.buttonModel, arg0)
	registerVal4.id = "Options"
	registerVal8 = {}
	registerVal8.name = "menu_loaded"
	registerVal8.controller = arg0
	registerVal1:processEvent(registerVal8)
	registerVal8 = {}
	registerVal8.name = "update_state"
	registerVal8.menu = registerVal1
	registerVal1:processEvent(registerVal8)
	local registerVal6 = registerVal1:restoreState()
	if not registerVal6 then
		registerVal8 = {}
		registerVal8.name = "gain_focus"
		registerVal8.controller = arg0
		registerVal1.Options:processEvent(registerVal8)
	end
	local function __FUNC_1D31_(arg1)
		arg1.GameSettingsBackground:close()
		arg1.Options:close()
		arg1.CompetitiveSettingsSelectedItemInfo:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Competitive_Settings_Specialists.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1D31_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Competitive_Settings_Specialists = __FUNC_F7D_

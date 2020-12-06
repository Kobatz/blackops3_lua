-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_Background")
require("ui.uieditor.widgets.Controls.Slider_Small")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Competitive.Competitive_Settings_SelectedItemInfo")
local function __FUNC_367_(arg0)
	for index3=0.000000, 255.000000, 1.000000 do
		local registerVal7 = Engine.ItemIndexValid(index3)
		registerVal7 = Engine.GetUnlockableInfoByIndex(index3)
		local registerVal8 = LUI.startswith(registerVal7.loadoutSlot, "killstreak")
		if registerVal7 and 0.000000 <= registerVal7.allocation and registerVal8 then
			local registerVal16 = tostring(index3)
			registerVal16 = CoD.GameSettingsUtility.GetRestrictionOptions()
			local registerVal19 = {}
			registerVal19.itemIndex = index3
			local function __FUNC_738_(arg0)
				return Engine.GetItemRestrictionState(arg0.itemIndex)
			end

			local function __FUNC_7CC_(arg0)
				local registerVal1 = Engine.GetItemRestrictionState(arg0.itemIndex, true)
				Engine.SetItemRestrictionState(arg0.itemIndex, registerVal1)
			end

			table.insert({}, CoD.OptionsUtility.CreateItemRestrictionSettings(arg0, registerVal7.name, "", ("CompetitiveSettings_ItemRestriction_" .. registerVal16), registerVal16, (registerVal7.image .. "_menu_large"), CoD.OptionsUtility.GametypeSettingsSetItemRestrictionState, registerVal19, __FUNC_738_, __FUNC_7CC_))
		end
	end
	local function __FUNC_8A5_(arg0, arg1)
		local registerVal2 = Engine.GetUnlockableInfoByIndex(arg0.models.itemIndex)
		local registerVal3 = Engine.GetUnlockableInfoByIndex(arg1.models.itemIndex)
		if registerVal2.momentum >= registerVal3.momentum then
		end
		return true
	end

	table.sort({}, __FUNC_8A5_)
	return {}
end

local function __FUNC_9BB_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "Update")
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local function __FUNC_B29_()
		arg1:updateDataSource(false)
	end

	local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_B29_, false)
	arg1.updateSubscription = registerVal5
end

local registerVal3 = DataSourceHelpers.ListSetup("CompetitiveSettingsScorestreakOptions", __FUNC_367_, nil, nil, __FUNC_9BB_)
DataSources.CompetitiveSettingsScorestreakOptions = registerVal3
local function __FUNC_B7E_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_BD1_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Competitive_Settings_Scorestreaks")
	if __FUNC_B7E_ then
		__FUNC_B7E_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Competitive_Settings_Scorestreaks.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.GameSettings_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.MenuFrame.titleLabel:setText(Engine.Localize("MENU_SCORESTREAKS_CAPS"))
	registerVal3.MenuFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_SCORESTREAKS_CAPS"))
	registerVal3.GameSettingsSelectedItemInfo.ToolTip:setAlpha(0.000000)
	registerVal3.GameSettingsSelectedItemInfo.GameModeInfo:setAlpha(0.000000)
	registerVal3.GameSettingsSelectedItemInfo.GameModeName:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.GameSettingsBackground = registerVal3
	local registerVal4 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 27.000000, 697.000000)
	registerVal4:setTopBottom(true, false, 144.000000, 618.000000)
	registerVal4:setDataSource("CompetitiveSettingsScorestreakOptions")
	registerVal4:setWidgetType(CoD.Slider_Small)
	registerVal4:setVerticalCount(14.000000)
	registerVal4:setVerticalCounter(CoD.verticalCounter)
	local function __FUNC_17FE_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_17FE_)
	local function __FUNC_1989_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1989_)
	local function __FUNC_1A5A_(arg0, arg1, arg2, arg3)
		OpenGameSettingsOptionsMenu(registerVal1, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_1AC9_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_1A5A_, __FUNC_1AC9_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.Options = registerVal4
	local registerVal5 = CoD.Competitive_Settings_SelectedItemInfo.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "SquareImage"
	local function __FUNC_1BC1_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal9.condition = __FUNC_1BC1_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal1:addElement(registerVal5)
	registerVal1.CompetitiveSettingsSelectedItemInfo = registerVal5
	local function __FUNC_1C0C_(arg0, arg1, arg2, arg3)
		ForceNotifyGlobalModel(arg2, "GametypeSettings.Update")
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_1CDA_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1C0C_, __FUNC_1CDA_, false)
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
	local function __FUNC_1DD5_(arg1)
		arg1.GameSettingsBackground:close()
		arg1.Options:close()
		arg1.CompetitiveSettingsSelectedItemInfo:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Competitive_Settings_Scorestreaks.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1DD5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Competitive_Settings_Scorestreaks = __FUNC_BD1_

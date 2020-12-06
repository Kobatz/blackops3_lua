-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_Background")
require("ui.uieditor.widgets.Competitive.Competitive_Settings_SelectedItemInfo")
require("ui.uieditor.widgets.GameSettings.GameSettings_Button")
require("ui.uieditor.widgets.GameSettings.GameSettings_TabBar")
local function __FUNC_3EB_(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5.tabIcon = CoD.buttonStrings.shoulderl
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_mouseDisabled = true
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	local registerVal6 = Engine.Localize("MPUI_ATTACHMENTS_CAPS")
	registerVal5.tabName = registerVal6
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal6 = Engine.Localize("MPUI_OPTICS_CAPS")
	registerVal5.tabName = registerVal6
	registerVal4.models = registerVal5
	table.insert({}, registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5.tabIcon = CoD.buttonStrings.shoulderr
	registerVal4.models = registerVal5
	registerVal5 = {}
	registerVal5.m_mouseDisabled = true
	registerVal4.properties = registerVal5
	table.insert({}, registerVal4)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GametypeSettings")
	registerVal3 = Engine.CreateModel(registerVal2, "selectedAttachmentTab")
	Engine.SetModelValue(registerVal3, 1.000000)
	return {}
end

local registerVal2 = DataSourceHelpers.ListSetup("CompetitiveSettingsAttachmentRestrictionsTabs", __FUNC_3EB_, nil, nil, nil)
DataSources.CompetitiveSettingsAttachmentRestrictionsTabs = registerVal2
local function __FUNC_752_(arg0, arg1, arg2, arg3, arg4)
	local registerVal6 = Engine.GetModelForController(arg2)
	local registerVal5 = Engine.CreateModel(registerVal6, "GametypeSettings")
	registerVal6 = Engine.CreateModel(registerVal5, "selectedAttachment")
	Engine.SetModelValue(registerVal6, arg3)
	arg4:saveState()
	OpenOverlay(arg0, "Competitive_Settings_Attachment_Weapons", arg2)
end

local function __FUNC_8EA_(arg0)
	local registerVal2 = Engine.GetModelForController(arg0)
	local registerVal1 = Engine.CreateModel(registerVal2, "GametypeSettings")
	registerVal2 = Engine.CreateModel(registerVal1, "selectedAttachmentTab")
	local registerVal3 = Engine.GetModelValue(registerVal2)
	local registerVal4, registerVal5 = CoD.CACUtility.GetAllItems()
	local registerVal7, registerVal8, registerVal9 = pairs(registerVal5)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		if 0.000000 < #value11.items then
			if registerVal3 ~= 1.000000 or value11.isOptic ~= false then
				if registerVal3 == 2.000000 and value11.isOptic == true then
					local registerVal14 = {}
					local registerVal15 = {}
					local registerVal16 = Engine.Localize(value11.name)
					registerVal15.title = registerVal16
					registerVal15.description = value11.desc
					registerVal15.image = value11.image
					registerVal16 = Engine.Localize(value11.name)
					registerVal15.displayText = registerVal16
					registerVal15.customId = value11.name
					registerVal15.attachmentIndex = index10
					registerVal14.models = registerVal15
					registerVal15 = {}
					registerVal15.disabled = false
					registerVal15.action = __FUNC_752_
					registerVal15.actionParam = value11.index
					registerVal14.properties = registerVal15
					table.insert({}, registerVal14)
				end
			end
		end
	end
	return {}
end

local function __FUNC_D02_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg0)
	local registerVal3 = Engine.CreateModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "selectedAttachmentTab")
	if arg1.updateSubscription then
		arg1:removeSubscription(arg1.updateSubscription)
	end
	local function __FUNC_E8F_()
		arg1:clearSavedActiveIndex()
		arg1:clearSavedState()
		arg1:updateDataSource(true, false)
		local registerVal2 = {}
		registerVal2.name = "gain_focus"
		registerVal2.controller = arg0
		arg1:processEvent(registerVal2)
	end

	local registerVal5 = arg1:subscribeToModel(registerVal4, __FUNC_E8F_, false)
	arg1.updateSubscription = registerVal5
end

local registerVal5 = DataSourceHelpers.ListSetup("CompetitiveSettingsAttachments", __FUNC_8EA_, nil, nil, __FUNC_D02_)
DataSources.CompetitiveSettingsAttachments = registerVal5
local function __FUNC_F9E_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "GametypeSettings")
	registerVal3 = Engine.CreateModel(registerVal2, "selectedAttachmentTab")
	Engine.SetModelValue(registerVal3, 1.000000)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_10F2_(arg0, arg1)
	arg0.Tabs:setForceMouseEventDispatch(true)
	local function __FUNC_11B7_(arg2, arg3)
		if arg3.grid == arg0.Tabs.Tabs then
			SetCompetitiveAttachmentSettingsTab(arg0, arg2, arg1, arg3.grid.savedActiveIndex)
		end
	end

	arg0:registerEventHandler("grid_item_changed", __FUNC_11B7_)
end

local function __FUNC_12A3_(arg0, arg1, arg2)
	local registerVal4 = Engine.GetModelForController(arg1)
	local registerVal3 = Engine.GetModel(registerVal4, "GametypeSettings")
	registerVal4 = Engine.CreateModel(registerVal3, "selectedAttachmentTab")
	local function __FUNC_14BE_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		arg0.Tabs:setActiveIndex(1.000000, (registerVal1 + 1.000000))
	end

	arg0:subscribeToModel(registerVal4, __FUNC_14BE_)
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_1572_(arg0, arg2)
		if not arg2.occluded and arg2.occludedBy.id ~= "Menu.GameSettings_OptionsMenu" then
			local registerVal4 = {}
			registerVal4.name = "lose_focus"
			registerVal4.controller = arg1
			arg0:processEvent(registerVal4)
			arg0:restoreState()
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_1572_)
	if CoD.isPC then
		__FUNC_10F2_(arg0, arg1, arg2)
	end
end

local function __FUNC_16E4_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Competitive_Settings_Attachments")
	if __FUNC_F9E_ then
		__FUNC_F9E_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Competitive_Settings_Attachments.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.GameSettings_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.MenuFrame.titleLabel:setText(Engine.Localize("MPUI_ATTACHMENTS_CAPS"))
	registerVal3.MenuFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MPUI_ATTACHMENTS_CAPS"))
	registerVal3.GameSettingsSelectedItemInfo.ToolTip:setAlpha(0.000000)
	registerVal3.GameSettingsSelectedItemInfo.GameModeInfo:setAlpha(0.000000)
	registerVal3.GameSettingsSelectedItemInfo.GameModeName:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.GameSettingsBackground = registerVal3
	local registerVal4 = CoD.Competitive_Settings_SelectedItemInfo.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "SquareImage"
	local function __FUNC_2589_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal8.condition = __FUNC_2589_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal1:addElement(registerVal4)
	registerVal1.CompetitiveSettingsSelectedItemInfo = registerVal4
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 66.870000, 346.870000)
	registerVal5:setTopBottom(true, false, 141.570000, 649.570000)
	registerVal5:setDataSource("CompetitiveSettingsAttachments")
	registerVal5:setWidgetType(CoD.GameSettings_Button)
	registerVal5:setVerticalCount(15.000000)
	local function __FUNC_25D4_(arg1, arg2)
		UpdateSelectedGametypeSettingModels(registerVal1, arg1, arg0)
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_25D4_)
	local function __FUNC_2649_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_2649_)
	local function __FUNC_2958_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_2958_)
	local function __FUNC_2A2A_(arg0, arg1, arg2, arg3)
		ToggleCompetitiveAttachmentSettingsTab(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2AA0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_2A2A_, __FUNC_2AA0_, false)
	local function __FUNC_2B8A_(arg0, arg1, arg2, arg3)
		ToggleCompetitiveAttachmentSettingsTab(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2C00_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_2B8A_, __FUNC_2C00_, false)
	local function __FUNC_2CEA_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_2D4B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2CEA_, __FUNC_2D4B_, false)
	local function __FUNC_2E3B_(arg0, arg1, arg2, arg3)
		OpenAttachmentRestrictionPopup(registerVal1, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_2EAC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_RESTRICT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_2E3B_, __FUNC_2EAC_, false)
	local function __FUNC_2FAD_(arg0, arg1, arg2, arg3)
		OpenGameSettingsOptionsMenu(registerVal1, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_301D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal5, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_2FAD_, __FUNC_301D_, false)
	registerVal1:addElement(registerVal5)
	registerVal1.List = registerVal5
	local registerVal6 = CoD.GameSettings_TabBar.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 0.000000, 1614.000000)
	registerVal6:setTopBottom(true, false, 87.000000, 125.000000)
	registerVal6.Tabs:setDataSource("CompetitiveSettingsAttachmentRestrictionsTabs")
	registerVal1:addElement(registerVal6)
	registerVal1.Tabs = registerVal6
	local function __FUNC_3115_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_3168_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3115_, __FUNC_3168_, false)
	local function __FUNC_3265_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_3298_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3265_, __FUNC_3298_, false)
	registerVal3.MenuFrame:setModel(registerVal1.buttonModel, arg0)
	registerVal5.id = "List"
	local registerVal9 = {}
	registerVal9.name = "menu_loaded"
	registerVal9.controller = arg0
	registerVal1:processEvent(registerVal9)
	registerVal9 = {}
	registerVal9.name = "update_state"
	registerVal9.menu = registerVal1
	registerVal1:processEvent(registerVal9)
	registerVal7 = registerVal1:restoreState()
	if not registerVal7 then
		registerVal9 = {}
		registerVal9.name = "gain_focus"
		registerVal9.controller = arg0
		registerVal1.List:processEvent(registerVal9)
	end
	local function __FUNC_3396_(arg1)
		arg1.GameSettingsBackground:close()
		arg1.CompetitiveSettingsSelectedItemInfo:close()
		arg1.List:close()
		arg1.Tabs:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Competitive_Settings_Attachments.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3396_)
	if __FUNC_12A3_ then
		__FUNC_12A3_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Competitive_Settings_Attachments = __FUNC_16E4_

-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.GameSettings.GameSettings_OptionsMenu")
require("ui.uieditor.widgets.GameSettings.GameSettings_Background")
require("ui.uieditor.widgets.Competitive.Competitive_SettingsList")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_PH")
require("ui.uieditor.widgets.StartMenu.StartMenu_OptionHighlight")
require("ui.uieditor.widgets.Competitive.Competitive_SettingsButtons_Flyout")
function LUI.createMenu.Competitive_Settings(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Competitive_Settings")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Competitive_Settings.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.GameSettings_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.MenuFrame.titleLabel:setText(Engine.Localize("MENU_COMPETITIVE_SETTINGS_CAPS"))
	registerVal3.MenuFrame.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_COMPETITIVE_SETTINGS_CAPS"))
	registerVal3.GameSettingsSelectedItemInfo.GameModeInfo:setAlpha(0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.GameSettingsBackground = registerVal3
	local registerVal4 = CoD.Competitive_SettingsList.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 0.000000, 624.000000)
	registerVal4:setTopBottom(true, false, 298.500000, 406.500000)
	registerVal4.Title.DescTitle:setText(Engine.Localize("MENU_SPECIALIST_DRAFT_SETTINGS_CAPS"))
	registerVal4.ButtonList:setDataSource("CompetitiveDraftSettings")
	registerVal1:addElement(registerVal4)
	registerVal1.DraftSettings = registerVal4
	local registerVal5 = CoD.Competitive_SettingsList.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 0.000000, 624.000000)
	registerVal5:setTopBottom(true, false, 90.000000, 298.500000)
	registerVal5.Title.DescTitle:setText(Engine.Localize("MENU_BAN_PROTECT_SETTINGS_CAPS"))
	registerVal5.ButtonList:setDataSource("CompetitiveBanProtectSettings")
	registerVal5.ButtonList:setVerticalCount(5.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.BanProtectSettings = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 39.000000, 319.000000)
	registerVal6:setTopBottom(true, false, 444.000000, 476.000000)
	registerVal6:setDataSource("CompetitiveAdvancedSettingsButtons")
	registerVal6:setWidgetType(CoD.List1ButtonLarge_PH)
	registerVal6:setSpacing(0.000000)
	local function __FUNC_1572_(arg1, arg2)
		GameSettingsButtonGainFocus(registerVal1, arg1, arg0)
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_1572_)
	local function __FUNC_15DD_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_15DD_)
	local function __FUNC_176F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_176F_)
	local function __FUNC_183E_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_189F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_183E_, __FUNC_189F_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.AdvancedSettingsButton = registerVal6
	local registerVal7 = CoD.StartMenu_OptionHighlight.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 44.000000, 386.000000)
	registerVal7:setTopBottom(true, false, 476.000000, 516.000000)
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal7.DescTitle:setText(Engine.Localize("MENU_ITEM_BANS_RESTRICTIONS_CAPS"))
	registerVal1:addElement(registerVal7)
	registerVal1.BanRestrictionsTitle = registerVal7
	local registerVal8 = CoD.Competitive_SettingsButtons_Flyout.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 44.000000, 658.000000)
	registerVal8:setTopBottom(true, false, 516.000000, 676.000000)
	local function __FUNC_199A_(arg1, arg2)
		GameSettingsButtonGainFocus(registerVal1, arg1, arg0)
		return nil
	end

	registerVal8:registerEventHandler("list_item_gain_focus", __FUNC_199A_)
	local function __FUNC_1A05_(arg1, arg2)
		local registerVal2 = IsInDefaultState(arg1)
		if not registerVal2 then
			MakeElementNotFocusable(registerVal1, "BanProtectSettings", arg0)
			MakeElementNotFocusable(registerVal1, "DraftSettings", arg0)
			MakeElementNotFocusable(registerVal1, "AdvancedSettingsButton", arg0)
			PlaySoundSetSound(registerVal1, "toggle")
		else
			registerVal2 = IsInDefaultState(arg1)
			if registerVal2 then
				MakeElementFocusable(registerVal1, "AdvancedSettingsButton", arg0)
				MakeElementFocusable(registerVal1, "BanProtectSettings", arg0)
				MakeElementFocusable(registerVal1, "DraftSettings", arg0)
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal8, "setState", __FUNC_1A05_)
	registerVal1:addElement(registerVal8)
	registerVal1.CompetitiveSettingsButtonsFlyout = registerVal8
	local registerVal9 = CoD.StartMenu_OptionHighlight.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 39.000000, 381.000000)
	registerVal9:setTopBottom(true, false, 406.500000, 446.500000)
	registerVal9:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal9.DescTitle:setText(Engine.Localize("MENU_ADVANCED_SETTINGS_CAPS"))
	registerVal1:addElement(registerVal9)
	registerVal1.AdvancedSettingsTitle = registerVal9
	local registerVal10 = {}
	registerVal10.up = registerVal5
	registerVal10.down = registerVal6
	registerVal4.navigation = registerVal10
	registerVal10 = {}
	registerVal10.down = registerVal4
	registerVal5.navigation = registerVal10
	registerVal10 = {}
	registerVal10.up = registerVal4
	registerVal10.down = registerVal8
	registerVal6.navigation = registerVal10
	registerVal10 = {}
	registerVal10.up = registerVal6
	registerVal8.navigation = registerVal10
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_1BBB_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1C0C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1BBB_, __FUNC_1C0C_, false)
	local function __FUNC_1D09_(arg0, arg1, arg2, arg3)
		OpenPopup(registerVal1, "GameSettings_OptionsMenu", arg2)
		return true
	end

	local function __FUNC_1D85_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_1D09_, __FUNC_1D85_, false)
	registerVal4.id = "DraftSettings"
	registerVal5.id = "BanProtectSettings"
	registerVal6.id = "AdvancedSettingsButton"
	registerVal8.id = "CompetitiveSettingsButtonsFlyout"
	local registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	registerVal10 = registerVal1:restoreState()
	if not registerVal10 then
		registerVal12 = {}
		registerVal12.name = "gain_focus"
		registerVal12.controller = arg0
		registerVal1.BanProtectSettings:processEvent(registerVal12)
	end
	local function __FUNC_1E7D_(arg1)
		arg1.GameSettingsBackground:close()
		arg1.DraftSettings:close()
		arg1.BanProtectSettings:close()
		arg1.AdvancedSettingsButton:close()
		arg1.BanRestrictionsTitle:close()
		arg1.CompetitiveSettingsButtonsFlyout:close()
		arg1.AdvancedSettingsTitle:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Competitive_Settings.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1E7D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end


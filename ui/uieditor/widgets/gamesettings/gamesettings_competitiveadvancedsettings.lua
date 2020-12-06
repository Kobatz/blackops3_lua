-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GameSettings.GameSettings_SelectedItemInfo")
require("ui.uieditor.widgets.Competitive.Competitive_SettingsList")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GameSettings_CompetitiveAdvancedSettings = registerVal1
function CoD.GameSettings_CompetitiveAdvancedSettings.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_CompetitiveAdvancedSettings)
	registerVal2.id = "GameSettings_CompetitiveAdvancedSettings"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 585.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GameSettings_SelectedItemInfo.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -135.000000, 0.000000)
	registerVal3.GameModeInfo:setAlpha(0.000000)
	registerVal3.GameModeName:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.GameSettingsSelectedItemInfo = registerVal3
	local registerVal4 = CoD.Competitive_SettingsList.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 27.000000, 614.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 148.000000)
	registerVal4.Title.DescTitle:setText(Engine.Localize("MENU_TIME_SETTINGS_CAPS"))
	registerVal4.ButtonList:setDataSource("CompetitiveAdvancedSettings")
	registerVal4.ButtonList:setVerticalCount(3.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.StageTimers = registerVal4
	local registerVal5 = CoD.Competitive_SettingsList.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 27.000000, 614.000000)
	registerVal5:setTopBottom(true, false, 148.000000, 265.500000)
	registerVal5.Title.DescTitle:setText(Engine.Localize("MENU_EDIT_SETTINGS"))
	registerVal5.ButtonList:setDataSource("CompetitiveEditSettings")
	registerVal2:addElement(registerVal5)
	registerVal2.EditSettings = registerVal5
	local registerVal6 = CoD.Competitive_SettingsList.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 27.000000, 614.000000)
	registerVal6:setTopBottom(true, false, 265.500000, 390.500000)
	registerVal6.Title.DescTitle:setText(Engine.Localize("MENU_PLAYER_ORDER_CAPS"))
	registerVal6.ButtonList:setDataSource("CompetitiveOrderSettings")
	registerVal2:addElement(registerVal6)
	registerVal2.PlayerOrderSettings = registerVal6
	local registerVal7 = {}
	registerVal7.down = registerVal5
	registerVal4.navigation = registerVal7
	registerVal7 = {}
	registerVal7.up = registerVal4
	registerVal7.down = registerVal6
	registerVal5.navigation = registerVal7
	registerVal7 = {}
	registerVal7.up = registerVal5
	registerVal6.navigation = registerVal7
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "StageTimers"
	registerVal5.id = "EditSettings"
	registerVal6.id = "PlayerOrderSettings"
	local function __FUNC_BC3_(arg0, arg1)
		local registerVal2 = arg0.StageTimers:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_BC3_)
	local function __FUNC_CC7_(arg0)
		arg0.GameSettingsSelectedItemInfo:close()
		arg0.StageTimers:close()
		arg0.EditSettings:close()
		arg0.PlayerOrderSettings:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CC7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_OptionHighlight")
require("ui.uieditor.widgets.Controls.Slider_Small")
require("ui.uieditor.widgets.PC.Utility.VerticalListSpacer")
require("ui.uieditor.widgets.GameSettings.GameSettings_Button")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GameSettings_GameModeRulesList = registerVal1
function CoD.GameSettings_GameModeRulesList.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIVerticalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Top)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GameSettings_GameModeRulesList)
	registerVal2.id = "GameSettings_GameModeRulesList"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 615.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_OptionHighlight.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 40.000000, 382.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal3.DescTitle:setText(Engine.Localize(""))
	registerVal2:addElement(registerVal3)
	registerVal2.Title = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 0.000000, 670.000000)
	registerVal4:setTopBottom(true, false, 40.000000, 378.000000)
	registerVal4:setWidgetType(CoD.Slider_Small)
	registerVal4:setVerticalCount(10.000000)
	local function __FUNC_F49_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_F49_)
	local function __FUNC_10D5_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_10D5_)
	local function __FUNC_11A6_(arg0, arg1, arg2, arg3)
		OpenGameSettingsOptionsMenu(registerVal2, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_1215_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_11A6_, __FUNC_1215_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.Sliders = registerVal4
	local registerVal5 = CoD.VerticalListSpacer.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 27.500000, 527.500000)
	registerVal5:setTopBottom(true, false, 378.000000, 404.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Spacer = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 40.000000, 320.000000)
	registerVal6:setTopBottom(true, false, 404.000000, 742.000000)
	registerVal6:setWidgetType(CoD.GameSettings_Button)
	registerVal6:setVerticalCount(10.000000)
	local function __FUNC_130D_(arg2, arg3)
		local registerVal3 = IsCurrentMenu(arg0, "GameSettings_CreateAClassSettings")
		if registerVal3 then
			ButtonListFocused(registerVal2, arg2, arg1)
			GameSettingsButtonGainFocus(registerVal2, arg2, arg1)
		else
			GameSettingsButtonGainFocus(registerVal2, arg2, arg1)
		end
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_130D_)
	local function __FUNC_141A_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_141A_)
	local function __FUNC_160A_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_160A_)
	local function __FUNC_16DA_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_173B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_16DA_, __FUNC_173B_, false)
	local function __FUNC_1836_(arg0, arg1, arg2, arg3)
		OpenGameSettingsOptionsMenu(registerVal2, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_18A5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_1836_, __FUNC_18A5_, false)
	local function __FUNC_199D_(arg2)
		local registerVal2 = IsCurrentMenu(arg0, "GameSettings_CreateAClassSettings")
		if registerVal2 then
			UpdateDataSource(registerVal2, registerVal6, arg1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "GametypeSettings", "presetClassesPerTeam", __FUNC_199D_)
	registerVal2:addElement(registerVal6)
	registerVal2.Buttions = registerVal6
	local registerVal7 = {}
	registerVal7.down = registerVal6
	registerVal4.navigation = registerVal7
	registerVal7 = {}
	registerVal7.up = registerVal4
	registerVal6.navigation = registerVal7
	registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_1A54_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Title:setLeftRight(true, false, 40.000000, 382.000000)
		registerVal2.Title:setTopBottom(true, false, 0.000000, 40.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal8.DefaultClip = __FUNC_1A54_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1BA9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.Title:setLeftRight(true, false, 40.000000, 382.000000)
		registerVal2.Title:setTopBottom(true, false, 0.000000, 10.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal8.DefaultClip = __FUNC_1BA9_
	registerVal7.NoHeader = registerVal8
	registerVal2.clipsPerState = registerVal7
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "Sliders"
	registerVal6.id = "Buttions"
	local function __FUNC_1D02_(arg0, arg1)
		local registerVal2 = arg0.Sliders:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1D02_)
	local function __FUNC_1E03_(arg0)
		arg0.Title:close()
		arg0.Sliders:close()
		arg0.Spacer:close()
		arg0.Buttions:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1E03_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


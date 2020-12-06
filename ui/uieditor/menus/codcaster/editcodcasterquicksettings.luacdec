-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.LobbyStreamerBlackFade")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.CodCaster.CodCasterQuickSettingsListButton")
require("ui.uieditor.widgets.Scorestreaks.scorestreaks_TitleBox")
require("ui.uieditor.widgets.GameSettings.GameSettings_Optionstextbox")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
function LUI.createMenu.EditCodCasterQuickSettings(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("EditCodCasterQuickSettings")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "EditCodCasterQuickSettings.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.310000, 0.310000, 0.310000)
	registerVal1:addElement(registerVal3)
	registerVal1.FEButtonPanelShaderContainer0 = registerVal3
	local registerVal4 = CoD.LobbyStreamerBlackFade.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Transparent"
	local function __FUNC_1301_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg0, "hideWorldForStreamer", 0.000000)
	end

	registerVal8.condition = __FUNC_1301_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "hideWorldForStreamer")
	local function __FUNC_138E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hideWorldForStreamer"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_138E_)
	registerVal1:addElement(registerVal4)
	registerVal1.FadeForStreamer = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize(LocalizeToUpperString("CODCASTER_QUICK_SETTINGS")))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(LocalizeToUpperString("CODCASTER_QUICK_SETTINGS")))
	registerVal1:addElement(registerVal5)
	registerVal1.GenericMenuFrame = registerVal5
	local registerVal6 = LUI.UIList.new(registerVal1, arg0, 4.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 45.000000, 285.000000)
	registerVal6:setTopBottom(true, false, 145.500000, 429.500000)
	registerVal6:setDataSource("CodCasterQuickSettingsButtonList")
	registerVal6:setWidgetType(CoD.CodCasterQuickSettingsListButton)
	registerVal6:setVerticalCount(8.000000)
	registerVal6:setSpacing(4.000000)
	local function __FUNC_14B6_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_14B6_)
	local function __FUNC_1647_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_1647_)
	local function __FUNC_1716_(arg0, arg1, arg2, arg3)
		ToggleCodCasterQuickSettings(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1782_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1716_, __FUNC_1782_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.ButtonList = registerVal6
	registerVal7 = CoD.scorestreaks_TitleBox.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 705.000000, 956.000000)
	registerVal7:setTopBottom(true, false, 141.000000, 176.000000)
	registerVal7.TitleGlow1:setAlpha(0.900000)
	registerVal1:addElement(registerVal7)
	registerVal1.TitleBox = registerVal7
	registerVal8 = CoD.GameSettings_Optionstextbox.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 705.000000, 1160.500000)
	registerVal8:setTopBottom(true, false, 179.410000, 201.410000)
	registerVal1:addElement(registerVal8)
	registerVal1.GameSettingsOptionstextbox = registerVal8
	local registerVal9 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal9:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal9)
	registerVal1.FEMenuLeftGraphics = registerVal9
	local function __FUNC_187E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.ScorestreaksLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal6, "displayText", true, __FUNC_187E_)
	local function __FUNC_195D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.TextBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal6, "hintText", true, __FUNC_195D_)
	local function __FUNC_1A33_(arg0, arg1, arg2, arg3)
		SaveShoutcasterSettings(registerVal1, arg0, arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1AB9_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1A33_, __FUNC_1AB9_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal6.id = "ButtonList"
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
		registerVal1.ButtonList:processEvent(registerVal12)
	end
	local function __FUNC_1BB5_(arg1)
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.FadeForStreamer:close()
		arg1.GenericMenuFrame:close()
		arg1.ButtonList:close()
		arg1.TitleBox:close()
		arg1.GameSettingsOptionstextbox:close()
		arg1.FEMenuLeftGraphics:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "EditCodCasterQuickSettings.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1BB5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end


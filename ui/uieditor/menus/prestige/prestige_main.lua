-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Prestige.Prestige_EnterPrestige")
require("ui.uieditor.widgets.Prestige.Prestige_Button")
require("ui.uieditor.widgets.Prestige.Prestige_ButtonInfopane")
require("ui.uieditor.widgets.Prestige.Prestige_TitleBox")
local function __FUNC_41A_(arg0, arg1)
	ClearSavedState(arg0, arg1)
	arg0:setModel(DataSources.PrestigeButtonInfopane.getModel(arg1))
end

local function __FUNC_4F2_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
	local registerVal2 = IsMaxPrestigeLevel(arg1)
	if registerVal2 then
		arg0.EnterPrestige.navigation.down = arg0.FreshStartButton
		arg0.FreshStartButton.navigation.left = nil
	end
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_6BD_(arg0, arg2)
		DataSources.PrestigeStats.getModel(arg1)
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_6BD_)
end

local function __FUNC_783_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Prestige_Main")
	if __FUNC_41A_ then
		__FUNC_41A_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Prestige_Main.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_29BE_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_29BE_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.650000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, -11.000000, 1285.000000)
	registerVal5:setTopBottom(true, false, 115.910000, 733.910000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.FEButtonPanelShaderContainer0 = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(false, false, -336.000000, -276.000000)
	registerVal6:setRGB(0.120000, 0.130000, 0.190000)
	registerVal6:setAlpha(0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.MenuTitleBackground = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, -3.630000, 0.000000)
	registerVal7:setTopBottom(false, false, 302.000000, 332.000000)
	registerVal7:setRGB(0.120000, 0.130000, 0.190000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.ButtonBarBackground = registerVal7
	local registerVal8 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal8:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal8)
	registerVal1.FEMenuLeftGraphics0 = registerVal8
	local registerVal9 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9.titleLabel:setText(Engine.Localize("MENU_PRESTIGE_MODE_CAPS"))
	registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_PRESTIGE_MODE_CAPS"))
	registerVal1:addElement(registerVal9)
	registerVal1.MenuFrame = registerVal9
	local registerVal10 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal10:setTopBottom(true, false, 24.000000, 84.000000)
	local function __FUNC_2A06_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_2A06_)
	local function __FUNC_2A56_(arg1)
		registerVal10.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_2A56_)
	registerVal1:addElement(registerVal10)
	registerVal1.SelfIdentityBadge = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 332.000000, 572.000000)
	registerVal11:setTopBottom(false, true, -258.000000, -58.000000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.HiddenButtonBacking0 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 587.000000, 827.000000)
	registerVal12:setTopBottom(false, true, -258.000000, -58.000000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.HiddenButtonBacking1 = registerVal12
	local registerVal13 = CoD.Prestige_EnterPrestige.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 91.500000, 798.500000)
	registerVal13:setTopBottom(true, false, 110.500000, 408.500000)
	local function __FUNC_2AF4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.PrestigeIcon:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "PrestigeStats", "icon", __FUNC_2AF4_)
	local function __FUNC_2BEC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.PrestigeCallingCard:setImage(RegisterImage(GetBackgroundByID(registerVal1)))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "PrestigeStats", "backgroundId", __FUNC_2BEC_)
	local function __FUNC_2CEC_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal13.PrestigeButtonTitle.ButtonTitle:setText(GetPrestigeTitleText(arg0, registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "PrestigeStats", "plevel", __FUNC_2CEC_)
	local function __FUNC_2DF4_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		registerVal3 = IsMaxPrestigeLevel(arg0)
		if not registerVal3 then
			SetGlobalModelValue("PrestigeButtonInfopane.title", "MENU_ABOUT_PRESTIGE_MODE_CAPS")
			SetGlobalModelValueArg("PrestigeButtonInfopane.description", CoD.PrestigeUtility.GetStringForMode("PRESTIGE_INFOPANE_PRESTIGE_MODE"))
			SetElementStateByElementName(registerVal1, "InfopaneTop", arg0, "Visible")
			SetElementStateByElementName(registerVal1, "InfopaneBottom", arg0, "DefaultState")
		else
			registerVal3 = IsMaxPrestigeLevel(arg0)
			if registerVal3 then
				SetGlobalModelValue("PrestigeButtonInfopane.title", "MENU_ABOUT_PRESTIGE_MASTER_CAPS")
				SetGlobalModelValueArg("PrestigeButtonInfopane.description", CoD.PrestigeUtility.GetStringForMode("PRESTIGE_INFOPANE_PRESTIGE_MASTER"))
				SetElementStateByElementName(registerVal1, "InfopaneTop", arg0, "Visible")
				SetElementStateByElementName(registerVal1, "InfopaneBottom", arg0, "DefaultState")
			else
				CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
			end
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("gain_focus", __FUNC_2DF4_)
	local function __FUNC_3293_(arg1, arg2)
		if arg1.loseFocus then
			local registerVal3 = arg1.loseFocus(arg1, arg2)
		else
			if arg1.super.loseFocus then
				registerVal3 = arg1.super.loseFocus(arg1, arg2)
			end
		end
		SetElementStateByElementName(registerVal1, "InfopaneTop", arg0, "DefaultState")
		return registerVal3
	end

	registerVal13:registerEventHandler("lose_focus", __FUNC_3293_)
	local function __FUNC_33CB_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMaxPrestigeLevel(arg2)
		registerVal4 = IsAtXPCap(arg2)
		registerVal4 = IsElementInState(arg0, "PrestigeMasterLocked")
		if not registerVal4 and registerVal4 and not registerVal4 then
			OpenEnterPrestigeModeMenu(registerVal1, arg2, arg1)
			return true
		else
			registerVal4 = IsMultiplayerCombatRecordMode()
			registerVal4 = IsMaxPrestigeLevel(arg2)
			if registerVal4 and registerVal4 then
				OpenCustomizePrestigeMenu(registerVal1, arg2, arg1)
				return true
			else
				registerVal4 = IsZombiesCombatRecordMode()
				registerVal4 = IsMaxPrestigeLevel(arg2)
				if registerVal4 and registerVal4 then
					OpenCustomizePrestigeMenu(registerVal1, arg2, arg1)
					return true
				end
			end
		end
	end

	local function __FUNC_35CF_(arg0, arg1, arg2)
		local registerVal3 = IsMaxPrestigeLevel(arg2)
		registerVal3 = IsAtXPCap(arg2)
		registerVal3 = IsElementInState(arg0, "PrestigeMasterLocked")
		if not registerVal3 and registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = IsMultiplayerCombatRecordMode()
			registerVal3 = IsMaxPrestigeLevel(arg2)
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			else
				registerVal3 = IsZombiesCombatRecordMode()
				registerVal3 = IsMaxPrestigeLevel(arg2)
				if registerVal3 and registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
					return true
				end
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal13, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_33CB_, __FUNC_35CF_, false)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Locked"
	local function __FUNC_38AB_(arg1, arg2, arg3)
		local registerVal3 = IsMaxPrestigeLevel(arg0)
		if not registerVal3 then
			registerVal3 = IsAtXPCap(arg0)
		else
		end
		return true
	end

	registerVal17.condition = __FUNC_38AB_
	local registerVal18 = {}
	registerVal18.stateName = "PrestigeMasterLocked"
	local function __FUNC_3937_(arg1, arg2, arg3)
		local registerVal3 = IsModelValueEqualTo(arg0, "PrestigeStats.plevel", 10.000000)
		if registerVal3 then
			registerVal3 = IsAtXPCap(arg0)
		end
		return registerVal3
	end

	registerVal18.condition = __FUNC_3937_
	local registerVal19 = {}
	registerVal19.stateName = "DefaultStateZM"
	local function __FUNC_39DF_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualToEnum(arg2, arg0, "prestigeGameMode", Enum.eModes.MODE_ZOMBIES)
	end

	registerVal19.condition = __FUNC_39DF_
	registerVal16 = {registerVal17, registerVal18, registerVal19}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal17 = Engine.GetModelForController(arg0)
	registerVal16 = Engine.GetModel(registerVal17, "PrestigeStats.plevel")
	local function __FUNC_3AB1_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "PrestigeStats.plevel"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:subscribeToModel(registerVal16, __FUNC_3AB1_)
	registerVal17 = Engine.GetGlobalModel()
	registerVal16 = Engine.GetModel(registerVal17, "prestigeGameMode")
	local function __FUNC_3BDA_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "prestigeGameMode"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:subscribeToModel(registerVal16, __FUNC_3BDA_)
	registerVal1:addElement(registerVal13)
	registerVal1.EnterPrestige = registerVal13
	local registerVal14 = CoD.Prestige_Button.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 79.000000, 332.000000)
	registerVal14:setTopBottom(false, true, -274.000000, -73.000000)
	registerVal14:setScale(0.900000)
	registerVal14.ButtonIcon:setImage(RegisterImage("uie_t7_icons_prestige_mp_permanentunlock"))
	registerVal14.PrestigeButtonTitle.ButtonTitle:setText(Engine.Localize("MENU_PERMANENT_UNLOCKS"))
	local function __FUNC_3CFE_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		registerVal3 = IsPrestigeLevelAtZero(arg0)
		if registerVal3 then
			SetGlobalModelValue("PrestigeButtonInfopane.title", "MENU_PERMANENT_UNLOCKS_CAPS")
			SetGlobalModelValue("PrestigeButtonInfopane.description", "MENU_PRESTIGE_INFOPANE_LOCKED")
			SetElementStateByElementName(registerVal1, "InfopaneBottom", arg0, "Visible")
		else
			registerVal3 = IsPrestigeLevelAtZero(arg0)
			if not registerVal3 then
				SetGlobalModelValue("PrestigeButtonInfopane.title", "MENU_PERMANENT_UNLOCKS_CAPS")
				SetGlobalModelValueArg("PrestigeButtonInfopane.description", CoD.PrestigeUtility.GetStringForMode("PRESTIGE_INFOPANE_PERMANENT_UNLOCKS"))
				SetElementStateByElementName(registerVal1, "InfopaneBottom", arg0, "Visible")
			else
				CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
			end
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("gain_focus", __FUNC_3CFE_)
	local function __FUNC_40F8_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("lose_focus", __FUNC_40F8_)
	local function __FUNC_41CA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Locked")
		if not registerVal4 then
			OpenPermanentUnlockMenu(registerVal1, arg2, arg1)
			return true
		end
	end

	local function __FUNC_4273_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "Locked")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal14, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_41CA_, __FUNC_4273_, false)
	registerVal17 = {}
	registerVal18 = {}
	registerVal18.stateName = "Locked"
	local function __FUNC_43B8_(arg1, arg2, arg3)
		return IsPrestigeLevelAtZero(arg0)
	end

	registerVal18.condition = __FUNC_43B8_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	registerVal1:addElement(registerVal14)
	registerVal1.PermanentUnlocksButton = registerVal14
	local registerVal15 = CoD.Prestige_Button.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 319.000000, 572.000000)
	registerVal15:setTopBottom(false, true, -274.000000, -73.000000)
	registerVal15:setScale(0.900000)
	registerVal15.ButtonIcon:setImage(RegisterImage("uie_t7_icons_prestige_mp_refund"))
	registerVal15.PrestigeButtonTitle.ButtonTitle:setText(Engine.Localize("MENU_REFUND"))
	local function __FUNC_4413_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		registerVal3 = IsPrestigeLevelAtZero(arg0)
		if registerVal3 then
			SetGlobalModelValue("PrestigeButtonInfopane.title", "MENU_REFUND_CAPS")
			SetGlobalModelValue("PrestigeButtonInfopane.description", "MENU_PRESTIGE_INFOPANE_LOCKED")
			SetElementStateByElementName(registerVal1, "InfopaneBottom", arg0, "Visible")
		else
			registerVal3 = IsElementInState(arg1, "Locked")
			if registerVal3 then
				SetGlobalModelValue("PrestigeButtonInfopane.title", "MENU_REFUND_CAPS")
				SetGlobalModelValue("PrestigeButtonInfopane.description", "MENU_PRESTIGE_INFOPANE_REFUND_LOCKED")
				SetElementStateByElementName(registerVal1, "InfopaneBottom", arg0, "Visible")
			else
				registerVal3 = IsElementInState(arg1, "Locked")
				if not registerVal3 then
					SetGlobalModelValue("PrestigeButtonInfopane.title", "MENU_REFUND_CAPS")
					SetGlobalModelValue("PrestigeButtonInfopane.description", "MENU_PRESTIGE_INFOPANE_REFUND")
					SetElementStateByElementName(registerVal1, "InfopaneBottom", arg0, "Visible")
				else
					CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
				end
			end
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("gain_focus", __FUNC_4413_)
	local function __FUNC_4838_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("lose_focus", __FUNC_4838_)
	local function __FUNC_490A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Locked")
		registerVal4 = IsPrestigeRewardSpent(arg2, Enum.prestigeTokenType_e.PRESTIGE_TOKEN_RESPEC)
		if not registerVal4 and not registerVal4 then
			OpenPrestigeRefundTokensMenu(registerVal1, arg2, arg1)
			return true
		end
	end

	local function __FUNC_4A51_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "Locked")
		registerVal3 = IsPrestigeRewardSpent(arg2, Enum.prestigeTokenType_e.PRESTIGE_TOKEN_RESPEC)
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal15, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_490A_, __FUNC_4A51_, false)
	registerVal18 = {}
	registerVal19 = {}
	registerVal19.stateName = "Locked"
	local function __FUNC_4C23_(arg1, arg2, arg3)
		return IsPrestigeRewardSpent(arg0, Enum.prestigeTokenType_e.PRESTIGE_TOKEN_RESPEC)
	end

	registerVal19.condition = __FUNC_4C23_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal1:addElement(registerVal15)
	registerVal1.RefundButton = registerVal15
	registerVal16 = CoD.Prestige_Button.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 559.000000, 812.000000)
	registerVal16:setTopBottom(false, true, -274.000000, -73.000000)
	registerVal16:setScale(0.900000)
	registerVal16.ButtonIcon:setImage(RegisterImage("uie_t7_icons_prestige_mp_freshstart"))
	registerVal16.PrestigeButtonTitle.ButtonTitle:setText(Engine.Localize("MENU_FRESH_START"))
	local function __FUNC_4CE1_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		registerVal3 = IsPrestigeLevelAtZero(arg0)
		if registerVal3 then
			SetGlobalModelValue("PrestigeButtonInfopane.title", "MENU_FRESH_START_CAPS")
			SetGlobalModelValue("PrestigeButtonInfopane.description", "MENU_PRESTIGE_INFOPANE_LOCKED")
			SetElementStateByElementName(registerVal1, "InfopaneBottom", arg0, "Visible")
		else
			registerVal3 = IsPrestigeLevelAtZero(arg0)
			if not registerVal3 then
				SetGlobalModelValue("PrestigeButtonInfopane.title", "MENU_FRESH_START_CAPS")
				SetGlobalModelValueArg("PrestigeButtonInfopane.description", CoD.PrestigeUtility.GetStringForMode("PRESTIGE_INFOPANE_FRESH_START"))
				SetElementStateByElementName(registerVal1, "InfopaneBottom", arg0, "Visible")
			else
				CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
			end
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("gain_focus", __FUNC_4CE1_)
	local function __FUNC_50D0_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal16:registerEventHandler("lose_focus", __FUNC_50D0_)
	local function __FUNC_51A2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Locked")
		registerVal4 = IsPrestigeRewardSpent(arg2, Enum.prestigeTokenType_e.PRESTIGE_TOKEN_RESET_STATS)
		if not registerVal4 and not registerVal4 then
			OpenPrestigeFreshStartMenu(registerVal1, arg2, arg1)
			return true
		end
	end

	local function __FUNC_52EC_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "Locked")
		registerVal3 = IsPrestigeRewardSpent(arg2, Enum.prestigeTokenType_e.PRESTIGE_TOKEN_RESET_STATS)
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal16, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_51A2_, __FUNC_52EC_, false)
	registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Locked"
	local function __FUNC_54C4_(arg1, arg2, arg3)
		return IsPrestigeRewardSpent(arg0, Enum.prestigeTokenType_e.PRESTIGE_TOKEN_RESET_STATS)
	end

	registerVal20.condition = __FUNC_54C4_
	registerVal19 = {registerVal20}
	registerVal16:mergeStateConditions(registerVal19)
	registerVal1:addElement(registerVal16)
	registerVal1.FreshStartButton = registerVal16
	registerVal17 = CoD.Prestige_ButtonInfopane.new(registerVal1, arg0)
	registerVal17:setLeftRight(true, false, 838.000000, 1181.000000)
	registerVal17:setTopBottom(true, false, 112.500000, 284.500000)
	local function __FUNC_558A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.Body:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg0, "PrestigeButtonInfopane", "description", __FUNC_558A_)
	local function __FUNC_565C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.Title:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:subscribeToGlobalModel(arg0, "PrestigeButtonInfopane", "title", __FUNC_565C_)
	registerVal20 = {}
	local registerVal21 = {}
	registerVal21.stateName = "Visible"
	local function __FUNC_5731_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal21.condition = __FUNC_5731_
	registerVal20 = {registerVal21}
	registerVal17:mergeStateConditions(registerVal20)
	registerVal1:addElement(registerVal17)
	registerVal1.InfopaneTop = registerVal17
	registerVal18 = CoD.Prestige_ButtonInfopane.new(registerVal1, arg0)
	registerVal18:setLeftRight(true, false, 838.000000, 1181.000000)
	registerVal18:setTopBottom(true, false, 457.000000, 641.000000)
	local function __FUNC_577D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.Body:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg0, "PrestigeButtonInfopane", "description", __FUNC_577D_)
	local function __FUNC_5850_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.Title:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:subscribeToGlobalModel(arg0, "PrestigeButtonInfopane", "title", __FUNC_5850_)
	registerVal21 = {}
	local registerVal22 = {}
	registerVal22.stateName = "Visible"
	local function __FUNC_5925_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal22.condition = __FUNC_5925_
	registerVal21 = {registerVal22}
	registerVal18:mergeStateConditions(registerVal21)
	registerVal1:addElement(registerVal18)
	registerVal1.InfopaneBottom = registerVal18
	registerVal19 = LUI.UIText.new()
	registerVal19:setLeftRight(true, false, 100.000000, 271.000000)
	registerVal19:setTopBottom(false, true, -132.000000, -112.000000)
	registerVal19:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal19:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal19:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_5971_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal19:setAlpha(HideIfPrestigeMaster(arg0, HideIfNumEqualTo(0.000000, registerVal1)))
		end
	end

	registerVal19:subscribeToGlobalModel(arg0, "PerController", "permanentUnlockTokensCount", __FUNC_5971_)
	local function __FUNC_5A5A_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal19:setText(GetPermanentUnlockTokenText(arg0, registerVal1))
		end
	end

	registerVal19:subscribeToGlobalModel(arg0, "PerController", "permanentUnlockTokensCount", __FUNC_5A5A_)
	registerVal1:addElement(registerVal19)
	registerVal1.PermanentUnlockTokens = registerVal19
	registerVal20 = CoD.Prestige_TitleBox.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 95.000000, 447.000000)
	registerVal20:setTopBottom(true, false, 424.910000, 448.910000)
	registerVal20.Title:setText(Engine.Localize("MENU_PRESTIGE_AWARDS_CAPS"))
	registerVal1:addElement(registerVal20)
	registerVal1.PrestigeAwardsTitle = registerVal20
	registerVal21 = LUI.UIText.new()
	registerVal21:setLeftRight(true, false, 103.360000, 800.500000)
	registerVal21:setTopBottom(false, true, -362.000000, -342.000000)
	registerVal21:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal21:setText(Engine.Localize("MENU_PRESTIGE_MASTER_CAPS"))
	registerVal21:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal21:setLetterSpacing(0.500000)
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal21)
	registerVal1.Title = registerVal21
	registerVal22 = {}
	local registerVal23 = {}
	registerVal23 = {registerVal14, registerVal15, registerVal16}
	registerVal22.down = registerVal23
	registerVal13.navigation = registerVal22
	registerVal22 = {}
	registerVal22.up = registerVal13
	registerVal22.right = registerVal15
	registerVal14.navigation = registerVal22
	registerVal22 = {}
	registerVal22.left = registerVal14
	registerVal22.up = registerVal13
	registerVal22.right = registerVal16
	registerVal15.navigation = registerVal22
	registerVal22 = {}
	registerVal22.left = registerVal15
	registerVal22.up = registerVal13
	registerVal16.navigation = registerVal22
	registerVal22 = {}
	registerVal23 = {}
	local function __FUNC_5B1D_()
		registerVal1:setupElementClipCounter(5.000000)
		registerVal11:completeAnimation()
		registerVal1.HiddenButtonBacking0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.HiddenButtonBacking1:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.PermanentUnlocksButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.RefundButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal21:completeAnimation()
		registerVal1.Title:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_5B1D_
	registerVal22.DefaultState = registerVal23
	registerVal23 = {}
	local function __FUNC_5DA0_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal11:completeAnimation()
		registerVal1.HiddenButtonBacking0:setLeftRight(true, false, 334.000000, 558.000000)
		registerVal1.HiddenButtonBacking0:setTopBottom(false, true, -262.500000, -84.500000)
		registerVal1.HiddenButtonBacking0:setAlpha(0.200000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.HiddenButtonBacking1:setLeftRight(true, false, 573.000000, 797.000000)
		registerVal1.HiddenButtonBacking1:setTopBottom(false, true, -262.500000, -84.500000)
		registerVal1.HiddenButtonBacking1:setAlpha(0.200000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.PermanentUnlocksButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.RefundButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.FreshStartButton:setLeftRight(true, false, 79.000000, 332.000000)
		registerVal1.FreshStartButton:setTopBottom(false, true, -274.000000, -73.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal21:completeAnimation()
		registerVal1.Title:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_5DA0_
	registerVal22.PrestigeMaster = registerVal23
	registerVal23 = {}
	local function __FUNC_61B9_()
		registerVal1:setupElementClipCounter(7.000000)
		registerVal11:completeAnimation()
		registerVal1.HiddenButtonBacking0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal1.HiddenButtonBacking1:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal12, {})
		registerVal14:completeAnimation()
		registerVal1.PermanentUnlocksButton:setLeftRight(true, false, 67.000000, 456.000000)
		registerVal1.PermanentUnlocksButton:setTopBottom(false, true, -260.380000, -46.000000)
		registerVal1.PermanentUnlocksButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.RefundButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal1.FreshStartButton:setLeftRight(true, false, 433.000000, 843.000000)
		registerVal1.FreshStartButton:setTopBottom(false, true, -260.380000, -46.000000)
		registerVal1.clipFinished(registerVal16, {})
		registerVal19:completeAnimation()
		registerVal1.PermanentUnlockTokens:setLeftRight(true, false, 98.360000, 269.360000)
		registerVal1.PermanentUnlockTokens:setTopBottom(false, true, -105.000000, -85.000000)
		registerVal1.clipFinished(registerVal19, {})
		registerVal21:completeAnimation()
		registerVal1.Title:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal21, {})
	end

	registerVal23.DefaultClip = __FUNC_61B9_
	registerVal22.DefaultStateZM = registerVal23
	registerVal1.clipsPerState = registerVal22
	local registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "PrestigeMaster"
	local function __FUNC_6613_(arg1, arg2, arg3)
		return IsMaxPrestigeLevel(arg0)
	end

	registerVal25.condition = __FUNC_6613_
	local registerVal26 = {}
	registerVal26.stateName = "DefaultStateZM"
	local function __FUNC_6668_(arg1, arg2, arg3)
		return IsGlobalModelValueEqualToEnum(arg2, arg0, "prestigeGameMode", Enum.eModes.MODE_ZOMBIES)
	end

	registerVal26.condition = __FUNC_6668_
	registerVal24 = {registerVal25, registerVal26}
	registerVal1:mergeStateConditions(registerVal24)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "prestigeGameMode")
	local function __FUNC_673D_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "prestigeGameMode"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal24, __FUNC_673D_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_6862_(arg1, arg2)
		local registerVal3 = IsGlobalModelValueEqualToEnum(arg1, arg0, "prestigeGameMode", Enum.eModes.MODE_ZOMBIES)
		if registerVal3 then
			SetIsInPrestigeMenu(true)
			DisableWidget(registerVal1, "RefundButton")
		else
			SetIsInPrestigeMenu(true)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_opened", __FUNC_6862_)
	local function __FUNC_69F0_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_6A44_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_69F0_, __FUNC_6A44_, false)
	local function __FUNC_6B41_(arg0)
		SetIsInPrestigeMenu(false)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_6B41_)
	registerVal9:setModel(registerVal1.buttonModel, arg0)
	registerVal13.id = "EnterPrestige"
	registerVal14.id = "PermanentUnlocksButton"
	registerVal15.id = "RefundButton"
	registerVal16.id = "FreshStartButton"
	registerVal24 = {}
	registerVal24.name = "menu_loaded"
	registerVal24.controller = arg0
	registerVal1:processEvent(registerVal24)
	registerVal24 = {}
	registerVal24.name = "update_state"
	registerVal24.menu = registerVal1
	registerVal1:processEvent(registerVal24)
	registerVal22 = registerVal1:restoreState()
	if not registerVal22 then
		registerVal24 = {}
		registerVal24.name = "gain_focus"
		registerVal24.controller = arg0
		registerVal1.EnterPrestige:processEvent(registerVal24)
	end
	local function __FUNC_6B95_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.FEMenuLeftGraphics0:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.EnterPrestige:close()
		arg1.PermanentUnlocksButton:close()
		arg1.RefundButton:close()
		arg1.FreshStartButton:close()
		arg1.InfopaneTop:close()
		arg1.InfopaneBottom:close()
		arg1.PrestigeAwardsTitle:close()
		arg1.PermanentUnlockTokens:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Prestige_Main.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_6B95_)
	if __FUNC_4F2_ then
		__FUNC_4F2_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Prestige_Main = __FUNC_783_

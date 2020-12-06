-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Barracks.LeaderboardsButton")
require("ui.uieditor.menus.Leaderboard.Leaderboard_Main")
require("ui.uieditor.widgets.Barracks.CombatRecordButtonZM")
require("ui.uieditor.menus.Barracks.CombatRecordZM.CombatRecordZM")
require("ui.uieditor.widgets.Barracks.PrestigeButton")
require("ui.uieditor.menus.Prestige.Prestige_Main")
local function __FUNC_447_(arg0, arg1)
	SetGlobalModelValueArg("prestigeGameMode", Enum.eModes.MODE_ZOMBIES)
	CoD.PrestigeUtility.CreatePermanentUnlockTokenModel(arg1)
end

local function __FUNC_579_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_66F_(arg0, arg2)
		if not arg2.occluded then
			UpdateElementState(arg0, "PrestigeButton", arg1)
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_66F_)
end

local function __FUNC_73F_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("BarracksZM")
	if __FUNC_447_ then
		__FUNC_447_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "BarracksZM.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_183C_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_183C_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal5:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal5)
	registerVal1.FEMenuLeftGraphics = registerVal5
	registerVal6 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.titleLabel:setText(Engine.Localize("MENU_BARRACKS_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_BARRACKS_CAPS"))
	registerVal1:addElement(registerVal6)
	registerVal1.MenuFrame = registerVal6
	registerVal7 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal7:setTopBottom(true, false, 23.000000, 83.000000)
	local function __FUNC_1886_(arg1)
		registerVal7:setModel(arg1, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_1886_)
	local function __FUNC_18D6_(arg1)
		registerVal7.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_18D6_)
	registerVal1:addElement(registerVal7)
	registerVal1.SelfIdentityBadge = registerVal7
	local registerVal8 = CoD.LeaderboardsButton.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, false, 169.500000, 548.000000)
	registerVal8:setTopBottom(true, false, 110.500000, 408.500000)
	registerVal8.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_LEADERBOARDS"))
	local function __FUNC_1974_(arg1, arg2)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_1974_)
	local function __FUNC_1B07_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_1B07_)
	local function __FUNC_1BD6_(arg0, arg1, arg2, arg3)
		NavigateToLeaderboardMain(arg1, "Leaderboard_Main", arg2)
		PlaySoundAlias("uin_paint_decal_nav")
		return true
	end

	local function __FUNC_1C9A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1BD6_, __FUNC_1C9A_, false)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Locked"
	local function __FUNC_1D96_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_1D96_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal1:addElement(registerVal8)
	registerVal1.LeaderboardsButton = registerVal8
	local registerVal9 = CoD.CombatRecordButtonZM.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 91.500000, 798.500000)
	registerVal9:setTopBottom(true, false, 110.500000, 408.500000)
	registerVal9.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("FEATURE_COMBAT_RECORD"))
	local function __FUNC_1DE1_(arg1, arg2)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_1DE1_)
	local function __FUNC_1F73_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_1F73_)
	local function __FUNC_2042_(arg0, arg1, arg2, arg3)
		CombatRecordSetXUIDForLocalController(arg2)
		NavigateToMenu(registerVal1, "CombatRecordZM", true, arg2)
		return true
	end

	local function __FUNC_20F7_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_2042_, __FUNC_20F7_, false)
	registerVal1:addElement(registerVal9)
	registerVal1.CombatRecordButton = registerVal9
	local registerVal10 = CoD.PrestigeButton.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, 169.500000, 548.000000)
	registerVal10:setTopBottom(true, false, 431.500000, 647.500000)
	registerVal10.LockedHint:setText(Engine.Localize("MENU_ZM_PRESTIGE_MODE_LOCKED_HINT"))
	registerVal10.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MPUI_PRESTIGE_MODE"))
	local function __FUNC_21F2_(arg1, arg2)
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

	registerVal10:registerEventHandler("gain_focus", __FUNC_21F2_)
	local function __FUNC_2383_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_2383_)
	local function __FUNC_2452_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Locked")
		if not registerVal4 then
			OpenOverlay(registerVal1, "Prestige_Main", arg2, "", "")
			return true
		end
	end

	local function __FUNC_2518_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "Locked")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2452_, __FUNC_2518_, false)
	registerVal1:addElement(registerVal10)
	registerVal1.PrestigeButton = registerVal10
	registerVal11 = {}
	registerVal11.left = registerVal9
	registerVal11.down = registerVal10
	registerVal8.navigation = registerVal11
	registerVal11 = {}
	registerVal11.right = registerVal8
	registerVal9.navigation = registerVal11
	registerVal11 = {}
	registerVal11.up = registerVal8
	registerVal10.navigation = registerVal11
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_2660_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_26B4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2660_, __FUNC_26B4_, false)
	local function __FUNC_27B1_(arg0)
		SetGlobalModelValueArg("prestigeGameMode", Enum.eModes.MODE_INVALID)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_27B1_)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal8.id = "LeaderboardsButton"
	registerVal9.id = "CombatRecordButton"
	registerVal10.id = "PrestigeButton"
	local registerVal13 = {}
	registerVal13.name = "menu_loaded"
	registerVal13.controller = arg0
	registerVal1:processEvent(registerVal13)
	registerVal13 = {}
	registerVal13.name = "update_state"
	registerVal13.menu = registerVal1
	registerVal1:processEvent(registerVal13)
	registerVal11 = registerVal1:restoreState()
	if not registerVal11 then
		registerVal13 = {}
		registerVal13.name = "gain_focus"
		registerVal13.controller = arg0
		registerVal1.CombatRecordButton:processEvent(registerVal13)
	end
	local function __FUNC_2872_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.LeaderboardsButton:close()
		arg1.CombatRecordButton:close()
		arg1.PrestigeButton:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "BarracksZM.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2872_)
	if __FUNC_579_ then
		__FUNC_579_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.BarracksZM = __FUNC_73F_

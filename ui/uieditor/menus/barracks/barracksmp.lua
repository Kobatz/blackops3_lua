-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Barracks.CombatRecordButton")
require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordMP")
require("ui.uieditor.widgets.Barracks.MedalsButton")
require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordMedals")
require("ui.uieditor.widgets.Barracks.LeaderboardsButton")
require("ui.uieditor.menus.Leaderboard.Leaderboard_Main")
require("ui.uieditor.widgets.Barracks.PrestigeButton")
require("ui.uieditor.menus.Prestige.Prestige_Main")
local function __FUNC_4D6_(arg0, arg1)
	SetGlobalModelValueArg("prestigeGameMode", Enum.eModes.MODE_MULTIPLAYER)
	CoD.PrestigeUtility.CreatePermanentUnlockTokenModel(arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_636_(arg0, arg1)
	arg0.originalOcclusionChange = arg0.m_eventHandlers.occlusion_change
	local function __FUNC_702_(arg0, arg2)
		if not arg2.occluded then
			UpdateElementState(arg0, "PrestigeButton", arg1)
		end
		arg0.originalOcclusionChange(arg0, arg2)
	end

	arg0:registerEventHandler("occlusion_change", __FUNC_702_)
end

local function __FUNC_7D3_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("BarracksMP")
	if __FUNC_4D6_ then
		__FUNC_4D6_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "BarracksMP.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_1A24_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_1A24_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
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
	local function __FUNC_1A6E_(arg1)
		registerVal7:setModel(arg1, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_1A6E_)
	local function __FUNC_1ABE_(arg1)
		registerVal7.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_1ABE_)
	registerVal1:addElement(registerVal7)
	registerVal1.SelfIdentityBadge = registerVal7
	local registerVal8 = CoD.CombatRecordButton.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, false, -548.500000, 158.500000)
	registerVal8:setTopBottom(true, false, 110.500000, 408.500000)
	registerVal8.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("FEATURE_COMBAT_RECORD"))
	local function __FUNC_1B5C_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal8.RankName:setText(Engine.Localize(RankTitleFromStorage(arg0, "mp", registerVal1)))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "StorageGlobal", "stats_mp", __FUNC_1B5C_)
	local function __FUNC_1C6E_(arg1, arg2)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_1C6E_)
	local function __FUNC_1DFF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_1DFF_)
	local function __FUNC_1ECE_(arg0, arg1, arg2, arg3)
		CombatRecordSetXUIDForLocalController(arg2)
		NavigateToMenu(registerVal1, "CombatRecordMP", true, arg2)
		return true
	end

	local function __FUNC_1F83_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1ECE_, __FUNC_1F83_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.CombatRecordButton = registerVal8
	local registerVal9 = CoD.MedalsButton.new(registerVal1, arg0)
	registerVal9:setLeftRight(false, false, -548.500000, 158.500000)
	registerVal9:setTopBottom(true, false, 431.500000, 647.500000)
	registerVal9.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_MEDALS"))
	local function __FUNC_207E_(arg1, arg2)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_207E_)
	local function __FUNC_220F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_220F_)
	local function __FUNC_22DE_(arg0, arg1, arg2, arg3)
		NavigateToMenu(registerVal1, "CombatRecordMedals", true, arg2)
		return true
	end

	local function __FUNC_235C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_22DE_, __FUNC_235C_, false)
	registerVal1:addElement(registerVal9)
	registerVal1.MedalsButton = registerVal9
	local registerVal10 = CoD.LeaderboardsButton.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, 169.500000, 548.000000)
	registerVal10:setTopBottom(true, false, 110.500000, 408.500000)
	registerVal10.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MENU_LEADERBOARDS"))
	local function __FUNC_245A_(arg1, arg2)
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

	registerVal10:registerEventHandler("gain_focus", __FUNC_245A_)
	local function __FUNC_25EB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_25EB_)
	local function __FUNC_26BA_(arg0, arg1, arg2, arg3)
		NavigateToLeaderboardMain(arg1, "Leaderboard_Main", arg2)
		PlaySoundAlias("uin_paint_decal_nav")
		return true
	end

	local function __FUNC_277E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal10, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_26BA_, __FUNC_277E_, false)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "Locked"
	local function __FUNC_287A_(arg0, arg1, arg2)
		return IsBooleanDvarSet("tu1_build")
	end

	registerVal14.condition = __FUNC_287A_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal1:addElement(registerVal10)
	registerVal1.LeaderboardsButton = registerVal10
	local registerVal11 = CoD.PrestigeButton.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, 169.500000, 548.000000)
	registerVal11:setTopBottom(true, false, 431.500000, 647.500000)
	registerVal11.LockedHint:setText(Engine.Localize("MENU_PRESTIGE_MODE_LOCKED_HINT"))
	registerVal11.StartMenuIdentitySubTitle0.SubTitle:setText(Engine.Localize("MPUI_PRESTIGE_MODE"))
	local function __FUNC_28E1_(arg1, arg2)
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

	registerVal11:registerEventHandler("gain_focus", __FUNC_28E1_)
	local function __FUNC_2A73_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_2A73_)
	local function __FUNC_2B42_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsElementInState(arg0, "Locked")
		if not registerVal4 then
			OpenOverlay(registerVal1, "Prestige_Main", arg2, "", "")
			return true
		end
	end

	local function __FUNC_2C08_(arg0, arg1, arg2)
		local registerVal3 = IsElementInState(arg0, "Locked")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal11, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2B42_, __FUNC_2C08_, false)
	registerVal1:addElement(registerVal11)
	registerVal1.PrestigeButton = registerVal11
	local registerVal12 = {}
	registerVal12.right = registerVal10
	registerVal12.down = registerVal9
	registerVal8.navigation = registerVal12
	registerVal12 = {}
	registerVal12.up = registerVal8
	registerVal12.right = registerVal11
	registerVal9.navigation = registerVal12
	registerVal12 = {}
	registerVal12.left = registerVal8
	registerVal12.down = registerVal11
	registerVal10.navigation = registerVal12
	registerVal12 = {}
	registerVal12.left = registerVal9
	registerVal12.up = registerVal10
	registerVal11.navigation = registerVal12
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_2D50_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2DA4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2D50_, __FUNC_2DA4_, false)
	local function __FUNC_2EA1_(arg0)
		SetGlobalModelValueArg("prestigeGameMode", Enum.eModes.MODE_INVALID)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_2EA1_)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal8.id = "CombatRecordButton"
	registerVal9.id = "MedalsButton"
	registerVal10.id = "LeaderboardsButton"
	registerVal11.id = "PrestigeButton"
	registerVal14 = {}
	registerVal14.name = "menu_loaded"
	registerVal14.controller = arg0
	registerVal1:processEvent(registerVal14)
	registerVal14 = {}
	registerVal14.name = "update_state"
	registerVal14.menu = registerVal1
	registerVal1:processEvent(registerVal14)
	registerVal12 = registerVal1:restoreState()
	if not registerVal12 then
		registerVal14 = {}
		registerVal14.name = "gain_focus"
		registerVal14.controller = arg0
		registerVal1.CombatRecordButton:processEvent(registerVal14)
	end
	local function __FUNC_2F62_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.CombatRecordButton:close()
		arg1.MedalsButton:close()
		arg1.LeaderboardsButton:close()
		arg1.PrestigeButton:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "BarracksMP.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2F62_)
	if __FUNC_636_ then
		__FUNC_636_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.BarracksMP = __FUNC_7D3_

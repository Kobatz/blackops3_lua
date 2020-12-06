-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordFriendSidebar")
require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrameIdentity")
require("ui.uieditor.widgets.Barracks.CombatRecordStatListItem")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Barracks.CombatRecordStatHeader")
require("ui.uieditor.widgets.Barracks.CombatRecordRightTitleWithBackground")
require("ui.uieditor.widgets.Barracks.CombatRecordComparingPlayerInfo")
local function __FUNC_44C_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_4A1_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CombatRecordScorestreaks")
	if __FUNC_44C_ then
		__FUNC_44C_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CombatRecordScorestreaks.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_1CAE_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_1CAE_
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
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -576.000000, -265.000000)
	registerVal5:setTopBottom(false, false, -276.000000, 302.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.300000)
	registerVal1:addElement(registerVal5)
	registerVal1.BlackTint = registerVal5
	registerVal6 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal6:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal6)
	registerVal1.FEMenuLeftGraphics = registerVal6
	registerVal7 = CoD.GenericMenuFrameIdentity.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7.titleLabel:setText(Engine.Localize("MENU_SCORESTREAKS_CAPS"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_SCORESTREAKS_CAPS"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_scorestreak"))
	registerVal1:addElement(registerVal7)
	registerVal1.MenuFrame = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 79.000000, 359.000000)
	registerVal8:setTopBottom(true, false, 157.500000, 625.500000)
	registerVal8:setWidgetType(CoD.CombatRecordStatListItem)
	registerVal8:setVerticalCount(10.000000)
	registerVal8:setVerticalCounter(CoD.verticalCounter)
	registerVal8:setDataSource("CombatRecordScorestreakList")
	local function __FUNC_1CF6_(arg1)
		UpdateDataSource(registerVal1, registerVal8, arg0)
	end

	registerVal8:subscribeToGlobalModel(arg0, "OtherPlayerStats", "InProgress", __FUNC_1CF6_)
	registerVal1:addElement(registerVal8)
	registerVal1.ItemList = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 79.000000, 127.000000)
	registerVal9:setTopBottom(true, false, 123.000000, 148.000000)
	registerVal9:setText(Engine.Localize("MENU_WEAPON_CAPS"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal9)
	registerVal1.WeaponLabel = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 219.500000, 401.500000)
	registerVal10:setTopBottom(true, false, 123.000000, 148.000000)
	registerVal10:setText(Engine.Localize("MENU_KILLS_SLASH_ASSISTS_CAPS"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal10)
	registerVal1.StatLabel = registerVal10
	local registerVal11 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal11:setLeftRight(false, false, -230.000000, -106.000000)
	registerVal11:setTopBottom(false, false, -181.000000, -125.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.KillsStat = registerVal11
	local registerVal12 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, false, -106.000000, 18.000000)
	registerVal12:setTopBottom(false, false, -181.000000, -125.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.KillsPerUseStat = registerVal12
	local registerVal13 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal13:setLeftRight(false, false, 18.000000, 142.000000)
	registerVal13:setTopBottom(false, false, -181.000000, -125.000000)
	registerVal13.StatLabel:setText(Engine.Localize("MENU_USED_CAPS"))
	registerVal1:addElement(registerVal13)
	registerVal1.UsedStat = registerVal13
	local registerVal14 = CoD.CombatRecordRightTitleWithBackground.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 409.000000, 557.000000)
	registerVal14:setTopBottom(true, false, 148.000000, 178.000000)
	registerVal1:addElement(registerVal14)
	registerVal1.WeaponNameTitle = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(false, true, -664.000000, -289.000000)
	registerVal15:setTopBottom(true, false, 237.130000, 612.130000)
	registerVal1:addElement(registerVal15)
	registerVal1.ScorestreakImage = registerVal15
	local registerVal16 = CoD.CombatRecordComparingPlayerInfo.new(registerVal1, arg0)
	registerVal16:setLeftRight(false, true, -870.000000, -458.000000)
	registerVal16:setTopBottom(true, false, 22.000000, 82.000000)
	registerVal1:addElement(registerVal16)
	registerVal1.CombatRecordComparingPlayerInfo = registerVal16
	local function __FUNC_1D52_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.StatLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal8, "statName", true, __FUNC_1D52_)
	local function __FUNC_1E29_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal11.StatValue:setText(Engine.Localize(CombatRecordGetItemKillsOrAssistsForItemIndex(arg0, registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal8, "itemIndex", true, __FUNC_1E29_)
	local function __FUNC_1F44_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal11.ComparedStatValue:setText(Engine.Localize(CombatRecordGetComparisonItemKillsOrAssistsForItemIndex(arg0, registerVal1)))
		end
	end

	registerVal11:linkToElementModel(registerVal8, "itemIndex", true, __FUNC_1F44_)
	local function __FUNC_2072_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.StatLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal8, "statPerUseString", true, __FUNC_2072_)
	local function __FUNC_2149_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal12.StatValue:setText(Engine.Localize(CombatRecordGetKillsOrAssistsRatioForItemIndex(arg0, "used", registerVal1)))
		end
	end

	registerVal12:linkToElementModel(registerVal8, "itemIndex", true, __FUNC_2149_)
	local function __FUNC_2277_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal12.ComparedStatValue:setText(Engine.Localize(CombatRecordGetComparisonKillsOrAssistsRatioForItemIndex(arg0, "used", registerVal1)))
		end
	end

	registerVal12:linkToElementModel(registerVal8, "itemIndex", true, __FUNC_2277_)
	local function __FUNC_23B5_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal13.StatValue:setText(Engine.Localize(CombatRecordGetItemStatForItemIndex(arg0, "used", registerVal1)))
		end
	end

	registerVal13:linkToElementModel(registerVal8, "itemIndex", true, __FUNC_23B5_)
	local function __FUNC_24D8_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal13.ComparedStatValue:setText(Engine.Localize(CombatRecordGetComparisonItemStatForItemIndex(arg0, "used", registerVal1)))
		end
	end

	registerVal13:linkToElementModel(registerVal8, "itemIndex", true, __FUNC_24D8_)
	local function __FUNC_260E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.Label:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal8, "name", true, __FUNC_260E_)
	local function __FUNC_26E1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setImage(RegisterImage(AppendString("_menu_large", GetItemImageByIndexAndMode("mp", registerVal1))))
		end
	end

	registerVal15:linkToElementModel(registerVal8, "itemIndex", true, __FUNC_26E1_)
	local registerVal20 = Engine.GetModelForController(arg0)
	local registerVal19 = Engine.GetModel(registerVal20, "CombatRecordComparing")
	local function __FUNC_2807_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "CombatRecordComparing"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal19, __FUNC_2807_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "OtherPlayerStats.InProgress")
	local function __FUNC_29CF_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "OtherPlayerStats.InProgress"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal19, __FUNC_29CF_)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "OtherPlayerStats.Success")
	local function __FUNC_2B9D_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "OtherPlayerStats.Success"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal19, __FUNC_2B9D_)
	local function __FUNC_2D6A_(arg1, arg2)
		ShowHeaderKickerAndIcon(registerVal1)
		CombatRecordSetHeadingKickerTextToCombatRecordMode("")
		CombatRecordUpdateSelfIdentityWidget(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2D6A_)
	local function __FUNC_2E92_(arg0, arg1, arg2, arg3)
		CombatRecordSetComparing(registerVal1, arg2, false)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_2F43_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2E92_, __FUNC_2F43_, false)
	local function __FUNC_303D_(arg0, arg1, arg2, arg3)
		local registerVal4 = EnableCombatRecordCompare(arg2)
		registerVal4 = IsCombatRecordForRemotePlayer()
		if registerVal4 and not registerVal4 then
			OpenPopup(registerVal1, "CombatRecordFriendSidebar", arg2)
			return true
		else
			registerVal4 = EnableCombatRecordCompare(arg2)
			registerVal4 = IsCombatRecordForRemotePlayer()
			if registerVal4 and registerVal4 then
				CombatRecordSetComparing(registerVal1, arg2, true)
				CombatRecordCompareAgainstLocalPlayer(arg2)
				UpdateElementDataSource(registerVal1, "ItemList")
				return true
			end
		end
	end

	local function __FUNC_320C_(arg0, arg1, arg2)
		local registerVal3 = EnableCombatRecordCompare(arg2)
		registerVal3 = IsCombatRecordForRemotePlayer()
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_COMPARE")
			return true
		else
			registerVal3 = EnableCombatRecordCompare(arg2)
			registerVal3 = IsCombatRecordForRemotePlayer()
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_COMPARE")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "F", __FUNC_303D_, __FUNC_320C_, false)
	local function __FUNC_33EF_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsComparingStats(arg2)
		if registerVal4 then
			CombatRecordSetComparing(registerVal1, arg2, false)
			return true
		end
	end

	local function __FUNC_3484_(arg0, arg1, arg2)
		local registerVal3 = IsComparingStats(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_CLEAR_COMPARE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "C", __FUNC_33EF_, __FUNC_3484_, false)
	registerVal7:setModel(registerVal1.buttonModel, arg0)
	registerVal8.id = "ItemList"
	registerVal19 = {}
	registerVal19.name = "menu_loaded"
	registerVal19.controller = arg0
	registerVal1:processEvent(registerVal19)
	registerVal19 = {}
	registerVal19.name = "update_state"
	registerVal19.menu = registerVal1
	registerVal1:processEvent(registerVal19)
	local registerVal17 = registerVal1:restoreState()
	if not registerVal17 then
		registerVal19 = {}
		registerVal19.name = "gain_focus"
		registerVal19.controller = arg0
		registerVal1.ItemList:processEvent(registerVal19)
	end
	local function __FUNC_35C0_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.ItemList:close()
		arg1.KillsStat:close()
		arg1.KillsPerUseStat:close()
		arg1.UsedStat:close()
		arg1.WeaponNameTitle:close()
		arg1.CombatRecordComparingPlayerInfo:close()
		arg1.ScorestreakImage:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CombatRecordScorestreaks.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_35C0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CombatRecordScorestreaks = __FUNC_4A1_

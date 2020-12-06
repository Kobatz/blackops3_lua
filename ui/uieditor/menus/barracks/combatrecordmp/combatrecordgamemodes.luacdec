-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Barracks.CombatRecordMP.CombatRecordFriendSidebar")
require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrameIdentity")
require("ui.uieditor.widgets.Barracks.CombatRecordStatListItem")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Barracks.CombatRecordStatHeader")
require("ui.uieditor.widgets.Barracks.CombatRecordLeftTitleWithBackground")
require("ui.uieditor.widgets.Barracks.CombatRecordGameModeStat")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Barracks.CombatRecordWinnersCircleStat")
require("ui.uieditor.widgets.Barracks.CombatRecordComparingPlayerInfo")
require("ui.uieditor.widgets.Barracks.CombatRecordStatRing")
local function __FUNC_572_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_5C5_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CombatRecordGameModes")
	if __FUNC_572_ then
		__FUNC_572_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CombatRecordGameModes.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_2AB3_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_2AB3_
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
	registerVal7.titleLabel:setText(Engine.Localize("MENU_CHALLENGES_GAME_MODES"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_CHALLENGES_GAME_MODES"))
	registerVal7.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_logowhite"))
	registerVal1:addElement(registerVal7)
	registerVal1.MenuFrame = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 81.000000, 361.000000)
	registerVal8:setTopBottom(true, false, 157.500000, 625.500000)
	registerVal8:setWidgetType(CoD.CombatRecordStatListItem)
	registerVal8:setVerticalCount(10.000000)
	registerVal8:setVerticalCounter(CoD.verticalCounter)
	registerVal8:setDataSource("CombatRecordGameModeList")
	local function __FUNC_2AFA_(arg1)
		UpdateDataSource(registerVal1, registerVal8, arg0)
	end

	registerVal8:subscribeToGlobalModel(arg0, "OtherPlayerStats", "InProgress", __FUNC_2AFA_)
	registerVal1:addElement(registerVal8)
	registerVal1.ItemList = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 81.000000, 128.000000)
	registerVal9:setTopBottom(true, false, 123.000000, 148.000000)
	registerVal9:setText(Engine.Localize("MENU_GAME_MODE_CAPS"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal9)
	registerVal1.WeaponLabel = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 247.000000, 429.000000)
	registerVal10:setTopBottom(true, false, 123.000000, 148.000000)
	registerVal10:setText(Engine.Localize("MENU_WINS_CAPS"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal10)
	registerVal1.StatLabel = registerVal10
	local registerVal11 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 816.000000, 940.000000)
	registerVal11:setTopBottom(true, false, 157.500000, 213.500000)
	registerVal11.StatLabel:setText(Engine.Localize("MENU_WINS_CAPS"))
	registerVal1:addElement(registerVal11)
	registerVal1.WinsStat = registerVal11
	local registerVal12 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 940.000000, 1064.000000)
	registerVal12:setTopBottom(true, false, 157.500000, 213.500000)
	registerVal12.StatLabel:setText(Engine.Localize("MENU_KDRATIO_CAPS"))
	registerVal1:addElement(registerVal12)
	registerVal1.KDRatioStat = registerVal12
	local registerVal13 = CoD.CombatRecordStatHeader.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 1064.000000, 1188.000000)
	registerVal13:setTopBottom(true, false, 157.500000, 213.500000)
	registerVal13.StatLabel:setText(Engine.Localize("MENU_SPM_SHORT"))
	registerVal1:addElement(registerVal13)
	registerVal1.SPMStat = registerVal13
	local registerVal14 = CoD.CombatRecordLeftTitleWithBackground.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 472.290000, 629.290000)
	registerVal14:setTopBottom(true, false, 157.500000, 187.500000)
	registerVal1:addElement(registerVal14)
	registerVal1.GameModeName = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(false, true, -318.010000, -154.000000)
	registerVal15:setTopBottom(true, false, 286.500000, 310.500000)
	registerVal15:setText(Engine.Localize("MENU_COMBAT_RECORD_RECORD"))
	registerVal15:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal15)
	registerVal1.RecordLabel = registerVal15
	local registerVal16 = CoD.CombatRecordGameModeStat.new(registerVal1, arg0)
	registerVal16:setLeftRight(false, true, -320.010000, -154.000000)
	registerVal16:setTopBottom(true, false, 375.000000, 409.000000)
	registerVal16.WinsColorImage:setRGB(1.000000, 0.120000, 0.000000)
	registerVal16.WinsLabel:setText(Engine.Localize("MENU_STREAK"))
	registerVal1:addElement(registerVal16)
	registerVal1.Streak = registerVal16
	local registerVal17 = CoD.CombatRecordGameModeStat.new(registerVal1, arg0)
	registerVal17:setLeftRight(false, true, -320.010000, -154.000000)
	registerVal17:setTopBottom(true, false, 343.000000, 377.000000)
	registerVal17.WinsColorImage:setRGB(0.380000, 0.380000, 0.380000)
	registerVal17.WinsLabel:setText(Engine.Localize("MPUI_LOSSES"))
	registerVal1:addElement(registerVal17)
	registerVal1.LossRecord = registerVal17
	local registerVal18 = CoD.CombatRecordGameModeStat.new(registerVal1, arg0)
	registerVal18:setLeftRight(false, true, -320.010000, -154.000000)
	registerVal18:setTopBottom(true, false, 311.500000, 345.500000)
	registerVal18.WinsLabel:setText(Engine.Localize("MENU_WINS"))
	registerVal1:addElement(registerVal18)
	registerVal1.WinsRecord = registerVal18
	local registerVal19 = CoD.StartMenu_frame_noBG.new(registerVal1, arg0)
	registerVal19:setLeftRight(false, false, -252.500000, -167.710000)
	registerVal19:setTopBottom(false, false, -204.500000, -119.950000)
	registerVal19:setAlpha(0.800000)
	registerVal1:addElement(registerVal19)
	registerVal1.StartMenuframenoBG0 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 394.040000, 467.000000)
	registerVal20:setTopBottom(true, false, 160.500000, 233.420000)
	registerVal1:addElement(registerVal20)
	registerVal1.GameModeImage = registerVal20
	local registerVal21 = LUI.UIText.new()
	registerVal21:setLeftRight(false, true, -256.010000, -92.000000)
	registerVal21:setTopBottom(true, false, 435.630000, 459.630000)
	registerVal21:setAlpha(0.000000)
	registerVal21:setText(Engine.Localize("MENU_TIMES_IN_WINNERS_CIRCLE"))
	registerVal21:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal21:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal21)
	registerVal1.WinnersCircleLabel = registerVal21
	local registerVal22 = CoD.CombatRecordWinnersCircleStat.new(registerVal1, arg0)
	registerVal22:setLeftRight(false, true, -148.010000, -93.010000)
	registerVal22:setTopBottom(true, false, 461.630000, 563.630000)
	registerVal22:setAlpha(0.000000)
	registerVal22.RibbonImage:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_ribbon3"))
	registerVal22.StatValue:setText(Engine.Localize("888"))
	registerVal1:addElement(registerVal22)
	registerVal1.Place3Record = registerVal22
	local registerVal23 = CoD.CombatRecordWinnersCircleStat.new(registerVal1, arg0)
	registerVal23:setLeftRight(false, true, -203.010000, -148.010000)
	registerVal23:setTopBottom(true, false, 461.630000, 563.630000)
	registerVal23:setAlpha(0.000000)
	registerVal23.RibbonImage:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_ribbon2"))
	registerVal23.StatValue:setText(Engine.Localize("888"))
	registerVal1:addElement(registerVal23)
	registerVal1.Place2Record = registerVal23
	local registerVal24 = CoD.CombatRecordWinnersCircleStat.new(registerVal1, arg0)
	registerVal24:setLeftRight(false, true, -258.010000, -203.010000)
	registerVal24:setTopBottom(true, false, 461.630000, 563.630000)
	registerVal24:setAlpha(0.000000)
	registerVal24.RibbonImage:setImage(RegisterImage("uie_t7_hud_mp_notifications_endgame_ribbon1"))
	registerVal24.StatValue:setText(Engine.Localize("888"))
	registerVal1:addElement(registerVal24)
	registerVal1.Place1Record = registerVal24
	local registerVal25 = CoD.CombatRecordComparingPlayerInfo.new(registerVal1, arg0)
	registerVal25:setLeftRight(false, true, -870.000000, -458.000000)
	registerVal25:setTopBottom(true, false, 23.000000, 83.000000)
	registerVal1:addElement(registerVal25)
	registerVal1.CombatRecordComparingPlayerInfo = registerVal25
	local registerVal26 = CoD.CombatRecordStatRing.new(registerVal1, arg0)
	registerVal26:setLeftRight(true, false, 568.000000, 824.000000)
	registerVal26:setTopBottom(true, false, 293.630000, 549.630000)
	registerVal26.WLRatioLabel:setText(Engine.Localize("MENU_WLRATIO_CAPS"))
	registerVal1:addElement(registerVal26)
	registerVal1.CombatRecordStatRing = registerVal26
	local function __FUNC_2B56_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal8, "stat", true, __FUNC_2B56_)
	local function __FUNC_2C2D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11.ComparedStatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal8, "statComparison", true, __FUNC_2C2D_)
	local function __FUNC_2D0D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal8, "kdRatio", true, __FUNC_2D0D_)
	local function __FUNC_2DE5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12.ComparedStatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal8, "kdRatioComparison", true, __FUNC_2DE5_)
	local function __FUNC_2EC5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal8, "spm", true, __FUNC_2EC5_)
	local function __FUNC_2F9D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.ComparedStatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal8, "spmComparison", true, __FUNC_2F9D_)
	local function __FUNC_307D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.Label:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal8, "name", true, __FUNC_307D_)
	local function __FUNC_3151_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal8, "streak", true, __FUNC_3151_)
	local function __FUNC_3229_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.StatComparisonValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal16:linkToElementModel(registerVal8, "streakComparison", true, __FUNC_3229_)
	local function __FUNC_330B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal8, "losses", true, __FUNC_330B_)
	local function __FUNC_33E1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal17.StatComparisonValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal17:linkToElementModel(registerVal8, "lossesComparison", true, __FUNC_33E1_)
	local function __FUNC_34C3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:linkToElementModel(registerVal8, "stat", true, __FUNC_34C3_)
	local function __FUNC_3599_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal18.StatComparisonValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal18:linkToElementModel(registerVal8, "statComparison", true, __FUNC_3599_)
	local function __FUNC_367B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal20:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal20:linkToElementModel(registerVal8, "image", true, __FUNC_367B_)
	local function __FUNC_372C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal26.StatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal26:linkToElementModel(registerVal8, "wlRatio", true, __FUNC_372C_)
	local function __FUNC_3805_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal5 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal6 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal26.LossRing:setShaderVector(0.000000, registerVal5, registerVal6, registerVal7, CoD.GetVectorComponentFromString(registerVal1, 4.000000))
		end
	end

	registerVal26:linkToElementModel(registerVal8, "lossRingFrac", true, __FUNC_3805_)
	local function __FUNC_397A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal26.ComparisonStatValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal26:linkToElementModel(registerVal8, "wlRatioComparison", true, __FUNC_397A_)
	local registerVal30 = Engine.GetModelForController(arg0)
	local registerVal29 = Engine.GetModel(registerVal30, "CombatRecordComparing")
	local function __FUNC_3A5B_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "CombatRecordComparing"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal29, __FUNC_3A5B_)
	registerVal30 = Engine.GetGlobalModel()
	registerVal29 = Engine.GetModel(registerVal30, "OtherPlayerStats.InProgress")
	local function __FUNC_3C23_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "OtherPlayerStats.InProgress"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal29, __FUNC_3C23_)
	registerVal30 = Engine.GetGlobalModel()
	registerVal29 = Engine.GetModel(registerVal30, "OtherPlayerStats.Success")
	local function __FUNC_3DF1_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "OtherPlayerStats.Success"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal1:subscribeToModel(registerVal29, __FUNC_3DF1_)
	local function __FUNC_3FBE_(arg1, arg2)
		ShowHeaderKickerAndIcon(registerVal1)
		CombatRecordSetHeadingKickerTextToCombatRecordMode("")
		CombatRecordUpdateSelfIdentityWidget(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_3FBE_)
	local function __FUNC_40E6_(arg0, arg1, arg2, arg3)
		CombatRecordSetComparing(registerVal1, arg2, false)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_4197_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_40E6_, __FUNC_4197_, false)
	local function __FUNC_4291_(arg0, arg1, arg2, arg3)
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

	local function __FUNC_4460_(arg0, arg1, arg2)
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

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "F", __FUNC_4291_, __FUNC_4460_, false)
	local function __FUNC_4643_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsComparingStats(arg2)
		if registerVal4 then
			CombatRecordSetComparing(registerVal1, arg2, false)
			return true
		end
	end

	local function __FUNC_46D8_(arg0, arg1, arg2)
		local registerVal3 = IsComparingStats(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_CLEAR_COMPARE")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "C", __FUNC_4643_, __FUNC_46D8_, false)
	registerVal7:setModel(registerVal1.buttonModel, arg0)
	registerVal8.id = "ItemList"
	registerVal29 = {}
	registerVal29.name = "menu_loaded"
	registerVal29.controller = arg0
	registerVal1:processEvent(registerVal29)
	registerVal29 = {}
	registerVal29.name = "update_state"
	registerVal29.menu = registerVal1
	registerVal1:processEvent(registerVal29)
	local registerVal27 = registerVal1:restoreState()
	if not registerVal27 then
		registerVal29 = {}
		registerVal29.name = "gain_focus"
		registerVal29.controller = arg0
		registerVal1.ItemList:processEvent(registerVal29)
	end
	local function __FUNC_4814_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.ItemList:close()
		arg1.WinsStat:close()
		arg1.KDRatioStat:close()
		arg1.SPMStat:close()
		arg1.GameModeName:close()
		arg1.Streak:close()
		arg1.LossRecord:close()
		arg1.WinsRecord:close()
		arg1.StartMenuframenoBG0:close()
		arg1.Place3Record:close()
		arg1.Place2Record:close()
		arg1.Place1Record:close()
		arg1.CombatRecordComparingPlayerInfo:close()
		arg1.CombatRecordStatRing:close()
		arg1.GameModeImage:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CombatRecordGameModes.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_4814_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CombatRecordGameModes = __FUNC_5C5_

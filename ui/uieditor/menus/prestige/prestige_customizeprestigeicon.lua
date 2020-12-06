-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.Prestige.Prestige_PrestigeIconButton")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Prestige.Prestige_PrestigeIconProfiler")
local function __FUNC_477_(arg0)
	local registerVal2 = CoD.PrestigeUtility.GetPrestigeGameMode()
	local registerVal3 = Engine.GetParagonIconTable(registerVal2)
	local registerVal4 = Engine.GetPlayerStats(arg0, CoD.STATS_LOCATION_NORMAL, registerVal2)
	local registerVal5 = registerVal4.PlayerStatsList.PARAGON_RANK.StatValue:get()
	local registerVal6 = registerVal4.PlayerStatsList.PARAGON_ICON_ID.StatValue:get()
	if registerVal6 == CoD.PrestigeUtility.INVALID_PARAGON_ICON_ID then
	end
	local registerVal7, registerVal8, registerVal9 = pairs(registerVal3)
	for index10,value11 in registerVal7, registerVal8, registerVal9 do
		local registerVal12 = Engine.Localize(value11.description)
		if registerVal5 >= value11.unlockParagonLvl then
		end
		if true then
			local registerVal14 = Engine.Localize("PERKS_UNLOCKED_AT_LV", Engine.GetParagonRankDisplayLevel(value11.unlockParagonLvl, registerVal2))
		end
		local registerVal16 = {}
		local registerVal17 = {}
		registerVal17.iconId = value11.id
		local registerVal18 = Engine.Localize(value11.iconTitle)
		registerVal17.buttonTitle = registerVal18
		registerVal17.icon = value11.imageName
		registerVal18 = Engine.Localize(value11.iconTitle, value11.plevel)
		registerVal17.iconTitle = registerVal18
		registerVal18 = Engine.Localize(value11.gameTitle)
		registerVal17.gameTitle = registerVal18
		registerVal17.description = registerVal14
		registerVal17.isLocked = true
		registerVal16.models = registerVal17
		registerVal17 = {}
		if value11.id ~= CoD.PrestigeUtility.DEFAULT_PARAGON_ICON_ID then
		end
		registerVal17.selectIndex = true
		registerVal16.properties = registerVal17
		table.insert({}, registerVal16)
	end
	return {}
end

local registerVal1 = DataSourceHelpers.ListSetup("PrestigeIconButtonList", __FUNC_477_, true)
DataSources.PrestigeIconButtonList = registerVal1
local function __FUNC_A01_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_A55_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Prestige_CustomizePrestigeIcon")
	if __FUNC_A01_ then
		__FUNC_A01_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Prestige_CustomizePrestigeIcon.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_1E20_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_1E20_
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
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal8:setTopBottom(false, false, -275.000000, -236.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.CategoryListPanel = registerVal8
	local registerVal9 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9.titleLabel:setText(Engine.Localize("MENU_PRESTIGE_CUSTOMIZE_ICON_CAPS"))
	registerVal9.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_PRESTIGE_CUSTOMIZE_ICON_CAPS"))
	registerVal1:addElement(registerVal9)
	registerVal1.MenuFrame = registerVal9
	local registerVal10 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal10:setTopBottom(true, false, 24.000000, 84.000000)
	local function __FUNC_1E6A_(arg1)
		registerVal10:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_1E6A_)
	local function __FUNC_1EBA_(arg1)
		registerVal10.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal10:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_1EBA_)
	registerVal1:addElement(registerVal10)
	registerVal1.SelfIdentityBadge = registerVal10
	local registerVal11 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal11:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEMenuLeftGraphics = registerVal11
	local registerVal12 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, true)
	registerVal12:makeFocusable()
	registerVal12:setLeftRight(true, false, 104.000000, 438.000000)
	registerVal12:setTopBottom(true, false, 145.130000, 592.130000)
	registerVal12:setWidgetType(CoD.Prestige_PrestigeIconButton)
	registerVal12:setHorizontalCount(3.000000)
	registerVal12:setVerticalCount(4.000000)
	registerVal12:setSpacing(5.000000)
	registerVal12:setVerticalCounter(CoD.verticalCounter)
	registerVal12:setDataSource("PrestigeIconButtonList")
	local function __FUNC_1F58_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isLocked"
		CoD.Menu.UpdateButtonShownState(registerVal12, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal12:linkToElementModel(registerVal12, "isLocked", true, __FUNC_1F58_)
	local function __FUNC_2115_(arg1, arg2)
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

	registerVal12:registerEventHandler("gain_focus", __FUNC_2115_)
	local function __FUNC_22A7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("lose_focus", __FUNC_22A7_)
	local function __FUNC_2376_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isLocked")
		if not registerVal4 then
			SetParagonIcon(registerVal1, arg0, arg2)
			GoBack(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_2440_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isLocked")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal12, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2376_, __FUNC_2440_, false)
	registerVal1:addElement(registerVal12)
	registerVal1.PrestigeIconList = registerVal12
	local registerVal13 = CoD.Prestige_PrestigeIconProfiler.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 735.500000, 1035.500000)
	registerVal13:setTopBottom(true, false, 145.130000, 445.130000)
	local function __FUNC_2592_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal13.RankText:setRGB(SetToParagonColorIfPrestigeMasterFromStorage(arg0, "mp", 148.000000, 162.000000, 165.000000, registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "StorageGlobal", "stats_mp", __FUNC_2592_)
	local function __FUNC_26AE_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal13.RankText:setText(LevelStringFromStorage(arg0, "mp", registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "StorageGlobal", "stats_mp", __FUNC_26AE_)
	local function __FUNC_279A_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal13.PrestigeMasterTierWidget.ParagonStars:setHorizontalCount(GetPrestigeMasterTierCountFromStorage(arg0, "mp", registerVal1))
		end
	end

	registerVal13:subscribeToGlobalModel(arg0, "StorageGlobal", "stats_mp", __FUNC_279A_)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Locked"
	local function __FUNC_28D2_(arg1, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg0, "isLocked")
	end

	registerVal17.condition = __FUNC_28D2_
	registerVal16 = {registerVal17}
	registerVal13:mergeStateConditions(registerVal16)
	local function __FUNC_2944_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLocked"
		registerVal1:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "isLocked", true, __FUNC_2944_)
	registerVal1:addElement(registerVal13)
	registerVal1.PrestigeIconProfiler = registerVal13
	local function __FUNC_2A62_(arg1)
		registerVal13:setModel(arg1, arg0)
	end

	registerVal13:linkToElementModel(registerVal12, nil, false, __FUNC_2A62_)
	local function __FUNC_2AB2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.IconTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal12, "iconTitle", true, __FUNC_2AB2_)
	local function __FUNC_2B89_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.GameTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal12, "gameTitle", true, __FUNC_2B89_)
	local function __FUNC_2C61_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.Description:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal12, "description", true, __FUNC_2C61_)
	local function __FUNC_2D3B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.PrestigeIcon:setImage(RegisterImage(GetRankIconLarge(registerVal1)))
		end
	end

	registerVal13:linkToElementModel(registerVal12, "icon", true, __FUNC_2D3B_)
	local function __FUNC_2E30_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		return true
	end

	local function __FUNC_2EAD_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2E30_, __FUNC_2EAD_, false)
	registerVal9:setModel(registerVal1.buttonModel, arg0)
	registerVal12.id = "PrestigeIconList"
	registerVal16 = {}
	registerVal16.name = "menu_loaded"
	registerVal16.controller = arg0
	registerVal1:processEvent(registerVal16)
	registerVal16 = {}
	registerVal16.name = "update_state"
	registerVal16.menu = registerVal1
	registerVal1:processEvent(registerVal16)
	local registerVal14 = registerVal1:restoreState()
	if not registerVal14 then
		registerVal16 = {}
		registerVal16.name = "gain_focus"
		registerVal16.controller = arg0
		registerVal1.PrestigeIconList:processEvent(registerVal16)
	end
	local function __FUNC_2FA9_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.PrestigeIconList:close()
		arg1.PrestigeIconProfiler:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Prestige_CustomizePrestigeIcon.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2FA9_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Prestige_CustomizePrestigeIcon = __FUNC_A55_

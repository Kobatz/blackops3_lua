-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrameIdentity")
require("ui.uieditor.widgets.Barracks.CombatRecordAccoladeMissionSelector")
require("ui.uieditor.widgets.MissionRecordVault.MissionRecordVault_ChallengeSelectedInfo")
require("ui.uieditor.widgets.MissionRecordVault.MissionRecordVault_ChallengeRow")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.Lobby.Common.FE_TabIdle")
local function __FUNC_3C8_(arg0, arg1)
	SetGlobalModelValueTrue("inBarracks")
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.CreateModel(registerVal3, "CombatRecordAccolades")
	registerVal3 = Engine.CreateModel(registerVal2, "mapName")
	local registerVal4 = Engine.CreateModel(registerVal2, "unique_id")
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "nextMap")
	arg0:setModel(registerVal2)
end

local function __FUNC_597_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.GetModel(registerVal3, "CombatRecordAccolades")
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.GetModel(registerVal4, "nextMap")
	local function __FUNC_761_(arg1)
		arg0.AccoladeList:updateDataSource()
	end

	arg0.AccoladeList:subscribeToModel(registerVal3, __FUNC_761_)
	local function __FUNC_7D4_(arg0)
		Engine.UnsubscribeAndFreeModel(registerVal2)
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "close", __FUNC_7D4_)
end

local function __FUNC_849_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CombatRecordAccolades")
	if __FUNC_3C8_ then
		__FUNC_3C8_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CombatRecordAccolades.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.StartMenuBackground0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = CoD.GenericMenuFrameIdentity.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_ACCOLADES_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_ACCOLADES_CAPS"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_accolades"))
	registerVal1:addElement(registerVal5)
	registerVal1.MenuFrame = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 182.750000, 385.750000)
	registerVal6:setTopBottom(true, false, 85.680000, 121.680000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.600000)
	registerVal1:addElement(registerVal6)
	registerVal1.Backing = registerVal6
	local registerVal7 = CoD.CombatRecordAccoladeMissionSelector.new(registerVal1, arg0)
	registerVal7:setLeftRight(false, false, -496.000000, -216.000000)
	registerVal7:setTopBottom(true, false, 84.680000, 129.680000)
	registerVal1:addElement(registerVal7)
	registerVal1.CombatRecordAccoladeMissionSelector = registerVal7
	local registerVal8 = CoD.MissionRecordVault_ChallengeSelectedInfo.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, false, -576.000000, -136.000000)
	registerVal8:setTopBottom(true, false, 185.180000, 617.180000)
	registerVal1:addElement(registerVal8)
	registerVal1.MissionRecordVaultChallengeSelectedInfo = registerVal8
	local registerVal9 = LUI.UIList.new(registerVal1, arg0, 10.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(false, false, -130.000000, 548.000000)
	registerVal9:setTopBottom(true, false, 134.180000, 632.180000)
	registerVal9:setWidgetType(CoD.MissionRecordVault_ChallengeRow)
	registerVal9:setHorizontalCount(4.000000)
	registerVal9:setVerticalCount(4.000000)
	registerVal9:setSpacing(10.000000)
	registerVal9:setVerticalCounter(CoD.verticalCounter)
	registerVal9:setDataSource("MissionRecordVaultChallengeInfo")
	local function __FUNC_1841_(arg1, arg2)
		MRV_SelectAccolade(registerVal1, arg1, arg0)
		return nil
	end

	registerVal9:registerEventHandler("list_item_gain_focus", __FUNC_1841_)
	registerVal1:addElement(registerVal9)
	registerVal1.AccoladeList = registerVal9
	local registerVal10 = CoD.FE_TabIdle.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, -2.000000, 1332.000000)
	registerVal10:setTopBottom(true, false, 81.000000, 123.680000)
	registerVal1:addElement(registerVal10)
	registerVal1.FETabIdle0 = registerVal10
	local function __FUNC_18A4_(arg1)
		registerVal8:setModel(arg1, arg0)
	end

	registerVal8:linkToElementModel(registerVal9, nil, false, __FUNC_18A4_)
	local function __FUNC_18F6_(arg1, arg2)
		ShowHeaderKickerAndIcon(registerVal1)
		CombatRecordSetHeadingKickerTextToCombatRecordGameMode("")
		CombatRecordUpdateSelfIdentityWidget(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_18F6_)
	local function __FUNC_1A22_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_1A74_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1A22_, __FUNC_1A74_, false)
	local function __FUNC_1B71_(arg0, arg1, arg2, arg3)
		CombatRecordAccoladesChangeMap(registerVal1, arg2, arg0, "-1")
		PlaySoundAlias("uin_paint_decal_nav")
		return true
	end

	local function __FUNC_1C31_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LB, nil, __FUNC_1B71_, __FUNC_1C31_, false)
	local function __FUNC_1D1A_(arg0, arg1, arg2, arg3)
		CombatRecordAccoladesChangeMap(registerVal1, arg2, arg0, "1")
		PlaySoundAlias("uin_paint_decal_nav")
		return true
	end

	local function __FUNC_1DD8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RB, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RB, nil, __FUNC_1D1A_, __FUNC_1DD8_, false)
	local function __FUNC_1EC2_(arg1)
		SetGlobalModelValueFalse("inBarracks")
		ClearMenuSavedState(registerVal1)
		ClearSavedState(registerVal1, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_1EC2_)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal9.id = "AccoladeList"
	local registerVal13 = {}
	registerVal13.name = "menu_loaded"
	registerVal13.controller = arg0
	registerVal1:processEvent(registerVal13)
	registerVal13 = {}
	registerVal13.name = "update_state"
	registerVal13.menu = registerVal1
	registerVal1:processEvent(registerVal13)
	local registerVal11 = registerVal1:restoreState()
	if not registerVal11 then
		registerVal13 = {}
		registerVal13.name = "gain_focus"
		registerVal13.controller = arg0
		registerVal1.AccoladeList:processEvent(registerVal13)
	end
	local function __FUNC_1F80_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.MenuFrame:close()
		arg1.CombatRecordAccoladeMissionSelector:close()
		arg1.MissionRecordVaultChallengeSelectedInfo:close()
		arg1.AccoladeList:close()
		arg1.FETabIdle0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CombatRecordAccolades.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1F80_)
	if __FUNC_597_ then
		__FUNC_597_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CombatRecordAccolades = __FUNC_849_

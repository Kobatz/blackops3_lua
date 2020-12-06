-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrameIdentity")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
local function __FUNC_2B0_(arg0, arg1)
	CoD.CombatRecordPreventModeChange = true
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_341_(arg0, arg1)
	CoD.CombatRecordPreventModeChange = nil
end

local function __FUNC_3A9_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CombatRecordMP")
	if __FUNC_2B0_ then
		__FUNC_2B0_(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CombatRecordMP.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_FFE_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_FFE_
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
	registerVal5:setTopBottom(true, false, 80.000000, 697.250000)
	registerVal1:addElement(registerVal5)
	registerVal1.FEMenuLeftGraphics = registerVal5
	registerVal6 = CoD.GenericMenuFrameIdentity.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.titleLabel:setText(Engine.Localize("MENU_COMBAT_RECORD_CAPS"))
	registerVal6.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_COMBAT_RECORD_CAPS"))
	registerVal1:addElement(registerVal6)
	registerVal1.MenuFrame = registerVal6
	registerVal7 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 0.000000, 2497.000000)
	registerVal7:setTopBottom(true, false, 84.000000, 125.000000)
	registerVal7.Tabs.grid:setHorizontalCount(8.000000)
	registerVal7.Tabs.grid:setDataSource("CombatRecordMPTabs")
	local function __FUNC_1046_(arg1, arg2)
		CombatRecordTabChanged(registerVal1, arg1, arg0)
		return nil
	end

	registerVal7:registerEventHandler("list_active_changed", __FUNC_1046_)
	registerVal1:addElement(registerVal7)
	registerVal1.FETabBar = registerVal7
	local registerVal8 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal8:setLeftRight(false, false, -576.000000, 640.000000)
	registerVal8:setTopBottom(true, false, 127.000000, 673.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.TabFrame = registerVal8
	local function __FUNC_10AC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:changeFrameWidget(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal7.Tabs.grid, "tabWidget", true, __FUNC_10AC_)
	local function __FUNC_114A_(arg1, arg2)
		CombatRecordSetComparing(registerVal1, arg0, false)
		CombatRecordUpdateSelfIdentityWidget(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_114A_)
	local function __FUNC_1229_(arg0, arg1, arg2, arg3)
		CombatRecordProfileSnapshotDestroyScreenshot(arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_12BE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1229_, __FUNC_12BE_, false)
	registerVal6:setModel(registerVal1.buttonModel, arg0)
	registerVal8.id = "TabFrame"
	local registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	local registerVal9 = registerVal1:restoreState()
	if not registerVal9 then
		registerVal11 = {}
		registerVal11.name = "gain_focus"
		registerVal11.controller = arg0
		registerVal1.TabFrame:processEvent(registerVal11)
	end
	local function __FUNC_13B9_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.MenuFrame:close()
		arg1.FETabBar:close()
		arg1.TabFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CombatRecordMP.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_13B9_)
	if __FUNC_341_ then
		__FUNC_341_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CombatRecordMP = __FUNC_3A9_

-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.CPLevels.CPMissionInfo")
function LUI.createMenu.CPMissionOverviewFrontend(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CPMissionOverviewFrontend")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "MultiplayerMain"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CPMissionOverviewFrontend.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -16.000000, 0.000000)
	registerVal3:setTopBottom(true, true, -13.000000, -9.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.950000)
	registerVal1:addElement(registerVal3)
	registerVal1.black = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -67.000000, 38.330000)
	registerVal4:setTopBottom(true, true, -36.000000, 17.380000)
	registerVal4:setAlpha(0.740000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cp_bg_image"))
	registerVal1:addElement(registerVal4)
	registerVal1.background = registerVal4
	local registerVal5 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.titleLabel:setText(Engine.Localize("MENU_MISSION_OVERVIEW_CAP"))
	registerVal5.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_MISSION_OVERVIEW_CAP"))
	registerVal1:addElement(registerVal5)
	registerVal1.MenuFrame = registerVal5
	local registerVal6 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal6:setTopBottom(true, false, 84.000000, 701.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.FEMenuLeftGraphics = registerVal6
	local registerVal7 = CoD.CPMissionInfo.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 95.450000, 964.450000)
	registerVal7:setTopBottom(true, false, 108.120000, 525.120000)
	local function __FUNC_D36_(arg1)
		registerVal7:setModel(arg1, arg0)
	end

	registerVal7:subscribeToGlobalModel(arg0, "CPMissionOverviewFrontend", nil, __FUNC_D36_)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Classified"
	local function __FUNC_D86_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_D86_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal1:addElement(registerVal7)
	registerVal1.CPMissionInfo = registerVal7
	local function __FUNC_DD1_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_E24_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_DD1_, __FUNC_E24_, false)
	local function __FUNC_F21_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_F54_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_F21_, __FUNC_F54_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal10 = {}
	registerVal10.name = "menu_loaded"
	registerVal10.controller = arg0
	registerVal1:processEvent(registerVal10)
	registerVal10 = {}
	registerVal10.name = "update_state"
	registerVal10.menu = registerVal1
	registerVal1:processEvent(registerVal10)
	local function __FUNC_1047_(arg1)
		arg1.MenuFrame:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.CPMissionInfo:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CPMissionOverviewFrontend.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1047_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end


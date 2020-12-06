-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.Challenges.Challenges_ZM_Summary")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.TabbedWidgets.basicTabList")
require("ui.uieditor.widgets.TabbedWidgets.paintshopTabWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_38B_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_3DD_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Challenges_ZM")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Challenges_ZM.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_14E2_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_14E2_
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
	local registerVal5 = CoD.FE_ButtonPanelShaderContainer.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, -11.000000, 1285.000000)
	registerVal5:setTopBottom(true, false, 115.910000, 733.910000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.FEButtonPanelShaderContainer0 = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal6:setTopBottom(false, false, -276.000000, -237.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.CategoryListPanel = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(false, false, -336.000000, -276.000000)
	registerVal7:setRGB(0.120000, 0.130000, 0.190000)
	registerVal7:setAlpha(0.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.MenuTitleBackground = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 64.000000, 1280.000000)
	registerVal8:setTopBottom(true, false, 31.000000, 75.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("Menu"))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal8)
	registerVal1.TitleText = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -3.630000, 0.000000)
	registerVal9:setTopBottom(false, false, 302.000000, 332.000000)
	registerVal9:setRGB(0.120000, 0.130000, 0.190000)
	registerVal9:setAlpha(0.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.ButtonBarBackground = registerVal9
	local registerVal10 = CoD.Challenges_ZM_Summary.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, -574.000000, 576.000000)
	registerVal10:setTopBottom(false, false, -236.000000, 285.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.ZMSummaryFrame = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, -11.000000, 1293.000000)
	registerVal11:setTopBottom(true, false, 80.000000, 88.000000)
	registerVal11:setRGB(0.900000, 0.900000, 0.900000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal11)
	registerVal1.CategoryListLine = registerVal11
	local registerVal12 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal12:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal12.titleLabel:setText(Engine.Localize("MENU_CHALLENGES_CAPS"))
	registerVal12.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_CHALLENGES_CAPS"))
	registerVal1:addElement(registerVal12)
	registerVal1.MenuFrame = registerVal12
	local registerVal13 = CoD.basicTabList.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 64.000000, 1216.000000)
	registerVal13:setTopBottom(true, false, 84.000000, 124.000000)
	registerVal13.grid:setWidgetType(CoD.paintshopTabWidget)
	registerVal13.grid:setHorizontalCount(7.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.Tabs = registerVal13
	local registerVal14 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal14:setTopBottom(true, false, 84.000000, 701.250000)
	registerVal1:addElement(registerVal14)
	registerVal1.FEMenuLeftGraphics = registerVal14
	local function __FUNC_152A_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_157C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_152A_, __FUNC_157C_, false)
	registerVal10.id = "ZMSummaryFrame"
	registerVal12:setModel(registerVal1.buttonModel, arg0)
	local registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	local registerVal15 = registerVal1:restoreState()
	if not registerVal15 then
		registerVal17 = {}
		registerVal17.name = "gain_focus"
		registerVal17.controller = arg0
		registerVal1.ZMSummaryFrame:processEvent(registerVal17)
	end
	local function __FUNC_1679_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.ZMSummaryFrame:close()
		arg1.MenuFrame:close()
		arg1.Tabs:close()
		arg1.FEMenuLeftGraphics:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Challenges_ZM.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1679_)
	if __FUNC_38B_ then
		__FUNC_38B_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Challenges_ZM = __FUNC_3DD_

-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Background")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
require("ui.uieditor.widgets.Lobby.Common.FE_TabBar")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
local function __FUNC_336_(arg0, arg1)
	arg0.disablePopupOpenCloseAnim = true
end

local function __FUNC_389_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Challenges")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "ChooseDecal"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Challenges.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.StartMenu_Background.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "InGame"
	local function __FUNC_159D_(arg0, arg1, arg2)
		return IsInGame()
	end

	registerVal7.condition = __FUNC_159D_
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
	local registerVal10 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal10:setLeftRight(false, false, -574.000000, 576.000000)
	registerVal10:setTopBottom(false, false, -219.000000, 301.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.TabFrame = registerVal10
	local registerVal11 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal11.titleLabel:setText(Engine.Localize("MENU_CHALLENGES_CAPS"))
	registerVal11.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_CHALLENGES_CAPS"))
	registerVal1:addElement(registerVal11)
	registerVal1.MenuFrame = registerVal11
	local registerVal12 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 871.000000, 1216.000000)
	registerVal12:setTopBottom(true, false, 23.000000, 83.000000)
	local function __FUNC_15E6_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_15E6_)
	local function __FUNC_1636_(arg1)
		registerVal12.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal12:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_1636_)
	registerVal1:addElement(registerVal12)
	registerVal1.SelfIdentityBadge = registerVal12
	local registerVal13 = CoD.FE_TabBar.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 0.000000, 2497.000000)
	registerVal13:setTopBottom(true, false, 84.000000, 125.000000)
	registerVal13.Tabs.grid:setHorizontalCount(8.000000)
	registerVal13.Tabs.grid:setDataSource("ChallengesTabs")
	registerVal1:addElement(registerVal13)
	registerVal1.FETabBar = registerVal13
	local registerVal14 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal14:setLeftRight(true, false, 19.000000, 71.000000)
	registerVal14:setTopBottom(true, false, 86.000000, 703.250000)
	registerVal1:addElement(registerVal14)
	registerVal1.FEMenuLeftGraphics = registerVal14
	local function __FUNC_16D4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:changeFrameWidget(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal13.Tabs.grid, "tabWidget", true, __FUNC_16D4_)
	local function __FUNC_1772_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_17C4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1772_, __FUNC_17C4_, false)
	local function __FUNC_18C1_(arg0, arg1, arg2, arg3)
		PlaySoundSetSound(registerVal1, "list_action")
		return true
	end

	local function __FUNC_1934_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_18C1_, __FUNC_1934_, false)
	registerVal10.id = "TabFrame"
	registerVal11:setModel(registerVal1.buttonModel, arg0)
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
		registerVal1.TabFrame:processEvent(registerVal17)
	end
	local function __FUNC_1A32_(arg1)
		arg1.StartMenuBackground0:close()
		arg1.FEButtonPanelShaderContainer0:close()
		arg1.MenuFrame:close()
		arg1.SelfIdentityBadge:close()
		arg1.FETabBar:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.TabFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Challenges.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1A32_)
	if __FUNC_336_ then
		__FUNC_336_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Challenges = __FUNC_389_

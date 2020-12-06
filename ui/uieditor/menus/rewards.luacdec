-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.AfterActionReportMenu")
require("ui.uieditor.widgets.MenuSpecificWidgets.RewardsListWidget")
local function __FUNC_207_(arg0)
	local registerVal3 = {}
	registerVal3.name = "gain_focus"
	registerVal3.controller = controller
	arg0.rewardsList:processEvent(registerVal3)
end

local function __FUNC_2B5_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Rewards")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Rewards.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, false, -232.000000, 248.000000)
	registerVal4:setRGB(0.210000, 0.210000, 0.210000)
	registerVal1:addElement(registerVal4)
	registerVal1.background2 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 191.000000, 325.000000)
	registerVal5:setTopBottom(true, false, 150.000000, 198.000000)
	registerVal5:setText(Engine.Localize("MPUI_REWARDS_CAPS"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal5)
	registerVal1.titleLabel = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 191.000000, 277.000000)
	registerVal6:setTopBottom(true, false, 442.500000, 472.500000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal6)
	registerVal1.itemNameLabel = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 191.000000, 723.000000)
	registerVal7:setTopBottom(true, false, 472.500000, 497.500000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal7)
	registerVal1.itemDescLabel = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 191.000000, 489.000000)
	registerVal8:setTopBottom(true, false, 497.500000, 522.500000)
	registerVal8:setRGB(0.610000, 0.610000, 0.610000)
	registerVal8:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal8)
	registerVal1.itemDesc2Label = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 793.000000, 855.000000)
	registerVal9:setTopBottom(true, false, 167.000000, 192.000000)
	registerVal9:setRGB(0.220000, 0.760000, 0.320000)
	registerVal9:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal9)
	registerVal1.missionStatusLabel = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 941.000000, 1017.000000)
	registerVal10:setTopBottom(true, false, 167.000000, 192.000000)
	registerVal10:setText(Engine.Localize("MPUI_SABOTAGE_CAPS"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal10)
	registerVal1.gameTypeLabel = registerVal10
	local registerVal11 = LUI.UITightText.new()
	registerVal11:setLeftRight(false, true, -248.000000, -100.000000)
	registerVal11:setTopBottom(true, false, 171.000000, 191.000000)
	registerVal11:setText(Engine.Localize("CPUI_CP_HUB_SING_HILLTOP_PARK_C"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal11)
	registerVal1.locationLabel = registerVal11
	local registerVal12 = LUI.UIList.new(registerVal1, arg0, 25.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal12:makeFocusable()
	registerVal12:setLeftRight(true, false, 186.000000, 1571.000000)
	registerVal12:setTopBottom(true, false, 218.000000, 428.000000)
	registerVal12:setDataSource("Rewards")
	registerVal12:setWidgetType(CoD.RewardsListWidget)
	registerVal12:setHorizontalCount(6.000000)
	registerVal12:setSpacing(25.000000)
	registerVal1:addElement(registerVal12)
	registerVal1.rewardsList = registerVal12
	local function __FUNC_10D5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal12, "rewardName", true, __FUNC_10D5_)
	local function __FUNC_118E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal12, "rewardDesc1", true, __FUNC_118E_)
	local function __FUNC_1246_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal12, "rewardDesc2", true, __FUNC_1246_)
	local function __FUNC_12FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal1.missionStatusLabel:linkToElementModel(registerVal1, "matchResult", true, __FUNC_12FE_)
	local function __FUNC_13B6_(arg0, arg1, arg2, arg3)
		NavigateToMenu(registerVal1, "AfterActionReportMenu", false, arg2)
		return true
	end

	local function __FUNC_1437_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_CONTINUE")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_13B6_, __FUNC_1437_, false)
	registerVal12.id = "rewardsList"
	local registerVal15 = {}
	registerVal15.name = "menu_loaded"
	registerVal15.controller = arg0
	registerVal1:processEvent(registerVal15)
	registerVal15 = {}
	registerVal15.name = "update_state"
	registerVal15.menu = registerVal1
	registerVal1:processEvent(registerVal15)
	local registerVal13 = registerVal1:restoreState()
	if not registerVal13 then
		registerVal15 = {}
		registerVal15.name = "gain_focus"
		registerVal15.controller = arg0
		registerVal1.rewardsList:processEvent(registerVal15)
	end
	local function __FUNC_1534_(arg1)
		arg1.rewardsList:close()
		arg1.itemNameLabel:close()
		arg1.itemDescLabel:close()
		arg1.itemDesc2Label:close()
		arg1.missionStatusLabel:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Rewards.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1534_)
	if __FUNC_207_ then
		__FUNC_207_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Rewards = __FUNC_2B5_

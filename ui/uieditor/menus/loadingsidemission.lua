-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.LoadingSideMission.loadingCountdownTimerWidget")
local function __FUNC_1F2_(arg0)
	if CoD.SideMissionIndex then
		arg0.missionNameText:setText(Engine.Localize(CoD.GetMapValue(CoD.SideMissionIndex, "mapName", CoD.SideMissionIndex)))
		arg0.missionTypeText:setText("COOP")
	else
		arg0.missionNameText:setText("INVALID")
		arg0.missionTypeText:setText("INVALID")
	end
end

local function __FUNC_3B1_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LoadingSideMission")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LoadingSideMission.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -544.000000, 544.000000)
	registerVal3:setTopBottom(false, false, -156.500000, -105.500000)
	registerVal3:setRGB(1.000000, 0.640000, 0.000000)
	registerVal3:setText(Engine.Localize("MENU_NEW"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal3)
	registerVal1.missionNameText = registerVal3
	local registerVal4 = CoD.loadingCountdownTimerWidget.new(registerVal1, arg0)
	registerVal4:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal4:setTopBottom(false, false, -25.000000, 68.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.countdownTimerWidget = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -544.000000, 544.000000)
	registerVal5:setTopBottom(false, false, -105.500000, -64.500000)
	registerVal5:setText(Engine.Localize("MENU_NEW"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.missionTypeText = registerVal5
	local registerVal8 = {}
	registerVal8.name = "menu_loaded"
	registerVal8.controller = arg0
	registerVal1:processEvent(registerVal8)
	registerVal8 = {}
	registerVal8.name = "update_state"
	registerVal8.menu = registerVal1
	registerVal1:processEvent(registerVal8)
	local function __FUNC_B21_(arg1)
		arg1.countdownTimerWidget:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LoadingSideMission.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_B21_)
	if __FUNC_1F2_ then
		__FUNC_1F2_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.LoadingSideMission = __FUNC_3B1_

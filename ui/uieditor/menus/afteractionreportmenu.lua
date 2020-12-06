-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.AARPlayerSummaryListWidget")
require("ui.uieditor.widgets.MenuSpecificWidgets.AARPlayerSummaryEmptyWidget")
local function __FUNC_236_(arg0)
end

function LUI.createMenu.AfterActionReportMenu(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("AfterActionReportMenu")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "AfterActionReportMenu.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 96.000000, 1184.000000)
	registerVal3:setTopBottom(true, false, 54.000000, 666.000000)
	registerVal3:setRGB(0.210000, 0.210000, 0.210000)
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 128.000000, 401.000000)
	registerVal4:setTopBottom(true, false, 80.000000, 128.000000)
	registerVal4:setText(Engine.Localize("MPUI_AFTER_ACTION_REPORT"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal4)
	registerVal1.titleLabel = registerVal4
	local registerVal5 = LUI.UIList.new(registerVal1, arg0, 25.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 128.000000, 1163.000000)
	registerVal5:setTopBottom(true, false, 154.000000, 554.000000)
	registerVal5:setDataSource("AARStats")
	registerVal5:setWidgetType(CoD.AARPlayerSummaryListWidget)
	registerVal5:setHorizontalCount(4.000000)
	registerVal5:setSpacing(25.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.playerSummaryList = registerVal5
	local registerVal6 = CoD.AARPlayerSummaryEmptyWidget.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 392.000000, 632.000000)
	registerVal6:setTopBottom(true, false, 154.000000, 554.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.emptySummary1 = registerVal6
	local registerVal7 = CoD.AARPlayerSummaryEmptyWidget.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 658.000000, 898.000000)
	registerVal7:setTopBottom(true, false, 154.000000, 554.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.emptySummary2 = registerVal7
	local registerVal8 = CoD.AARPlayerSummaryEmptyWidget.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 923.000000, 1163.000000)
	registerVal8:setTopBottom(true, false, 154.000000, 554.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.emptySummary3 = registerVal8
	local function __FUNC_C73_(arg0, arg1, arg2, arg3)
		SendMenuResponse(registerVal1, "AfterActionReportMenu", "done", arg2)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_D23_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_C73_, __FUNC_D23_, false)
	registerVal5.id = "playerSummaryList"
	local registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	local function __FUNC_E14_(arg1)
		arg1.playerSummaryList:close()
		arg1.emptySummary1:close()
		arg1.emptySummary2:close()
		arg1.emptySummary3:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "AfterActionReportMenu.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_E14_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end


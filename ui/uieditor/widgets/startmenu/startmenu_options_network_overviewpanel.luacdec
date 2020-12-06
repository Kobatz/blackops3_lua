-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Network_PingListItem")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_Network_OverviewPanel = registerVal1
function CoD.StartMenu_Options_Network_OverviewPanel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_Network_OverviewPanel)
	registerVal2.id = "StartMenu_Options_Network_OverviewPanel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 520.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 375.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 70.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.NetworkBox1 = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 305.000000, 375.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.NetworkBox2 = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 82.000000, 296.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.NetworkBox3 = registerVal5
	local registerVal6 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 12.000000, -12.000000)
	registerVal6:setTopBottom(true, false, 195.000000, 283.000000)
	registerVal6:setRGB(0.240000, 0.240000, 0.260000)
	registerVal6:setAlpha(0.300000)
	registerVal2:addElement(registerVal6)
	registerVal2.NetworkPanel1 = registerVal6
	local registerVal7 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 190.000000, -12.000000)
	registerVal7:setTopBottom(true, false, 312.000000, 366.000000)
	registerVal7:setRGB(0.240000, 0.240000, 0.260000)
	registerVal7:setAlpha(0.300000)
	registerVal2:addElement(registerVal7)
	registerVal2.NetworkPanel3 = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 25.000000, 134.000000)
	registerVal8:setTopBottom(true, false, 326.500000, 351.500000)
	registerVal8:setText(Engine.Localize("MENU_OPTIONS_NETWORK_VERSION"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal8)
	registerVal2.VersionLabel = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 200.000000, 400.000000)
	registerVal9:setTopBottom(true, false, 315.000000, 335.000000)
	registerVal9:setTTF("fonts/default.ttf")
	local function __FUNC_1325_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "NetworkInfo", "version", __FUNC_1325_)
	registerVal2:addElement(registerVal9)
	registerVal2.VersionValueLabel = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, true, 25.000000, -25.000000)
	registerVal10:setTopBottom(true, false, 122.000000, 144.000000)
	registerVal10:setText(Engine.Localize("MENU_OPTIONS_NETWORK_ABOUT_PING_BARS_DES"))
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.AboutPingBarsDesc = registerVal10
	local registerVal11 = LUI.UITightText.new()
	registerVal11:setLeftRight(true, false, 25.000000, 133.750000)
	registerVal11:setTopBottom(true, false, 96.000000, 122.000000)
	registerVal11:setText(Engine.Localize("MENU_OPTIONS_NETWORK_ABOUT_PING_BARS"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal11)
	registerVal2.AboutPingBarsLabel = registerVal11
	local registerVal12 = LUI.UITightText.new()
	registerVal12:setLeftRight(true, false, 25.000000, 289.000000)
	registerVal12:setTopBottom(true, false, 35.000000, 60.000000)
	registerVal12:setText(Engine.Localize("MENU_OPTIONS_NETWORK_CUSTOMER_SERVICE_LINK"))
	registerVal12:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal12)
	registerVal2.SupportLinkLabel = registerVal12
	local registerVal13 = LUI.UITightText.new()
	registerVal13:setLeftRight(true, false, 25.000000, 230.160000)
	registerVal13:setTopBottom(true, false, 10.000000, 35.000000)
	registerVal13:setText(Engine.Localize("MENU_OPTIONS_NETWORK_SUPPORT_LINK"))
	registerVal13:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal13)
	registerVal2.SupportLabel = registerVal13
	local registerVal14 = LUI.UITightText.new()
	registerVal14:setLeftRight(true, false, 200.000000, 400.000000)
	registerVal14:setTopBottom(true, false, 339.000000, 359.000000)
	registerVal14:setTTF("fonts/default.ttf")
	local function __FUNC_13DE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:subscribeToGlobalModel(arg1, "NetworkInfo", "connectivityInfo", __FUNC_13DE_)
	registerVal2:addElement(registerVal14)
	registerVal2.ConnectivityLabel = registerVal14
	local registerVal15 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 10.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal15:setLeftRight(false, false, -226.430000, 233.570000)
	registerVal15:setTopBottom(true, false, 197.480000, 281.480000)
	registerVal15:setWidgetType(CoD.StartMenu_Options_Network_PingListItem)
	registerVal15:setHorizontalCount(5.000000)
	registerVal15:setSpacing(10.000000)
	registerVal15:setDataSource("AboutPingBars")
	registerVal2:addElement(registerVal15)
	registerVal2.pingList = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_1496_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal17.DefaultClip = __FUNC_1496_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_14F6_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal4:completeAnimation()
		registerVal2.NetworkBox2:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.NetworkBox2:setTopBottom(true, false, 75.500000, 145.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.NetworkBox3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.NetworkPanel1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.NetworkPanel3:setLeftRight(true, true, 190.000000, -12.000000)
		registerVal2.NetworkPanel3:setTopBottom(true, false, 82.500000, 136.500000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.VersionLabel:setLeftRight(true, false, 25.000000, 134.000000)
		registerVal2.VersionLabel:setTopBottom(true, false, 97.000000, 122.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.VersionValueLabel:setLeftRight(true, false, 200.000000, 400.000000)
		registerVal2.VersionValueLabel:setTopBottom(true, false, 85.500000, 105.500000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.AboutPingBarsDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.AboutPingBarsLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal14:completeAnimation()
		registerVal2.ConnectivityLabel:setLeftRight(true, false, 200.000000, 400.000000)
		registerVal2.ConnectivityLabel:setTopBottom(true, false, 109.500000, 129.500000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.pingList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_14F6_
	registerVal16.PC = registerVal17
	registerVal2.clipsPerState = registerVal16
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "PC"
	local function __FUNC_1AB3_(arg0, arg1, arg2)
		return IsPC()
	end

	registerVal19.condition = __FUNC_1AB3_
	registerVal18 = {registerVal19}
	registerVal2:mergeStateConditions(registerVal18)
	local function __FUNC_1AF6_(arg0)
		arg0.NetworkBox1:close()
		arg0.NetworkBox2:close()
		arg0.NetworkBox3:close()
		arg0.NetworkPanel1:close()
		arg0.NetworkPanel3:close()
		arg0.pingList:close()
		arg0.VersionValueLabel:close()
		arg0.ConnectivityLabel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1AF6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


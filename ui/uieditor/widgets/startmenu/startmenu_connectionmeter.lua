-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_ConnectionMeter_PingImage")
require("ui.uieditor.widgets.StartMenu.StartMenu_ConnectionMeter_PacketLossImage")
local function __FUNC_28F_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "NetStatsInfo", true)
	registerVal3 = Engine.CreateModel(registerVal2, "NETSTATS_LATENCY", true)
	local registerVal4 = Engine.CreateModel(registerVal2, "NETSTATS_PACKETLOSS", true)
	local registerVal6 = Engine.GetGlobalModel()
	local registerVal5 = Engine.CreateModel(registerVal6, "NetworkInfo", true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StartMenu_ConnectionMeter = registerVal2
local function __FUNC_3F7_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_28F_ then
		__FUNC_28F_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.StartMenu_ConnectionMeter)
	registerVal2.id = "StartMenu_ConnectionMeter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 310.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 165.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 189.630000, 307.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 70.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 190.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 70.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.400000)
	registerVal2:addElement(registerVal4)
	registerVal2.bg0 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 200.000000, 228.000000)
	registerVal5:setTopBottom(true, false, 22.500000, 47.500000)
	registerVal5:setText(Engine.Localize("MPUI_CONNECTION_METER_PING_CAPS"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.PingLabel = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 190.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 70.000000)
	registerVal6:setupRenderGraph()
	registerVal6:setGraphMode(1.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.PingBarGraph = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 191.630000, 309.000000)
	registerVal7:setTopBottom(true, false, 90.000000, 164.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setAlpha(0.700000)
	registerVal2:addElement(registerVal7)
	registerVal2.bg10 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 2.000000, 192.000000)
	registerVal8:setTopBottom(true, false, 90.000000, 164.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.400000)
	registerVal2:addElement(registerVal8)
	registerVal2.bg00 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 2.000000, 192.000000)
	registerVal9:setTopBottom(true, false, 90.000000, 164.000000)
	registerVal9:setupRenderGraph()
	registerVal9:setGraphMode(2.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.PacketLossBarGraph = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 200.000000, 264.000000)
	registerVal10:setTopBottom(true, false, 99.000000, 124.000000)
	registerVal10:setText(Engine.Localize("MPUI_CONNECTION_METER_PACKET_LOSS_CAPS"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.TextBox0 = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 262.000000, 296.000000)
	registerVal11:setTopBottom(true, false, 35.000000, 60.000000)
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_11B7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(AppendString("ms", registerVal1)))
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "NetStatsInfo", "NETSTATS_LATENCY", __FUNC_11B7_)
	registerVal2:addElement(registerVal11)
	registerVal2.PingTextBox = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 262.000000, 296.000000)
	registerVal12:setTopBottom(true, false, 125.000000, 150.000000)
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_129C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(AppendString("%", registerVal1)))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "NetStatsInfo", "NETSTATS_PACKETLOSS", __FUNC_129C_)
	registerVal2:addElement(registerVal12)
	registerVal2.PingTextBox0 = registerVal12
	local registerVal13 = CoD.StartMenu_ConnectionMeter_PingImage.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 262.000000, 291.000000)
	registerVal13:setTopBottom(true, false, 4.000000, 35.000000)
	local function __FUNC_1383_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:subscribeToGlobalModel(arg1, "NetStatsInfo", nil, __FUNC_1383_)
	registerVal2:addElement(registerVal13)
	registerVal2.StartMenuConnectionMeterPingImage0 = registerVal13
	local registerVal14 = CoD.StartMenu_ConnectionMeter_PacketLossImage.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 264.000000, 293.000000)
	registerVal14:setTopBottom(true, false, 94.000000, 125.000000)
	local function __FUNC_13D2_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:subscribeToGlobalModel(arg1, "NetStatsInfo", nil, __FUNC_13D2_)
	registerVal2:addElement(registerVal14)
	registerVal2.StartMenuConnectionMeterPacketLossImage0 = registerVal14
	local function __FUNC_1422_(arg0)
		arg0.StartMenuConnectionMeterPingImage0:close()
		arg0.StartMenuConnectionMeterPacketLossImage0:close()
		arg0.PingTextBox:close()
		arg0.PingTextBox0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1422_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_ConnectionMeter.new = __FUNC_3F7_

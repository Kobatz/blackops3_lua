-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_ConnectionMeter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_ConnectionMeterContainer = registerVal1
function CoD.StartMenu_ConnectionMeterContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.StartMenu_ConnectionMeterContainer)
	registerVal2.id = "StartMenu_ConnectionMeterContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 310.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 200.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_ConnectionMeter.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 310.000000)
	registerVal3:setTopBottom(true, false, 30.000000, 195.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuConnectionMeter0 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 121.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal4:setText(Engine.Localize("MPUI_CONNECTION_METER_CAPS"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.ConnectionMeterLabel = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_947_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.StartMenuConnectionMeter0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ConnectionMeterLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_947_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_AB7_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.StartMenuConnectionMeter0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ConnectionMeterLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_AB7_
	registerVal5.Visible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_C27_(arg0, arg2, arg3)
		local registerVal3 = ConnectionMeter_isEnabled(arg2, arg1)
		if registerVal3 then
			registerVal3 = IsLobbyGameHost()
		end
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_C27_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	if registerVal2.m_eventHandlers.on_session_start then
		local function __FUNC_CB4_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.on_session_start(arg1, arg2)
		end

		registerVal2:registerEventHandler("on_session_start", __FUNC_CB4_)
	else
		registerVal2:registerEventHandler("on_session_start", LUI.UIElement.updateState)
	end
	if registerVal2.m_eventHandlers.on_session_end then
		local function __FUNC_D3F_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.on_session_end(arg1, arg2)
		end

		registerVal2:registerEventHandler("on_session_end", __FUNC_D3F_)
	else
		registerVal2:registerEventHandler("on_session_end", LUI.UIElement.updateState)
	end
	local function __FUNC_DC7_(arg0)
		arg0.StartMenuConnectionMeter0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DC7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


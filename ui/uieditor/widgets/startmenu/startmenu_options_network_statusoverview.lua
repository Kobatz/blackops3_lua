-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_Network_StatusOverview = registerVal1
function CoD.StartMenu_Options_Network_StatusOverview.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_Network_StatusOverview)
	registerVal2.id = "StartMenu_Options_Network_StatusOverview"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 670.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 75.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 39.000000, 545.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 75.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.NetworkBox5 = registerVal3
	local registerVal4 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 39.000000, -125.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZoom(1.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FocusBarT = registerVal4
	local registerVal5 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 39.000000, -125.000000)
	registerVal5:setTopBottom(false, true, -4.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZoom(1.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FocusBarB = registerVal5
	local registerVal6 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 49.000000, 535.000000)
	registerVal6:setTopBottom(true, false, 10.000000, 64.460000)
	registerVal6:setRGB(0.240000, 0.240000, 0.260000)
	registerVal6:setAlpha(0.300000)
	registerVal2:addElement(registerVal6)
	registerVal2.NetworkPanel0 = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 59.000000, 525.000000)
	registerVal7:setTopBottom(true, false, 12.230000, 36.000000)
	registerVal7:setText(Engine.Localize("PLATFORM_OPTIONS_NETWORK_SIGNED_IN"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.FirstPartyStateLabel = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 59.000000, 46.430000)
	registerVal8:setTopBottom(true, false, 12.230000, 37.230000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("MENU_OPTIONS_NETWORK_INTERNET_NOT_CONNECTED"))
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal8)
	registerVal2.InternetStateLabel = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 59.000000, 525.000000)
	registerVal9:setTopBottom(true, false, 36.000000, 60.000000)
	registerVal9:setRGB(ColorSet.ResistanceHigh.r, ColorSet.ResistanceHigh.g, ColorSet.ResistanceHigh.b)
	registerVal9:setText(Engine.Localize("MENU_OPTIONS_NETWORK_COD_CONNECTED"))
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal9)
	registerVal2.ServerStateLabel = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_F2E_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.NetworkBox5:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.FirstPartyStateLabel:setLeftRight(true, false, 59.000000, 525.000000)
		registerVal2.FirstPartyStateLabel:setTopBottom(true, false, 12.230000, 36.000000)
		registerVal2.FirstPartyStateLabel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.FirstPartyStateLabel:setText(Engine.Localize("PLATFORM_OPTIONS_NETWORK_SIGNED_IN"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.ServerStateLabel:setRGB(0.550000, 1.000000, 0.000000)
		registerVal2.ServerStateLabel:setText(Engine.Localize("MENU_OPTIONS_NETWORK_COD_CONNECTED"))
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_F2E_
	local function __FUNC_1342_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.FirstPartyStateLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.InternetStateLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ServerStateLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_1342_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_15BD_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.FirstPartyStateLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.InternetStateLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ServerStateLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_15BD_
	local function __FUNC_1839_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.FirstPartyStateLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.InternetStateLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ServerStateLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_1839_
	registerVal10.NoInternet = registerVal11
	registerVal11 = {}
	local function __FUNC_1AB5_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.FirstPartyStateLabel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.FirstPartyStateLabel:setText(Engine.Localize("PLATFORM_OPTIONS_NETWORK_NOT_SIGNED_IN"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.ServerStateLabel:setRGB(ColorSet.ResistanceHigh.r, ColorSet.ResistanceHigh.g, ColorSet.ResistanceHigh.b)
		registerVal2.ServerStateLabel:setText(Engine.Localize("MENU_OPTIONS_NETWORK_COD_NOT_CONNECTED"))
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_1AB5_
	local function __FUNC_1E77_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.FirstPartyStateLabel:setText(Engine.Localize("PLATFORM_OPTIONS_NETWORK_NOT_SIGNED_IN"))
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.InternetStateLabel:setText(Engine.Localize("MENU_OPTIONS_NETWORK_INTERNET_NOT_CONNECTED"))
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ServerStateLabel:setText(Engine.Localize("MENU_OPTIONS_NETWORK_COD_NOT_CONNECTED"))
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_1E77_
	registerVal10.NotSignedInToLive = registerVal11
	registerVal11 = {}
	local function __FUNC_21F0_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.FirstPartyStateLabel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.ServerStateLabel:setRGB(ColorSet.ResistanceHigh.r, ColorSet.ResistanceHigh.g, ColorSet.ResistanceHigh.b)
		registerVal2.ServerStateLabel:setText(Engine.Localize("MENU_OPTIONS_NETWORK_COD_NOT_CONNECTED"))
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_21F0_
	local function __FUNC_2553_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.FirstPartyStateLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.InternetStateLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ServerStateLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_2553_
	registerVal10.NotConnectedToCodServer = registerVal11
	registerVal11 = {}
	local function __FUNC_27CD_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal2.FirstPartyStateLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.ServerStateLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_27CD_
	registerVal10.ArabicFrontEnd = registerVal11
	registerVal2.clipsPerState = registerVal10
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "NoInternet"
	local function __FUNC_2936_(arg0, arg1, arg2)
		local registerVal3 = HasNetworkConnection()
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_2936_
	local registerVal14 = {}
	registerVal14.stateName = "NotSignedInToLive"
	local function __FUNC_298E_(arg0, arg2, arg3)
		local registerVal3 = IsPlayerSignedInToLive(arg1)
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_298E_
	local registerVal15 = {}
	registerVal15.stateName = "NotConnectedToCodServer"
	local function __FUNC_29EC_(arg0, arg2, arg3)
		local registerVal3 = IsPlayerConnectedToCodServers(arg1)
		if not registerVal3 then
			registerVal3 = IsPlayerSignedInToLive(arg1)
		else
		end
		return true
	end

	registerVal15.condition = __FUNC_29EC_
	local registerVal16 = {}
	registerVal16.stateName = "ArabicFrontEnd"
	local function __FUNC_2A8F_(arg0, arg1, arg2)
		local registerVal3 = IsInGame()
		if not registerVal3 then
			registerVal3 = IsArabicSku()
		else
		end
		return true
	end

	registerVal16.condition = __FUNC_2A8F_
	registerVal12 = {registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal2:mergeStateConditions(registerVal12)
	local function __FUNC_2B07_(arg0)
		arg0.NetworkBox5:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.NetworkPanel0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2B07_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


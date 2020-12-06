-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.StartMenu.StartMenu_Options_SliderBar_Bar")
local function __FUNC_319_(arg0, arg1)
	local registerVal2, registerVal3, registerVal4, registerVal5 = arg0.FilledPartBg:getRect()
	local registerVal7 = CoD.ClampColor((arg1.x - registerVal2), 0.000000, (registerVal4 - registerVal2))
	local registerVal11 = {}
	registerVal11.name = "slider_updated"
	registerVal11.fraction = (registerVal7 / (registerVal4 - registerVal2))
	registerVal11.controller = arg1.controller
	arg0:processEvent(registerVal11)
end

local function __FUNC_46A_(arg0)
	local registerVal1, registerVal2, registerVal3, registerVal4 = arg0.FilledPartBg:getLocalRect()
	local registerVal6 = string.format(arg0.m_formatString, arg0.m_currentValue)
	local registerVal7 = string.format(arg0.m_formatString, 0.000000)
	if registerVal6 == registerVal7 then
	end
	arg0.numeric:setText("0.00")
	arg0.Bar:setLeftRight(true, false, (registerVal1 + ((arg0.m_fraction * (registerVal3 - registerVal1)) - arg0.m_markerHalfWidth)), (registerVal1 + ((arg0.m_fraction * (registerVal3 - registerVal1)) + arg0.m_markerHalfWidth)))
	arg0.FilledPart:setLeftRight(true, false, registerVal1, (registerVal1 + (arg0.m_fraction * (registerVal3 - registerVal1))))
end

local function __FUNC_6AF_(arg0, arg1, arg2)
	arg0.m_forceMouseEventDispatch = true
	local registerVal3, registerVal4, registerVal5, registerVal6 = arg0.Bar:getLocalRect()
	arg0.m_markerHalfWidth = ((registerVal5 - registerVal3) / 2.000000)
	arg0.m_formatString = "%.2f"
	arg0.m_speedMaxMultiplier = 8.000000
	arg0.m_ownerController = arg1
	local function __FUNC_B50_(arg0, arg1)
		__FUNC_319_(arg0, arg1)
		return true
	end

	arg0:registerEventHandler("leftmouseup", __FUNC_B50_)
	local function __FUNC_B94_(arg0, arg1)
		__FUNC_319_(arg0, arg1)
	end

	arg0:registerEventHandler("mousedrag", __FUNC_B94_)
	local function __FUNC_BD0_(arg0, arg2)
		local registerVal2 = type(arg0.sliderRefresh)
		if registerVal2 == "function" then
			arg0.sliderRefresh(arg1, arg0)
			__FUNC_46A_(arg0)
		end
	end

	arg0:registerEventHandler("options_refresh", __FUNC_BD0_)
	local function __FUNC_C73_(arg0, arg2)
		local registerVal2 = type(arg0.sliderUpdated)
		if registerVal2 == "function" then
			arg0.sliderUpdated(arg1, arg0, arg2.fraction)
			__FUNC_46A_(arg0)
		end
	end

	arg0:registerEventHandler("slider_updated", __FUNC_C73_)
	local function __FUNC_D31_(arg0, arg1)
		if arg0.m_slideDirection then
			local registerVal6 = CoD.ClampColor((arg0.m_fraction + ((arg0.m_currentSpeed * arg0.m_slideDirection) * (arg1.timeElapsed / 1000.000000))), 0.000000, 1.000000)
			local registerVal8 = {}
			registerVal8.name = "slider_updated"
			registerVal8.fraction = registerVal6
			registerVal8.controller = arg0.m_ownerController
			arg0:processEvent(registerVal8)
		end
	end

	arg0:registerEventHandler("update_bar", __FUNC_D31_)
	local function __FUNC_EF4_(arg0, arg1)
		arg0.m_slideDirection = arg1
	end

	arg0.updateSlideDirection = __FUNC_EF4_
	local function __FUNC_F3E_(arg0, arg1)
		arg0:updateSlideDirection(nil)
		arg0.m_timer:close()
	end

	arg0:registerEventHandler("lose_focus", __FUNC_F3E_)
	local function __FUNC_FC6_(arg1, arg2)
		if arg0.m_beat then
			arg0.m_timer:close()
			arg0.m_heartbeat:close()
			arg0.m_beat = nil
		end
	end

	arg0:registerEventHandler("check_pulse", __FUNC_FC6_)
	local registerVal7 = LUI.UITimer.new(1.000000, "update_bar", false)
	arg0.m_timer = registerVal7
	registerVal7 = LUI.UITimer.new(100.000000, "check_pulse", false)
	arg0.m_heartbeat = registerVal7
	local function __FUNC_1086_(arg1, arg2, arg3, arg4)
		if not arg0.m_disableNavigation then
			if not arg0.m_beat then
				arg0:updateSlideDirection(-1.000000)
				arg0:addElement(arg0.m_timer)
				arg0.m_currentSpeed = arg0.m_sliderSpeed
				arg0.m_speedMax = (arg0.m_sliderSpeed * (arg0.m_speedMaxMultiplier * arg0.m_range))
				arg0.m_beat = true
				arg0:addElement(arg0.m_heartbeat)
			else
				arg0.m_heartbeat:reset()
				local registerVal5 = math.min((arg0.m_currentSpeed * 1.100000), arg0.m_speedMax)
				arg0.m_currentSpeed = registerVal5
			end
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_LEFT, "LEFTARROW", __FUNC_1086_)
	local function __FUNC_1311_(arg1, arg2, arg3, arg4)
		if not arg0.m_disableNavigation then
			if not arg0.m_beat then
				arg0:updateSlideDirection(1.000000)
				arg0:addElement(arg0.m_timer)
				arg0.m_currentSpeed = arg0.m_sliderSpeed
				arg0.m_speedMax = (arg0.m_sliderSpeed * (arg0.m_speedMaxMultiplier * arg0.m_range))
				arg0.m_beat = true
				arg0:addElement(arg0.m_heartbeat)
			else
				arg0.m_heartbeat:reset()
				local registerVal5 = math.min((arg0.m_currentSpeed * 1.100000), arg0.m_speedMax)
				arg0.m_currentSpeed = registerVal5
			end
		end
	end

	CoD.Menu.AddButtonCallbackFunction(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_RIGHT, "RIGHTARROW", __FUNC_1311_)
end

local registerVal4 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_SliderBar = registerVal4
local function __FUNC_159D_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_SliderBar)
	registerVal2.id = "StartMenu_Options_SliderBar"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.100000, 0.100000, 0.100000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.fullBacking = registerVal3
	local registerVal4 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.870000, 0.370000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.frameOutline = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 8.000000, 235.000000)
	registerVal5:setTopBottom(true, false, 5.500000, 30.500000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.label = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 448.000000, 498.000000)
	registerVal6:setTopBottom(true, false, 5.500000, 30.500000)
	registerVal6:setText(Engine.Localize("MENU_NEW"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.numeric = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 254.410000, 434.410000)
	registerVal7:setTopBottom(false, false, -0.500000, 0.500000)
	registerVal7:setRGB(0.550000, 0.550000, 0.550000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FilledPartBg = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 256.410000, 378.410000)
	registerVal8:setTopBottom(false, false, -2.200000, 2.200000)
	registerVal8:setRGB(0.870000, 0.370000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FilledPart = registerVal8
	local registerVal9 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.StartMenuframenoBG00 = registerVal9
	local registerVal10 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setZoom(1.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FocusBarT = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal11:setTopBottom(false, true, -5.500000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarB = registerVal11
	local registerVal12 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, 252.410000, -60.590000)
	registerVal12:setTopBottom(true, true, 15.500000, -15.500000)
	registerVal2:addElement(registerVal12)
	registerVal2.FETitleNumBrdr0 = registerVal12
	local registerVal13 = CoD.StartMenu_Options_SliderBar_Bar.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 378.410000, 384.410000)
	registerVal13:setTopBottom(false, false, -10.500000, 10.500000)
	registerVal2:addElement(registerVal13)
	registerVal2.Bar = registerVal13
	local function __FUNC_2215_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.label:linkToElementModel(registerVal2, "label", true, __FUNC_2215_)
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_22CE_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.frameOutline:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.numeric:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FilledPartBg:setLeftRight(true, false, 254.410000, 434.410000)
		registerVal2.FilledPartBg:setTopBottom(false, false, -0.500000, 0.500000)
		registerVal2.FilledPartBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FilledPart:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleNumBrdr0:setLeftRight(true, true, 252.410000, -60.590000)
		registerVal2.FETitleNumBrdr0:setTopBottom(true, true, 15.500000, -15.500000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Bar:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_22CE_
	local function __FUNC_2783_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal4:completeAnimation()
		registerVal2.frameOutline:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.frameOutline:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.numeric:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FilledPartBg:setLeftRight(true, false, 254.410000, 434.410000)
		registerVal2.FilledPartBg:setTopBottom(false, false, -0.500000, 0.500000)
		registerVal2.FilledPartBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FilledPart:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, 0.000000, 5.500000)
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, -5.500000, 0.000000)
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FETitleNumBrdr0:setLeftRight(true, true, 252.410000, -60.590000)
		registerVal2.FETitleNumBrdr0:setTopBottom(true, true, 15.500000, -15.500000)
		registerVal2.FETitleNumBrdr0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Bar:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.Focus = __FUNC_2783_
	registerVal14.DefaultState = registerVal15
	registerVal2.clipsPerState = registerVal14
	local function __FUNC_2D2B_(arg0)
		arg0.frameOutline:close()
		arg0.StartMenuframenoBG00:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FETitleNumBrdr0:close()
		arg0.Bar:close()
		arg0.label:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2D2B_)
	if __FUNC_6AF_ then
		__FUNC_6AF_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StartMenu_Options_SliderBar.new = __FUNC_159D_

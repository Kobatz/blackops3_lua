-- Decompiled with CoDLUIDecompiler by JariK

CoD.LeftRightSlider = {}
CoD.LeftRightSlider.Width = 100.000000
CoD.LeftRightSlider.Height = 32.000000
CoD.LeftRightSlider.Speed = 0.300000
local registerVal1 = {}
registerVal1.name = "left_right_slider_gain_focus"
CoD.LeftRightSlider.LeftRightSelectorGainFocusEvent = registerVal1
registerVal1 = {}
registerVal1.name = "left_right_slider_lose_focus"
CoD.LeftRightSlider.LeftRightSelectorLoseFocusEvent = registerVal1
function CoD.LeftRightSlider.HandleGamepadInput(arg0, arg1)
	local registerVal2 = LUI.UIElement.handleGamepadButton(arg0, arg1)
	if registerVal2 == true then
		return true
	end
	registerVal2 = arg0:isInFocus()
	if registerVal2 and arg0.m_allowValueUpdate ~= false then
		if arg1.button == "left" then
			if arg1.down == true then
				arg0:updateSlideDirection(-1.000000)
				arg0:addElement(arg0.m_timer)
			else
				arg0:updateSlideDirection(nil)
				arg0.m_timer:close()
			else
				if arg1.button == "right" then
					if arg1.down == true then
						arg0:updateSlideDirection(1.000000)
						arg0:addElement(arg0.m_timer)
					else
						arg0:updateSlideDirection(nil)
						arg0.m_timer:close()
					end
				end
			end
		end
	end
end

function CoD.LeftRightSlider.UpdateBar(arg0, arg1)
	local registerVal6 = arg0:isInFocus()
	if not registerVal6 then
		arg0.m_slideDirection = nil
	end
	local registerVal7 = math.floor(((((arg0.m_currentValue - arg0.m_barMin) * 100.000000) / (arg0.m_barMax - arg0.m_barMin)) / 5.000000))
	if arg0.m_slideDirection ~= nil then
		if (arg0.m_currentValue + ((((arg0.m_barMax - arg0.m_barMin) * arg0.m_barSpeed) * arg0.m_slideDirection) * (arg1.timeElapsed / 1000.000000))) < arg0.m_barMin then
		end
		if arg0.m_barMax < arg0.m_barMin then
		end
		arg0.m_currentValue = arg0.m_barMax
	else
	end
	local registerVal8 = math.floor(((((arg0.m_currentValue - arg0.m_barMin) * 100.000000) / (arg0.m_barMax - arg0.m_barMin)) / 5.000000))
	if arg0.m_sfx ~= nil and registerVal7 ~= nil and registerVal7 ~= registerVal8 then
		Engine.PlaySound(arg0.m_sfx)
	end
	arg0.bar:setupDashes(20.000000, registerVal8, 0.000000, 8.000000)
	if arg0.m_sliderCallback ~= nil then
		arg0.m_sliderCallback(arg0, arg0.m_currentValue)
	end
end

function CoD.LeftRightSlider.UpdateBarFromProfile(arg0, arg1)
	if arg1.isProfileFloat then
		local registerVal2 = Engine.ProfileFloat(arg1.controller, arg0.m_profileVarName)
		arg0.m_currentValue = registerVal2
	else
		registerVal2 = Engine.GetProfileVarInt(arg1.controller, arg0.m_profileVarName)
		arg0.m_currentValue = registerVal2
	end
	CoD.LeftRightSlider.UpdateBar(arg0)
end

function CoD.LeftRightSlider.SetSliderCallback(arg0, arg1)
	arg0.m_sliderCallback = arg1
end

function CoD.LeftRightSlider.GainFocus(arg0, arg1)
	local registerVal2 = CoD.CoD9Button.GainFocus(arg0, arg1)
	arg0:dispatchEventToParent(CoD.LeftRightSlider.LeftRightSelectorGainFocusEvent)
	if arg0.m_allowCycling == false and not arg0.disabled then
		arg0:dispatchEventToParent(CoD.LeftRightSlider.LeftRightSelectorLoseFocusEvent)
	end
	return registerVal2
end

function CoD.LeftRightSlider.LoseFocus(arg0, arg1)
	CoD.CoD9Button.LoseFocus(arg0, arg1)
	arg0:dispatchEventToParent(CoD.LeftRightSelector.LeftRightSelectorLoseFocusEvent)
end

function CoD.LeftRightSlider.new(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
	local registerVal8 = CoD.OptionElement.new(arg0, arg1, arg6)
	if arg2 == nil then
	end
	registerVal8.id = ("LRSlider." .. arg0)
	registerVal8.m_sfx = arg7
	local registerVal9 = LUI.UIElement.new()
	registerVal8.bar = registerVal9
	registerVal8.bar:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal8.bar:setTopBottom(false, false, (-CoD.LeftRightSlider.Height / 2.000000), (CoD.LeftRightSlider.Height / 2.000000))
	registerVal8.horizontalList:addElement(registerVal8.bar)
	registerVal8.bar:setupDashes(20.000000, 0.000000, 0.000000, 18.000000)
	registerVal9 = LUI.UITimer.new(1.000000, "update_bar", false)
	registerVal8.m_timer = registerVal9
	registerVal8.m_barWidth = CoD.LeftRightSlider.Width
	registerVal8.m_barMin = arg4
	registerVal8.m_barMax = arg5
	registerVal8.m_barSpeed = CoD.LeftRightSlider.Speed
	if arg3 == nil then
		registerVal8.m_currentValue = ((arg4 + arg5) / 2.000000)
	else
		registerVal8.m_currentValue = arg3
	end
	registerVal8.handleGamepadButton = CoD.LeftRightSlider.HandleGamepadInput
	registerVal8.setSliderCallback = CoD.LeftRightSlider.SetSliderCallback
	registerVal8.updateSlideDirection = CoD.LeftRightSlider.UpdateSlideDirection
	registerVal8.enableCycling = CoD.LeftRightSlider.EnableCycling
	registerVal8.disableCycling = CoD.LeftRightSlider.DisableCycling
	registerVal8:registerEventHandler("update_bar", CoD.LeftRightSlider.UpdateBar)
	registerVal8:registerEventHandler("update_bar_from_profile", CoD.LeftRightSlider.UpdateBarFromProfile)
	registerVal8:registerEventHandler("leftmousedown", CoD.LeftRightSlider.LeftMouseDown)
	registerVal8:registerEventHandler("leftmouseup", CoD.LeftRightSlider.LeftMouseUp)
	registerVal8:registerEventHandler("rightmousedown", CoD.LeftRightSlider.RightMouseDown)
	registerVal8:registerEventHandler("rightmouseup", CoD.LeftRightSlider.RightMouseUp)
	registerVal8:registerEventHandler("gain_focus", CoD.LeftRightSlider.GainFocus)
	registerVal8:registerEventHandler("lose_focus", CoD.LeftRightSlider.LoseFocus)
	CoD.LeftRightSlider.UpdateBar(registerVal8)
	return registerVal8
end

function CoD.LeftRightSlider.EnableCycling(arg0, arg1)
	arg0.m_allowValueUpdate = true
	arg0:enable()
end

function CoD.LeftRightSlider.DisableCycling(arg0, arg1)
	arg0.m_allowValueUpdate = false
	arg0:disable()
end

function CoD.LeftRightSlider.LeftMouseDown(arg0, arg1)
	local registerVal2 = arg0:isInFocus()
	if registerVal2 then
		arg0:updateSlideDirection(1.000000)
		arg0:addElement(arg0.m_timer)
	else
		arg0:updateSlideDirection(nil)
		arg0.m_timer:close()
	end
end

function CoD.LeftRightSlider.LeftMouseUp(arg0, arg1)
	arg0:updateSlideDirection(nil)
	arg0.m_timer:close()
end

function CoD.LeftRightSlider.RightMouseDown(arg0, arg1)
	local registerVal2 = arg0:isInFocus()
	if registerVal2 then
		arg0:updateSlideDirection(-1.000000)
		arg0:addElement(arg0.m_timer)
	else
		arg0:updateSlideDirection(nil)
		arg0.m_timer:close()
	end
end

function CoD.LeftRightSlider.RightMouseUp(arg0, arg1)
	arg0:updateSlideDirection(nil)
	arg0.m_timer:close()
end

function CoD.LeftRightSlider.UpdateSlideDirection(arg0, arg1)
	arg0.m_slideDirection = arg1
end


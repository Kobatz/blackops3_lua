-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.CoD9Button")
CoD.MultiSelectionButton = {}
CoD.MultiSelectionButton.SelectionIconScale = 1.400000
CoD.MultiSelectionButton.SelectionIconSize = (CoD.CoD9Button.TextHeight * CoD.MultiSelectionButton.SelectionIconScale)
CoD.MultiSelectionButton.SelectionIconOffset = 7.000000
CoD.MultiSelectionButton.TextOffset = 5.000000
CoD.MultiSelectionButton.TextLeft = (CoD.MultiSelectionButton.SelectionIconSize + CoD.MultiSelectionButton.TextOffset)
function CoD.MultiSelectionButton.ClearStatusImage(arg0)
	if arg0.statusImage ~= nil then
		arg0.statusImage:close()
		arg0.statusImage = nil
	end
end

function CoD.MultiSelectionButton.GetSelectionIconSize(arg0)
	if arg0 == "lock" then
		return (CoD.CoD9Button.TextHeight * 0.750000)
	else
		return (CoD.CoD9Button.TextHeight * CoD.MultiSelectionButton.SelectionIconScale)
	end
end

function CoD.MultiSelectionButton.GetWidthOffset(arg0)
	if arg0 == "lock" then
		return -2.000000
	else
		return CoD.MultiSelectionButton.SelectionIconOffset
	end
end

function CoD.MultiSelectionButton.GetHeightOffset(arg0)
	if arg0 == "lock" then
		return -1.000000
	else
		return CoD.MultiSelectionButton.SelectionIconOffset
	end
end

function CoD.MultiSelectionButton.SetStatusImage(arg0, arg1)
	local registerVal2 = CoD.MultiSelectionButton.GetSelectionIconSize(arg1)
	local registerVal3 = CoD.MultiSelectionButton.GetWidthOffset(arg1)
	local registerVal4 = CoD.MultiSelectionButton.GetHeightOffset(arg1)
	local registerVal6 = {}
	registerVal6.leftAnchor = true
	registerVal6.rightAnchor = false
	registerVal6.left = -registerVal3
	registerVal6.right = (-registerVal3 + registerVal2)
	registerVal6.topAnchor = true
	registerVal6.bottomAnchor = false
	registerVal6.top = -registerVal4
	registerVal6.bottom = (-registerVal4 + registerVal2)
	registerVal6.alpha = 1.000000
	local registerVal7 = RegisterMaterial(arg1)
	registerVal6.material = registerVal7
	local registerVal5 = LUI.UIImage.new(registerVal6)
	arg0.statusImage = registerVal5
	arg0:addElement(arg0.statusImage)
end

function CoD.MultiSelectionButton.Lock(arg0)
	CoD.MultiSelectionButton.ClearStatusImage(arg0)
	CoD.MultiSelectionButton.SetStatusImage(arg0, "lock")
	local registerVal4 = {}
	registerVal4.red = CoD.green.r
	registerVal4.green = CoD.green.g
	registerVal4.blue = CoD.green.b
	registerVal4.alpha = 1.000000
	arg0.statusImage:registerAnimationState("can_unlock", registerVal4)
	registerVal4 = {}
	registerVal4.red = 1.000000
	registerVal4.green = 1.000000
	registerVal4.blue = 1.000000
	registerVal4.alpha = 1.000000
	arg0.statusImage:registerAnimationState("cannot_unlock", registerVal4)
end

function CoD.MultiSelectionButton.Deselect(arg0)
	CoD.MultiSelectionButton.ClearStatusImage(arg0)
	CoD.MultiSelectionButton.SetStatusImage(arg0, "menu_mp_pip_outline")
	local registerVal4 = {}
	registerVal4.alpha = 0.500000
	arg0.statusImage:registerAnimationState("disabled", registerVal4)
	registerVal4 = {}
	registerVal4.alpha = 0.000000
	arg0.statusImage:registerAnimationState("hide", registerVal4)
end

function CoD.MultiSelectionButton.Select(arg0)
	CoD.MultiSelectionButton.ClearStatusImage(arg0)
	if not arg0.selectedMaterialName then
	end
	CoD.MultiSelectionButton.SetStatusImage(arg0, "menu_mp_pip_orange")
end

function CoD.MultiSelectionButton.Update(arg0, arg1)
	arg0:enable()
	local registerVal2 = arg0:isLocked()
	if registerVal2 == true then
		local registerVal4 = {}
		registerVal4.name = "increment_locked_count"
		arg0:dispatchEventToParent(registerVal4)
		CoD.MultiSelectionButton.Lock(arg0)
		arg0.statusImage:animateToState("cannot_unlock")
		arg0:disable()
	else
		registerVal2 = arg0:isPurchased()
		if registerVal2 == false then
			registerVal4 = {}
			registerVal4.name = "increment_locked_count"
			arg0:dispatchEventToParent(registerVal4)
			CoD.MultiSelectionButton.Lock(arg0)
			registerVal2 = arg0:canBeUnlocked()
			if registerVal2 == true then
				arg0.statusImage:animateToState("can_unlock")
			else
				arg0.statusImage:animateToState("cannot_unlock")
				arg0:disable()
			else
				registerVal2 = arg0:isSelected()
				if registerVal2 == true then
					CoD.MultiSelectionButton.Select(arg0)
				else
					CoD.MultiSelectionButton.Deselect(arg0)
					if arg1.selectionCountAtMax == true then
						arg0.statusImage:animateToState("hide")
						arg0:disable()
					end
				end
			end
		end
	end
end

function CoD.MultiSelectionButton.Action(arg0, arg1)
	local registerVal2 = arg0:isLocked()
	if registerVal2 == true then
		local registerVal4 = {}
		registerVal4.name = "cannot_unlock_multi_selection_button_action"
		registerVal4.controller = arg1.controller
		registerVal4.button = arg0
		arg0:dispatchEventToParent(registerVal4)
	else
		registerVal2 = arg0:isPurchased()
		if registerVal2 == false then
			registerVal2 = arg0:canBeUnlocked()
			if registerVal2 then
				registerVal4 = {}
				registerVal4.name = "can_unlock_multi_selection_button_action"
				registerVal4.controller = arg1.controller
				registerVal4.button = arg0
				arg0:dispatchEventToParent(registerVal4)
			else
				registerVal4 = {}
				registerVal4.name = "cannot_unlock_multi_selection_button_action"
				registerVal4.controller = arg1.controller
				registerVal4.button = arg0
				arg0:dispatchEventToParent(registerVal4)
			else
				registerVal2 = arg0:isSelected()
				if registerVal2 == true then
					registerVal4 = {}
					registerVal4.name = "deselect_multi_selection_button_action"
					registerVal4.controller = arg1.controller
					registerVal4.button = arg0
					arg0:dispatchEventToParent(registerVal4)
				else
					registerVal4 = {}
					registerVal4.name = "select_multi_selection_button_action"
					registerVal4.controller = arg1.controller
					registerVal4.button = arg0
					arg0:dispatchEventToParent(registerVal4)
				end
			end
		end
	end
end

function CoD.MultiSelectionButton.Over(arg0, arg1)
	LUI.UIButton.Over(arg0, arg1)
	local registerVal2 = arg0:isLocked()
	if registerVal2 == true then
		local registerVal4 = {}
		registerVal4.name = "cannot_unlock_multi_selection_button_over"
		registerVal4.controller = arg1.controller
		registerVal4.button = arg1.button
		arg0:dispatchEventToParent(registerVal4)
	else
		registerVal2 = arg0:isPurchased()
		if registerVal2 == false then
			registerVal2 = arg0:canBeUnlocked()
			if registerVal2 == true then
				registerVal4 = {}
				registerVal4.name = "can_unlock_multi_selection_button_over"
				registerVal4.controller = arg1.controller
				registerVal4.button = arg1.button
				arg0:dispatchEventToParent(registerVal4)
			else
				registerVal4 = {}
				registerVal4.name = "cannot_unlock_multi_selection_button_over"
				registerVal4.controller = arg1.controller
				registerVal4.button = arg1.button
				arg0:dispatchEventToParent(registerVal4)
			else
				registerVal2 = arg0:isSelected()
				if registerVal2 == true then
					registerVal4 = {}
					registerVal4.name = "selected_multi_selection_button_over"
					registerVal4.controller = arg1.controller
					registerVal4.button = arg1.button
					arg0:dispatchEventToParent(registerVal4)
				else
					registerVal4 = {}
					registerVal4.name = "unselected_multi_selection_button_over"
					registerVal4.controller = arg1.controller
					registerVal4.button = arg1.button
					arg0:dispatchEventToParent(registerVal4)
				end
			end
		end
	end
	Engine.PlaySound("uin_navigation_click")
end

function CoD.MultiSelectionButton.UpdateSelectionCount(arg0, arg1)
	local registerVal2 = arg0:isSelected()
	if registerVal2 then
		local registerVal4 = {}
		registerVal4.name = "increment_selection_count"
		arg0:dispatchEventToParent(registerVal4)
	end
end

function CoD.MultiSelectionButton.New(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = CoD.CoD9Button.new(arg0, arg1, nil, arg4, arg5)
	registerVal6.id = "MultiSelectionButton"
	registerVal6:registerEventHandler("update_multi_selection_list_buttons", CoD.MultiSelectionButton.Update)
	registerVal6:registerEventHandler("button_action", CoD.MultiSelectionButton.Action)
	registerVal6:registerEventHandler("button_over", CoD.MultiSelectionButton.Over)
	registerVal6:registerEventHandler("update_selection_count", CoD.MultiSelectionButton.UpdateSelectionCount)
	if arg2 ~= nil then
		CoD.MultiSelectionButton.SelectionIconSize = (CoD.textSize[arg2] * CoD.MultiSelectionButton.SelectionIconScale)
		CoD.MultiSelectionButton.TextLeft = (CoD.MultiSelectionButton.SelectionIconSize + CoD.MultiSelectionButton.TextOffset)
	end
	local registerVal9 = {}
	registerVal9.leftAnchor = true
	registerVal9.rightAnchor = true
	registerVal9.left = CoD.MultiSelectionButton.TextLeft
	registerVal9.right = 0.000000
	registerVal9.topAnchor = false
	registerVal9.bottomAnchor = false
	registerVal9.top = (-CoD.textSize[arg2] / 2.000000)
	registerVal9.bottom = (CoD.textSize[arg2] / 2.000000)
	registerVal9.red = CoD.offWhite.r
	registerVal9.green = CoD.offWhite.g
	registerVal9.blue = CoD.offWhite.b
	registerVal9.alpha = 1.000000
	registerVal9.font = CoD.fonts[arg2]
	registerVal6.label:registerAnimationState("default", registerVal9)
	registerVal6.label:animateToState("default")
	local registerVal10 = LUI.UIImage.new()
	registerVal6.buttonBg = registerVal10
	registerVal6.buttonBg:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6.buttonBg:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6.buttonBg:setAlpha(0.200000)
	registerVal6.buttonBg:setPriority(-100.000000)
	if (arg3 % 2.000000) == 0.000000 then
		registerVal6.buttonBg:setRGB(0.000000, 0.000000, 0.000000)
	else
		registerVal6.buttonBg:setRGB(0.100000, 0.100000, 0.100000)
	end
	registerVal6:addElement(registerVal6.buttonBg)
	registerVal6.buttonIndex = arg3
	return registerVal6
end


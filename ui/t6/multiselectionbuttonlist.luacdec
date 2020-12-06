-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.ButtonList")
require("ui.T6.MultiSelectionButton")
require("ui.T6.ScrollingVerticalList")
CoD.MultiSelectionButtonList = {}
function CoD.MultiSelectionButtonList.AddButton(arg0, arg1, arg2, arg3, arg4, arg5)
	local registerVal6 = {}
	registerVal6.left = 0.000000
	registerVal6.top = 0.000000
	registerVal6.right = 0.000000
	registerVal6.bottom = CoD.textSize.Default
	registerVal6.leftAnchor = true
	registerVal6.topAnchor = true
	registerVal6.rightAnchor = true
	registerVal6.bottomAnchor = false
	if arg0.buttonCount == nil then
		arg0.buttonCount = 0.000000
	end
	arg0.buttonCount = (arg0.buttonCount + 1.000000)
	local registerVal7 = CoD.MultiSelectionButton.New(registerVal6, nil, "Default", arg0.buttonCount)
	registerVal7.hintText = arg2
	registerVal7.isLocked = CoD.MultiSelectionButtonList.Button_IsLocked
	registerVal7.isPurchased = CoD.MultiSelectionButtonList.Button_IsPurchased
	registerVal7.canBeUnlocked = CoD.MultiSelectionButtonList.Button_CanBeUnlocked
	registerVal7.isSelected = CoD.MultiSelectionButtonList.Button_IsSelected
	registerVal7:setPriority(arg3)
	registerVal7:setLabel(arg1, "Default", CoD.MultiSelectionButton.TextLeft)
	if arg0.selectedMaterialName then
		registerVal7.selectedMaterialName = arg0.selectedMaterialName
	end
	arg0:addElementToList(registerVal7)
	if arg4 ~= nil and arg5 ~= nil then
		local function __FUNC_B95_(arg1, arg2, arg3, arg4)
			local registerVal6 = {}
			registerVal6.name = "button_action"
			registerVal6.controller = arg3
			registerVal6.button = arg0
			arg1:processEvent(registerVal6)
			if arg0.actionSFX ~= nil then
				Engine.PlaySound(arg0.actionSFX)
			end
			return true
		end

		CoD.Menu.AddButtonCallbackFunction(arg4, arg0, arg5, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_B95_)
	end
	CoD.ButtonList.AssociateHintTextListenerToButton(registerVal7)
	return registerVal7
end

function CoD.MultiSelectionButtonList.SetMaxSelections(arg0, arg1)
	arg0.maxSelections = arg1
end

function CoD.MultiSelectionButtonList.IncrementSelectionCount(arg0)
	if arg0.maxSelections and arg0.selectionCount == arg0.maxSelections then
		error(("LUI Error: MultiSelectionButtonList cannot select more than " .. arg0.maxSelections .. " at once."))
	else
		arg0.selectionCount = (arg0.selectionCount + 1.000000)
	end
end

function CoD.MultiSelectionButtonList.DecrementSelectionCount(arg0)
	if 0.000000 < arg0.selectionCount then
		arg0.selectionCount = (arg0.selectionCount - 1.000000)
	else
		error("LUI Error: MultiSelectionButtonList cannot have a selection count of less than 0.")
	end
end

function CoD.MultiSelectionButtonList.UpdateSelectionCount(arg0)
	arg0.selectionCount = 0.000000
	local registerVal3 = {}
	registerVal3.name = "update_selection_count"
	arg0:dispatchEventToChildren(registerVal3)
end

function CoD.MultiSelectionButtonList.ClearSelectionCount(arg0)
	arg0.selectionCount = 0.000000
end

function CoD.MultiSelectionButtonList.GetLockedCount(arg0)
	local registerVal2 = arg0:getFirstChild()
	local registerVal3 = registerVal2:isLocked()
	if registerVal2.isLocked ~= nil and registerVal3 == true then
	end
	registerVal3 = registerVal2:getNextSibling()
	return (0.000000 + 1.000000)
end

function CoD.MultiSelectionButtonList.Button_IsLocked(arg0)
	return false
end

function CoD.MultiSelectionButtonList.Button_IsPurchased(arg0)
	return true
end

function CoD.MultiSelectionButtonList.Button_CanBeUnlocked(arg0)
	return false
end

function CoD.MultiSelectionButtonList.Button_IsSelected(arg0)
	return false
end

function CoD.MultiSelectionButtonList.New(arg0, arg1)
	if arg1 == nil then
	end
	local registerVal2 = CoD.ScrollingVerticalList.new(arg0)
	registerVal2:setSpacing(CoD.ButtonList.ButtonSpacing)
	registerVal2.id = "MultiSelectionButtonList"
	registerVal2.selectionCount = 0.000000
	registerVal2:makeFocusable()
	local registerVal7 = {}
	registerVal7.name = "gamepad_button"
	registerVal7.button = "up"
	registerVal7.down = true
	registerVal2:addElement(LUI.UIButtonRepeater.new("up", registerVal7))
	registerVal7 = {}
	registerVal7.name = "gamepad_button"
	registerVal7.button = "down"
	registerVal7.down = true
	registerVal2:addElement(LUI.UIButtonRepeater.new("down", registerVal7))
	registerVal2.addButton = CoD.MultiSelectionButtonList.AddButton
	registerVal2.setMaxSelections = CoD.MultiSelectionButtonList.SetMaxSelections
	registerVal2.incrementSelectionCount = CoD.MultiSelectionButtonList.IncrementSelectionCount
	registerVal2.decrementSelectionCount = CoD.MultiSelectionButtonList.DecrementSelectionCount
	registerVal2.updateSelectionCount = CoD.MultiSelectionButtonList.UpdateSelectionCount
	registerVal2.clearSelectionCount = CoD.MultiSelectionButtonList.ClearSelectionCount
	registerVal2.getLockedCount = CoD.MultiSelectionButtonList.GetLockedCount
	registerVal2:registerEventHandler("increment_selection_count", CoD.MultiSelectionButtonList.IncrementSelectionCount)
	registerVal2:registerEventHandler("increment_locked_count", CoD.MultiSelectionButtonList.IncrementLockedCount)
	registerVal2:registerEventHandler("update_multi_selection_list", CoD.MultiSelectionButtonList.Update)
	registerVal2:registerEventHandler("can_unlock_multi_selection_button_action", CoD.MultiSelectionButtonList.CanUnlockButtonAction)
	registerVal2:registerEventHandler("cannot_unlock_multi_selection_button_action", CoD.MultiSelectionButtonList.CannotUnlockButtonAction)
	registerVal2:registerEventHandler("deselect_multi_selection_button_action", CoD.MultiSelectionButtonList.DeselectButtonAction)
	registerVal2:registerEventHandler("select_multi_selection_button_action", CoD.MultiSelectionButtonList.SelectButtonAction)
	registerVal2:registerEventHandler("can_unlock_multi_selection_button_over", CoD.MultiSelectionButtonList.CanUnlockButtonOver)
	registerVal2:registerEventHandler("cannot_unlock_multi_selection_button_over", CoD.MultiSelectionButtonList.CannotUnlockButtonOver)
	registerVal2:registerEventHandler("selected_multi_selection_button_over", CoD.MultiSelectionButtonList.SelectedButtonOver)
	registerVal2:registerEventHandler("unselected_multi_selection_button_over", CoD.MultiSelectionButtonList.UnselectedButtonOver)
	return registerVal2
end

function CoD.MultiSelectionButtonList.Update(arg0, arg1)
	arg0.lockedCount = 0.000000
	local registerVal4 = {}
	registerVal4.name = "update_multi_selection_list_buttons"
	if arg0.selectionCount ~= arg0.maxSelections then
	end
	registerVal4.selectionCountAtMax = true
	arg0:dispatchEventToChildren(registerVal4)
end

function CoD.MultiSelectionButtonList.CanUnlockButtonAction(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "can_unlock_multi_selection_button_action"
	registerVal4.controller = arg1.controller
	registerVal4.button = arg1.button
	arg0:dispatchEventToParent(registerVal4)
end

function CoD.MultiSelectionButtonList.CannotUnlockButtonAction(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "cannot_unlock_multi_selection_button_action"
	registerVal4.controller = arg1.controller
	registerVal4.button = arg1.button
	arg0:dispatchEventToParent(registerVal4)
	Engine.PlaySound(CoD.CACUtility.denySFX)
end

function CoD.MultiSelectionButtonList.DeselectButtonAction(arg0, arg1)
	if arg1 or 0.000000 < arg0.selectionCount then
		local registerVal4 = {}
		registerVal4.name = "deselect_multi_selection_button_action"
		registerVal4.controller = arg1.controller
		registerVal4.button = arg1.button
		arg0:dispatchEventToParent(registerVal4)
	end
end

function CoD.MultiSelectionButtonList.SelectButtonAction(arg0, arg1)
	if arg1 or arg0.selectionCount < arg0.maxSelections then
		local registerVal4 = {}
		registerVal4.name = "select_multi_selection_button_action"
		registerVal4.controller = arg1.controller
		registerVal4.button = arg1.button
		arg0:dispatchEventToParent(registerVal4)
	end
end

function CoD.MultiSelectionButtonList.CanUnlockButtonOver(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "can_unlock_multi_selection_button_over"
	arg0:dispatchEventToParent(registerVal4)
end

function CoD.MultiSelectionButtonList.CannotUnlockButtonOver(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "cannot_unlock_multi_selection_button_over"
	arg0:dispatchEventToParent(registerVal4)
end

function CoD.MultiSelectionButtonList.SelectedButtonOver(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "selected_multi_selection_button_over"
	arg0:dispatchEventToParent(registerVal4)
end

function CoD.MultiSelectionButtonList.UnselectedButtonOver(arg0, arg1)
	local registerVal4 = {}
	registerVal4.name = "unselected_multi_selection_button_over"
	arg0:dispatchEventToParent(registerVal4)
end


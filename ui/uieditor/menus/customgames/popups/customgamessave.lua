-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FullscreenPopup.FullscreenPopupTemplate")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithInputButton")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_Left_ND")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
local function __FUNC_2C3_(arg0, arg1)
	arg0.FullscreenPopupTemplate.navigation = nil
	local registerVal3 = {}
	registerVal3.up = arg0.BtnPublish
	registerVal3.down = arg0.inputDescription
	arg0.InputButton.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.InputButton
	registerVal3.down = arg0.BtnPublish
	arg0.inputDescription.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.inputDescription
	registerVal3.down = arg0.InputButton
	arg0.BtnPublish.navigation = registerVal3
end

local function __FUNC_42B_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CustomGamesSave")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CustomGamesSave.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FullscreenPopupTemplate.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.WorkingTitle:setText(Engine.Localize("MENU_CUSTOM_GAMES_SAVE"))
	registerVal3.Title:setText(Engine.Localize("MENU_CUSTOM_GAMES_SAVE"))
	registerVal3.Subtitle:setText(Engine.Localize("MENU_CUSTOM_GAMES_SAVE_DESC"))
	registerVal3.DoneTitle:setText(Engine.Localize("MENU_CUSTOM_GAMES_SAVE_DONE"))
	registerVal3.ErrorSubtitle:setText(Engine.Localize("MENU_CUSTOM_GAMES_SAVE_ERROR"))
	registerVal1:addElement(registerVal3)
	registerVal1.FullscreenPopupTemplate = registerVal3
	local registerVal4 = CoD.GunsmithInputButton.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 457.960000, 1218.000000)
	registerVal4:setTopBottom(true, false, 448.000000, 482.000000)
	registerVal4.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_1714_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Text:setText(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg0, "CustomGamesRoot", "gameDescription", __FUNC_1714_)
	local function __FUNC_17C2_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_17C2_)
	local function __FUNC_1953_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1953_)
	local function __FUNC_1A22_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuInState(arg1, "DefaultState")
		if registerVal4 then
			FileshareEnterPublishDescription(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_1AD7_(arg0, arg1, arg2)
		local registerVal3 = IsMenuInState(arg1, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1A22_, __FUNC_1AD7_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.inputDescription = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 461.960000, 1196.500000)
	registerVal5:setTopBottom(true, false, 419.000000, 444.000000)
	registerVal5:setText(Engine.Localize("MPUI_DESCRIPTION"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.descriptionText = registerVal5
	local registerVal6 = CoD.GunsmithInputButton.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 457.960000, 819.960000)
	registerVal6:setTopBottom(true, false, 382.000000, 416.000000)
	registerVal6.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_1C1F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Text:setText(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg0, "CustomGamesRoot", "gameName", __FUNC_1C1F_)
	local function __FUNC_1CCA_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_1CCA_)
	local function __FUNC_1E5B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_1E5B_)
	local function __FUNC_1F2A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuInState(arg1, "DefaultState")
		if registerVal4 then
			FileshareEnterPublishName(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_1FD8_(arg0, arg1, arg2)
		local registerVal3 = IsMenuInState(arg1, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1F2A_, __FUNC_1FD8_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.InputButton = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 461.960000, 552.960000)
	registerVal7:setTopBottom(true, false, 353.000000, 378.000000)
	registerVal7:setText(Engine.Localize("MENU_FILESHARE_NEWNAME"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal7)
	registerVal1.LblName = registerVal7
	local registerVal8 = CoD.List1ButtonLarge_Left_ND.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 457.960000, 737.960000)
	registerVal8:setTopBottom(true, false, 487.000000, 518.000000)
	registerVal8.btnDisplayText:setText(Engine.Localize("MENU_SAVE"))
	registerVal8.btnDisplayTextStroke:setText(Engine.Localize("MENU_SAVE"))
	local function __FUNC_2123_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_2123_)
	local function __FUNC_22B3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_22B3_)
	local function __FUNC_2382_(arg0, arg1, arg2, arg3)
		SaveCustomGameYes(registerVal1, arg0, arg2, "", arg1)
		Close(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_243D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2382_, __FUNC_243D_, false)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Disabled"
	local function __FUNC_253A_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_253A_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal1:addElement(registerVal8)
	registerVal1.BtnPublish = registerVal8
	local registerVal9 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 64.000000, 496.000000)
	registerVal9:setTopBottom(true, false, 531.000000, 563.000000)
	registerVal1:addElement(registerVal9)
	registerVal1.leftButtonBar = registerVal9
	local registerVal10 = {}
	registerVal10.left = registerVal6
	registerVal10.right = registerVal4
	registerVal10.down = registerVal6
	registerVal3.navigation = registerVal10
	registerVal10 = {}
	registerVal10.left = registerVal3
	registerVal10.up = registerVal3
	registerVal10.down = registerVal8
	registerVal4.navigation = registerVal10
	registerVal10 = {}
	registerVal10.up = registerVal3
	registerVal10.right = registerVal3
	registerVal10.down = registerVal4
	registerVal6.navigation = registerVal10
	registerVal10 = {}
	registerVal10.up = registerVal3
	registerVal10.right = registerVal3
	registerVal8.navigation = registerVal10
	registerVal10 = {}
	registerVal11 = {}
	local function __FUNC_2585_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal3.RedLine:completeAnimation()
		registerVal3.WorkingTitle:completeAnimation()
		registerVal3.Title:completeAnimation()
		registerVal3.Subtitle:completeAnimation()
		registerVal3.DoneTitle:completeAnimation()
		registerVal3.ErrorSubtitle:completeAnimation()
		registerVal1.FullscreenPopupTemplate.RedLine:setRGB(ColorSet.ResistanceHigh.r, ColorSet.ResistanceHigh.g, ColorSet.ResistanceHigh.b)
		registerVal1.FullscreenPopupTemplate.WorkingTitle:setText(Engine.Localize("MENU_CUSTOM_GAMES_SAVE"))
		registerVal1.FullscreenPopupTemplate.Title:setText(Engine.Localize("MENU_CUSTOM_GAMES_SAVE"))
		registerVal1.FullscreenPopupTemplate.Subtitle:setText(Engine.Localize("MENU_CUSTOM_GAMES_SAVE_DESC"))
		registerVal1.FullscreenPopupTemplate.DoneTitle:setText(Engine.Localize("MENU_CUSTOM_GAMES_SAVE_DONE"))
		registerVal1.FullscreenPopupTemplate.ErrorSubtitle:setText(Engine.Localize("MENU_CUSTOM_GAMES_SAVE_ERROR"))
		registerVal1.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal1.InputButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.LblName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.BtnPublish:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_2585_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_2B41_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal3.RedLine:completeAnimation()
		registerVal3.WorkingTitle:completeAnimation()
		registerVal3.Title:completeAnimation()
		registerVal3.Subtitle:completeAnimation()
		registerVal1.FullscreenPopupTemplate.RedLine:setRGB(ColorSet.ResistanceHigh.r, ColorSet.ResistanceHigh.g, ColorSet.ResistanceHigh.b)
		registerVal1.FullscreenPopupTemplate.WorkingTitle:setText(Engine.Localize("CUSTOM_VALUE_SECONDS_POINT_35"))
		registerVal1.FullscreenPopupTemplate.Title:setText(Engine.Localize("MENU_FILESHARE_SLOTS_FULL_TITLE"))
		registerVal1.FullscreenPopupTemplate.Subtitle:setText(Engine.Localize("MENU_CUSTOMGAME_SLOTSFULL_DESC"))
		registerVal1.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal1.InputButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.LblName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.BtnPublish:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_2B41_
	registerVal10.SlotsFull = registerVal11
	registerVal1.clipsPerState = registerVal10
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "SlotsFull"
	local function __FUNC_3013_(arg1, arg2, arg3)
		local registerVal3 = CustomGamesSlotsAvailable(arg2, arg0)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_3013_
	registerVal12 = {registerVal13}
	registerVal1:mergeStateConditions(registerVal12)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_3077_(arg1, arg2)
		CustomGameHandleKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_3077_)
	local function __FUNC_3123_(arg0, arg1, arg2, arg3)
		Close(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_319C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_CLOSE")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_3123_, __FUNC_319C_, false)
	local function __FUNC_329A_(arg1, arg2)
		local registerVal2 = IsMenuInState(registerVal1, "SlotsFull")
		if registerVal2 then
			SetFocusToElement(registerVal1, "FullscreenPopupTemplate", arg0)
			MakeElementNotFocusable(registerVal1, "BtnPublish", arg0)
			MakeElementNotFocusable(registerVal1, "InputButton", arg0)
		else
			registerVal2 = IsMenuInState(registerVal1, "DefaultState")
			if registerVal2 then
				MakeElementFocusable(registerVal1, "BtnPublish", arg0)
				MakeElementFocusable(registerVal1, "InputButton", arg0)
				SetFocusToElement(registerVal1, "InputButton", arg0)
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "setState", __FUNC_329A_)
	registerVal3.id = "FullscreenPopupTemplate"
	registerVal4.id = "inputDescription"
	registerVal6.id = "InputButton"
	registerVal8.id = "BtnPublish"
	registerVal9:setModel(registerVal1.buttonModel, arg0)
	registerVal12 = {}
	registerVal12.name = "menu_loaded"
	registerVal12.controller = arg0
	registerVal1:processEvent(registerVal12)
	registerVal12 = {}
	registerVal12.name = "update_state"
	registerVal12.menu = registerVal1
	registerVal1:processEvent(registerVal12)
	registerVal10 = registerVal1:restoreState()
	if not registerVal10 then
		registerVal12 = {}
		registerVal12.name = "gain_focus"
		registerVal12.controller = arg0
		registerVal1.InputButton:processEvent(registerVal12)
	end
	local function __FUNC_3454_(arg1)
		arg1.FullscreenPopupTemplate:close()
		arg1.inputDescription:close()
		arg1.InputButton:close()
		arg1.BtnPublish:close()
		arg1.leftButtonBar:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CustomGamesSave.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3454_)
	if __FUNC_2C3_ then
		__FUNC_2C3_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CustomGamesSave = __FUNC_42B_

-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingMask")
require("ui.uieditor.widgets.buttonprompt_small")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_Left")
function LUI.createMenu.GenericPopup(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("GenericPopup")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "GenericPopup.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, -10.000000, 1310.000000)
	registerVal3:setTopBottom(true, false, -19.500000, 739.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.500000)
	registerVal1:addElement(registerVal3)
	registerVal1.overlayBg = registerVal3
	local registerVal4 = CoD.LobbyMemberBackingMask.new(registerVal1, arg0)
	registerVal4:setLeftRight(false, false, -206.000000, 206.000000)
	registerVal4:setTopBottom(false, false, -113.000000, 117.500000)
	registerVal4:setRGB(0.240000, 0.290000, 0.330000)
	registerVal1:addElement(registerVal4)
	registerVal1.LobbyMemberBackingMask = registerVal4
	local registerVal5 = CoD.LobbyMemberBackingMask.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, true, 434.000000, -434.000000)
	registerVal5:setTopBottom(false, false, -113.000000, 118.000000)
	registerVal5:setRGB(0.270000, 0.330000, 0.390000)
	registerVal5:setAlpha(0.590000)
	registerVal1:addElement(registerVal5)
	registerVal1.LobbyMemberBackingMask0 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 459.000000, -459.000000)
	registerVal6:setTopBottom(false, false, -39.000000, -21.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1462_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg0, "LobbyPromptTitle", "lobbyPromptDescription", __FUNC_1462_)
	registerVal1:addElement(registerVal6)
	registerVal1.txtDescription = registerVal6
	local registerVal7 = CoD.buttonprompt_small.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 454.000000, 668.000000)
	registerVal7:setTopBottom(true, false, 478.000000, 509.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7.label:setText(Engine.Localize("MENU_SELECT"))
	local function __FUNC_151A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "Controller", "primary_button_image", __FUNC_151A_)
	registerVal1:addElement(registerVal7)
	registerVal1.PromptSelect = registerVal7
	local registerVal8 = CoD.buttonprompt_small.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 552.000000, 766.000000)
	registerVal8:setTopBottom(true, false, 478.000000, 509.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8.label:setText(Engine.Localize("MENU_BACK"))
	local function __FUNC_15F3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg0, "Controller", "secondary_button_image", __FUNC_15F3_)
	registerVal1:addElement(registerVal8)
	registerVal1.PromptBack = registerVal8
	local registerVal9 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal9:makeFocusable()
	registerVal9:setLeftRight(true, true, 500.000000, -500.000000)
	registerVal9:setTopBottom(false, false, -38.000000, 164.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setWidgetType(CoD.List1ButtonLarge_Left)
	registerVal9:setVerticalCount(6.000000)
	registerVal9:setDataSource("LobbyPromptSelectionList")
	local function __FUNC_16CB_(arg1, arg2)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_16CB_)
	local function __FUNC_185B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_185B_)
	local function __FUNC_192A_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_198B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_192A_, __FUNC_198B_, false)
	registerVal1:addElement(registerVal9)
	registerVal1.lstOptions = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 459.000000, 523.000000)
	registerVal10:setTopBottom(true, false, 266.000000, 309.000000)
	registerVal10:setRGB(0.870000, 0.880000, 0.780000)
	registerVal10:setAlpha(0.000000)
	registerVal10:setTTF("fonts/escom.ttf")
	local function __FUNC_1A86_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "LobbyPromptTitle", "lobbyPromptTitle", __FUNC_1A86_)
	registerVal1:addElement(registerVal10)
	registerVal1.TitleLbl = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 459.000000, 821.000000)
	registerVal11:setTopBottom(true, false, 277.500000, 302.500000)
	registerVal11:setText(Engine.Localize("GROUPS_PROCESSING_REQUEST"))
	registerVal11:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal11)
	registerVal1.ProcessingText = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 592.000000, 688.000000)
	registerVal12:setTopBottom(true, false, 330.000000, 426.000000)
	registerVal12:setupSpinner()
	registerVal1:addElement(registerVal12)
	registerVal1.Spinner = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_1B3E_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal1.txtDescription:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.PromptSelect:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.PromptBack:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.lstOptions:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.TitleLbl:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.ProcessingText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
	end

	registerVal14.DefaultClip = __FUNC_1B3E_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_1E03_()
		registerVal1:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal1.txtDescription:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.PromptSelect:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.PromptBack:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.lstOptions:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.TitleLbl:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.ProcessingText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
	end

	registerVal14.DefaultClip = __FUNC_1E03_
	registerVal13.Processing = registerVal14
	registerVal1.clipsPerState = registerVal13
	local function __FUNC_20C7_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2118_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_20C7_, __FUNC_2118_, false)
	registerVal9.id = "lstOptions"
	local registerVal15 = {}
	registerVal15.name = "menu_loaded"
	registerVal15.controller = arg0
	registerVal1:processEvent(registerVal15)
	registerVal15 = {}
	registerVal15.name = "update_state"
	registerVal15.menu = registerVal1
	registerVal1:processEvent(registerVal15)
	registerVal13 = registerVal1:restoreState()
	if not registerVal13 then
		registerVal15 = {}
		registerVal15.name = "gain_focus"
		registerVal15.controller = arg0
		registerVal1.lstOptions:processEvent(registerVal15)
	end
	local function __FUNC_220C_(arg1)
		arg1.LobbyMemberBackingMask:close()
		arg1.LobbyMemberBackingMask0:close()
		arg1.PromptSelect:close()
		arg1.PromptBack:close()
		arg1.lstOptions:close()
		arg1.txtDescription:close()
		arg1.TitleLbl:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "GenericPopup.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_220C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end


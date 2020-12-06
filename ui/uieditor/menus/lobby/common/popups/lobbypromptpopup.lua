-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.DialogBackground")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyMemberBackingMask")
require("ui.uieditor.widgets.MenuSpecificWidgets.Scorestreaks.scorestreakVignetteContainer")
require("ui.uieditor.widgets.buttonprompt_small")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_Left")
require("ui.uieditor.widgets.GenericPopups.Generic_Lines_Pop_up")
require("ui.uieditor.widgets.Lobby.LobbyPromptTxt")
local function __FUNC_399_(arg0)
	arg0.disableBlur = true
end

local function __FUNC_3DF_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("LobbyPromptPopup")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "LobbyPromptPopup.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.DialogBackground.new(registerVal1, arg0)
	registerVal3:setLeftRight(false, false, -640.000000, 640.000000)
	registerVal3:setTopBottom(false, false, -363.000000, 360.000000)
	registerVal3:setRGB(0.400000, 0.400000, 0.400000)
	registerVal3:setAlpha(0.450000)
	registerVal1:addElement(registerVal3)
	registerVal1.BackgroundDarken = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -9.750000, 1310.250000)
	registerVal4:setTopBottom(true, false, -19.500000, 739.500000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.overlayBg = registerVal4
	local registerVal5 = CoD.DialogBackground.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, false, -212.500000, 233.000000)
	registerVal5:setTopBottom(false, false, -113.000000, 133.000000)
	registerVal5:setRGB(0.050000, 0.020000, 0.020000)
	registerVal5:setAlpha(0.850000)
	registerVal1:addElement(registerVal5)
	registerVal1.Background = registerVal5
	local registerVal6 = CoD.LobbyMemberBackingMask.new(registerVal1, arg0)
	registerVal6:setLeftRight(false, false, -206.000000, 206.000000)
	registerVal6:setTopBottom(false, false, -113.000000, 117.500000)
	registerVal6:setRGB(0.240000, 0.290000, 0.330000)
	registerVal1:addElement(registerVal6)
	registerVal1.LobbyMemberBackingMask = registerVal6
	local registerVal7 = CoD.scorestreakVignetteContainer.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.scorestreakVignetteContainer = registerVal7
	local registerVal8 = CoD.LobbyMemberBackingMask.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, true, 434.000000, -434.000000)
	registerVal8:setTopBottom(false, false, -113.000000, 118.000000)
	registerVal8:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8:setAlpha(0.590000)
	registerVal1:addElement(registerVal8)
	registerVal1.LobbyMemberBackingMask0 = registerVal8
	local registerVal9 = CoD.buttonprompt_small.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 454.000000, 668.000000)
	registerVal9:setTopBottom(true, false, 460.000000, 491.000000)
	registerVal9.label:setText(Engine.Localize("MENU_SELECT"))
	local function __FUNC_1C83_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "Controller", "primary_button_image", __FUNC_1C83_)
	registerVal1:addElement(registerVal9)
	registerVal1.PromptSelect = registerVal9
	local registerVal10 = CoD.buttonprompt_small.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 552.000000, 766.000000)
	registerVal10:setTopBottom(true, false, 460.000000, 491.000000)
	registerVal10.label:setText(Engine.Localize("MENU_BACK"))
	local function __FUNC_1D5B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg0, "Controller", "secondary_button_image", __FUNC_1D5B_)
	registerVal1:addElement(registerVal10)
	registerVal1.PromptBack = registerVal10
	local registerVal11 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal11:makeFocusable()
	registerVal11:setLeftRight(true, false, 458.000000, 738.000000)
	registerVal11:setTopBottom(true, false, 366.000000, 568.000000)
	registerVal11:setDataSource("LobbyPromptSelectionList")
	registerVal11:setWidgetType(CoD.List1ButtonLarge_Left)
	registerVal11:setVerticalCount(6.000000)
	local function __FUNC_1E33_(arg1, arg2)
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

	registerVal11:registerEventHandler("gain_focus", __FUNC_1E33_)
	local function __FUNC_1FC3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal11:registerEventHandler("lose_focus", __FUNC_1FC3_)
	local function __FUNC_2092_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_20F3_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal11, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2092_, __FUNC_20F3_, false)
	registerVal1:addElement(registerVal11)
	registerVal1.lstOptions = registerVal11
	local registerVal12 = LUI.UITightText.new()
	registerVal12:setLeftRight(true, false, 454.000000, 518.000000)
	registerVal12:setTopBottom(true, false, 266.000000, 309.000000)
	registerVal12:setRGB(0.870000, 0.880000, 0.780000)
	registerVal12:setTTF("fonts/escom.ttf")
	local function __FUNC_21EE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg0, "LobbyPromptTitle", "lobbyPromptTitle", __FUNC_21EE_)
	registerVal1:addElement(registerVal12)
	registerVal1.TitleLbl = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 424.500000, 428.500000)
	registerVal13:setTopBottom(true, false, 244.500000, 498.500000)
	registerVal13:setAlpha(0.390000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal13)
	registerVal1.emblemline200 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, 443.000000, 863.000000)
	registerVal14:setTopBottom(true, false, 455.000000, 461.000000)
	registerVal14:setRGB(0.900000, 0.900000, 0.900000)
	registerVal14:setAlpha(0.850000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal14)
	registerVal1.CategoryListLine = registerVal14
	local registerVal15 = CoD.Generic_Lines_Pop_up.new(registerVal1, arg0)
	registerVal15:setLeftRight(true, false, 884.500000, 900.500000)
	registerVal15:setTopBottom(true, false, 342.000000, 394.000000)
	registerVal1:addElement(registerVal15)
	registerVal1.GenericLinesPopup020 = registerVal15
	local registerVal16 = CoD.Generic_Lines_Pop_up.new(registerVal1, arg0)
	registerVal16:setLeftRight(true, false, 397.000000, 416.000000)
	registerVal16:setTopBottom(true, false, 334.000000, 386.000000)
	registerVal16:setYRot(198.000000)
	registerVal1:addElement(registerVal16)
	registerVal1.GenericLinesPopup000 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, 871.500000, 875.500000)
	registerVal17:setTopBottom(true, false, 244.500000, 498.500000)
	registerVal17:setAlpha(0.390000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal17)
	registerVal1.emblemline2000 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, 425.500000, 873.500000)
	registerVal18:setTopBottom(true, false, 491.000000, 497.000000)
	registerVal18:setRGB(0.900000, 0.900000, 0.900000)
	registerVal18:setAlpha(0.500000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal18)
	registerVal1.CategoryListLine0 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 425.500000, 873.500000)
	registerVal19:setTopBottom(true, false, 243.500000, 249.500000)
	registerVal19:setRGB(0.900000, 0.900000, 0.900000)
	registerVal19:setAlpha(0.500000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal1:addElement(registerVal19)
	registerVal1.CategoryListLine00 = registerVal19
	local registerVal20 = CoD.LobbyPromptTxt.new(registerVal1, arg0)
	registerVal20:setLeftRight(true, false, 457.000000, 819.000000)
	registerVal20:setTopBottom(true, false, 311.000000, 328.000000)
	registerVal1:addElement(registerVal20)
	registerVal1.LobbyPromptTxt = registerVal20
	local registerVal21 = {}
	local registerVal22 = {}
	local function __FUNC_22A6_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal9:completeAnimation()
		registerVal1.PromptSelect:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.PromptBack:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal10, {})
	end

	registerVal22.DefaultClip = __FUNC_22A6_
	registerVal21.DefaultState = registerVal22
	registerVal22 = {}
	local function __FUNC_2400_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal9:completeAnimation()
		registerVal1.PromptSelect:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.PromptBack:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
	end

	registerVal22.DefaultClip = __FUNC_2400_
	registerVal21.KBMouse = registerVal22
	registerVal1.clipsPerState = registerVal21
	local registerVal23 = {}
	local registerVal24 = {}
	registerVal24.stateName = "KBMouse"
	local function __FUNC_255C_(arg1, arg2, arg3)
		local registerVal3 = IsGamepad(arg0)
		return (not registerVal3)
	end

	registerVal24.condition = __FUNC_255C_
	registerVal23 = {registerVal24}
	registerVal1:mergeStateConditions(registerVal23)
	if registerVal1.m_eventHandlers.input_source_changed then
		local function __FUNC_25AF_(arg0, arg1)
			if not arg1.menu then
			end
			arg1.menu = registerVal1
			arg0:updateState(arg1)
			return registerVal1.m_eventHandlers.input_source_changed(arg0, arg1)
		end

		registerVal1:registerEventHandler("input_source_changed", __FUNC_25AF_)
	else
		registerVal1:registerEventHandler("input_source_changed", LUI.UIElement.updateState)
	end
	registerVal24 = Engine.GetModelForController(arg0)
	registerVal23 = Engine.GetModel(registerVal24, "LastInput")
	local function __FUNC_2637_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "LastInput"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal23, __FUNC_2637_)
	local function __FUNC_2753_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_27A4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2753_, __FUNC_27A4_, false)
	registerVal11.id = "lstOptions"
	registerVal23 = {}
	registerVal23.name = "menu_loaded"
	registerVal23.controller = arg0
	registerVal1:processEvent(registerVal23)
	registerVal23 = {}
	registerVal23.name = "update_state"
	registerVal23.menu = registerVal1
	registerVal1:processEvent(registerVal23)
	registerVal21 = registerVal1:restoreState()
	if not registerVal21 then
		registerVal23 = {}
		registerVal23.name = "gain_focus"
		registerVal23.controller = arg0
		registerVal1.lstOptions:processEvent(registerVal23)
	end
	local function __FUNC_2898_(arg1)
		arg1.BackgroundDarken:close()
		arg1.Background:close()
		arg1.LobbyMemberBackingMask:close()
		arg1.scorestreakVignetteContainer:close()
		arg1.LobbyMemberBackingMask0:close()
		arg1.PromptSelect:close()
		arg1.PromptBack:close()
		arg1.lstOptions:close()
		arg1.GenericLinesPopup020:close()
		arg1.GenericLinesPopup000:close()
		arg1.LobbyPromptTxt:close()
		arg1.TitleLbl:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "LobbyPromptPopup.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2898_)
	if __FUNC_399_ then
		__FUNC_399_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.LobbyPromptPopup = __FUNC_3DF_

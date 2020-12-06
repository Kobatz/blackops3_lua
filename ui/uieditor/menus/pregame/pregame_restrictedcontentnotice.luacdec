-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.GridItemButtonNew")
require("ui.uieditor.widgets.CharacterCustomization.list1ButtonNewStyle")
require("ui.uieditor.widgets.Pregame.Pregame_TimerOverlay")
local function __FUNC_26C_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.Pregame.state")
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_CAC_EDIT then
		arg0.BannedItemsList:setDataSource("PregameBannedItems")
	else
		if registerVal3 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_SCORESTREAK_EDIT then
			arg0.BannedItemsList:setDataSource("PregameBannedStreaks")
		end
	end
end

local function __FUNC_4B4_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Pregame_RestrictedContentNotice")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "none"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Pregame_RestrictedContentNotice.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 81.000000, 84.000000)
	registerVal4:setRGB(0.970000, 0.580000, 0.150000)
	registerVal1:addElement(registerVal4)
	registerVal1.TopBar = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 409.890000, 1185.890000)
	registerVal5:setTopBottom(true, false, 101.000000, 148.000000)
	registerVal5:setText(Engine.Localize("MENU_SCORESTREAK_CONTENT_BANNED_CAPS"))
	registerVal5:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.Title = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 412.890000, 1176.890000)
	registerVal6:setTopBottom(true, false, 148.000000, 181.000000)
	registerVal6:setText(Engine.Localize("MENU_SCORESTREAK_CONTENT_BANNED_DESC"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal6)
	registerVal1.Description = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 10.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 400.000000, 1216.000000)
	registerVal7:setTopBottom(true, false, 279.500000, 387.500000)
	registerVal7:setWidgetType(CoD.GridItemButtonNew)
	registerVal7:setHorizontalCount(7.000000)
	registerVal7:setSpacing(10.000000)
	registerVal1:addElement(registerVal7)
	registerVal1.BannedItemsList = registerVal7
	local registerVal8 = LUI.UIList.new(registerVal1, arg0, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 409.890000, 689.890000)
	registerVal8:setTopBottom(true, false, 481.500000, 547.500000)
	registerVal8:setDataSource("PregameBannedContentButtons")
	registerVal8:setWidgetType(CoD.list1ButtonNewStyle)
	registerVal8:setVerticalCount(2.000000)
	local function __FUNC_14EF_(arg1, arg2)
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

	registerVal8:registerEventHandler("gain_focus", __FUNC_14EF_)
	local function __FUNC_167F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_167F_)
	local function __FUNC_174E_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_17AF_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal8, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_174E_, __FUNC_17AF_, false)
	registerVal1:addElement(registerVal8)
	registerVal1.ButtonList = registerVal8
	local registerVal9 = CoD.Pregame_TimerOverlay.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "BannedContent"
	local function __FUNC_18AA_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal13.condition = __FUNC_18AA_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.Pregame.state")
	local function __FUNC_18F4_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_18F4_)
	registerVal1:addElement(registerVal9)
	registerVal1.PregameTimerOverlay = registerVal9
	local registerVal10 = {}
	registerVal10.down = registerVal8
	registerVal7.navigation = registerVal10
	registerVal10 = {}
	registerVal10.up = registerVal7
	registerVal8.navigation = registerVal10
	registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_1A21_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_1A21_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1A82_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal1.Title:setText(Engine.Localize("MENU_CAC_CONTENT_BANNED_CAPS"))
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.Description:setText(Engine.Localize("MENU_CAC_CONTENT_BANNED_DESC"))
		registerVal1.clipFinished(registerVal6, {})
	end

	registerVal11.DefaultClip = __FUNC_1A82_
	registerVal10.CaCEdit = registerVal11
	registerVal11 = {}
	local function __FUNC_1C66_()
		registerVal1:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal1.Title:setText(Engine.Localize("MENU_SCORESTREAK_CONTENT_BANNED_CAPS"))
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.Description:setText(Engine.Localize("MENU_SCORESTREAK_CONTENT_BANNED_DESC"))
		registerVal1.clipFinished(registerVal6, {})
	end

	registerVal11.DefaultClip = __FUNC_1C66_
	registerVal10.ScorestreakEdit = registerVal11
	registerVal1.clipsPerState = registerVal10
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "CaCEdit"
	local function __FUNC_1E5A_(arg0, arg1, arg2)
		return ItemRestrictionCACEditActive()
	end

	registerVal13.condition = __FUNC_1E5A_
	local registerVal14 = {}
	registerVal14.stateName = "ScorestreakEdit"
	local function __FUNC_1EB6_(arg0, arg1, arg2)
		return ItemRestrictionScorestreakEditActive()
	end

	registerVal14.condition = __FUNC_1EB6_
	registerVal12 = {registerVal13, registerVal14}
	registerVal1:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "lobbyRoot.Pregame.state")
	local function __FUNC_1F1A_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal12, __FUNC_1F1A_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	registerVal7.id = "BannedItemsList"
	registerVal8.id = "ButtonList"
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
		registerVal1.ButtonList:processEvent(registerVal12)
	end
	local function __FUNC_2045_(arg1)
		arg1.BannedItemsList:close()
		arg1.ButtonList:close()
		arg1.PregameTimerOverlay:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Pregame_RestrictedContentNotice.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2045_)
	if __FUNC_26C_ then
		__FUNC_26C_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Pregame_RestrictedContentNotice = __FUNC_4B4_

-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Pregame.Pregame_VoteItem")
require("ui.uieditor.widgets.CAC.Customization.CACGenericButton")
require("ui.uieditor.widgets.Pregame.Pregame_TimerOverlay")
require("ui.uieditor.widgets.Lobby.Common.FE_TalkersWidget")
local function __FUNC_31D_(arg0)
	Engine.GetModel(arg0, "equipped")
	return Engine.GetModelValue(Engine.GetModel)
end

local function __FUNC_3C7_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.Pregame.state")
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_CAC_EDIT then
		arg0.WarningText:setText(Engine.Localize("MENU_EQUIPPED_BANNED_CAC_ITEMS"))
	else
		if registerVal3 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_SCORESTREAK_EDIT then
			arg0.WarningText:setText(Engine.Localize("MENU_EQUIPPED_BANNED_SCORESTREAKS"))
		end
	end
	arg0.BannedItemsList.filter = __FUNC_31D_
	arg0.BannedItemsList:updateDataSource((not arg0.BannedItemsList.hasListFocus))
end

local function __FUNC_6F2_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "lobbyRoot.Pregame.state")
	registerVal3 = Engine.GetModelValue(registerVal2)
	if registerVal3 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_CAC_EDIT then
		arg0.WarningText:setText(Engine.Localize("MENU_ALL_BANNED_CAC_ITEMS"))
	else
		if registerVal3 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_SCORESTREAK_EDIT then
			arg0.WarningText:setText(Engine.Localize("MENU_ALL_BANNED_SCORESTREAKS"))
		end
	end
	arg0.BannedItemsList.filter = nil
	arg0.BannedItemsList:updateDataSource((not arg0.BannedItemsList.hasListFocus))
end

local function __FUNC_A11_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.GetModel(registerVal3, "Pregame")
	registerVal3 = Engine.CreateModel(registerVal2, "equippedFilter")
	local registerVal5 = Engine.GetGlobalModel()
	local registerVal4 = Engine.CreateModel(registerVal5, "lobbyRoot.Pregame.state")
	registerVal5 = Engine.GetModelValue(registerVal4)
	if registerVal5 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_CAC_EDIT then
		local registerVal6 = CoD.CACUtility.AnyClassContainsRestrictedItems(arg1)
		if registerVal6 then
			Engine.SetModelValue(registerVal3, true)
		else
			Engine.SetModelValue(registerVal3, false)
		else
			if registerVal5 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_SCORESTREAK_EDIT then
				registerVal6 = CoD.CACUtility.AnyEquippedScorestreaksBanned(arg1)
				if registerVal6 then
					Engine.SetModelValue(registerVal3, true)
				else
					Engine.SetModelValue(registerVal3, false)
				end
			end
		end
	end
end

local function __FUNC_DBC_(arg0, arg1)
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
	local registerVal5 = Engine.GetModelForController(arg1)
	local registerVal4 = Engine.GetModel(registerVal5, "Pregame")
	registerVal5 = Engine.CreateModel(registerVal4, "equippedFilter")
	local function __FUNC_116F_(arg2)
		local registerVal1 = Engine.GetModelValue(arg2)
		if registerVal1 then
			__FUNC_3C7_(arg0, arg1)
		else
			__FUNC_6F2_(arg0, arg1)
		end
	end

	arg0:subscribeToModel(registerVal5, __FUNC_116F_)
	local registerVal7 = Engine.GetGlobalModel()
	local registerVal6 = Engine.GetModel(registerVal7, "lobbyRoot.Pregame")
	registerVal7 = Engine.CreateModel(registerVal6, "Update")
	local function __FUNC_1203_(arg0)
		local registerVal2 = Engine.GetModelForController(arg1)
		local registerVal1 = Engine.GetModel(registerVal2, "Pregame.equippedFilter")
		if registerVal3 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_CAC_EDIT then
			registerVal2 = CoD.CACUtility.AnyClassContainsRestrictedItems(arg1)
			if registerVal2 then
				Engine.SetModelValue(registerVal1, true)
			else
				Engine.SetModelValue(registerVal1, false)
			else
				if registerVal3 == Enum.LobbyPregameState.LOBBY_PREGAME_STATE_SCORESTREAK_EDIT then
					registerVal2 = CoD.CACUtility.AnyEquippedScorestreaksBanned(arg1)
					if registerVal2 then
						Engine.SetModelValue(registerVal1, true)
					else
						Engine.SetModelValue(registerVal1, false)
					end
				end
			end
		end
	end

	arg0:subscribeToModel(registerVal7, __FUNC_1203_)
end

local registerVal6 = InheritFrom(LUI.UIElement)
CoD.Pregame_RestrictedContentWarning = registerVal6
local function __FUNC_14E6_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_A11_ then
		__FUNC_A11_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.Pregame_RestrictedContentWarning)
	registerVal2.id = "Pregame_RestrictedContentWarning"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 350.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 302.000000, 1001.890000)
	registerVal4:setTopBottom(true, false, 15.000000, 49.000000)
	registerVal4:setText(Engine.Localize("MENU_CAC_CONTENT_BANNED_CAPS"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Title = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 303.890000, 1001.890000)
	registerVal5:setTopBottom(true, false, 48.500000, 68.500000)
	registerVal5:setText(Engine.Localize("MENU_SCORESTREAK_CONTENT_BANNED_DESC"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.Description = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 10.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 303.890000, 1001.890000)
	registerVal6:setTopBottom(true, false, 149.000000, 257.000000)
	registerVal6:setWidgetType(CoD.Pregame_VoteItem)
	registerVal6:setHorizontalCount(6.000000)
	registerVal6:setSpacing(10.000000)
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "ShowHeader"
	local function __FUNC_2960_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal10.condition = __FUNC_2960_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.BannedItemsList = registerVal6
	local registerVal7 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 303.890000, 853.890000)
	registerVal7:setTopBottom(true, false, 274.000000, 340.000000)
	registerVal7:setWidgetType(CoD.CACGenericButton)
	registerVal7:setVerticalCount(2.000000)
	registerVal7:setDataSource("PregameBannedContentButtons")
	local function __FUNC_29AC_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_29AC_)
	local function __FUNC_2B3F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_2B3F_)
	local function __FUNC_2C0E_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_2C6F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_2C0E_, __FUNC_2C6F_, false)
	registerVal2:addElement(registerVal7)
	registerVal2.ButtonList = registerVal7
	local registerVal8 = CoD.Pregame_TimerOverlay.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "BannedContent"
	local function __FUNC_2D6A_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal12.condition = __FUNC_2D6A_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "lobbyRoot.Pregame.state")
	local function __FUNC_2DB4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:subscribeToModel(registerVal11, __FUNC_2DB4_)
	registerVal2:addElement(registerVal8)
	registerVal2.PregameTimerOverlay = registerVal8
	registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 303.890000, 1067.890000)
	registerVal9:setTopBottom(true, false, 99.500000, 119.500000)
	registerVal9:setRGB(ColorSet.GroupName.r, ColorSet.GroupName.g, ColorSet.GroupName.b)
	registerVal9:setText(Engine.Localize(""))
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.WarningText = registerVal9
	registerVal10 = CoD.FE_TalkersWidget.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 1017.000000, 1207.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 391.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.FETalkersWidget = registerVal10
	registerVal11 = {}
	registerVal11.down = registerVal7
	registerVal6.navigation = registerVal11
	registerVal11 = {}
	registerVal11.up = registerVal6
	registerVal7.navigation = registerVal11
	registerVal11 = {}
	registerVal12 = {}
	local function __FUNC_2EE1_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.Title:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Description:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BannedItemsList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ButtonList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PregameTimerOverlay:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal12.DefaultClip = __FUNC_2EE1_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_3151_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.Title:setText(Engine.Localize("MENU_NO_CAC_CONTENT_BANNED_CAPS"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Description:setText(Engine.Localize("MENU_NO_CAC_CONTENT_BANNED_DESC"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BannedItemsList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.WarningText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_3151_
	registerVal11.NoBannedCacContent = registerVal12
	registerVal12 = {}
	local function __FUNC_3409_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.Title:setText(Engine.Localize("MENU_CAC_CONTENT_BANNED_CAPS"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Description:setText(Engine.Localize("MENU_CAC_CONTENT_BANNED_DESC"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BannedItemsList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.WarningText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_3409_
	registerVal11.CacContentBannedEquipped = registerVal12
	registerVal12 = {}
	local function __FUNC_36BB_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.Title:setText(Engine.Localize("MENU_NO_CAC_CONTENT_BANNED_CAPS"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Description:setText(Engine.Localize("MENU_NO_EQUIPPED_BANNED_CAC_CONTENT_DESC"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BannedItemsList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.WarningText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_36BB_
	registerVal11.NoEquippedBannedCacContent = registerVal12
	registerVal12 = {}
	local function __FUNC_397A_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.Title:setText(Engine.Localize("MENU_NO_SCORESTREAK_CONTENT_BANNED_CAPS"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Description:setText(Engine.Localize("MENU_NO_SCORESTREAK_CONTENT_BANNED_DESC"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BannedItemsList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.WarningText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_397A_
	registerVal11.NoBannedScorestreaks = registerVal12
	registerVal12 = {}
	local function __FUNC_3C41_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal4:completeAnimation()
		registerVal2.Title:setText(Engine.Localize("MENU_SCORESTREAK_CONTENT_BANNED_CAPS"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Description:setText(Engine.Localize("MENU_SCORESTREAK_CONTENT_BANNED_DESC"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BannedItemsList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.WarningText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_3C41_
	registerVal11.BannedStreaksEquipped = registerVal12
	registerVal12 = {}
	local function __FUNC_3F03_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.Title:setText(Engine.Localize("MENU_NO_SCORESTREAK_CONTENT_BANNED_CAPS"))
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Description:setText(Engine.Localize("MENU_NO_BANNED_SCORESTREAKS_EQUIPPED_DESC"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BannedItemsList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ButtonList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.WarningText:setAlpha(1.000000)
		registerVal2.WarningText:setText(Engine.Localize("MENU_ALL_BANNED_SCORESTREAKS"))
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal12.DefaultClip = __FUNC_3F03_
	registerVal11.NoEquippedBannedStreaks = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "NoBannedCacContent"
	local function __FUNC_4279_(arg0, arg2, arg3)
		local registerVal3 = ItemRestrictionCACEditActive()
		if registerVal3 then
			registerVal3 = AnyCACContentBanned(arg0, arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_4279_
	local registerVal15 = {}
	registerVal15.stateName = "CacContentBannedEquipped"
	local function __FUNC_4313_(arg0, arg2, arg3)
		local registerVal3 = ItemRestrictionCACEditActive()
		if registerVal3 then
			registerVal3 = AnyClassContainsRestrictedItems(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal15.condition = __FUNC_4313_
	local registerVal16 = {}
	registerVal16.stateName = "NoEquippedBannedCacContent"
	local function __FUNC_43B3_(arg0, arg1, arg2)
		return ItemRestrictionCACEditActive()
	end

	registerVal16.condition = __FUNC_43B3_
	local registerVal17 = {}
	registerVal17.stateName = "NoBannedScorestreaks"
	local function __FUNC_440E_(arg0, arg2, arg3)
		local registerVal3 = ItemRestrictionScorestreakEditActive()
		if registerVal3 then
			registerVal3 = AnyScorestreaksBanned(arg0, arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal17.condition = __FUNC_440E_
	local registerVal18 = {}
	registerVal18.stateName = "BannedStreaksEquipped"
	local function __FUNC_44B1_(arg0, arg2, arg3)
		local registerVal3 = ItemRestrictionScorestreakEditActive()
		if registerVal3 then
			registerVal3 = AnyEquippedScorestreaksBanned(arg0, arg2, arg1)
		end
		return registerVal3
	end

	registerVal18.condition = __FUNC_44B1_
	local registerVal19 = {}
	registerVal19.stateName = "NoEquippedBannedStreaks"
	local function __FUNC_4559_(arg0, arg1, arg2)
		return ItemRestrictionScorestreakEditActive()
	end

	registerVal19.condition = __FUNC_4559_
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17, registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.Pregame.state")
	local function __FUNC_45BE_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.state"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_45BE_)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.Pregame.Update")
	local function __FUNC_46E9_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_46E9_)
	local function __FUNC_4816_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "classNum"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "classNum", true, __FUNC_4816_)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.Pregame.state")
	local function __FUNC_4932_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.Pregame.state"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_4932_)
	local function __FUNC_4AFD_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "classNum"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal2:linkToElementModel(registerVal2, "classNum", true, __FUNC_4AFD_)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.Pregame.Update")
	local function __FUNC_4CBA_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "lobbyRoot.Pregame.Update"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_4CBA_)
	registerVal14 = Engine.GetModelForController(arg1)
	registerVal13 = Engine.GetModel(registerVal14, "Pregame.equippedFilter")
	local function __FUNC_4E86_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "Pregame.equippedFilter"
		CoD.Menu.UpdateButtonShownState(registerVal2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal2:subscribeToModel(registerVal13, __FUNC_4E86_)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	local function __FUNC_5050_(arg0, arg1, arg2, arg3)
		local registerVal4 = ItemRestrictionCACEditActive()
		registerVal4 = AnyClassContainsRestrictedItems(arg1, arg0, arg2)
		registerVal4 = IsModelValueTrue(arg2, "Pregame.equippedFilter")
		if registerVal4 and registerVal4 and registerVal4 then
			ToggleRestrictedContentEquippedFilter(arg2)
			UpdateAllMenuButtonPrompts(arg1, arg2)
			return true
		else
			registerVal4 = ItemRestrictionCACEditActive()
			registerVal4 = AnyClassContainsRestrictedItems(arg1, arg0, arg2)
			registerVal4 = IsModelValueTrue(arg2, "Pregame.equippedFilter")
			if registerVal4 and registerVal4 and not registerVal4 then
				ToggleRestrictedContentEquippedFilter(arg2)
				UpdateAllMenuButtonPrompts(arg1, arg2)
				return true
			else
				registerVal4 = ItemRestrictionScorestreakEditActive()
				registerVal4 = AnyEquippedScorestreaksBanned(arg1, arg0, arg2)
				registerVal4 = IsModelValueTrue(arg2, "Pregame.equippedFilter")
				if registerVal4 and registerVal4 and registerVal4 then
					ToggleRestrictedContentEquippedFilter(arg2)
					UpdateAllMenuButtonPrompts(arg1, arg2)
					return true
				else
					registerVal4 = ItemRestrictionScorestreakEditActive()
					registerVal4 = AnyEquippedScorestreaksBanned(arg1, arg0, arg2)
					registerVal4 = IsModelValueTrue(arg2, "Pregame.equippedFilter")
					if registerVal4 and registerVal4 and not registerVal4 then
						ToggleRestrictedContentEquippedFilter(arg2)
						UpdateAllMenuButtonPrompts(arg1, arg2)
						return true
					end
				end
			end
		end
	end

	local function __FUNC_5359_(arg0, arg1, arg2)
		local registerVal3 = ItemRestrictionCACEditActive()
		registerVal3 = AnyClassContainsRestrictedItems(arg1, arg0, arg2)
		registerVal3 = IsModelValueTrue(arg2, "Pregame.equippedFilter")
		if registerVal3 and registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_SHOW_ALL_BANNED_CAC_ITEMS")
			return true
		else
			registerVal3 = ItemRestrictionCACEditActive()
			registerVal3 = AnyClassContainsRestrictedItems(arg1, arg0, arg2)
			registerVal3 = IsModelValueTrue(arg2, "Pregame.equippedFilter")
			if registerVal3 and registerVal3 and not registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_SHOW_EQUIPPED_BANNED_CAC_ITEMS")
				return true
			else
				registerVal3 = ItemRestrictionScorestreakEditActive()
				registerVal3 = AnyEquippedScorestreaksBanned(arg1, arg0, arg2)
				registerVal3 = IsModelValueTrue(arg2, "Pregame.equippedFilter")
				if registerVal3 and registerVal3 and registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_SHOW_ALL_BANNED_SCORESTREAKS")
					return true
				else
					registerVal3 = ItemRestrictionScorestreakEditActive()
					registerVal3 = AnyEquippedScorestreaksBanned(arg1, arg0, arg2)
					registerVal3 = IsModelValueTrue(arg2, "Pregame.equippedFilter")
					if registerVal3 and registerVal3 and not registerVal3 then
						CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_SHOW_EQUIPPED_BANNED_SCORESTREAKS")
						return true
					end
				end
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal2, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "S", __FUNC_5050_, __FUNC_5359_, false)
	registerVal6.id = "BannedItemsList"
	registerVal7.id = "ButtonList"
	local function __FUNC_57D8_(arg0, arg1)
		local registerVal2 = arg0.ButtonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_57D8_)
	local function __FUNC_58DE_(arg0)
		arg0.BannedItemsList:close()
		arg0.ButtonList:close()
		arg0.PregameTimerOverlay:close()
		arg0.FETalkersWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_58DE_)
	if __FUNC_DBC_ then
		__FUNC_DBC_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Pregame_RestrictedContentWarning.new = __FUNC_14E6_

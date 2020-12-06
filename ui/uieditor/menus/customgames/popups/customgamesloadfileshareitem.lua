-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FullscreenPopup.FullscreenPopupTemplate")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
local function __FUNC_235_(arg0, arg1)
	local registerVal2 = CoDShared.IsGametypeTeamBased()
	arg0.oldTeamBased = registerVal2
end

local function __FUNC_2BE_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CustomGamesLoadFileshareItem")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CustomGamesLoadFileshareItem.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FullscreenPopupTemplate.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, -3.040000, 1280.960000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.RedLine:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal3.ButtonList:setDataSource("CustomGamesLoadOptionsButtonList")
	registerVal3.WorkingTitle:setText(Engine.Localize("MENU_CUSTOMGAMES_LOAD"))
	registerVal3.Title:setText(Engine.Localize("MENU_CUSTOMGAMES_LOAD"))
	registerVal3.Subtitle:setText(Engine.Localize("MENU_CUSTOMGAMES_LOAD_DESC"))
	registerVal3.DoneTitle:setText(Engine.Localize("MENU_NEW"))
	registerVal3.ErrorSubtitle:setText(Engine.Localize("MENU_FILESHARE_PUBLISH_ERROR"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "WorkingState"
	local function __FUNC_F54_(arg0, arg1, arg2)
		return FileshareIsPublishing()
	end

	registerVal7.condition = __FUNC_F54_
	local registerVal8 = {}
	registerVal8.stateName = "ErrorState"
	local function __FUNC_FAB_(arg0, arg1, arg2)
		return FileshareIsPublishingInError()
	end

	registerVal8.condition = __FUNC_FAB_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "fileshareRoot.isPublishing")
	local function __FUNC_1006_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isPublishing"
		registerVal1:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1006_)
	registerVal1:addElement(registerVal3)
	registerVal1.FullscreenPopupTemplate = registerVal3
	local registerVal4 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 64.000000, 496.000000)
	registerVal4:setTopBottom(true, false, 531.000000, 563.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.leftButtonBar = registerVal4
	local registerVal5 = {}
	registerVal6 = {}
	local function __FUNC_1134_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.WorkingTitle:completeAnimation()
		registerVal1.FullscreenPopupTemplate.WorkingTitle:setText(Engine.Localize("MENU_CUSTOMGAMES_LOAD"))
		registerVal1.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_1134_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_12CC_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.WorkingTitle:completeAnimation()
		registerVal3.Title:completeAnimation()
		registerVal3.Subtitle:completeAnimation()
		registerVal1.FullscreenPopupTemplate.WorkingTitle:setText(Engine.Localize("MENU_FILESHARE_WAITING"))
		registerVal1.FullscreenPopupTemplate.Title:setText(Engine.Localize("MENU_FILESHARE_WAITING"))
		registerVal1.FullscreenPopupTemplate.Subtitle:setText(Engine.Localize("MENU_FILESHARE_WAITING"))
		registerVal1.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_12CC_
	registerVal5.Working = registerVal6
	registerVal6 = {}
	local function __FUNC_152E_()
		registerVal1:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.WorkingTitle:completeAnimation()
		registerVal3.Title:completeAnimation()
		registerVal3.Subtitle:completeAnimation()
		registerVal1.FullscreenPopupTemplate.WorkingTitle:setText(Engine.Localize("MENU_CUSTOMGAMES_CANNOT_VIEW"))
		registerVal1.FullscreenPopupTemplate.Title:setText(Engine.Localize("MENU_CUSTOMGAMES_CANNOT_VIEW"))
		registerVal1.FullscreenPopupTemplate.Subtitle:setText(Engine.Localize("MENU_CUSTOMGAMES_CANNOT_VIEW_DESC"))
		registerVal1.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_152E_
	registerVal5.CannotLoad = registerVal6
	registerVal1.clipsPerState = registerVal5
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Working"
	local function __FUNC_17BF_(arg1, arg2, arg3)
		local registerVal3 = FileshareIsReadyToPublish(arg0)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_17BF_
	local registerVal9 = {}
	registerVal9.stateName = "CannotLoad"
	local function __FUNC_181F_(arg0, arg1, arg2)
		local registerVal3 = IsInCustomGames("")
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_181F_
	registerVal7 = {registerVal8, registerVal9}
	registerVal1:mergeStateConditions(registerVal7)
	local function __FUNC_187F_(arg1, arg2)
		SetPrimaryControllerPerControllerTableProperty("gamesettingsUpdated", true)
		GameModeSelectedCommunity(registerVal1, arg1, arg0)
		CustomGamesShowLoadSuccessToast(registerVal1, arg0, CoD.FileshareUtility.GetSelectedItemProperty("fileName"))
		GoBack(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("customgames_load_success", __FUNC_187F_)
	local function __FUNC_1A5C_(arg1, arg2)
		CustomGamesShowLoadFailureToast(registerVal1, arg0, CoD.FileshareUtility.GetSelectedItemProperty("fileName"))
		GoBack(registerVal1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("customgames_load_failure", __FUNC_1A5C_)
	local function __FUNC_1BA0_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_1C1D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_CLOSE")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1BA0_, __FUNC_1C1D_, false)
	local function __FUNC_1D1A_(arg1)
		ClearSavedState(registerVal1, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_1D1A_)
	registerVal3.id = "FullscreenPopupTemplate"
	registerVal4:setModel(registerVal1.buttonModel, arg0)
	registerVal7 = {}
	registerVal7.name = "menu_loaded"
	registerVal7.controller = arg0
	registerVal1:processEvent(registerVal7)
	registerVal7 = {}
	registerVal7.name = "update_state"
	registerVal7.menu = registerVal1
	registerVal1:processEvent(registerVal7)
	registerVal5 = registerVal1:restoreState()
	if not registerVal5 then
		registerVal7 = {}
		registerVal7.name = "gain_focus"
		registerVal7.controller = arg0
		registerVal1.FullscreenPopupTemplate:processEvent(registerVal7)
	end
	local function __FUNC_1D6D_(arg1)
		arg1.FullscreenPopupTemplate:close()
		arg1.leftButtonBar:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CustomGamesLoadFileshareItem.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1D6D_)
	if __FUNC_235_ then
		__FUNC_235_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.CustomGamesLoadFileshareItem = __FUNC_2BE_

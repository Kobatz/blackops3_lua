-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FullscreenPopup.FullscreenPopupTemplate")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
function LUI.createMenu.CustomGamesCannotView(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("CustomGamesCannotView")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "CustomGamesCannotView.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FullscreenPopupTemplate.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, -3.040000, 1280.960000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.RedLine:setRGB(ColorSet.ResistanceHigh.r, ColorSet.ResistanceHigh.g, ColorSet.ResistanceHigh.b)
	registerVal3.WorkingTitle:setText(Engine.Localize("MENU_CUSTOMGAMES_CANNOT_VIEW"))
	registerVal3.Title:setText(Engine.Localize("MENU_CUSTOMGAMES_CANNOT_VIEW"))
	registerVal3.Subtitle:setText(Engine.Localize("MENU_CUSTOMGAMES_CANNOT_VIEW_DESC"))
	registerVal3.DoneTitle:setText(Engine.Localize("MENU_NEW"))
	registerVal3.ErrorSubtitle:setText(Engine.Localize("MENU_FILESHARE_PUBLISH_ERROR"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "WorkingState"
	local function __FUNC_C9C_(arg0, arg1, arg2)
		return FileshareIsPublishing()
	end

	registerVal7.condition = __FUNC_C9C_
	local registerVal8 = {}
	registerVal8.stateName = "ErrorState"
	local function __FUNC_CF3_(arg0, arg1, arg2)
		return FileshareIsPublishingInError()
	end

	registerVal8.condition = __FUNC_CF3_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "fileshareRoot.isPublishing")
	local function __FUNC_D4E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isPublishing"
		registerVal1:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_D4E_)
	registerVal1:addElement(registerVal3)
	registerVal1.FullscreenPopupTemplate = registerVal3
	local registerVal4 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 64.000000, 496.000000)
	registerVal4:setTopBottom(true, false, 531.000000, 563.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.leftButtonBar = registerVal4
	local function __FUNC_E7C_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_ED0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_E7C_, __FUNC_ED0_, false)
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
	local registerVal5 = registerVal1:restoreState()
	if not registerVal5 then
		registerVal7 = {}
		registerVal7.name = "gain_focus"
		registerVal7.controller = arg0
		registerVal1.FullscreenPopupTemplate:processEvent(registerVal7)
	end
	local function __FUNC_FCD_(arg1)
		arg1.FullscreenPopupTemplate:close()
		arg1.leftButtonBar:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "CustomGamesCannotView.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_FCD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end


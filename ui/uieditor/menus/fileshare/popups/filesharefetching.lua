-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FullscreenPopup.FullscreenPopupTemplate")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
function LUI.createMenu.FileshareFetching(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("FileshareFetching")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "FileshareFetching.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FullscreenPopupTemplate.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 2.960000, 1282.960000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.WorkingTitle:setText(Engine.Localize("MENU_FILESHARE_WAITING"))
	registerVal3.Title:setText(Engine.Localize(""))
	registerVal3.Subtitle:setText(Engine.Localize(""))
	registerVal3.DoneTitle:setText(Engine.Localize("MENU_NEW"))
	registerVal3.ErrorSubtitle:setText(Engine.Localize("MENU_FILESHARE_PUBLISH_ERROR"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "WorkingState"
	local function __FUNC_BA0_(arg1, arg2, arg3)
		local registerVal3 = FileshareIsReady(arg0)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_BA0_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "fileshareRoot.ready")
	local function __FUNC_BFA_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.ready"
		registerVal1:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_BFA_)
	registerVal1:addElement(registerVal3)
	registerVal1.FullscreenPopupTemplate0 = registerVal3
	local registerVal4 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 79.000000, 511.000000)
	registerVal4:setTopBottom(true, false, 533.110000, 565.110000)
	registerVal1:addElement(registerVal4)
	registerVal1.leftButtonBar = registerVal4
	local function __FUNC_D21_(arg0, arg1, arg2, arg3)
		Close(registerVal1, arg2)
		return true
	end

	local function __FUNC_D73_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_CLOSE")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_D21_, __FUNC_D73_, false)
	local function __FUNC_E6E_(arg1)
		local registerVal2 = FileshareIsReady(arg0)
		if registerVal2 then
			FileshareOpenPreviousPublishMenu(registerVal1, registerVal1, arg0, registerVal1)
			Close(registerVal1, arg0)
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "FileshareRoot", "ready", __FUNC_E6E_)
	registerVal3.id = "FullscreenPopupTemplate0"
	registerVal4:setModel(registerVal1.buttonModel, arg0)
	registerVal7 = {}
	registerVal7.name = "menu_loaded"
	registerVal7.controller = arg0
	registerVal1:processEvent(registerVal7)
	registerVal7 = {}
	registerVal7.name = "update_state"
	registerVal7.menu = registerVal1
	registerVal1:processEvent(registerVal7)
	local function __FUNC_F2B_(arg1)
		arg1.FullscreenPopupTemplate0:close()
		arg1.leftButtonBar:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "FileshareFetching.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_F2B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end


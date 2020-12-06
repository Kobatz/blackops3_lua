-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FullscreenPopup.FullscreenPopupTemplate")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
function LUI.createMenu.MediaManagerDeleteTheaterFile(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("MediaManagerDeleteTheaterFile")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "MediaManagerDeleteTheaterFile.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FullscreenPopupTemplate.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.RedLine:setRGB(1.000000, 0.000000, 0.000000)
	registerVal3.ButtonList:setDataSource("FileshareOptionsDeleteButtonList")
	registerVal3.WorkingTitle:setText(Engine.Localize("MENU_MEDIA_MANAGER_DELETING"))
	registerVal3.Title:setText(Engine.Localize("MENU_MEDIA_MANAGER_DELETE_PROMPT"))
	registerVal3.Subtitle:setText(Engine.Localize("MENU_CANNOT_UNDO"))
	registerVal3.DoneTitle:setText(Engine.Localize("MENU_MEDIA_MANAGER_DELETE_SUCCESS"))
	registerVal3.ErrorSubtitle:setText(Engine.Localize("MENU_FILESHARE_DELETE_ERROR"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "WorkingState"
	local function __FUNC_D9C_(arg0, arg1, arg2)
		return FileshareIsDeleting()
	end

	registerVal7.condition = __FUNC_D9C_
	local registerVal8 = {}
	registerVal8.stateName = "ErrorState"
	local function __FUNC_DF1_(arg0, arg1, arg2)
		return FileshareIsDeletingInError()
	end

	registerVal8.condition = __FUNC_DF1_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "fileshareRoot.isDeleting")
	local function __FUNC_E4C_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isDeleting"
		registerVal1:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_E4C_)
	registerVal1:addElement(registerVal3)
	registerVal1.FullscreenPopupTemplate0 = registerVal3
	local registerVal4 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal4:setLeftRight(false, false, -540.500000, -108.500000)
	registerVal4:setTopBottom(true, false, 532.000000, 564.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.buttons = registerVal4
	local function __FUNC_F7A_(arg1, arg2)
		FileshareDeleteDone(registerVal1, arg1, arg0, "", registerVal1)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_delete_success", __FUNC_F7A_)
	local function __FUNC_1028_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_107C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1028_, __FUNC_107C_, false)
	local function __FUNC_1179_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_11AC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1179_, __FUNC_11AC_, false)
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
	local registerVal5 = registerVal1:restoreState()
	if not registerVal5 then
		registerVal7 = {}
		registerVal7.name = "gain_focus"
		registerVal7.controller = arg0
		registerVal1.FullscreenPopupTemplate0:processEvent(registerVal7)
	end
	local function __FUNC_129F_(arg1)
		arg1.FullscreenPopupTemplate0:close()
		arg1.buttons:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "MediaManagerDeleteTheaterFile.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_129F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end


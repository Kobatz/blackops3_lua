-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FullscreenPopup.FullscreenPopupTemplate")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
function LUI.createMenu.FileshareOptionsDelete_Screenshot(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("FileshareOptionsDelete_Screenshot")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "FileshareOptionsDelete_Screenshot.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FullscreenPopupTemplate.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.RedLine:setRGB(1.000000, 0.000000, 0.000000)
	registerVal3.ButtonList:setDataSource("FileshareOptionsDeleteButtonList")
	registerVal3.WorkingTitle:setText(Engine.Localize("MENU_FILESHARE_DELETING"))
	registerVal3.Title:setText(Engine.Localize(FileshareAppendLocalIfNeeded(arg0, "MENU_FILESHARE_DELETE_PROMPT")))
	registerVal3.Subtitle:setText(Engine.Localize(FileshareAppendLocalIfNeeded(arg0, "MENU_FILESHARE_DELETE_PROMPT_DESC")))
	registerVal3.DoneTitle:setText(Engine.Localize("MENU_FILESHARE_DELETE_SUCCESS"))
	registerVal3.ErrorSubtitle:setText(Engine.Localize("MENU_FILESHARE_DELETE_ERROR"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "WorkingState"
	local function __FUNC_1196_(arg0, arg1, arg2)
		return FileshareIsDeleting()
	end

	registerVal7.condition = __FUNC_1196_
	local registerVal8 = {}
	registerVal8.stateName = "ErrorState"
	local function __FUNC_11E9_(arg0, arg1, arg2)
		return FileshareIsDeletingInError()
	end

	registerVal8.condition = __FUNC_11E9_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "fileshareRoot.isDeleting")
	local function __FUNC_1244_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isDeleting"
		registerVal1:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1244_)
	registerVal1:addElement(registerVal3)
	registerVal1.FullscreenPopupTemplate0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 97.000000, 447.000000)
	registerVal4:setTopBottom(true, false, 223.000000, 513.000000)
	registerVal4:setRGB(0.400000, 0.400000, 0.400000)
	registerVal4:setAlpha(0.500000)
	registerVal1:addElement(registerVal4)
	registerVal1.BG = registerVal4
	local registerVal5 = LUI.UIElement.new()
	registerVal5:setLeftRight(true, false, 97.000000, 447.000000)
	registerVal5:setTopBottom(true, false, 224.000000, 482.000000)
	local function __FUNC_1372_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setAlpha(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg0, "FileshareRoot", "showFileDetails", __FUNC_1372_)
	local function __FUNC_1405_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setupImageViewer(GetImageViewerParams("UI_SCREENSHOT_TYPE_THUMBNAIL", registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg0, "FileshareSelectedItem", "fileId", __FUNC_1405_)
	registerVal1:addElement(registerVal5)
	registerVal1.ImageViewer0 = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 97.000000, 447.000000)
	registerVal6:setTopBottom(true, false, 481.000000, 513.000000)
	registerVal6:setAlpha(0.800000)
	registerVal1:addElement(registerVal6)
	registerVal1.ItemNameBg = registerVal6
	registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 99.500000, 447.000000)
	registerVal7:setTopBottom(true, false, 482.000000, 512.000000)
	registerVal7:setRGB(0.000000, 0.000000, 0.000000)
	registerVal7:setTTF("fonts/default.ttf")
	local function __FUNC_14F1_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "FileshareSelectedItem", "fileName", __FUNC_14F1_)
	registerVal1:addElement(registerVal7)
	registerVal1.ItemName = registerVal7
	registerVal8 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal8:setLeftRight(false, false, -540.500000, -108.500000)
	registerVal8:setTopBottom(true, false, 532.000000, 564.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.buttons = registerVal8
	local function __FUNC_15AA_(arg1, arg2)
		FileshareDeleteDone(registerVal1, arg1, arg0, "", registerVal1)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_delete_success", __FUNC_15AA_)
	local function __FUNC_1658_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_16AC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1658_, __FUNC_16AC_, false)
	local function __FUNC_17A9_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_17DC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_17A9_, __FUNC_17DC_, false)
	registerVal3.id = "FullscreenPopupTemplate0"
	registerVal8:setModel(registerVal1.buttonModel, arg0)
	local registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	local registerVal9 = registerVal1:restoreState()
	if not registerVal9 then
		registerVal11 = {}
		registerVal11.name = "gain_focus"
		registerVal11.controller = arg0
		registerVal1.FullscreenPopupTemplate0:processEvent(registerVal11)
	end
	local function __FUNC_18CF_(arg1)
		arg1.FullscreenPopupTemplate0:close()
		arg1.buttons:close()
		arg1.ImageViewer0:close()
		arg1.ItemName:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "FileshareOptionsDelete_Screenshot.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_18CF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end


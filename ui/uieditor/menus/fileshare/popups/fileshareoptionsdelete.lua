-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FullscreenPopup.FullscreenPopupTemplate")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
function LUI.createMenu.FileshareOptionsDelete(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("FileshareOptionsDelete")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "FileshareOptionsDelete.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FullscreenPopupTemplate.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.RedLine:setRGB(1.000000, 0.000000, 0.000000)
	registerVal3.ButtonList:setDataSource("FileshareOptionsDeleteButtonList")
	registerVal3.WorkingTitle:setText(Engine.Localize("MENU_FILESHARE_DELETING"))
	registerVal3.Title:setText(Engine.Localize("MENU_FILESHARE_DELETE_PROMPT"))
	registerVal3.Subtitle:setText(Engine.Localize("MENU_FILESHARE_DELETE_PROMPT_DESC"))
	registerVal3.DoneTitle:setText(Engine.Localize("MENU_FILESHARE_DELETE_SUCCESS"))
	registerVal3.ErrorSubtitle:setText(Engine.Localize("MENU_FILESHARE_DELETE_ERROR"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "WorkingState"
	local function __FUNC_12CB_(arg0, arg1, arg2)
		return FileshareIsDeleting()
	end

	registerVal7.condition = __FUNC_12CB_
	local registerVal8 = {}
	registerVal8.stateName = "ErrorState"
	local function __FUNC_131D_(arg0, arg1, arg2)
		return FileshareIsDeletingInError()
	end

	registerVal8.condition = __FUNC_131D_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "fileshareRoot.isDeleting")
	local function __FUNC_1378_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isDeleting"
		registerVal1:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1378_)
	registerVal1:addElement(registerVal3)
	registerVal1.FullscreenPopupTemplate0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 97.000000, 447.000000)
	registerVal4:setTopBottom(true, false, 223.000000, 513.000000)
	registerVal4:setRGB(0.400000, 0.400000, 0.400000)
	registerVal4:setAlpha(FileshareShowDeleteOptionItem(0.500000))
	registerVal1:addElement(registerVal4)
	registerVal1.BG = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 97.000000, 447.000000)
	registerVal5:setTopBottom(false, true, -497.000000, -207.000000)
	registerVal5:setAlpha(FileshareShowDeleteOptionItem(1.000000))
	local function __FUNC_14A6_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal5:setupWCFileshareIconExtraCamRender(GetFileshareExtraCamParameters(arg0, registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg0, "FileshareSelectedItem", "fileId", __FUNC_14A6_)
	registerVal1:addElement(registerVal5)
	registerVal1.WCFileshareIconExtraCamRender = registerVal5
	registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 97.000000, 447.000000)
	registerVal6:setTopBottom(true, false, 482.000000, 514.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(FileshareShowDeleteOptionItem(0.800000))
	registerVal1:addElement(registerVal6)
	registerVal1.WeaponNameBg = registerVal6
	registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 99.500000, 447.000000)
	registerVal7:setTopBottom(true, false, 485.500000, 510.500000)
	registerVal7:setAlpha(FileshareShowDeleteOptionItem(1.000000))
	registerVal7:setTTF("fonts/default.ttf")
	local function __FUNC_1587_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "FileshareSelectedItem", "weaponName", __FUNC_1587_)
	registerVal1:addElement(registerVal7)
	registerVal1.WeaponName = registerVal7
	registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 97.000000, 447.000000)
	registerVal8:setTopBottom(true, false, 449.000000, 481.000000)
	registerVal8:setAlpha(FileshareShowDeleteOptionItem(0.800000))
	registerVal1:addElement(registerVal8)
	registerVal1.ItemNameBg = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 99.500000, 447.000000)
	registerVal9:setTopBottom(true, false, 450.000000, 480.000000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setAlpha(FileshareShowDeleteOptionItem(1.000000))
	registerVal9:setTTF("fonts/default.ttf")
	local function __FUNC_163E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg0, "FileshareSelectedItem", "fileName", __FUNC_163E_)
	registerVal1:addElement(registerVal9)
	registerVal1.ItemName = registerVal9
	local registerVal10 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal10:setLeftRight(false, false, -540.500000, -108.500000)
	registerVal10:setTopBottom(true, false, 532.000000, 564.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.buttons = registerVal10
	local function __FUNC_16F6_(arg1, arg2)
		FileshareDeleteDone(registerVal1, arg1, arg0, "", registerVal1)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_delete_success", __FUNC_16F6_)
	local function __FUNC_17A4_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_17F8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_17A4_, __FUNC_17F8_, false)
	local function __FUNC_18F5_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_1928_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_18F5_, __FUNC_1928_, false)
	registerVal3.id = "FullscreenPopupTemplate0"
	registerVal10:setModel(registerVal1.buttonModel, arg0)
	local registerVal13 = {}
	registerVal13.name = "menu_loaded"
	registerVal13.controller = arg0
	registerVal1:processEvent(registerVal13)
	registerVal13 = {}
	registerVal13.name = "update_state"
	registerVal13.menu = registerVal1
	registerVal1:processEvent(registerVal13)
	local registerVal11 = registerVal1:restoreState()
	if not registerVal11 then
		registerVal13 = {}
		registerVal13.name = "gain_focus"
		registerVal13.controller = arg0
		registerVal1.FullscreenPopupTemplate0:processEvent(registerVal13)
	end
	local function __FUNC_1A1B_(arg1)
		arg1.FullscreenPopupTemplate0:close()
		arg1.buttons:close()
		arg1.WCFileshareIconExtraCamRender:close()
		arg1.WeaponName:close()
		arg1.ItemName:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "FileshareOptionsDelete.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_1A1B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end


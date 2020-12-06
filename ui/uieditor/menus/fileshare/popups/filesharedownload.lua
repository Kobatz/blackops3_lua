-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FullscreenPopup.FullscreenPopupTemplate")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithInputButton")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_Left_ND")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
require("ui.uieditor.widgets.MediaManager.LocalMediaSlotsAvailable")
local function __FUNC_314_(arg0, arg1)
	arg0.FullscreenPopupTemplate0.navigation = nil
	local registerVal3 = {}
	registerVal3.up = arg0.BtnPublish
	registerVal3.down = arg0.BtnPublish
	arg0.InputName.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.InputName
	registerVal3.down = arg0.InputName
	arg0.BtnPublish.navigation = registerVal3
end

local function __FUNC_430_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("FileshareDownload")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "FileshareDownload.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FullscreenPopupTemplate.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, 2.960000, 1282.960000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.WorkingTitle:setText(Engine.Localize("MENU_FILESHARE_DOWNLOAD_WORKING_TITLE"))
	registerVal3.Title:setText(Engine.Localize("MENU_FILESHARE_DOWNLOAD_TITLE"))
	registerVal3.Subtitle:setText(Engine.Localize("MENU_FILESHARE_DOWNLOAD_DESC"))
	registerVal3.DoneTitle:setText(Engine.Localize("MENU_NEW"))
	registerVal3.ErrorSubtitle:setText(Engine.Localize("MENU_FILESHARE_DOWNLOAD_ERROR"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "WorkingState"
	local function __FUNC_1791_(arg0, arg1, arg2)
		return FileshareIsDownloading()
	end

	registerVal7.condition = __FUNC_1791_
	local registerVal8 = {}
	registerVal8.stateName = "ErrorState"
	local function __FUNC_17E8_(arg0, arg1, arg2)
		return FileshareIsDownloadingInError()
	end

	registerVal8.condition = __FUNC_17E8_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "fileshareRoot.isDownloading")
	local function __FUNC_1847_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isDownloading"
		registerVal1:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1847_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "fileshareRoot.isPublishing")
	local function __FUNC_1975_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isPublishing"
		registerVal1:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1975_)
	registerVal1:addElement(registerVal3)
	registerVal1.FullscreenPopupTemplate0 = registerVal3
	local registerVal4 = CoD.GunsmithInputButton.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 461.960000, 823.960000)
	registerVal4:setTopBottom(true, false, 378.000000, 412.000000)
	registerVal4.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_1AA4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Text:setText(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg0, "FileshareRoot", "downloadFileName", __FUNC_1AA4_)
	local function __FUNC_1B52_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_1B52_)
	local function __FUNC_1CE3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1CE3_)
	local function __FUNC_1DB2_(arg0, arg1, arg2, arg3)
		FileshareEnterDownloadName(registerVal1, arg0, arg2)
		return true
	end

	local function __FUNC_1E1C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_1DB2_, __FUNC_1E1C_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.InputName = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 461.960000, 661.960000)
	registerVal5:setTopBottom(true, false, 353.000000, 378.000000)
	registerVal5:setText(Engine.Localize("MENU_FILESHARE_NEWNAME"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal5)
	registerVal1.LblName = registerVal5
	registerVal6 = CoD.List1ButtonLarge_Left_ND.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 461.960000, 741.960000)
	registerVal6:setTopBottom(true, false, 458.010000, 489.010000)
	registerVal6.btnDisplayText:setText(Engine.Localize("MENU_FILESHARE_DOWNLOAD"))
	registerVal6.btnDisplayTextStroke:setText(Engine.Localize("MENU_FILESHARE_DOWNLOAD"))
	local registerVal10 = Engine.GetGlobalModel()
	local registerVal9 = Engine.GetModel(registerVal10, "fileshareRoot.ready")
	local function __FUNC_1F1A_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "fileshareRoot.ready"
		CoD.Menu.UpdateButtonShownState(registerVal6, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_1F1A_)
	local function __FUNC_20E0_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_20E0_)
	local function __FUNC_2273_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_2273_)
	local function __FUNC_2342_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareIsReady(arg2)
		if registerVal4 then
			FileshareDownload(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_23D1_(arg0, arg1, arg2)
		local registerVal3 = FileshareIsReady(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2342_, __FUNC_23D1_, false)
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "Disabled"
	local function __FUNC_2504_(arg1, arg2, arg3)
		local registerVal3 = FileshareIsReady(arg0)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_2504_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "fileshareRoot.ready")
	local function __FUNC_255E_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.ready"
		registerVal1:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_255E_)
	registerVal1:addElement(registerVal6)
	registerVal1.BtnPublish = registerVal6
	registerVal7 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 64.000000, 496.000000)
	registerVal7:setTopBottom(true, false, 534.110000, 566.110000)
	registerVal1:addElement(registerVal7)
	registerVal1.leftButtonBar = registerVal7
	registerVal8 = CoD.LocalMediaSlotsAvailable.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 906.500000, 1146.500000)
	registerVal8:setTopBottom(true, false, 459.010000, 489.010000)
	registerVal1:addElement(registerVal8)
	registerVal1.LocalMediaSlotsAvailable0 = registerVal8
	registerVal9 = {}
	registerVal9.left = registerVal4
	registerVal9.down = registerVal4
	registerVal3.navigation = registerVal9
	registerVal9 = {}
	registerVal9.up = registerVal3
	registerVal9.right = registerVal3
	registerVal9.down = registerVal6
	registerVal4.navigation = registerVal9
	registerVal9 = {}
	registerVal9.up = registerVal3
	registerVal9.right = registerVal3
	registerVal6.navigation = registerVal9
	registerVal9 = {}
	registerVal10 = {}
	local function __FUNC_2685_()
		registerVal1:setupElementClipCounter(0.000000)
	end

	registerVal10.DefaultClip = __FUNC_2685_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_26E6_()
		registerVal1:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal1.InputName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.LblName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.BtnPublish:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
	end

	registerVal10.DefaultClip = __FUNC_26E6_
	registerVal9.Working = registerVal10
	registerVal1.clipsPerState = registerVal9
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Working"
	local function __FUNC_2892_(arg0, arg1, arg2)
		return FileshareIsDownloading()
	end

	registerVal12.condition = __FUNC_2892_
	registerVal11 = {registerVal12}
	registerVal1:mergeStateConditions(registerVal11)
	registerVal12 = Engine.GetGlobalModel()
	registerVal11 = Engine.GetModel(registerVal12, "fileshareRoot.isDownloading")
	local function __FUNC_28E8_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isDownloading"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal11, __FUNC_28E8_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_2A19_(arg1, arg2)
		FileshareHandleKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_2A19_)
	local function __FUNC_2AC6_(arg1, arg2)
		FileshareShowDownloadSuccessToast(registerVal1, arg1, arg0)
		GoBackMultiple(registerVal1, arg0, "1")
		MediaManagerUpdateLocalData(arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_copy_success", __FUNC_2AC6_)
	local function __FUNC_2BD8_(arg1, arg2)
		FileshareShowErrorToast(registerVal1, arg1, arg0)
		GoBackMultiple(registerVal1, arg0, "1")
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_copy_failure", __FUNC_2BD8_)
	local function __FUNC_2CB1_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearSavedState(registerVal1, arg2)
		return true
	end

	local function __FUNC_2D2D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2CB1_, __FUNC_2D2D_, false)
	registerVal3.id = "FullscreenPopupTemplate0"
	registerVal4.id = "InputName"
	registerVal6.id = "BtnPublish"
	registerVal7:setModel(registerVal1.buttonModel, arg0)
	registerVal11 = {}
	registerVal11.name = "menu_loaded"
	registerVal11.controller = arg0
	registerVal1:processEvent(registerVal11)
	registerVal11 = {}
	registerVal11.name = "update_state"
	registerVal11.menu = registerVal1
	registerVal1:processEvent(registerVal11)
	registerVal9 = registerVal1:restoreState()
	if not registerVal9 then
		registerVal11 = {}
		registerVal11.name = "gain_focus"
		registerVal11.controller = arg0
		registerVal1.InputName:processEvent(registerVal11)
	end
	local function __FUNC_2E20_(arg1)
		arg1.FullscreenPopupTemplate0:close()
		arg1.InputName:close()
		arg1.BtnPublish:close()
		arg1.leftButtonBar:close()
		arg1.LocalMediaSlotsAvailable0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "FileshareDownload.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2E20_)
	if __FUNC_314_ then
		__FUNC_314_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.FileshareDownload = __FUNC_430_

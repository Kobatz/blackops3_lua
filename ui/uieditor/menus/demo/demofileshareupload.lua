-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FullscreenPopup.FullscreenPopupTemplate")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithInputButton")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_Left_ND")
require("ui.uieditor.widgets.FileShare.AllowDownload")
require("ui.uieditor.widgets.FileShare.FileshareSlotsAvailable")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
require("ui.uieditor.widgets.GenericPopups.DialogSpinner")
local function __FUNC_398_(arg0, arg1)
	arg0.FullscreenPopupTemplate.navigation = nil
	local registerVal3 = {}
	registerVal3.up = nil
	registerVal3.down = arg0.inputDescription
	arg0.GunsmithInputButton.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.GunsmithInputButton
	registerVal3.down = arg0.BtnUpload
	arg0.inputDescription.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.inputDescription
	registerVal3.down = nil
	arg0.BtnUpload.navigation = registerVal3
end

local function __FUNC_4F2_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("DemoFileshareUpload")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "DemoFileshareUpload.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FullscreenPopupTemplate.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, -3.040000, 1280.960000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.ButtonList:setDataSource("FileshareSlotsFullButtonList")
	registerVal3.WorkingTitle:setText(Engine.Localize("MENU_FILESHARE_UPLOAD_WORKING_TITLE"))
	registerVal3.Title:setText(Engine.Localize("MENU_FILESHARE_UPLOAD_TITLE"))
	registerVal3.Subtitle:setText(Engine.Localize("MENU_FILESHARE_UPLOAD_DESC"))
	registerVal3.DoneTitle:setText(Engine.Localize("MENU_NEW"))
	registerVal3.ErrorSubtitle:setText(Engine.Localize("MENU_FILESHARE_UPLOAD_ERROR"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "WorkingState"
	local function __FUNC_2308_(arg0, arg1, arg2)
		return FileshareIsUploading()
	end

	registerVal7.condition = __FUNC_2308_
	local registerVal8 = {}
	registerVal8.stateName = "ErrorState"
	local function __FUNC_235E_(arg0, arg1, arg2)
		return FileshareIsUploadingInError()
	end

	registerVal8.condition = __FUNC_235E_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "fileshareRoot.isUploading")
	local function __FUNC_23B9_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isUploading"
		registerVal1:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_23B9_)
	registerVal1:addElement(registerVal3)
	registerVal1.FullscreenPopupTemplate = registerVal3
	local registerVal4 = CoD.GunsmithInputButton.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 457.960000, 1218.000000)
	registerVal4:setTopBottom(true, false, 427.000000, 461.000000)
	registerVal4.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_24E7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Text:setText(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg0, "Demo", "savePopupDescription", __FUNC_24E7_)
	local function __FUNC_2592_(arg1, arg2)
		HandleDemoKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("demo_keyboard_complete", __FUNC_2592_)
	local function __FUNC_2639_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_2639_)
	local function __FUNC_27CB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_27CB_)
	local function __FUNC_289A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuInState(arg1, "DefaultState")
		if registerVal4 then
			OpenDemoSaveKeyboard(registerVal1, arg0, arg2, "desc")
			return true
		end
	end

	local function __FUNC_2955_(arg0, arg1, arg2)
		local registerVal3 = IsMenuInState(arg1, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_289A_, __FUNC_2955_, false)
	registerVal1:addElement(registerVal4)
	registerVal1.inputDescription = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 461.960000, 1196.500000)
	registerVal5:setTopBottom(true, false, 398.000000, 423.000000)
	registerVal5:setText(Engine.Localize("MPUI_DESCRIPTION"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal5)
	registerVal1.descriptionText = registerVal5
	registerVal6 = CoD.GunsmithInputButton.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 457.960000, 819.960000)
	registerVal6:setTopBottom(true, false, 361.000000, 395.000000)
	registerVal6.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_2A9F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Text:setText(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg0, "Demo", "savePopupTitle", __FUNC_2A9F_)
	local function __FUNC_2B4A_(arg1, arg2)
		HandleDemoKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("demo_keyboard_complete", __FUNC_2B4A_)
	local function __FUNC_2BF1_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_2BF1_)
	local function __FUNC_2D83_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_2D83_)
	local function __FUNC_2E52_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuInState(arg1, "DefaultState")
		if registerVal4 then
			OpenDemoSaveKeyboard(registerVal1, arg0, arg2, "name")
			return true
		end
	end

	local function __FUNC_2F0D_(arg0, arg1, arg2)
		local registerVal3 = IsMenuInState(arg1, "DefaultState")
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2E52_, __FUNC_2F0D_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.GunsmithInputButton = registerVal6
	registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 461.960000, 815.960000)
	registerVal7:setTopBottom(true, false, 332.000000, 357.000000)
	registerVal7:setText(Engine.Localize("MPUI_TITLE"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.titleText = registerVal7
	registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 461.960000, 494.960000)
	registerVal8:setTopBottom(true, false, 419.000000, 444.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("MENU_FILESHARE_PERMISSIONS"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal8)
	registerVal1.LblPermissions = registerVal8
	local registerVal9 = CoD.List1ButtonLarge_Left_ND.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 457.960000, 819.960000)
	registerVal9:setTopBottom(true, false, 476.500000, 507.500000)
	registerVal9.btnDisplayText:setText(Engine.Localize("MENU_FILESHARE_UPLOAD_CAPS"))
	registerVal9.btnDisplayTextStroke:setText(Engine.Localize("MENU_FILESHARE_UPLOAD_CAPS"))
	local registerVal13 = Engine.GetGlobalModel()
	local registerVal12 = Engine.GetModel(registerVal13, "fileshareRoot.ready")
	local function __FUNC_3057_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "fileshareRoot.ready"
		CoD.Menu.UpdateButtonShownState(registerVal9, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_3057_)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "fileshareRoot.isUploading")
	local function __FUNC_321C_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "fileshareRoot.isUploading"
		CoD.Menu.UpdateButtonShownState(registerVal9, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_321C_)
	local function __FUNC_33EA_(arg1, arg2)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_33EA_)
	local function __FUNC_357B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_357B_)
	local function __FUNC_364A_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareIsReady(arg2)
		registerVal4 = FileshareIsUploading()
		if registerVal4 and not registerVal4 then
			FilesharePrivateUpload(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_370C_(arg0, arg1, arg2)
		local registerVal3 = FileshareIsReady(arg2)
		registerVal3 = FileshareIsUploading()
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_364A_, __FUNC_370C_, false)
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "Disabled"
	local function __FUNC_386E_(arg1, arg2, arg3)
		local registerVal3 = FileshareIsReady(arg0)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_386E_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "fileshareRoot.ready")
	local function __FUNC_38C6_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.ready"
		registerVal1:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_38C6_)
	registerVal1:addElement(registerVal9)
	registerVal1.BtnUpload = registerVal9
	local registerVal10 = CoD.AllowDownload.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 437.330000, 457.330000)
	registerVal10:setTopBottom(true, false, 450.500000, 469.500000)
	registerVal10:setAlpha(0.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.AllowDownload0 = registerVal10
	local registerVal11 = CoD.FileshareSlotsAvailable.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 926.000000, 1216.000000)
	registerVal11:setTopBottom(true, false, 476.500000, 506.500000)
	registerVal1:addElement(registerVal11)
	registerVal1.FileshareSlotsAvailable0 = registerVal11
	registerVal12 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 445.960000, 877.960000)
	registerVal12:setTopBottom(true, false, 523.250000, 555.250000)
	registerVal1:addElement(registerVal12)
	registerVal1.leftButtonBar = registerVal12
	registerVal13 = CoD.DialogSpinner.new(registerVal1, arg0)
	registerVal13:setLeftRight(true, false, 533.960000, 661.960000)
	registerVal13:setTopBottom(true, false, 322.500000, 450.500000)
	registerVal13:setAlpha(0.000000)
	registerVal1:addElement(registerVal13)
	registerVal1.DialogSpinner0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, -3.040000, 544.330000)
	registerVal14:setTopBottom(true, false, 211.750000, 523.250000)
	registerVal14:setAlpha(0.600000)
	registerVal14:setImage(RegisterImage("uie_t7_icon_novariant_bkg_overlays"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal1:addElement(registerVal14)
	registerVal1.OutofVariant = registerVal14
	local registerVal15 = LUI.UIElement.new()
	registerVal15:setLeftRight(true, false, 73.000000, 385.000000)
	registerVal15:setTopBottom(true, false, 236.500000, 419.000000)
	local function __FUNC_39ED_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal15:setupImageViewer(GetImageViewerParams("UI_SCREENSHOT_TYPE_THUMBNAIL", registerVal1))
		end
	end

	registerVal15:subscribeToGlobalModel(arg0, "Demo", "savePopupThumbnailFileId", __FUNC_39ED_)
	registerVal1:addElement(registerVal15)
	registerVal1.Thumbnail = registerVal15
	local registerVal16 = LUI.UIText.new()
	registerVal16:setLeftRight(true, false, 73.000000, 385.000000)
	registerVal16:setTopBottom(true, false, 431.500000, 456.500000)
	registerVal16:setText(Engine.Localize(GetGameModeOnMapName("Domination on Stronghold")))
	registerVal16:setTTF("fonts/default.ttf")
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal16:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal16)
	registerVal1.GametypeOnMapName = registerVal16
	local registerVal17 = {}
	registerVal17.left = registerVal6
	registerVal17.right = registerVal4
	registerVal17.down = registerVal6
	registerVal3.navigation = registerVal17
	registerVal17 = {}
	registerVal17.left = registerVal3
	registerVal17.up = registerVal3
	registerVal17.down = registerVal9
	registerVal4.navigation = registerVal17
	registerVal17 = {}
	registerVal17.up = registerVal3
	registerVal17.right = registerVal3
	registerVal17.down = registerVal4
	registerVal6.navigation = registerVal17
	registerVal17 = {}
	registerVal17.up = registerVal3
	registerVal17.right = registerVal3
	registerVal9.navigation = registerVal17
	registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_3AD9_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal3.RedLine:completeAnimation()
		registerVal3.WorkingTitle:completeAnimation()
		registerVal3.Title:completeAnimation()
		registerVal3.Subtitle:completeAnimation()
		registerVal1.FullscreenPopupTemplate:setAlpha(1.000000)
		registerVal1.FullscreenPopupTemplate.RedLine:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal1.FullscreenPopupTemplate.WorkingTitle:setText(Engine.Localize("MENU_FILESHARE_UPLOAD_WORKING_TITLE"))
		registerVal1.FullscreenPopupTemplate.Title:setText(Engine.Localize("MENU_FILESHARE_UPLOAD_TITLE"))
		registerVal1.FullscreenPopupTemplate.Subtitle:setText(Engine.Localize("MENU_FILESHARE_UPLOAD_DESC"))
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.inputDescription:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.descriptionText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.GunsmithInputButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.titleText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal1.BtnUpload:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal1.FileshareSlotsAvailable0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal1.DialogSpinner0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.OutofVariant:setAlpha(0.000000)
		registerVal1.OutofVariant:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.Thumbnail:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_3AD9_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_4293_()
		registerVal1:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal3.RedLine:completeAnimation()
		registerVal1.FullscreenPopupTemplate.RedLine:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.inputDescription:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.descriptionText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.GunsmithInputButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.titleText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.LblPermissions:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.BtnUpload:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.AllowDownload0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal13:completeAnimation()
		registerVal1.DialogSpinner0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.OutofVariant:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.Thumbnail:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_4293_
	registerVal17.Working = registerVal18
	registerVal18 = {}
	local function __FUNC_480B_()
		registerVal1:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal3.RedLine:completeAnimation()
		registerVal3.WorkingTitle:completeAnimation()
		registerVal3.Title:completeAnimation()
		registerVal3.Subtitle:completeAnimation()
		registerVal3.DoneTitle:completeAnimation()
		registerVal1.FullscreenPopupTemplate.RedLine:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal1.FullscreenPopupTemplate.WorkingTitle:setText(Engine.Localize("MENU_FILESHARE_WAITING_LOCAL"))
		registerVal1.FullscreenPopupTemplate.Title:setText(Engine.Localize("MENU_FILESHARE_WAITING_LOCAL"))
		registerVal1.FullscreenPopupTemplate.Subtitle:setText(Engine.Localize("0"))
		registerVal1.FullscreenPopupTemplate.DoneTitle:setText(Engine.Localize("0"))
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.inputDescription:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.descriptionText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.GunsmithInputButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.titleText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.LblPermissions:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.BtnUpload:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.AllowDownload0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.FileshareSlotsAvailable0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal1.DialogSpinner0:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.OutofVariant:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.Thumbnail:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_480B_
	registerVal17.Fetching = registerVal18
	registerVal18 = {}
	local function __FUNC_4FE7_()
		registerVal1:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal3.RedLine:completeAnimation()
		registerVal3.WorkingTitle:completeAnimation()
		registerVal3.Title:completeAnimation()
		registerVal3.Subtitle:completeAnimation()
		registerVal1.FullscreenPopupTemplate:setAlpha(1.000000)
		registerVal1.FullscreenPopupTemplate.RedLine:setRGB(ColorSet.ResistanceHigh.r, ColorSet.ResistanceHigh.g, ColorSet.ResistanceHigh.b)
		registerVal1.FullscreenPopupTemplate.WorkingTitle:setText(Engine.Localize("0"))
		registerVal1.FullscreenPopupTemplate.Title:setText(Engine.Localize("MENU_FILESHARE_SLOTS_FULL_TITLE"))
		registerVal1.FullscreenPopupTemplate.Subtitle:setText(Engine.Localize("MENU_MEDIA_MANAGER_SLOTS_FULL_DESC"))
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.inputDescription:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.descriptionText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.GunsmithInputButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.titleText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.LblPermissions:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.BtnUpload:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal1.AllowDownload0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal1.FileshareSlotsAvailable0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal11, {})
		registerVal13:completeAnimation()
		registerVal1.DialogSpinner0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal1.OutofVariant:setAlpha(0.600000)
		registerVal1.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal1.Thumbnail:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_4FE7_
	registerVal17.SlotsFull = registerVal18
	registerVal1.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Working"
	local function __FUNC_57B4_(arg0, arg1, arg2)
		return FileshareIsUploading()
	end

	registerVal20.condition = __FUNC_57B4_
	local registerVal21 = {}
	registerVal21.stateName = "Fetching"
	local function __FUNC_580A_(arg1, arg2, arg3)
		local registerVal3 = FileshareIsReadyToUpload(arg0)
		return (not registerVal3)
	end

	registerVal21.condition = __FUNC_580A_
	local registerVal22 = {}
	registerVal22.stateName = "SlotsFull"
	local function __FUNC_586A_(arg1, arg2, arg3)
		local registerVal3 = FileshareIsReadyToUpload(arg0)
		if registerVal3 then
			registerVal3 = FileshareShowcaseSlotsAvailable(arg0)
		end
		return (not registerVal3)
	end

	registerVal22.condition = __FUNC_586A_
	registerVal19 = {registerVal20, registerVal21, registerVal22}
	registerVal1:mergeStateConditions(registerVal19)
	registerVal20 = Engine.GetGlobalModel()
	registerVal19 = Engine.GetModel(registerVal20, "fileshareRoot.isUploading")
	local function __FUNC_5907_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isUploading"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal19, __FUNC_5907_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_5A33_(arg1, arg2)
		UploadClip_GoBack(registerVal1, arg1, arg0, registerVal1)
		FileshareShowUploadSuccessToast(registerVal1, arg1, arg0)
		FileshareRecordSaveEvent(arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_upload_success", __FUNC_5A33_)
	local function __FUNC_5B3B_(arg1, arg2)
		FileshareShowErrorToast(registerVal1, arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_upload_failure", __FUNC_5B3B_)
	local function __FUNC_5BDA_(arg0, arg1, arg2, arg3)
		UploadClip_GoBack(registerVal1, arg0, arg2, arg1)
		return true
	end

	local function __FUNC_5C3F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_5BDA_, __FUNC_5C3F_, false)
	local function __FUNC_5D39_(arg1, arg2)
		local registerVal2 = IsMenuInState(registerVal1, "SlotsFull")
		if registerVal2 then
			SetFocusToElement(registerVal1, "FullscreenPopupTemplate", arg0)
		else
			registerVal2 = IsMenuInState(registerVal1, "DefaultState")
			if registerVal2 then
				SetFocusToElement(registerVal1, "GunsmithInputButton", arg0)
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "setState", __FUNC_5D39_)
	local function __FUNC_5E59_(arg1)
		local registerVal2 = FileshareIsReadyToUpload(arg0)
		registerVal2 = FileshareShowcaseSlotsAvailable(arg0)
		if registerVal2 and not registerVal2 then
			SetState(registerVal1, "SlotsFull")
		else
			registerVal2 = FileshareIsReadyToUpload(arg0)
			registerVal2 = FileshareShowcaseSlotsAvailable(arg0)
			if registerVal2 and registerVal2 then
				SetState(registerVal1, "DefaultState")
			end
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "FileshareRoot", "ready", __FUNC_5E59_)
	registerVal3.id = "FullscreenPopupTemplate"
	registerVal4.id = "inputDescription"
	registerVal6.id = "GunsmithInputButton"
	registerVal9.id = "BtnUpload"
	registerVal12:setModel(registerVal1.buttonModel, arg0)
	registerVal19 = {}
	registerVal19.name = "menu_loaded"
	registerVal19.controller = arg0
	registerVal1:processEvent(registerVal19)
	registerVal19 = {}
	registerVal19.name = "update_state"
	registerVal19.menu = registerVal1
	registerVal1:processEvent(registerVal19)
	local function __FUNC_5F82_(arg1)
		arg1.FullscreenPopupTemplate:close()
		arg1.inputDescription:close()
		arg1.GunsmithInputButton:close()
		arg1.BtnUpload:close()
		arg1.AllowDownload0:close()
		arg1.FileshareSlotsAvailable0:close()
		arg1.leftButtonBar:close()
		arg1.DialogSpinner0:close()
		arg1.Thumbnail:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "DemoFileshareUpload.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_5F82_)
	if __FUNC_398_ then
		__FUNC_398_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.DemoFileshareUpload = __FUNC_4F2_

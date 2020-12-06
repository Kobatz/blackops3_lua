-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FullscreenPopup.FullscreenPopupTemplate")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithInputButton")
require("ui.uieditor.widgets.Lobby.Common.List1ButtonLarge_Left_ND")
require("ui.uieditor.widgets.FileShare.AllowDownload")
require("ui.uieditor.widgets.FileShare.FileshareSlotsAvailable")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
require("ui.uieditor.widgets.GenericPopups.DialogSpinner")
local function __FUNC_39D_(arg0, arg1)
	CoD.FileshareUtility.SetPublishAllowDownload(true)
end

local function __FUNC_434_(arg0, arg1)
	arg0.FullscreenPopupTemplate.navigation = nil
	local registerVal3 = {}
	registerVal3.up = arg0.BtnPublish
	registerVal3.down = arg0.inputDescription
	arg0.GunsmithInputButton.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.GunsmithInputButton
	registerVal3.down = arg0.BtnPublish
	arg0.inputDescription.navigation = registerVal3
	registerVal3 = {}
	registerVal3.up = arg0.inputDescription
	registerVal3.down = arg0.GunsmithInputButton
	arg0.BtnPublish.navigation = registerVal3
end

local function __FUNC_5A7_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("FilesharePublish")
	if __FUNC_39D_ then
		__FUNC_39D_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "FilesharePublish.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = CoD.FullscreenPopupTemplate.new(registerVal1, arg0)
	registerVal3:setLeftRight(true, false, -3.040000, 1280.960000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3.ButtonList:setDataSource("FileshareSlotsFullButtonList")
	registerVal3.WorkingTitle:setText(Engine.Localize("MENU_FILESHARE_PUBLISH_WORKING_TITLE"))
	registerVal3.Title:setText(Engine.Localize("MENU_FILESHARE_PUBLISH_TITLE"))
	registerVal3.Subtitle:setText(Engine.Localize("MENU_FILESHARE_PUBLISH_DESC"))
	registerVal3.DoneTitle:setText(Engine.Localize("MENU_NEW"))
	registerVal3.ErrorSubtitle:setText(Engine.Localize("MENU_FILESHARE_PUBLISH_ERROR"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "WorkingState"
	local function __FUNC_2129_(arg0, arg1, arg2)
		return FileshareIsPublishing()
	end

	registerVal7.condition = __FUNC_2129_
	local registerVal8 = {}
	registerVal8.stateName = "ErrorState"
	local function __FUNC_217F_(arg0, arg1, arg2)
		return FileshareIsPublishingInError()
	end

	registerVal8.condition = __FUNC_217F_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "fileshareRoot.isPublishing")
	local function __FUNC_21DA_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isPublishing"
		registerVal1:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_21DA_)
	registerVal1:addElement(registerVal3)
	registerVal1.FullscreenPopupTemplate = registerVal3
	local registerVal4 = CoD.GunsmithInputButton.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 457.960000, 819.960000)
	registerVal4:setTopBottom(true, false, 382.000000, 416.000000)
	registerVal4.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_2308_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.Text:setText(registerVal1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg0, "FileshareRoot", "publishName", __FUNC_2308_)
	local function __FUNC_23B6_(arg1, arg2)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_23B6_)
	local function __FUNC_2547_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_2547_)
	local function __FUNC_2616_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuInState(arg1, "DefaultState")
		registerVal4 = FileshareCanEditNameAndDescription(arg2)
		if registerVal4 and registerVal4 then
			FileshareEnterPublishName(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_2704_(arg0, arg1, arg2)
		local registerVal3 = IsMenuInState(arg1, "DefaultState")
		registerVal3 = FileshareCanEditNameAndDescription(arg2)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal4, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2616_, __FUNC_2704_, false)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Disabled"
	local function __FUNC_288F_(arg1, arg2, arg3)
		return FileshareIsLocalCategory(arg0)
	end

	registerVal8.condition = __FUNC_288F_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal1:addElement(registerVal4)
	registerVal1.GunsmithInputButton = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 461.960000, 661.960000)
	registerVal5:setTopBottom(true, false, 353.000000, 378.000000)
	registerVal5:setText(Engine.Localize("MENU_FILESHARE_NEWNAME"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal5)
	registerVal1.LblName = registerVal5
	registerVal6 = CoD.GunsmithInputButton.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 457.960000, 1218.000000)
	registerVal6:setTopBottom(true, false, 448.000000, 482.000000)
	registerVal6.Text:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_28EA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.Text:setText(registerVal1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg0, "FileshareRoot", "publishDescription", __FUNC_28EA_)
	local function __FUNC_2996_(arg1, arg2)
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

	registerVal6:registerEventHandler("gain_focus", __FUNC_2996_)
	local function __FUNC_2B27_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_2B27_)
	local function __FUNC_2BF6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuInState(arg1, "DefaultState")
		registerVal4 = FileshareCanEditNameAndDescription(arg2)
		if registerVal4 and registerVal4 then
			FileshareEnterPublishDescription(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_2CEB_(arg0, arg1, arg2)
		local registerVal3 = IsMenuInState(arg1, "DefaultState")
		registerVal3 = FileshareCanEditNameAndDescription(arg2)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal6, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2BF6_, __FUNC_2CEB_, false)
	registerVal1:addElement(registerVal6)
	registerVal1.inputDescription = registerVal6
	registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 461.960000, 1196.500000)
	registerVal7:setTopBottom(true, false, 419.000000, 444.000000)
	registerVal7:setText(Engine.Localize("MPUI_DESCRIPTION"))
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal1:addElement(registerVal7)
	registerVal1.descriptionText = registerVal7
	registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 461.960000, 494.960000)
	registerVal8:setTopBottom(true, false, 419.000000, 444.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setText(Engine.Localize("MENU_FILESHARE_PERMISSIONS"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal1:addElement(registerVal8)
	registerVal1.LblPermissions = registerVal8
	local registerVal9 = CoD.List1ButtonLarge_Left_ND.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 457.960000, 737.960000)
	registerVal9:setTopBottom(true, false, 487.000000, 518.000000)
	registerVal9.btnDisplayText:setText(Engine.Localize("MENU_FILESHARE_PUBLISH"))
	registerVal9.btnDisplayTextStroke:setText(Engine.Localize("MENU_FILESHARE_PUBLISH"))
	local registerVal13 = Engine.GetGlobalModel()
	local registerVal12 = Engine.GetModel(registerVal13, "fileshareRoot.ready")
	local function __FUNC_2E73_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "fileshareRoot.ready"
		CoD.Menu.UpdateButtonShownState(registerVal9, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_2E73_)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "fileshareRoot.isPublishing")
	local function __FUNC_3038_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "fileshareRoot.isPublishing"
		CoD.Menu.UpdateButtonShownState(registerVal9, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_3038_)
	local function __FUNC_3207_(arg1, arg2)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_3207_)
	local function __FUNC_3397_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_3397_)
	local function __FUNC_3466_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareIsReady(arg2)
		registerVal4 = FileshareIsPublishing()
		if registerVal4 and not registerVal4 then
			FilesharePublish(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_3523_(arg0, arg1, arg2)
		local registerVal3 = FileshareIsReady(arg2)
		registerVal3 = FileshareIsPublishing()
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal9, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3466_, __FUNC_3523_, false)
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "Disabled"
	local function __FUNC_3683_(arg1, arg2, arg3)
		local registerVal3 = FileshareIsReady(arg0)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_3683_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "fileshareRoot.ready")
	local function __FUNC_36DA_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.ready"
		registerVal1:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_36DA_)
	registerVal1:addElement(registerVal9)
	registerVal1.BtnPublish = registerVal9
	local registerVal10 = CoD.AllowDownload.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 437.330000, 457.330000)
	registerVal10:setTopBottom(true, false, 450.500000, 469.500000)
	registerVal10:setAlpha(0.000000)
	registerVal1:addElement(registerVal10)
	registerVal1.AllowDownload0 = registerVal10
	local registerVal11 = CoD.FileshareSlotsAvailable.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 906.500000, 1196.500000)
	registerVal11:setTopBottom(true, false, 487.000000, 517.000000)
	registerVal1:addElement(registerVal11)
	registerVal1.FileshareSlotsAvailable0 = registerVal11
	registerVal12 = CoD.fe_LeftContainer_NOTLobby.new(registerVal1, arg0)
	registerVal12:setLeftRight(true, false, 443.000000, 875.000000)
	registerVal12:setTopBottom(true, false, 531.000000, 563.000000)
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
	local registerVal15 = {}
	registerVal15.left = registerVal4
	registerVal15.right = registerVal6
	registerVal15.down = registerVal4
	registerVal3.navigation = registerVal15
	registerVal15 = {}
	registerVal15.up = registerVal3
	registerVal15.right = registerVal3
	registerVal15.down = registerVal6
	registerVal4.navigation = registerVal15
	registerVal15 = {}
	registerVal15.left = registerVal3
	registerVal15.up = registerVal3
	registerVal15.down = registerVal9
	registerVal6.navigation = registerVal15
	registerVal15 = {}
	registerVal15.up = registerVal3
	registerVal15.right = registerVal3
	registerVal9.navigation = registerVal15
	registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_3801_()
		registerVal1:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal3.RedLine:completeAnimation()
		registerVal3.WorkingTitle:completeAnimation()
		registerVal3.Title:completeAnimation()
		registerVal3.Subtitle:completeAnimation()
		registerVal1.FullscreenPopupTemplate:setAlpha(1.000000)
		registerVal1.FullscreenPopupTemplate.RedLine:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal1.FullscreenPopupTemplate.WorkingTitle:setText(Engine.Localize("MENU_FILESHARE_PUBLISH_WORKING_TITLE"))
		registerVal1.FullscreenPopupTemplate.Title:setText(Engine.Localize("MENU_FILESHARE_PUBLISH_TITLE"))
		registerVal1.FullscreenPopupTemplate.Subtitle:setText(Engine.Localize("MENU_FILESHARE_PUBLISH_DESC"))
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.GunsmithInputButton:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.LblName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.inputDescription:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.descriptionText:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal1.BtnPublish:setAlpha(1.000000)
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
	end

	registerVal16.DefaultClip = __FUNC_3801_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_3F66_()
		registerVal1:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal3.RedLine:completeAnimation()
		registerVal1.FullscreenPopupTemplate.RedLine:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.GunsmithInputButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.LblName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.inputDescription:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.descriptionText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.LblPermissions:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.BtnPublish:setAlpha(0.000000)
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
	end

	registerVal16.DefaultClip = __FUNC_3F66_
	registerVal15.Working = registerVal16
	registerVal16 = {}
	local function __FUNC_4487_()
		registerVal1:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal3.RedLine:completeAnimation()
		registerVal3.WorkingTitle:completeAnimation()
		registerVal3.Title:completeAnimation()
		registerVal3.Subtitle:completeAnimation()
		registerVal3.DoneTitle:completeAnimation()
		registerVal1.FullscreenPopupTemplate.RedLine:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal1.FullscreenPopupTemplate.WorkingTitle:setText(Engine.Localize("MENU_FILESHARE_WAITING"))
		registerVal1.FullscreenPopupTemplate.Title:setText(Engine.Localize("MENU_FILESHARE_WAITING"))
		registerVal1.FullscreenPopupTemplate.Subtitle:setText(Engine.Localize("0"))
		registerVal1.FullscreenPopupTemplate.DoneTitle:setText(Engine.Localize("0"))
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.GunsmithInputButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.LblName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.inputDescription:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.descriptionText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.LblPermissions:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.BtnPublish:setAlpha(0.000000)
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
	end

	registerVal16.DefaultClip = __FUNC_4487_
	registerVal15.Fetching = registerVal16
	registerVal16 = {}
	local function __FUNC_4C05_()
		registerVal1:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal3.RedLine:completeAnimation()
		registerVal3.WorkingTitle:completeAnimation()
		registerVal3.Title:completeAnimation()
		registerVal3.Subtitle:completeAnimation()
		registerVal1.FullscreenPopupTemplate:setAlpha(1.000000)
		registerVal1.FullscreenPopupTemplate.RedLine:setRGB(ColorSet.ResistanceHigh.r, ColorSet.ResistanceHigh.g, ColorSet.ResistanceHigh.b)
		registerVal1.FullscreenPopupTemplate.WorkingTitle:setText(Engine.Localize("0"))
		registerVal1.FullscreenPopupTemplate.Title:setText(Engine.Localize("MENU_FILESHARE_SLOTS_FULL_TITLE"))
		registerVal1.FullscreenPopupTemplate.Subtitle:setText(Engine.Localize("MENU_FILESHARE_SLOTS_FULL_DESC"))
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.GunsmithInputButton:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.LblName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.inputDescription:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.descriptionText:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal1.LblPermissions:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal1.BtnPublish:setAlpha(0.000000)
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
	end

	registerVal16.DefaultClip = __FUNC_4C05_
	registerVal15.SlotsFull = registerVal16
	registerVal1.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Working"
	local function __FUNC_5378_(arg0, arg1, arg2)
		return FileshareIsPublishing()
	end

	registerVal18.condition = __FUNC_5378_
	local registerVal19 = {}
	registerVal19.stateName = "Fetching"
	local function __FUNC_53CF_(arg1, arg2, arg3)
		local registerVal3 = FileshareIsReadyToPublish(arg0)
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_53CF_
	local registerVal20 = {}
	registerVal20.stateName = "SlotsFull"
	local function __FUNC_542F_(arg1, arg2, arg3)
		local registerVal3 = FileshareIsReadyToPublish(arg0)
		if registerVal3 then
			registerVal3 = FileshareShowcaseSlotsAvailable(arg0)
		end
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_542F_
	registerVal17 = {registerVal18, registerVal19, registerVal20}
	registerVal1:mergeStateConditions(registerVal17)
	registerVal18 = Engine.GetGlobalModel()
	registerVal17 = Engine.GetModel(registerVal18, "fileshareRoot.isPublishing")
	local function __FUNC_54CC_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isPublishing"
		registerVal1:updateElementState(registerVal1, registerVal4)
	end

	registerVal1:subscribeToModel(registerVal17, __FUNC_54CC_)
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_55FC_(arg1, arg2)
		FileshareHandleKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_55FC_)
	local function __FUNC_56AA_(arg1, arg2)
		GoBackMultiple(registerVal1, arg0, "1")
		FileshareShowPublishSuccessToast(registerVal1, arg1, arg0)
		FileshareRestoreToPreviousCategory(arg0)
		FileshareRecordPublishEvent(arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_publish_success", __FUNC_56AA_)
	local function __FUNC_57F3_(arg1, arg2)
		GoBack(registerVal1, arg0)
		FileshareShowErrorToast(registerVal1, arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("fileshare_publish_failure", __FUNC_57F3_)
	local function __FUNC_58B2_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		ClearMenuSavedState(arg1)
		FileshareRestoreToPreviousCategory(arg2)
		return true
	end

	local function __FUNC_5965_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_58B2_, __FUNC_5965_, false)
	local function __FUNC_5A61_(arg1, arg2)
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

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "setState", __FUNC_5A61_)
	local function __FUNC_5B81_(arg1)
		local registerVal2 = FileshareIsReadyToPublish(arg0)
		registerVal2 = FileshareShowcaseSlotsAvailable(arg0)
		if registerVal2 and not registerVal2 then
			SetState(registerVal1, "SlotsFull")
		else
			registerVal2 = FileshareIsReadyToPublish(arg0)
			registerVal2 = FileshareShowcaseSlotsAvailable(arg0)
			if registerVal2 and registerVal2 then
				SetState(registerVal1, "DefaultState")
			end
		end
	end

	registerVal1:subscribeToGlobalModel(arg0, "FileshareRoot", "ready", __FUNC_5B81_)
	registerVal3.id = "FullscreenPopupTemplate"
	registerVal4.id = "GunsmithInputButton"
	registerVal6.id = "inputDescription"
	registerVal9.id = "BtnPublish"
	registerVal12:setModel(registerVal1.buttonModel, arg0)
	registerVal17 = {}
	registerVal17.name = "menu_loaded"
	registerVal17.controller = arg0
	registerVal1:processEvent(registerVal17)
	registerVal17 = {}
	registerVal17.name = "update_state"
	registerVal17.menu = registerVal1
	registerVal1:processEvent(registerVal17)
	local function __FUNC_5CAB_(arg1)
		arg1.FullscreenPopupTemplate:close()
		arg1.GunsmithInputButton:close()
		arg1.inputDescription:close()
		arg1.BtnPublish:close()
		arg1.AllowDownload0:close()
		arg1.FileshareSlotsAvailable0:close()
		arg1.leftButtonBar:close()
		arg1.DialogSpinner0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "FilesharePublish.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_5CAB_)
	if __FUNC_434_ then
		__FUNC_434_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.FilesharePublish = __FUNC_5A7_

-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.FileShare.Popups.FileshareOptions")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.FileShare.FileshareSelectedItemInfo")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
function LUI.createMenu.Fileshare_ScreenshotDetailsView(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Fileshare_ScreenshotDetailsView")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Fileshare_ScreenshotDetailsView.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.background = registerVal3
	local registerVal4 = LUI.UIElement.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_1023_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setupImageViewer(GetImageViewerParams("UI_SCREENSHOT_TYPE_SCREENSHOT", registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg0, "FileshareSelectedItem", "fileId", __FUNC_1023_)
	registerVal1:addElement(registerVal4)
	registerVal1.ImageViewer0 = registerVal4
	local registerVal5 = CoD.fe_FooterContainer_NOTLobby.new(registerVal1, arg0)
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, 619.000000, 667.000000)
	local function __FUNC_110E_(arg1, arg2)
		SizeToSafeArea(arg1, arg0)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_loaded", __FUNC_110E_)
	registerVal1:addElement(registerVal5)
	registerVal1.feFooterContainerNOTLobby = registerVal5
	local registerVal6 = CoD.FileshareSelectedItemInfo.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 64.000000, 482.000000)
	registerVal6:setTopBottom(false, true, -163.000000, -79.000000)
	local function __FUNC_11A1_(arg1)
		registerVal6:setModel(arg1, arg0)
	end

	registerVal6:subscribeToGlobalModel(arg0, "FileshareSelectedItem", nil, __FUNC_11A1_)
	registerVal1:addElement(registerVal6)
	registerVal1.FileshareSelectedItemInfo = registerVal6
	local registerVal7 = CoD.InfoPaneItemName.new(registerVal1, arg0)
	registerVal7:setLeftRight(true, false, 64.000000, 445.000000)
	registerVal7:setTopBottom(false, true, -207.000000, -173.000000)
	registerVal7.weaponNameWithVariant.variantName:setAlpha(1.000000)
	registerVal7.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize(""))
	local function __FUNC_11F2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.weaponNameWithVariant.itemName.itemName:setText(registerVal1)
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "FileshareSelectedItem", "fileName", __FUNC_11F2_)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Equipped"
	local function __FUNC_12D9_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal11.condition = __FUNC_12D9_
	local registerVal12 = {}
	registerVal12.stateName = "Available"
	local function __FUNC_1324_(arg0, arg1, arg2)
		return true
	end

	registerVal12.condition = __FUNC_1324_
	local registerVal13 = {}
	registerVal13.stateName = "NotEquippable"
	local function __FUNC_1358_(arg0, arg1, arg2)
		return true
	end

	registerVal13.condition = __FUNC_1358_
	local registerVal14 = {}
	registerVal14.stateName = "NotAvailable"
	local function __FUNC_138C_(arg0, arg1, arg2)
		return true
	end

	registerVal14.condition = __FUNC_138C_
	registerVal10 = {registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal1:addElement(registerVal7)
	registerVal1.ScreenshotName = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_13C0_()
		registerVal1:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal1.feFooterContainerNOTLobby:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.FileshareSelectedItemInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.ScreenshotName:setLeftRight(true, false, 64.000000, 445.000000)
		registerVal1.ScreenshotName:setTopBottom(false, true, -207.000000, -173.000000)
		registerVal1.ScreenshotName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_13C0_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_1624_()
		registerVal1:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal1.feFooterContainerNOTLobby:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.FileshareSelectedItemInfo:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.ScreenshotName:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_1624_
	registerVal8.UIHidden = registerVal9
	registerVal9 = {}
	local function __FUNC_17F8_()
		registerVal1:setupElementClipCounter(3.000000)
		registerVal5:completeAnimation()
		registerVal1.feFooterContainerNOTLobby:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.FileshareSelectedItemInfo:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal1.ScreenshotName:setLeftRight(true, false, 64.000000, 445.000000)
		registerVal1.ScreenshotName:setTopBottom(false, true, -138.000000, -104.000000)
		registerVal1.ScreenshotName:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_17F8_
	registerVal8.Local = registerVal9
	registerVal1.clipsPerState = registerVal8
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "UIHidden"
	local function __FUNC_1A61_(arg0, arg1, arg2)
		return PropertyIsTrue(registerVal1, "uiHidden")
	end

	registerVal11.condition = __FUNC_1A61_
	registerVal12 = {}
	registerVal12.stateName = "Local"
	local function __FUNC_1ACA_(arg1, arg2, arg3)
		return FileshareIsCategory(arg0, "screenshot_private")
	end

	registerVal12.condition = __FUNC_1ACA_
	registerVal10 = {registerVal11, registerVal12}
	registerVal1:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "FileshareRoot.SelectedFileID")
	local function __FUNC_1B41_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "FileshareRoot.SelectedFileID"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal1:subscribeToModel(registerVal10, __FUNC_1B41_)
	local function __FUNC_1D0B_(arg1, arg2)
		SetIsInFileshare(arg0, "true")
		FileshareSetIsInFullscreenView(arg0, true)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_1D0B_)
	local function __FUNC_1DE5_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		FileshareSetIsInFullscreenView(arg2, false)
		PreserveThumbnails(arg2, false)
		return true
	end

	local function __FUNC_1E9C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_1DE5_, __FUNC_1E9C_, false)
	local function __FUNC_1F99_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareCanShowOptionsMenu(arg2)
		registerVal4 = IsPerControllerTablePropertyValue(arg2, "combatRecordProfileSnapshot", true)
		if registerVal4 and not registerVal4 then
			OpenPopup(registerVal1, "FileshareOptions", arg2, "", "")
			return true
		end
	end

	local function __FUNC_20C4_(arg0, arg1, arg2)
		local registerVal3 = FileshareCanShowOptionsMenu(arg2)
		registerVal3 = IsPerControllerTablePropertyValue(arg2, "combatRecordProfileSnapshot", true)
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_SOCIAL")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_1F99_, __FUNC_20C4_, false)
	local function __FUNC_2269_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsMenuInState(arg1, "UIHidden")
		if registerVal4 then
			SetProperty(registerVal1, "uiHidden", false)
			UpdateSelfState(registerVal1, arg2)
			return true
		else
			SetProperty(registerVal1, "uiHidden", true)
			UpdateSelfState(registerVal1, arg2)
			return true
		end
	end

	local function __FUNC_2371_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_GUNSMITH_SNAPSHOT_TOGGLE_UI")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "T", __FUNC_2269_, __FUNC_2371_, false)
	registerVal5:setModel(registerVal1.buttonModel, arg0)
	registerVal10 = {}
	registerVal10.name = "menu_loaded"
	registerVal10.controller = arg0
	registerVal1:processEvent(registerVal10)
	registerVal10 = {}
	registerVal10.name = "update_state"
	registerVal10.menu = registerVal1
	registerVal1:processEvent(registerVal10)
	local function __FUNC_2486_(arg1)
		arg1.feFooterContainerNOTLobby:close()
		arg1.FileshareSelectedItemInfo:close()
		arg1.ScreenshotName:close()
		arg1.ImageViewer0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Fileshare_ScreenshotDetailsView.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2486_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end


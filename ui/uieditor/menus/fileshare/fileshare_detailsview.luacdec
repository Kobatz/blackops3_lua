-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.FileShare.Popups.FileshareOptions")
require("ui.uieditor.widgets.FileShare.FileshareDetailsViewInfo")
require("ui.uieditor.widgets.BorderBakedBlur")
require("ui.uieditor.widgets.BorderBakedSolid")
require("ui.uieditor.widgets.FileShare.FileshareSpinner")
require("ui.uieditor.widgets.FileShare.FileshareArrow")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local function __FUNC_364_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "FileshareSelectedItem", false)
	Engine.CreateModel(registerVal2, "weaponName", false)
	Engine.CreateModel(registerVal2, "fileName", false)
	local registerVal4 = Engine.GetGlobalModel()
	registerVal3 = Engine.CreateModel(registerVal4, "FileshareRoot", false)
	Engine.CreateModel(registerVal3, "DetailsHiddenMode", false)
end

local function __FUNC_504_(arg0, arg1)
	arg0.FileshareSpinner:setAlpha(0.000000)
	local registerVal2 = FileshareIsSelectedItemCategory(arg1, "emblem")
	registerVal2 = CoD.FileshareUtility.GetSelectedItemProperty("fileId")
	if registerVal2 and registerVal2 then
		arg0.WCFileshareIconExtraCamRender:setupWCFileshareIconExtraCamRender(GetFileshareExtraCamParameters(arg1, registerVal2))
	end
end

local function __FUNC_6ED_(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("Fileshare_DetailsView")
	if __FUNC_364_ then
		__FUNC_364_(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "Fileshare_DetailsView.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal3)
	registerVal1.BlackBG = registerVal3
	local registerVal4 = CoD.FileshareDetailsViewInfo.new(registerVal1, arg0)
	registerVal4:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	local function __FUNC_1AB3_(arg1)
		registerVal4.FileshareSelectedItemInfo:setModel(arg1, arg0)
	end

	registerVal4:linkToElementModel(registerVal1, nil, false, __FUNC_1AB3_)
	local function __FUNC_1B31_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.ItemName.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal1, "weaponName", true, __FUNC_1B31_)
	local function __FUNC_1C5D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.ItemName.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal1, "fileName", true, __FUNC_1C5D_)
	local function __FUNC_1D9E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.EmblemName.weaponNameWithVariant.itemName.itemName:setText(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal1, "fileName", true, __FUNC_1D9E_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Hidden"
	local function __FUNC_1EA5_(arg1, arg2, arg3)
		return FileshareIsDetailsViewHiddenMode(arg0)
	end

	registerVal8.condition = __FUNC_1EA5_
	local registerVal9 = {}
	registerVal9.stateName = "Emblem"
	local function __FUNC_1F0A_(arg1, arg2, arg3)
		return FileshareIsCategory(arg0, "emblem")
	end

	registerVal9.condition = __FUNC_1F0A_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "FileshareRoot.DetailsHiddenMode")
	local function __FUNC_1F75_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.DetailsHiddenMode"
		registerVal1:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_1F75_)
	registerVal1:addElement(registerVal4)
	registerVal1.FileshareDetailsViewInfo = registerVal4
	local registerVal5 = CoD.BorderBakedBlur.new(registerVal1, arg0)
	registerVal5:setLeftRight(false, false, -327.000000, 327.000000)
	registerVal5:setTopBottom(true, false, 91.000000, 500.000000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.BorderBakedBlur0 = registerVal5
	local registerVal6 = CoD.BorderBakedSolid.new(registerVal1, arg0)
	registerVal6:setLeftRight(false, false, -327.000000, 327.000000)
	registerVal6:setTopBottom(true, false, 91.000000, 500.000000)
	registerVal6:setAlpha(0.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.BorderBakedSolid0 = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 323.500000, 957.500000)
	registerVal7:setTopBottom(true, false, 101.000000, 489.000000)
	local function __FUNC_20A9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setAlpha(registerVal1)
		end
	end

	registerVal7:subscribeToGlobalModel(arg0, "FileshareSelectedItem", "shouldShowEmblem", __FUNC_20A9_)
	local function __FUNC_213D_(arg1)
		local registerVal1 = Engine.GetModelValue(arg1)
		if registerVal1 then
			registerVal7:setupWCFileshareIconExtraCamRender(GetFileshareExtraCamParameters(arg0, registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal1, "renderFileId", true, __FUNC_213D_)
	registerVal1:addElement(registerVal7)
	registerVal1.WCFileshareIconExtraCamRender = registerVal7
	registerVal8 = CoD.FileshareSpinner.new(registerVal1, arg0)
	registerVal8:setLeftRight(true, false, 608.500000, 672.500000)
	registerVal8:setTopBottom(true, false, 263.500000, 327.500000)
	local function __FUNC_221F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setAlpha(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal1, "showDetailsViewSpinner", true, __FUNC_221F_)
	local registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "Visible"
	local function __FUNC_22B1_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal12.condition = __FUNC_22B1_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal1:addElement(registerVal8)
	registerVal1.FileshareSpinner = registerVal8
	registerVal9 = CoD.FileshareArrow.new(registerVal1, arg0)
	registerVal9:setLeftRight(true, false, 1156.000000, 1216.000000)
	registerVal9:setTopBottom(true, false, 330.000000, 390.000000)
	registerVal9:setAlpha(0.900000)
	local function __FUNC_22FC_(arg1, arg2)
		local registerVal3 = IsPC()
		if registerVal3 then
			SendButtonPressToMenuEx(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RIGHT)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("button_action", __FUNC_22FC_)
	registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "Hide"
	local function __FUNC_240C_(arg1, arg2, arg3)
		return FileshareDetailsViewAreArrowsHidden(arg0)
	end

	registerVal13.condition = __FUNC_240C_
	local registerVal14 = {}
	registerVal14.stateName = "Visible"
	local function __FUNC_2475_(arg1, arg2, arg3)
		return FileshareDetailsViewCanMoveToNext(arg0)
	end

	registerVal14.condition = __FUNC_2475_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal13 = Engine.GetGlobalModel()
	registerVal12 = Engine.GetModel(registerVal13, "FileshareRoot.DetailsHiddenMode")
	local function __FUNC_24DB_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.DetailsHiddenMode"
		registerVal1:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:subscribeToModel(registerVal12, __FUNC_24DB_)
	registerVal1:addElement(registerVal9)
	registerVal1.FileshareArrow = registerVal9
	local registerVal10 = CoD.FileshareArrow.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, false, 64.000000, 124.000000)
	registerVal10:setTopBottom(true, false, 330.000000, 390.000000)
	registerVal10:setAlpha(0.900000)
	registerVal10:setZRot(180.000000)
	local function __FUNC_260D_(arg1, arg2)
		local registerVal3 = IsPC()
		if registerVal3 then
			SendButtonPressToMenuEx(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LEFT)
		end
		if not nil then
			registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("button_action", __FUNC_260D_)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "Hide"
	local function __FUNC_271B_(arg1, arg2, arg3)
		return FileshareDetailsViewAreArrowsHidden(arg0)
	end

	registerVal14.condition = __FUNC_271B_
	local registerVal15 = {}
	registerVal15.stateName = "Visible"
	local function __FUNC_2781_(arg1, arg2, arg3)
		return FileshareDetailsViewCanMoveToPrevious(arg0)
	end

	registerVal15.condition = __FUNC_2781_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "FileshareRoot.DetailsHiddenMode")
	local function __FUNC_27EB_(arg0)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = registerVal1
		local registerVal5 = Engine.GetModelValue(arg0)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.DetailsHiddenMode"
		registerVal1:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_27EB_)
	registerVal1:addElement(registerVal10)
	registerVal1.FileshareArrow0 = registerVal10
	registerVal12 = IsPC()
	if registerVal12 then
		registerVal12 = CoD.XCamMouseControl.new(registerVal1, arg0)
	else
		registerVal12 = LUI.UIElement.createFake()
	end
	registerVal12:setLeftRight(true, false, 124.000000, 1156.000000)
	registerVal12:setTopBottom(true, false, 36.000000, 545.000000)
	registerVal12 = IsPC()
	if registerVal12 then
		registerVal1:addElement(registerVal12)
	end
	registerVal1.XCamMouseControl = registerVal12
	registerVal12 = {}
	registerVal13 = {}
	local function __FUNC_291D_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal1.BlackBG:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.FileshareDetailsViewInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.BorderBakedBlur0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.BorderBakedSolid0:setAlpha(0.000000)
		registerVal1.clipFinished(registerVal6, {})
	end

	registerVal13.DefaultClip = __FUNC_291D_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_2B43_()
		registerVal1:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal1.BlackBG:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal1.FileshareDetailsViewInfo:setAlpha(1.000000)
		registerVal1.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal1.BorderBakedBlur0:setAlpha(0.400000)
		registerVal1.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal1.BorderBakedSolid0:setAlpha(0.500000)
		registerVal1.clipFinished(registerVal6, {})
	end

	registerVal13.DefaultClip = __FUNC_2B43_
	registerVal12.Emblem = registerVal13
	registerVal1.clipsPerState = registerVal12
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "Emblem"
	local function __FUNC_2D6C_(arg1, arg2, arg3)
		return FileshareIsSelectedItemCategory(arg0, "emblem")
	end

	registerVal15.condition = __FUNC_2D6C_
	registerVal14 = {registerVal15}
	registerVal1:mergeStateConditions(registerVal14)
	registerVal15 = Engine.GetGlobalModel()
	registerVal14 = Engine.GetModel(registerVal15, "FileshareRoot.SelectedFileID")
	local function __FUNC_2DE5_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "FileshareRoot.SelectedFileID"
		CoD.Menu.UpdateButtonShownState(registerVal1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal1:subscribeToModel(registerVal14, __FUNC_2DE5_)
	local function __FUNC_2FAF_(arg1, arg2)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, true)
		SetIsInFileshare(arg0, "true")
		FileshareSetIsInFullscreenView(arg0, true)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("menu_loaded", __FUNC_2FAF_)
	local function __FUNC_30C7_(arg0, arg1, arg2, arg3)
		SetIsInFileshare(arg2, "false")
		GoBack(registerVal1, arg2)
		FileshareSetIsInFullscreenView(arg2, false)
		FileshareResetDetailsHiddenMode(arg2)
		return true
	end

	local function __FUNC_31BE_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_30C7_, __FUNC_31BE_, false)
	local function __FUNC_32B9_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareCanShowOptionsMenu(arg2)
		if registerVal4 then
			OpenPopup(registerVal1, "FileshareOptions", arg2, "", "")
			return true
		end
	end

	local function __FUNC_3378_(arg0, arg1, arg2)
		local registerVal3 = FileshareCanShowOptionsMenu(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_SOCIAL")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "S", __FUNC_32B9_, __FUNC_3378_, false)
	local function __FUNC_34B1_(arg0, arg1, arg2, arg3)
		FileshareToggleDetailsHiddenMode(arg2)
		return true
	end

	local function __FUNC_351A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "MENU_GUNSMITH_SNAPSHOT_TOGGLE_UI")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "T", __FUNC_34B1_, __FUNC_351A_, false)
	local function __FUNC_362E_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareDetailsViewCanMoveToNext(arg2)
		if registerVal4 then
			FileshareMoveToNextItem(registerVal1, arg0, arg2, arg1)
			UpdateElementState(registerVal1, "FileshareArrow", arg2)
			UpdateElementState(registerVal1, "FileshareArrow0", arg2)
			return true
		end
	end

	local function __FUNC_374D_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RIGHT, "MENU_NEXT")
		local registerVal3 = FileshareDetailsViewCanMoveToNext(arg2)
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RIGHT, "RIGHTARROW", __FUNC_362E_, __FUNC_374D_, true)
	local function __FUNC_3889_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareDetailsViewCanMoveToPrevious(arg2)
		if registerVal4 then
			FileshareMoveToPreviousItem(registerVal1, arg0, arg2)
			UpdateElementState(registerVal1, "FileshareArrow", arg2)
			UpdateElementState(registerVal1, "FileshareArrow0", arg2)
			return true
		end
	end

	local function __FUNC_39AD_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LEFT, "MENU_PREVIOUS")
		local registerVal3 = FileshareDetailsViewCanMoveToPrevious(arg2)
		if registerVal3 then
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LEFT, "LEFTARROW", __FUNC_3889_, __FUNC_39AD_, true)
	local function __FUNC_3AF0_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_3B24_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_LSTICK_PRESSED, nil, __FUNC_3AF0_, __FUNC_3B24_, false)
	local function __FUNC_3C1A_(arg0, arg1, arg2, arg3)
		return true
	end

	local function __FUNC_3C4C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_RSTICK_PRESSED, nil, __FUNC_3C1A_, __FUNC_3C4C_, false)
	local function __FUNC_3D42_(arg1)
		SendClientScriptMenuChangeNotify(arg0, registerVal1, false)
		FileshareResetDetailsHiddenMode(arg0)
		FileshareSetDirty(arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal1, "close", __FUNC_3D42_)
	registerVal4:setModel(registerVal1.buttonModel, arg0)
	registerVal4.feFooterContainerNOTLobby:setModel(registerVal1.buttonModel, arg0)
	registerVal14 = {}
	registerVal14.name = "menu_loaded"
	registerVal14.controller = arg0
	registerVal1:processEvent(registerVal14)
	registerVal14 = {}
	registerVal14.name = "update_state"
	registerVal14.menu = registerVal1
	registerVal1:processEvent(registerVal14)
	local function __FUNC_3E06_(arg1)
		arg1.FileshareDetailsViewInfo:close()
		arg1.BorderBakedBlur0:close()
		arg1.BorderBakedSolid0:close()
		arg1.FileshareSpinner:close()
		arg1.FileshareArrow:close()
		arg1.FileshareArrow0:close()
		arg1.XCamMouseControl:close()
		arg1.WCFileshareIconExtraCamRender:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "Fileshare_DetailsView.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_3E06_)
	if __FUNC_504_ then
		__FUNC_504_(registerVal1, arg0)
	end
	return registerVal1
end

LUI.createMenu.Fileshare_DetailsView = __FUNC_6ED_

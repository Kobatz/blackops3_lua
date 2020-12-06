-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShaderContainer")
require("ui.uieditor.widgets.CAC.GridItemButtonBackdropContainer2x4")
require("ui.uieditor.menus.FileShare.Popups.FileshareOptions")
require("ui.uieditor.widgets.Fileshare.FileshareSelectorItem")
require("ui.uieditor.widgets.FileShare.FileshareSelectedItemInfo")
require("ui.uieditor.widgets.FileShare.FilesharePublishDetails")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemName")
local function __FUNC_43F_(arg0, arg1, arg2)
	local function __FUNC_4D3_(arg2)
		if arg0.itemName then
			local registerVal1 = FileshareHasContent(nil, arg1)
			if registerVal1 == true then
				arg0.itemName:setAlpha(1.000000)
			else
				arg0.itemName:setAlpha(0.000000)
			end
		end
	end

	arg0:subscribeToGlobalModel(arg1, "FileshareRoot", "itemsCount", __FUNC_4D3_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FileshareSelector = registerVal2
local function __FUNC_5B5_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareSelector)
	registerVal2.id = "FileshareSelector"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 920.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 528.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ButtonPanelShaderContainer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 368.000000)
	registerVal3:setTopBottom(true, false, -32.150000, 610.850000)
	registerVal3:setRGB(0.500000, 0.500000, 0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.LeftPanel = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 15.000000, 388.000000)
	registerVal4:setTopBottom(true, false, 25.350000, 488.350000)
	registerVal4:setRGB(0.740000, 0.820000, 0.860000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.listBacking = registerVal4
	local registerVal5 = CoD.GridItemButtonBackdropContainer2x4.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 7.000000, 388.000000)
	registerVal5:setTopBottom(true, false, 25.350000, 480.350000)
	registerVal5:setAlpha(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.GridItemButtonBackdropContainer2x40 = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 14.000000, 352.000000)
	registerVal6:setTopBottom(true, false, 13.350000, 466.350000)
	registerVal6:setWidgetType(CoD.FileshareSelectorItem)
	registerVal6:setHorizontalCount(3.000000)
	registerVal6:setVerticalCount(4.000000)
	registerVal6:setSpacing(7.000000)
	registerVal6:setDataSource("FilesharePublishedList")
	local function __FUNC_19B3_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "isPublishNew"
		CoD.Menu.UpdateButtonShownState(registerVal6, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(registerVal6, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal6:linkToElementModel(registerVal6, "isPublishNew", true, __FUNC_19B3_)
	local registerVal10 = Engine.GetGlobalModel()
	local registerVal9 = Engine.GetModel(registerVal10, "FileshareRoot.SelectedFileID")
	local function __FUNC_1BD0_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "FileshareRoot.SelectedFileID"
		CoD.Menu.UpdateButtonShownState(registerVal6, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_1BD0_)
	local function __FUNC_1D9B_(arg0, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg1, "isPublishNew")
		if not registerVal3 then
			FileshareSetSelectedItem(registerVal2, arg0, arg1, "")
			FileshareSetShowPublishNewDetails(arg1, false)
			SetElementStateByElementName(registerVal2, "itemName", arg1, "Equipped")
		else
			registerVal3 = IsSelfModelValueTrue(arg0, arg1, "isPublishNew")
			if registerVal3 then
				FileshareSetShowPublishNewDetails(arg1, true)
				FileshareSetShowFileDetails(arg1, false)
				MediaManagerClearDisplay(registerVal2, arg0, arg1)
				SetElementStateByElementName(registerVal2, "itemName", arg1, "Hidden")
			end
		end
		return nil
	end

	registerVal6:registerEventHandler("list_item_gain_focus", __FUNC_1D9B_)
	local function __FUNC_1FC0_(arg0, arg1)
		FileshareItemLoseFocus(arg0)
		return nil
	end

	registerVal6:registerEventHandler("list_item_lose_focus", __FUNC_1FC0_)
	local function __FUNC_2020_(arg0, arg2)
		local registerVal3 = FileshareIsCommunityMode(arg0, arg1)
		if registerVal3 then
			SetElementDataSource(registerVal2, "itemList", "FileshareCommunityList")
		else
			registerVal3 = FileshareIsCommunityMode(arg0, arg1)
			if not registerVal3 then
				SetElementDataSource(registerVal2, "itemList", "FilesharePublishedList")
			end
		end
		if not nil then
			registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("menu_loaded", __FUNC_2020_)
	local function __FUNC_217B_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_217B_)
	local function __FUNC_236A_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_236A_)
	local function __FUNC_243A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
		if registerVal4 then
			FileshareSetShowcasePublishMode(arg2, true)
			return true
		else
			registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
			registerVal4 = FileshareCanOpenDetailsView(arg0, arg2)
			if not registerVal4 and registerVal4 then
				FileshareSetSelectedItem(registerVal2, arg0, arg2, "true")
				FileshareOpenFullscreenView(registerVal2, arg0, arg2, arg1)
				return true
			end
		end
	end

	local function __FUNC_25DF_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
		if registerVal3 then
			return true
		else
			registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
			registerVal3 = FileshareCanOpenDetailsView(arg0, arg2)
			if not registerVal3 and registerVal3 then
				return true
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_243A_, __FUNC_25DF_, true)
	local function __FUNC_2797_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
		registerVal4 = FileshareCanShowOptionsMenu(arg2)
		if not registerVal4 and registerVal4 then
			OpenPopup(registerVal2, "FileshareOptions", arg2, "", "")
			return true
		end
	end

	local function __FUNC_28A4_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueTrue(arg0, arg2, "isPublishNew")
		registerVal3 = FileshareCanShowOptionsMenu(arg2)
		if not registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_2797_, __FUNC_28A4_, false)
	local function __FUNC_2A2E_(arg0)
		local registerVal2 = FileshareIsReady(arg1)
		if registerVal2 then
			UpdateDataSource(registerVal2, registerVal6, arg1)
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "FileshareRoot", "ready", __FUNC_2A2E_)
	local function __FUNC_2AB8_(arg0)
		UpdateDataSource(registerVal2, registerVal6, arg1)
	end

	registerVal6:subscribeToGlobalModel(arg1, "FileshareRoot", "dirty", __FUNC_2AB8_)
	registerVal2:addElement(registerVal6)
	registerVal2.itemList = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, false, 1.350000, 3.350000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.upperline = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal8:setTopBottom(true, false, 525.280000, 527.280000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.bottomline = registerVal8
	registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 37.000000, 443.000000)
	registerVal9:setTopBottom(true, false, 1.000000, 26.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setTTF("fonts/escom.ttf")
	registerVal9:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2B16_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(LocalizeWeaponNameIntoString("MENU_PAINTSHOP_WEAPON_PAINTJOBS", "mp", arg1, registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "Customization", "weapon_index", __FUNC_2B16_)
	registerVal2:addElement(registerVal9)
	registerVal2.header = registerVal9
	registerVal10 = CoD.FileshareSelectedItemInfo.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 388.000000, 806.000000)
	registerVal10:setTopBottom(true, false, 444.000000, 528.000000)
	local function __FUNC_2C17_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setAlpha(registerVal1)
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "FileshareRoot", "showFileDetails", __FUNC_2C17_)
	registerVal2:addElement(registerVal10)
	registerVal2.FileshareSelectedItemInfo0 = registerVal10
	local registerVal11 = CoD.FilesharePublishDetails.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 397.500000, 723.500000)
	registerVal11:setTopBottom(true, false, 0.000000, 474.000000)
	registerVal11:setScale(0.900000)
	local function __FUNC_2CA9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setAlpha(registerVal1)
		end
	end

	registerVal11:subscribeToGlobalModel(arg1, "FileshareRoot", "showPublishNewDetails", __FUNC_2CA9_)
	registerVal2:addElement(registerVal11)
	registerVal2.FilesharePublishDetails0 = registerVal11
	local registerVal12 = CoD.verticalCounter.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 83.000000, 283.000000)
	registerVal12:setTopBottom(true, false, 478.350000, 503.350000)
	local function __FUNC_2D3D_(arg0, arg1)
		SetAsListVerticalCounter(registerVal2, arg0, "itemList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal12:registerEventHandler("menu_loaded", __FUNC_2D3D_)
	registerVal2:addElement(registerVal12)
	registerVal2.verticalCounter0 = registerVal12
	local registerVal13 = CoD.InfoPaneItemName.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 388.000000, 769.000000)
	registerVal13:setTopBottom(true, false, 13.500000, 47.500000)
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Equipped"
	local function __FUNC_2DF1_(arg0, arg1, arg2)
		return true
	end

	registerVal17.condition = __FUNC_2DF1_
	local registerVal18 = {}
	registerVal18.stateName = "Available"
	local function __FUNC_2E24_(arg0, arg1, arg2)
		return true
	end

	registerVal18.condition = __FUNC_2E24_
	local registerVal19 = {}
	registerVal19.stateName = "NotEquippable"
	local function __FUNC_2E58_(arg0, arg1, arg2)
		return true
	end

	registerVal19.condition = __FUNC_2E58_
	local registerVal20 = {}
	registerVal20.stateName = "NotAvailable"
	local function __FUNC_2E8C_(arg0, arg1, arg2)
		return true
	end

	registerVal20.condition = __FUNC_2E8C_
	registerVal16 = {registerVal17, registerVal18, registerVal19, registerVal20}
	registerVal13:mergeStateConditions(registerVal16)
	registerVal2:addElement(registerVal13)
	registerVal2.itemName = registerVal13
	local function __FUNC_2EC0_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal6, nil, false, __FUNC_2EC0_)
	local function __FUNC_2F12_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal6, nil, false, __FUNC_2F12_)
	local function __FUNC_2F62_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal6, "weaponName", true, __FUNC_2F62_)
	local function __FUNC_306F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.weaponNameWithVariant.variantName:setAlpha(Negate(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal6, "showPlusImage", true, __FUNC_306F_)
	local function __FUNC_3165_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.weaponNameWithVariant.variantName.itemName:setText(registerVal1)
		end
	end

	registerVal13:linkToElementModel(registerVal6, "fileName", true, __FUNC_3165_)
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_3262_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal2.upperline:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.bottomline:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal15.DefaultClip = __FUNC_3262_
	registerVal14.DefaultState = registerVal15
	registerVal2.clipsPerState = registerVal14
	local function __FUNC_33B9_(arg0)
		local registerVal2 = IsGlobalModelValueEqualTo(registerVal2, arg1, "FileshareRoot.itemsCount", 0.000000)
		registerVal2 = FileshareIsCheckingPageFetchThreshold(arg1)
		if registerVal2 and registerVal2 then
			HideElement(registerVal2, "itemList")
			HideElement(registerVal2, "verticalCounter0")
			DisableNavigation(registerVal2, "itemList")
		else
			registerVal2 = FileshareIsCheckingPageFetchThreshold(arg1)
			if registerVal2 then
				ShowElement(registerVal2, "itemList")
				ShowElement(registerVal2, "verticalCounter0")
				EnableNavigation(registerVal2, "itemList")
			end
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "FileshareRoot", "itemsCount", __FUNC_33B9_)
	registerVal6.id = "itemList"
	local function __FUNC_3598_(arg0, arg1)
		local registerVal2 = arg0.itemList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_3598_)
	local function __FUNC_369C_(arg0)
		arg0.LeftPanel:close()
		arg0.GridItemButtonBackdropContainer2x40:close()
		arg0.itemList:close()
		arg0.FileshareSelectedItemInfo0:close()
		arg0.FilesharePublishDetails0:close()
		arg0.verticalCounter0:close()
		arg0.itemName:close()
		arg0.header:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_369C_)
	if __FUNC_43F_ then
		__FUNC_43F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FileshareSelector.new = __FUNC_5B5_

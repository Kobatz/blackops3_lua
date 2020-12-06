-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileshareNoContentGraphic")
require("ui.uieditor.menus.FileShare.Popups.FileshareOptions")
require("ui.uieditor.widgets.FileShare.FileshareScreenshotSelectorItemLarge")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.widgets.FileShare.FileshareNoContent")
local function __FUNC_34F_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "FileshareRoot.SelectedFileID")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FileshareScreenshotsContentList = registerVal2
local function __FUNC_407_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_34F_ then
		__FUNC_34F_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareScreenshotsContentList)
	registerVal2.id = "FileshareScreenshotsContentList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 770.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 525.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FileshareNoContentGraphic.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 11.500000, 760.500000)
	registerVal3:setTopBottom(true, false, 1.000000, 479.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FileshareNoContentGraphic0 = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 10.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 10.500000, 765.500000)
	registerVal4:setTopBottom(true, false, 1.000000, 477.000000)
	registerVal4:setWidgetType(CoD.FileshareScreenshotSelectorItemLarge)
	registerVal4:setHorizontalCount(3.000000)
	registerVal4:setVerticalCount(3.000000)
	registerVal4:setSpacing(10.000000)
	registerVal4:setDataSource("FilesharePublishedList")
	local registerVal8 = Engine.GetGlobalModel()
	local registerVal7 = Engine.GetModel(registerVal8, "FileshareRoot.SelectedFileID")
	local function __FUNC_E8F_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "FileshareRoot.SelectedFileID"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_E8F_)
	local function __FUNC_1057_(arg0, arg2)
		local registerVal3 = FileshareIsCommunityMode(arg0, arg1)
		if registerVal3 then
			SetElementDataSource(registerVal2, "contentList", "FileshareCommunityList")
		end
		if not nil then
			registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_1057_)
	local function __FUNC_1162_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		registerVal3 = ListElementHasElements(registerVal2, "contentList")
		if not registerVal3 then
			SetLoseFocusToElement(registerVal2, "contentList", arg1)
		else
			CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
			CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_1162_)
	local function __FUNC_13D6_(arg0, arg2)
		FileshareSetSelectedItem(registerVal2, arg0, arg1, "")
		MediaManagerClearDisplay(registerVal2, arg0, arg1)
		FileshareDownloadScreenshot(arg1, nil)
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_13D6_)
	local function __FUNC_14B7_(arg0, arg1)
		FileshareItemLoseFocus(arg0)
		return nil
	end

	registerVal4:registerEventHandler("list_item_lose_focus", __FUNC_14B7_)
	local function __FUNC_1514_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_1514_)
	local function __FUNC_15E6_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareHasCurrentScreenshot(arg2)
		if registerVal4 then
			FileshareSetSelectedItem(registerVal2, arg0, arg2, "true")
			FileshareOpenFullscreenView(registerVal2, arg0, arg2, arg1)
			return true
		end
	end

	local function __FUNC_16D8_(arg0, arg1, arg2)
		local registerVal3 = FileshareHasCurrentScreenshot(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_15E6_, __FUNC_16D8_, false)
	local function __FUNC_1819_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareCanShowOptionsMenu(arg2)
		registerVal4 = FileshareHasCurrentScreenshot(arg2)
		if registerVal4 and registerVal4 then
			OpenPopup(registerVal2, "FileshareOptions", arg2, "", "")
			return true
		end
	end

	local function __FUNC_1913_(arg0, arg1, arg2)
		local registerVal3 = FileshareCanShowOptionsMenu(arg2)
		registerVal3 = FileshareHasCurrentScreenshot(arg2)
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_1819_, __FUNC_1913_, false)
	local function __FUNC_1A85_(arg0)
		UpdateDataSource(registerVal2, registerVal4, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "FileshareRoot", "dirty", __FUNC_1A85_)
	local function __FUNC_1AE2_(arg0)
		local registerVal2 = FileshareIsReady(arg1)
		if registerVal2 then
			UpdateDataSource(registerVal2, registerVal4, arg1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "FileshareRoot", "ready", __FUNC_1AE2_)
	registerVal2:addElement(registerVal4)
	registerVal2.contentList = registerVal4
	local registerVal5 = CoD.verticalCounter.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 285.000000, 485.000000)
	registerVal5:setTopBottom(true, false, 482.500000, 507.500000)
	local function __FUNC_1B6C_(arg0, arg1)
		SetAsListVerticalCounter(registerVal2, arg0, "contentList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_loaded", __FUNC_1B6C_)
	registerVal2:addElement(registerVal5)
	registerVal2.verticalCounter = registerVal5
	local registerVal6 = CoD.FileshareNoContent.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 261.000000, 515.000000)
	registerVal6:setTopBottom(true, false, 223.050000, 252.950000)
	registerVal2:addElement(registerVal6)
	registerVal2.FileshareNoContent = registerVal6
	local function __FUNC_1C24_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal4, nil, false, __FUNC_1C24_)
	local function __FUNC_1C76_(arg0)
		local registerVal2 = IsGlobalModelValueEqualTo(registerVal2, arg1, "FileshareRoot.itemsCount", 0.000000)
		if registerVal2 then
			HideElement(registerVal2, "contentList")
			HideElement(registerVal2, "verticalCounter")
			DisableNavigation(registerVal2, "contentList")
		else
			ShowElement(registerVal2, "contentList")
			ShowElement(registerVal2, "verticalCounter")
			EnableNavigation(registerVal2, "contentList")
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "FileshareRoot", "itemsCount", __FUNC_1C76_)
	registerVal4.id = "contentList"
	local function __FUNC_1DFF_(arg0, arg1)
		local registerVal2 = arg0.contentList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1DFF_)
	local function __FUNC_1F03_(arg0)
		arg0.FileshareNoContentGraphic0:close()
		arg0.contentList:close()
		arg0.verticalCounter:close()
		arg0.FileshareNoContent:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1F03_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FileshareScreenshotsContentList.new = __FUNC_407_

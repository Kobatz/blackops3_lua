-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileshareNoContentGraphic")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
require("ui.uieditor.menus.FileShare.Popups.FileshareOptions")
require("ui.uieditor.widgets.FileShare.FileshareSelectorItemLarge")
require("ui.uieditor.widgets.FileShare.FileshareNoContent")
local function __FUNC_342_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "FileshareRoot.SelectedFileID")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FileshareCategoryContentList = registerVal2
local function __FUNC_3FB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_342_ then
		__FUNC_342_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareCategoryContentList)
	registerVal2.id = "FileshareCategoryContentList"
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
	registerVal2.FileshareNoContentGraphic = registerVal3
	local registerVal4 = CoD.verticalCounter.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 285.000000, 485.000000)
	registerVal4:setTopBottom(true, false, 482.000000, 507.000000)
	local function __FUNC_F22_(arg0, arg1)
		SetAsListVerticalCounter(registerVal2, arg0, "contentList")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_F22_)
	registerVal2:addElement(registerVal4)
	registerVal2.verticalCounter = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, 10.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 10.500000, 735.500000)
	registerVal5:setTopBottom(true, false, 1.000000, 481.000000)
	registerVal5:setWidgetType(CoD.FileshareSelectorItemLarge)
	registerVal5:setHorizontalCount(3.000000)
	registerVal5:setSpacing(10.000000)
	registerVal5:setDataSource("FilesharePublishedList")
	local function __FUNC_FD8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setVerticalCount(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "FileshareRoot", "listVerticalCount", __FUNC_FD8_)
	local registerVal9 = Engine.GetGlobalModel()
	local registerVal8 = Engine.GetModel(registerVal9, "FileshareRoot.SelectedFileID")
	local function __FUNC_1075_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "FileshareRoot.SelectedFileID"
		CoD.Menu.UpdateButtonShownState(registerVal5, arg0, arg1, Enum.LUIButton.LUI_KEY_START)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_1075_)
	local function __FUNC_123F_(arg0, arg2)
		local registerVal3 = FileshareIsCommunityMode(arg0, arg1)
		if registerVal3 then
			SetElementDataSource(registerVal2, "contentList", "FileshareCommunityList")
		end
		if not nil then
			registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("menu_loaded", __FUNC_123F_)
	local function __FUNC_134A_(arg2, arg3)
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

	registerVal5:registerEventHandler("gain_focus", __FUNC_134A_)
	local function __FUNC_15BE_(arg0, arg2)
		FileshareSetSelectedItem(registerVal2, arg0, arg1, "")
		MediaManagerClearDisplay(registerVal2, arg0, arg1)
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_15BE_)
	local function __FUNC_166A_(arg0, arg1)
		FileshareItemLoseFocus(arg0)
		return nil
	end

	registerVal5:registerEventHandler("list_item_lose_focus", __FUNC_166A_)
	local function __FUNC_16C8_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_16C8_)
	local function __FUNC_179A_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_17FB_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_179A_, __FUNC_17FB_, false)
	local function __FUNC_18F6_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareCanShowOptionsMenu(arg2)
		if registerVal4 then
			OpenPopup(registerVal2, "FileshareOptions", arg2, "", "")
			PreserveThumbnails(arg2, true)
			return true
		end
	end

	local function __FUNC_19E0_(arg0, arg1, arg2)
		local registerVal3 = FileshareCanShowOptionsMenu(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_18F6_, __FUNC_19E0_, false)
	local function __FUNC_1B1A_(arg0)
		UpdateDataSource(registerVal2, registerVal5, arg1)
	end

	registerVal5:subscribeToGlobalModel(arg1, "FileshareRoot", "dirty", __FUNC_1B1A_)
	local function __FUNC_1B76_(arg0)
		local registerVal2 = FileshareIsReady(arg1)
		if registerVal2 then
			UpdateDataSource(registerVal2, registerVal5, arg1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "FileshareRoot", "ready", __FUNC_1B76_)
	registerVal2:addElement(registerVal5)
	registerVal2.contentList = registerVal5
	local registerVal6 = CoD.FileshareNoContent.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 261.000000, 515.000000)
	registerVal6:setTopBottom(true, false, 223.050000, 252.950000)
	registerVal2:addElement(registerVal6)
	registerVal2.FileshareNoContent = registerVal6
	local function __FUNC_1C00_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal5, nil, false, __FUNC_1C00_)
	local registerVal7 = {}
	registerVal8 = {}
	local function __FUNC_1C52_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.FileshareNoContentGraphic:setLeftRight(true, false, 11.500000, 760.500000)
		registerVal2.FileshareNoContentGraphic:setTopBottom(true, false, 1.000000, 479.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.verticalCounter:setLeftRight(true, false, 285.000000, 485.000000)
		registerVal2.verticalCounter:setTopBottom(true, false, 482.000000, 507.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.contentList:setLeftRight(true, false, 10.500000, 735.500000)
		registerVal2.contentList:setTopBottom(true, false, 1.000000, 481.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_1C52_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1EFF_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.FileshareNoContentGraphic:setLeftRight(true, false, 14.500000, 388.000000)
		registerVal2.FileshareNoContentGraphic:setTopBottom(true, false, 1.000000, 372.500000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.verticalCounter:setLeftRight(true, false, 95.000000, 295.000000)
		registerVal2.verticalCounter:setTopBottom(true, false, 440.500000, 465.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.contentList:setLeftRight(true, false, 59.500000, 784.500000)
		registerVal2.contentList:setTopBottom(true, false, -23.000000, 457.000000)
		registerVal2.contentList:setScale(0.900000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.FileshareNoContent:setLeftRight(true, false, 14.500000, 379.500000)
		registerVal2.FileshareNoContent:setTopBottom(true, false, 171.750000, 201.750000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1EFF_
	registerVal7.GroupsOverviewRecentShowcase = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_2286_(arg0)
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

	registerVal2:subscribeToGlobalModel(arg1, "FileshareRoot", "itemsCount", __FUNC_2286_)
	registerVal5.id = "contentList"
	local function __FUNC_240F_(arg0, arg1)
		local registerVal2 = arg0.contentList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_240F_)
	local function __FUNC_2513_(arg0)
		arg0.FileshareNoContentGraphic:close()
		arg0.verticalCounter:close()
		arg0.contentList:close()
		arg0.FileshareNoContent:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2513_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FileshareCategoryContentList.new = __FUNC_3FB_

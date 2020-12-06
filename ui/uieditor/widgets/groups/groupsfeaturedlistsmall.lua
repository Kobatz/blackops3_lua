-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileshareNoContentGraphic")
require("ui.uieditor.menus.FileShare.Popups.FileshareOptions")
require("ui.uieditor.widgets.Groups.GroupsFeaturedItemSmall")
require("ui.uieditor.widgets.FileShare.FileshareNoContent")
local function __FUNC_2F3_(arg0, arg1)
	local function __FUNC_3D2_()
		if arg0.contentList then
			if arg0.contentList.activeWidget then
				SelectNextItemIfPossible(arg0, arg0.contentList.activeWidget, arg1)
			else
				SelectFirstItemIfPossible(arg0, arg0.contentList, arg1)
			end
		end
	end

	local registerVal3 = LUI.UITimer.newElementTimer(5000.000000, false, __FUNC_3D2_, arg0)
	arg0.featureListTimer = registerVal3
	arg0:addElement(registerVal3)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.GroupsFeaturedListSmall = registerVal2
local function __FUNC_4F8_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.GroupsFeaturedListSmall)
	registerVal2.id = "GroupsFeaturedListSmall"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 174.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FileshareNoContentGraphic.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 1.000000, 325.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 177.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FileshareNoContentGraphic = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 10.000000, 500.000000, nil, true, true, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 0.000000, 320.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 174.000000)
	registerVal4:setWidgetType(CoD.GroupsFeaturedItemSmall)
	registerVal4:setSpacing(10.000000)
	local function __FUNC_D05_(arg0, arg2)
		local registerVal3 = FileshareIsCommunityMode(arg0, arg1)
		if registerVal3 then
			SetElementDataSource(registerVal2, "contentList", "FileshareCommunityList")
		end
		if not nil then
			registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_D05_)
	local function __FUNC_E12_(arg0, arg2)
		FileshareSetSelectedItem(registerVal2, arg0, arg1, "")
		MediaManagerClearDisplay(registerVal2, arg0, arg1)
		return nil
	end

	registerVal4:registerEventHandler("list_item_gain_focus", __FUNC_E12_)
	local function __FUNC_EBE_(arg0, arg1)
		FileshareItemLoseFocus(arg0)
		return nil
	end

	registerVal4:registerEventHandler("list_item_lose_focus", __FUNC_EBE_)
	local function __FUNC_F1C_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_F1C_)
	local function __FUNC_110E_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_110E_)
	local function __FUNC_11DE_(arg0, arg1, arg2, arg3)
		ProcessListAction(registerVal2, arg0, arg2)
		return true
	end

	local function __FUNC_123F_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_11DE_, __FUNC_123F_, false)
	local function __FUNC_133A_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareCanShowOptionsMenu(arg2)
		if registerVal4 then
			OpenPopup(registerVal2, "FileshareOptions", arg2, "", "")
			PreserveThumbnails(arg2, true)
			return true
		end
	end

	local function __FUNC_1424_(arg0, arg1, arg2)
		local registerVal3 = FileshareCanShowOptionsMenu(arg2)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_OPTIONS")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_START, nil, __FUNC_133A_, __FUNC_1424_, false)
	local function __FUNC_155E_(arg0)
		UpdateDataSource(registerVal2, registerVal4, arg1)
	end

	registerVal4:subscribeToGlobalModel(arg1, "FileshareRoot", "dirty", __FUNC_155E_)
	local function __FUNC_15BA_(arg0)
		local registerVal2 = FileshareIsReady(arg1)
		if registerVal2 then
			UpdateDataSource(registerVal2, registerVal4, arg1)
			SelectFirstItemIfPossible(registerVal2, registerVal4, arg1)
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "FileshareRoot", "ready", __FUNC_15BA_)
	registerVal2:addElement(registerVal4)
	registerVal2.contentList = registerVal4
	local registerVal5 = CoD.FileshareNoContent.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 36.000000, 290.000000)
	registerVal5:setTopBottom(true, false, 73.550000, 103.450000)
	registerVal2:addElement(registerVal5)
	registerVal2.FileshareNoContent = registerVal5
	local function __FUNC_167B_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal4, nil, false, __FUNC_167B_)
	registerVal4.id = "contentList"
	local function __FUNC_16CA_(arg0, arg1)
		local registerVal2 = arg0.contentList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_16CA_)
	local function __FUNC_17CF_(arg0)
		arg0.FileshareNoContentGraphic:close()
		arg0.contentList:close()
		arg0.FileshareNoContent:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_17CF_)
	if __FUNC_2F3_ then
		__FUNC_2F3_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GroupsFeaturedListSmall.new = __FUNC_4F8_

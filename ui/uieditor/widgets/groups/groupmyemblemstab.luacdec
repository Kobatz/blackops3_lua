-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemDrawWidgetNew")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemItem")
require("ui.uieditor.widgets.Scrollbars.verticalScrollbar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupMyEmblemsTab = registerVal1
function CoD.GroupMyEmblemsTab.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupMyEmblemsTab)
	registerVal2.id = "GroupMyEmblemsTab"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1152.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 461.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 1149.740000)
	registerVal3:setTopBottom(true, false, 0.000000, 485.570000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setScale(1.100000)
	registerVal2:addElement(registerVal3)
	registerVal2.Background = registerVal3
	local registerVal4 = CoD.EmblemDrawWidgetNew.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 695.880000, 1129.000000)
	registerVal4:setTopBottom(true, false, 33.000000, 305.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.emblemDrawWidget = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 32.870000, 574.870000)
	registerVal5:setTopBottom(true, false, 33.000000, 371.000000)
	registerVal5:setDataSource("GroupsGroupEmblemsList")
	registerVal5:setWidgetType(CoD.EmblemItem)
	registerVal5:setHorizontalCount(3.000000)
	registerVal5:setVerticalCount(3.000000)
	registerVal5:setSpacing(7.000000)
	registerVal5:setVerticalScrollbar(CoD.verticalScrollbar)
	local function __FUNC_BC1_(arg0, arg2)
		EmblemSelect_GainFocus(registerVal2, arg0, arg1)
		return nil
	end

	registerVal5:registerEventHandler("list_item_gain_focus", __FUNC_BC1_)
	local function __FUNC_C28_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_C28_)
	local function __FUNC_DBB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_DBB_)
	local function __FUNC_E8A_(arg0, arg1, arg2, arg3)
		local registerVal4 = Emblem_IsOccupied(arg0, arg2)
		if registerVal4 then
			PlaySoundSetSound(registerVal2, "toggle")
			GroupEmblemSelect_SetAsEmblem(registerVal2, arg0, arg2)
			GroupEmblemSelect_Back(registerVal2, arg0, arg2, arg1)
			GoBack(registerVal2, arg2)
			return true
		end
	end

	local function __FUNC_FBD_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SET_AS_EMBLEM")
		local registerVal3 = Emblem_IsOccupied(arg0, arg2)
		if registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_E8A_, __FUNC_FBD_, false)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "EmptySlot"
	local function __FUNC_10FC_(arg0, arg2, arg3)
		local registerVal3 = Emblem_IsOccupied(arg2, arg1)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_10FC_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.emblemList = registerVal5
	local registerVal6 = {}
	registerVal6.left = registerVal5
	registerVal4.navigation = registerVal6
	registerVal6 = {}
	registerVal6.right = registerVal4
	registerVal5.navigation = registerVal6
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal4.id = "emblemDrawWidget"
	registerVal5.id = "emblemList"
	local function __FUNC_115B_(arg0, arg1)
		local registerVal2 = arg0.emblemList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_115B_)
	local function __FUNC_125E_(arg0)
		arg0.emblemDrawWidget:close()
		arg0.emblemList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_125E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Social.Social_PlayerDetailsPopup")
require("ui.uieditor.widgets.Groups.GroupsRosterRow")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local function __FUNC_2B3_(arg0, arg1)
	local registerVal4 = Engine.GetGlobalModel()
	local registerVal3 = Engine.GetModel(registerVal4, "socialRoot.tab")
	Engine.SetModelValue(registerVal3, "groupPlayerSearch")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FindGroupsTabSearchPlayerResultsFrame = registerVal2
local function __FUNC_3A4_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_2B3_ then
		__FUNC_2B3_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FindGroupsTabSearchPlayerResultsFrame)
	registerVal2.id = "FindGroupsTabSearchPlayerResultsFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 724.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 417.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 370.000000)
	registerVal3:setWidgetType(CoD.GroupsRosterRow)
	registerVal3:setVerticalCount(6.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	registerVal3:setDataSource("SocialPlayersList")
	local function __FUNC_E52_(arg0, arg2)
		SetSelectedFriendXUID(registerVal2, arg0, arg1)
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_E52_)
	local function __FUNC_EB7_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_EB7_)
	local function __FUNC_1047_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_1047_)
	local function __FUNC_1116_(arg0, arg1, arg2, arg3)
		OpenOverlay(registerVal2, "Social_PlayerDetailsPopup", arg2, "", "")
		return true
	end

	local function __FUNC_11A6_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_1116_, __FUNC_11A6_, false)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Loading"
	local function __FUNC_12A2_(arg0, arg2, arg3)
		return IsModelValueTrue(arg1, "groups.searchPlayerInProgress")
	end

	registerVal7.condition = __FUNC_12A2_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetModelForController(arg1)
	registerVal6 = Engine.GetModel(registerVal7, "groups.searchPlayerInProgress")
	local function __FUNC_1321_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.searchPlayerInProgress"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1321_)
	registerVal2:addElement(registerVal3)
	registerVal2.PlayersList = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 708.000000)
	registerVal4:setTopBottom(true, false, 191.500000, 231.500000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("GROUPS_SEARCH_NO_RESULTS_FOR_PLAYER_SEARCH"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.NoResults = registerVal4
	local registerVal5 = {}
	registerVal6 = {}
	local function __FUNC_1453_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PlayersList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NoResults:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1453_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_15AF_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PlayersList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.NoResults:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_15AF_
	registerVal5.NoContent = registerVal6
	registerVal2.clipsPerState = registerVal5
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "NoContent"
	local function __FUNC_170B_(arg0, arg2, arg3)
		return IsModelValueEqualTo(arg1, "groups.searchPlayerResultsCount", 0.000000)
	end

	registerVal8.condition = __FUNC_170B_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "groups.searchPlayerResultsCount")
	local function __FUNC_1797_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.searchPlayerResultsCount"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_1797_)
	local function __FUNC_18C9_(arg0)
		SetGlobalModelValue("socialRoot.tab", "groups")
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_18C9_)
	registerVal3.id = "PlayersList"
	local function __FUNC_1949_(arg0, arg1)
		local registerVal2 = arg0.PlayersList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1949_)
	local function __FUNC_1A4F_(arg0)
		arg0.PlayersList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1A4F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FindGroupsTabSearchPlayerResultsFrame.new = __FUNC_3A4_

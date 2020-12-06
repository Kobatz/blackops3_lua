-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.FindGroupsCategoryButton")
require("ui.uieditor.widgets.BackgroundFrames.GenericMenuFrame")
require("ui.uieditor.widgets.Lobby.Common.FE_Menu_LeftGraphics")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
function LUI.createMenu.FindGroups(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("FindGroups")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "FindGroups.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_fe_cp_background"))
	registerVal1:addElement(registerVal4)
	registerVal1.BlackBG = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 92.930000, 381.000000)
	registerVal5:setTopBottom(true, false, 154.000000, 615.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal1:addElement(registerVal5)
	registerVal1.Image0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 65.000000, 468.500000)
	registerVal6:setTopBottom(true, false, 86.000000, 684.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.300000)
	registerVal1:addElement(registerVal6)
	registerVal1.BlackTint0 = registerVal6
	local registerVal7 = LUI.UIList.new(registerVal1, arg0, 5.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal7:makeFocusable()
	registerVal7:setLeftRight(true, false, 80.000000, 454.000000)
	registerVal7:setTopBottom(true, false, 156.000000, 476.000000)
	registerVal7:setWidgetType(CoD.FindGroupsCategoryButton)
	registerVal7:setVerticalCount(5.000000)
	registerVal7:setSpacing(5.000000)
	registerVal7:setDataSource("FindGroupsCategoryList")
	local function __FUNC_16B7_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "category"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal7:linkToElementModel(registerVal7, "category", true, __FUNC_16B7_)
	local registerVal11 = Engine.GetModelForController(arg0)
	local registerVal10 = Engine.GetModel(registerVal11, "groups.searchResultsVisible")
	local function __FUNC_1874_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groups.searchResultsVisible"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_1874_)
	local function __FUNC_1A47_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "action"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal7:linkToElementModel(registerVal7, "action", true, __FUNC_1A47_)
	registerVal11 = Engine.GetModelForController(arg0)
	registerVal10 = Engine.GetModel(registerVal11, "groups.searchPlayerResultsVisible")
	local function __FUNC_1BFF_(arg1)
		local registerVal2 = {}
		registerVal2.controller = arg0
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg1)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groups.searchPlayerResultsVisible"
		CoD.Menu.UpdateButtonShownState(registerVal7, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_1BFF_)
	local function __FUNC_1DD5_(arg1, arg2)
		if arg1.gainFocus then
			local registerVal3 = arg1.gainFocus(arg1, arg2)
		else
			if arg1.super.gainFocus then
				registerVal3 = arg1.super.gainFocus(arg1, arg2)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		CoD.Menu.UpdateButtonShownState(arg1, registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_1DD5_)
	local function __FUNC_1FCF_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_1FCF_)
	local function __FUNC_209E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "category", "params")
		registerVal4 = IsModelValueTrue(arg2, "groups.searchResultsVisible")
		if registerVal4 and registerVal4 then
			UpdateFindGroupsTabSearchFrameWidget(registerVal1, arg0, arg2)
			return true
		else
			registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "category", "playerSearch")
			registerVal4 = IsModelValueTrue(arg2, "groups.searchPlayerResultsVisible")
			if registerVal4 and registerVal4 then
				UpdateFindGroupsTabSearchPlayerFrameWidget(registerVal1, arg0, arg2)
				return true
			end
		end
	end

	local function __FUNC_2299_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "category", "params")
		registerVal3 = IsModelValueTrue(arg2, "groups.searchResultsVisible")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "GROUPS_UPDATE_SEARCH")
			return true
		else
			registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "category", "playerSearch")
			registerVal3 = IsModelValueTrue(arg2, "groups.searchPlayerResultsVisible")
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "GROUPS_UPDATE_SEARCH")
				return true
			end
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "S", __FUNC_209E_, __FUNC_2299_, false)
	local function __FUNC_252D_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueNil(arg0, arg2, "action")
		if not registerVal4 then
			ProcessListAction(registerVal1, arg0, arg2)
			return true
		end
	end

	local function __FUNC_25D8_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueNil(arg0, arg2, "action")
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal7, arg0, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_252D_, __FUNC_25D8_, false)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "NoListFocus"
	local function __FUNC_2727_(arg0, arg1, arg2)
		local registerVal3 = IsParentListInFocus(arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_2727_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal1:addElement(registerVal7)
	registerVal1.CategoriesList = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 64.000000, 1099.000000)
	registerVal8:setTopBottom(true, false, 154.000000, 614.000000)
	registerVal8:setAlpha(0.000000)
	registerVal1:addElement(registerVal8)
	registerVal1.Background = registerVal8
	local registerVal9 = LUI.UIFrame.new(registerVal1, arg0, 0.000000, 0.000000, false)
	registerVal9:setLeftRight(true, false, 495.000000, 1245.000000)
	registerVal9:setTopBottom(true, false, 155.000000, 706.000000)
	local function __FUNC_2781_(arg1)
		ClearSavedState(registerVal1, arg0)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal9, "close", __FUNC_2781_)
	registerVal1:addElement(registerVal9)
	registerVal1.FindGroupsTabFrame = registerVal9
	registerVal10 = CoD.GenericMenuFrame.new(registerVal1, arg0)
	registerVal10:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal10:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal10.titleLabel:setText(Engine.Localize("GROUPS_FIND_GROUPS_CAPS"))
	registerVal10.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("GROUPS_FIND_GROUPS_CAPS"))
	registerVal10.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.FeatureIcon.FeatureIcon:setImage(RegisterImage("uie_t7_mp_icon_header_emblem"))
	registerVal1:addElement(registerVal10)
	registerVal1.MenuFrame = registerVal10
	registerVal11 = CoD.FE_Menu_LeftGraphics.new(registerVal1, arg0)
	registerVal11:setLeftRight(true, false, 18.000000, 70.000000)
	registerVal11:setTopBottom(true, false, 91.000000, 708.250000)
	registerVal1:addElement(registerVal11)
	registerVal1.FEMenuLeftGraphics = registerVal11
	local registerVal12 = CoD.SelfIdentityBadge.new(registerVal1, arg0)
	registerVal12:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal12:setTopBottom(true, false, 24.000000, 84.000000)
	local function __FUNC_27D5_(arg1)
		registerVal12:setModel(arg1, arg0)
	end

	registerVal12:subscribeToGlobalModel(arg0, "PerController", "identityBadge", __FUNC_27D5_)
	local function __FUNC_2826_(arg1)
		registerVal12.CallingCard.CallingCardsFrameWidget:setModel(arg1, arg0)
	end

	registerVal12:subscribeToGlobalModel(arg0, "PerController", nil, __FUNC_2826_)
	registerVal1:addElement(registerVal12)
	registerVal1.SelfIdentityBadge = registerVal12
	local function __FUNC_28C4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:changeFrameWidget(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal7, "frameWidget", true, __FUNC_28C4_)
	local registerVal13 = {}
	registerVal13.right = registerVal9
	registerVal7.navigation = registerVal13
	registerVal13 = {}
	registerVal13.left = registerVal7
	registerVal9.navigation = registerVal13
	CoD.Menu.AddNavigationHandler(registerVal1, registerVal1, arg0)
	local function __FUNC_2962_(arg1, arg2)
		HandleGroupsKeyboardComplete(registerVal1, arg1, arg0, arg2)
		if not nil then
			local registerVal3 = arg1:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal1:registerEventHandler("ui_keyboard_input", __FUNC_2962_)
	local function __FUNC_2A0B_(arg0, arg1, arg2, arg3)
		ClearSavedState(registerVal1, arg2)
		SetGlobalModelValue("socialRoot.tab", "groups")
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_2ADA_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "MENU_BACK")
		return true
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_2A0B_, __FUNC_2ADA_, false)
	local function __FUNC_2BD5_(arg0, arg1, arg2, arg3)
		local registerVal4 = AlwaysFalse()
		if registerVal4 then
			return true
		end
	end

	local function __FUNC_2C2D_(arg0, arg1, arg2)
		local registerVal3 = AlwaysFalse()
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "")
			return false
		end
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_2BD5_, __FUNC_2C2D_, false)
	registerVal7.id = "CategoriesList"
	registerVal9.id = "FindGroupsTabFrame"
	registerVal10:setModel(registerVal1.buttonModel, arg0)
	local registerVal15 = {}
	registerVal15.name = "menu_loaded"
	registerVal15.controller = arg0
	registerVal1:processEvent(registerVal15)
	registerVal15 = {}
	registerVal15.name = "update_state"
	registerVal15.menu = registerVal1
	registerVal1:processEvent(registerVal15)
	registerVal13 = registerVal1:restoreState()
	if not registerVal13 then
		registerVal15 = {}
		registerVal15.name = "gain_focus"
		registerVal15.controller = arg0
		registerVal1.CategoriesList:processEvent(registerVal15)
	end
	local function __FUNC_2D46_(arg1)
		arg1.CategoriesList:close()
		arg1.MenuFrame:close()
		arg1.FEMenuLeftGraphics:close()
		arg1.SelfIdentityBadge:close()
		arg1.FindGroupsTabFrame:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "FindGroups.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_2D46_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end


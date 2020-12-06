-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.FindGroupsCategoryButton")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FindGroupsTab = registerVal1
function CoD.FindGroupsTab.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FindGroupsTab)
	registerVal2.id = "FindGroupsTab"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1152.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 629.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 28.930000, 317.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 461.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 402.000000)
	registerVal4:setTopBottom(true, false, -58.000000, 558.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.300000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackTint0 = registerVal4
	local registerVal5 = LUI.UIList.new(arg0, arg1, 7.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal5:makeFocusable()
	registerVal5:setLeftRight(true, false, 12.000000, 386.000000)
	registerVal5:setTopBottom(true, false, -44.000000, 217.000000)
	registerVal5:setWidgetType(CoD.FindGroupsCategoryButton)
	registerVal5:setVerticalCount(4.000000)
	registerVal5:setSpacing(7.000000)
	registerVal5:setDataSource("FindGroupsCategoryList")
	local function __FUNC_C59_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "category"
		CoD.Menu.UpdateButtonShownState(registerVal5, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal5:linkToElementModel(registerVal5, "category", true, __FUNC_C59_)
	local registerVal9 = Engine.GetModelForController(arg1)
	local registerVal8 = Engine.GetModel(registerVal9, "groups.searchResultsVisible")
	local function __FUNC_E18_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "groups.searchResultsVisible"
		CoD.Menu.UpdateButtonShownState(registerVal5, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_E18_)
	local function __FUNC_FEB_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_FEB_)
	local function __FUNC_117E_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_117E_)
	local function __FUNC_124E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "category", "params")
		registerVal4 = IsModelValueTrue(arg2, "groups.searchResultsVisible")
		if registerVal4 and registerVal4 then
			UpdateFindGroupsTabSearchFrameWidget(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_137C_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "category", "params")
		registerVal3 = IsModelValueTrue(arg2, "groups.searchResultsVisible")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "GROUPS_UPDATE_SEARCH")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_124E_, __FUNC_137C_, false)
	registerVal2:addElement(registerVal5)
	registerVal2.CategoriesList = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 1035.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 460.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Background = registerVal6
	local registerVal7 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, false)
	registerVal7:setLeftRight(true, false, 402.000000, 1152.000000)
	registerVal7:setTopBottom(true, false, -42.000000, 509.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FindGroupsTabFrame = registerVal7
	local function __FUNC_1548_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:changeFrameWidget(registerVal1)
		end
	end

	registerVal7:linkToElementModel(registerVal5, "frameWidget", true, __FUNC_1548_)
	registerVal8 = {}
	registerVal8.right = registerVal7
	registerVal5.navigation = registerVal8
	registerVal8 = {}
	registerVal8.left = registerVal5
	registerVal7.navigation = registerVal8
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal5.id = "CategoriesList"
	registerVal7.id = "FindGroupsTabFrame"
	local function __FUNC_15E6_(arg0, arg1)
		local registerVal2 = arg0.CategoriesList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_15E6_)
	local function __FUNC_16EE_(arg0)
		arg0.CategoriesList:close()
		arg0.FindGroupsTabFrame:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_16EE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


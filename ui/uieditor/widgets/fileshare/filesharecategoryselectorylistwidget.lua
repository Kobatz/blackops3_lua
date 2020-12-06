-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FileshareCategoriesSelectorListItem")
require("ui.uieditor.widgets.Theater.Theater_HintText")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FileshareCategorySelectoryListWidget = registerVal1
function CoD.FileshareCategorySelectoryListWidget.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIVerticalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Top)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareCategorySelectoryListWidget)
	registerVal2.id = "FileshareCategorySelectoryListWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIList.new(arg0, arg1, 6.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 442.000000)
	registerVal3:setWidgetType(CoD.FileshareCategoriesSelectorListItem)
	registerVal3:setVerticalCount(8.000000)
	registerVal3:setSpacing(6.000000)
	registerVal3:setDataSource("FileshareCategoriesList")
	local registerVal7 = Engine.GetGlobalModel()
	local registerVal6 = Engine.GetModel(registerVal7, "fileshareRoot.fileshareType")
	local function __FUNC_C84_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "fileshareRoot.fileshareType"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_C84_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "fileshareRoot.itemsCount")
	local function __FUNC_E54_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "fileshareRoot.itemsCount"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_E54_)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "FileshareRoot.PublishMode")
	local function __FUNC_1021_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "FileshareRoot.PublishMode"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal3:subscribeToModel(registerVal6, __FUNC_1021_)
	local function __FUNC_11EE_(arg0, arg2)
		FileshareCategorySelectorItemSelected(registerVal2, arg0, arg1)
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_11EE_)
	local function __FUNC_1263_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_1263_)
	local function __FUNC_13F3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_13F3_)
	local function __FUNC_14C2_(arg0, arg1, arg2, arg3)
		local registerVal4 = FileshareIsCommunityMode(arg0, arg2)
		registerVal4 = FileshareIsCurrentUserContext(arg2)
		if not registerVal4 and registerVal4 then
			SetState(registerVal2, "Selected")
			OpenShowcase(registerVal2, arg0, arg2, "", arg1)
			return true
		else
			registerVal4 = FileshareIsCommunityMode(arg0, arg2)
			registerVal4 = FileshareIsCurrentUserContext(arg2)
			registerVal4 = FileshareHasContent(arg0, arg2)
			if not registerVal4 and not registerVal4 and registerVal4 then
				SetState(registerVal2, "Selected")
				OpenShowcase(registerVal2, arg0, arg2, "", arg1)
				return true
			else
				registerVal4 = FileshareIsCommunityMode(arg0, arg2)
				registerVal4 = FileshareHasContent(arg0, arg2)
				if registerVal4 and registerVal4 then
					SetState(registerVal2, "Selected")
					OpenShowcase(registerVal2, arg0, arg2, "", arg1)
					return true
				end
			end
		end
	end

	local function __FUNC_16DA_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		local registerVal3 = FileshareIsCommunityMode(arg0, arg2)
		registerVal3 = FileshareIsCurrentUserContext(arg2)
		if not registerVal3 and registerVal3 then
			return true
		else
			registerVal3 = FileshareIsCommunityMode(arg0, arg2)
			registerVal3 = FileshareIsCurrentUserContext(arg2)
			registerVal3 = FileshareHasContent(arg0, arg2)
			if not registerVal3 and not registerVal3 and registerVal3 then
				return true
			else
				registerVal3 = FileshareIsCommunityMode(arg0, arg2)
				registerVal3 = FileshareHasContent(arg0, arg2)
				if registerVal3 and registerVal3 then
					return true
				end
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_14C2_, __FUNC_16DA_, true)
	registerVal6 = {}
	registerVal7 = {}
	registerVal7.stateName = "NoListFocus"
	local function __FUNC_18FC_(arg0, arg1, arg2)
		local registerVal3 = IsParentListInFocus(arg1)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_18FC_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.itemList = registerVal3
	local registerVal4 = CoD.Theater_HintText.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal4:setTopBottom(true, false, 442.000000, 467.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.TheaterHintText = registerVal4
	local function __FUNC_1959_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.ItemHintText:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal3, "hintText", true, __FUNC_1959_)
	registerVal3.id = "itemList"
	local function __FUNC_1A34_(arg0, arg1)
		local registerVal2 = arg0.itemList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1A34_)
	local function __FUNC_1B38_(arg0)
		arg0.itemList:close()
		arg0.TheaterHintText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1B38_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


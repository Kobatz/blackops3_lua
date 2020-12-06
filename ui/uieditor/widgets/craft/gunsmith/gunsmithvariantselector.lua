-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.menus.Craft.Gunsmith.GunsmithCustomizeVariant")
require("ui.uieditor.menus.Craft.Gunsmith.GunsmithVariantOptions")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithVariantItemND")
require("ui.uieditor.widgets.Scrollbars.verticalCounter")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithVariantSelector = registerVal1
function CoD.GunsmithVariantSelector.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithVariantSelector)
	registerVal2.id = "GunsmithVariantSelector"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 340.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 572.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 7.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 0.000000, 338.000000)
	registerVal3:setTopBottom(true, false, 6.000000, 459.000000)
	registerVal3:setWidgetType(CoD.GunsmithVariantItemND)
	registerVal3:setHorizontalCount(3.000000)
	registerVal3:setVerticalCount(4.000000)
	registerVal3:setSpacing(7.000000)
	registerVal3:setVerticalCounter(CoD.verticalCounter)
	registerVal3:setDataSource("GunsmithVariantList")
	local function __FUNC_A73_(arg0, arg2)
		local registerVal3 = IsModelValueEqualToEnum(arg1, "Gunsmith.Mode", Enum.GunsmithMode.GUNSMITHMODE_VARIANTS)
		if registerVal3 then
			Gunsmith_FocusOccupiedVariant(registerVal2, arg0, arg1)
			PlaySoundSetSound(registerVal2, "action")
		end
		return nil
	end

	registerVal3:registerEventHandler("list_item_gain_focus", __FUNC_A73_)
	local function __FUNC_BC9_(arg0, arg2)
		OpenPopup(registerVal2, "GunsmithVariantOptions", arg1, "", "")
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("personalize_class_item", __FUNC_BC9_)
	local function __FUNC_C8E_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_C8E_)
	local function __FUNC_E7E_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_E7E_)
	local function __FUNC_F4E_(arg0, arg1, arg2, arg3)
		local registerVal4 = Gunsmith_IsVariantOccupied(arg0, arg2)
		registerVal4 = CraftItemIsReadOnly(arg0, arg2)
		if registerVal4 and not registerVal4 then
			Gunsmith_EditVariant(registerVal2, arg0, arg2)
			OpenOverlay(registerVal2, "GunsmithCustomizeVariant", arg2, "", "")
			return true
		else
			registerVal4 = Gunsmith_IsVariantOccupied(arg0, arg2)
			registerVal4 = CraftItemIsReadOnly(arg0, arg2)
			if registerVal4 and registerVal4 then
				FileshareShowReadonlyToast(registerVal2, arg0, arg2)
				return true
			else
				registerVal4 = Gunsmith_IsVariantOccupied(arg0, arg2)
				if not registerVal4 then
					Gunsmith_ChooseEmptyVariant(registerVal2, arg0, arg2)
					Gunsmith_OpenCreateVariantNamePopup(registerVal2, arg0, arg2)
					return true
				end
			end
		end
	end

	local function __FUNC_1192_(arg0, arg1, arg2)
		local registerVal3 = Gunsmith_IsVariantOccupied(arg0, arg2)
		registerVal3 = CraftItemIsReadOnly(arg0, arg2)
		if registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		else
			registerVal3 = Gunsmith_IsVariantOccupied(arg0, arg2)
			registerVal3 = CraftItemIsReadOnly(arg0, arg2)
			if registerVal3 and registerVal3 then
				CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
				return true
			else
				registerVal3 = Gunsmith_IsVariantOccupied(arg0, arg2)
				if not registerVal3 then
					CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
					return true
				end
			end
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_F4E_, __FUNC_1192_, false)
	local function __FUNC_13EF_(arg0, arg1, arg2, arg3)
		local registerVal4 = Gunsmith_IsVariantOccupied(arg0, arg2)
		if registerVal4 then
			OpenPopup(registerVal2, "GunsmithVariantOptions", arg2, "", "")
			return true
		end
	end

	local function __FUNC_14B5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_START, "MENU_GUNSMITH_VARIANT_OPTIONS")
		local registerVal3 = Gunsmith_IsVariantOccupied(arg0, arg2)
		if registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_START, "O", __FUNC_13EF_, __FUNC_14B5_, true)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "EmptySlot"
	local function __FUNC_1602_(arg0, arg2, arg3)
		local registerVal3 = Gunsmith_IsVariantOccupied(arg2, arg1)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_1602_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.variantList = registerVal3
	registerVal3.id = "variantList"
	local function __FUNC_1668_(arg0, arg1)
		local registerVal2 = arg0.variantList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1668_)
	local function __FUNC_176F_(arg0)
		arg0.variantList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_176F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


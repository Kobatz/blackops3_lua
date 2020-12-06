-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.CategoryHeader")
require("ui.uieditor.widgets.Craft.WeaponBuildKits.WeaponBuildKitsAttachmentButton")
require("ui.uieditor.menus.Craft.WeaponBuildKits.WeaponBuildKitsAttachmentSelect")
require("ui.uieditor.menus.Craft.Gunsmith.GunsmithReticleSelect")
require("ui.uieditor.menus.Craft.Gunsmith.GunsmithAttachmentVariantSelect")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithPaintjobButton")
require("ui.uieditor.menus.Craft.Gunsmith.GunsmithPaintjobSelect")
require("ui.uieditor.menus.Craft.Gunsmith.GunsmithCamoSelect")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponBuildKitsVariantAttachments = registerVal1
function CoD.WeaponBuildKitsVariantAttachments.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponBuildKitsVariantAttachments)
	registerVal2.id = "WeaponBuildKitsVariantAttachments"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 700.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 93.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 1.000000, 64.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 17.000000)
	registerVal3.header:setText(Engine.Localize("MPUI_OPTICS_CAPS"))
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "BreadcrumbVisible"
	local function __FUNC_2536_(arg0, arg2, arg3)
		return Gunsmith_AnyOpticsNew(arg1)
	end

	registerVal7.condition = __FUNC_2536_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.opticCategoryHeader = registerVal3
	local registerVal4 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 112.670000, -246.900000)
	registerVal4:setTopBottom(true, false, 0.000000, 17.000000)
	registerVal4.header:setText(Engine.Localize("MPUI_ATTACHMENTS_CAPS"))
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "BreadcrumbVisible"
	local function __FUNC_258F_(arg0, arg2, arg3)
		return Gunsmith_AnyAttachmentsNew(arg1)
	end

	registerVal8.condition = __FUNC_258F_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.attachCategoryHeader = registerVal4
	local registerVal5 = CoD.WeaponBuildKitsAttachmentButton.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal5:setTopBottom(true, false, 24.000000, 88.000000)
	registerVal5.opticIndicator:setAlpha(0.410000)
	local function __FUNC_25EC_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_25EC_)
	local function __FUNC_263E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "1", registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "attachment1", true, __FUNC_263E_)
	local function __FUNC_2755_(arg0)
		registerVal5.itemHintText:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_2755_)
	local function __FUNC_27C8_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "attachment1"
		CoD.Menu.UpdateButtonShownState(registerVal5, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal5, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal5:linkToElementModel(registerVal5, "attachment1", true, __FUNC_27C8_)
	local function __FUNC_29F1_(arg0, arg2)
		Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "1", arg1)
		EnableMouseButtonOnElement(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("gunsmith_remove_item", __FUNC_29F1_)
	local function __FUNC_2ADA_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		Gunsmith_SetSelectedItemName(registerVal2, arg2, "optic", "1", arg1)
		SetHintText(registerVal2, arg2, arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_2ADA_)
	local function __FUNC_2DBE_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_2DBE_)
	local function __FUNC_2E8E_(arg0, arg1, arg2, arg3)
		Gunsmith_SetWeaponAttachmentType(registerVal2, arg0, "optic", "1", "true", arg2)
		NavigateToMenu(registerVal2, "WeaponBuildKitsAttachmentSelect", true, arg2)
		return true
	end

	local function __FUNC_2F8B_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_2E8E_, __FUNC_2F8B_, false)
	local function __FUNC_3086_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment1", 0.000000)
		if registerVal4 then
			Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "1", arg2)
			return true
		end
	end

	local function __FUNC_3160_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment1", 0.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_3086_, __FUNC_3160_, false)
	local function __FUNC_32C6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment1", 0.000000)
		registerVal4 = IsGunsmithReticleAllowedForOptic(arg1, arg0, arg2, "attachment1")
		if registerVal4 and registerVal4 then
			Gunsmith_SetWeaponReticleModel(registerVal2, arg0, arg2)
			NavigateToMenu(registerVal2, "GunsmithReticleSelect", true, arg2)
			return true
		end
	end

	local function __FUNC_342C_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment1", 0.000000)
		registerVal3 = IsGunsmithReticleAllowedForOptic(arg1, arg0, arg2, "attachment1")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_32C6_, __FUNC_342C_, false)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "IsEquipped"
	local function __FUNC_35D3_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment1", 0.000000)
		if not registerVal3 then
			registerVal3 = IsGunsmithReticleAllowedForOptic(arg0, arg2, arg1, "attachment1")
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_35D3_
	local registerVal10 = {}
	registerVal10.stateName = "Locked"
	local function __FUNC_36A9_(arg0, arg2, arg3)
		return IsAttachmentSlotLocked(arg2, arg1, 0.000000)
	end

	registerVal10.condition = __FUNC_36A9_
	local registerVal11 = {}
	registerVal11.stateName = "IsEquippedNoHintText"
	local function __FUNC_3711_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment1", 0.000000)
		if not registerVal3 then
			registerVal3 = IsGunsmithReticleAllowedForOptic(arg0, arg2, arg1, "attachment1")
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_3711_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_37ED_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment1"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "attachment1", true, __FUNC_37ED_)
	registerVal2:addElement(registerVal5)
	registerVal2.Optic = registerVal5
	registerVal6 = CoD.WeaponBuildKitsAttachmentButton.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 112.670000, 176.670000)
	registerVal6:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_390D_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_390D_)
	local function __FUNC_395E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "2", registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "attachment2", true, __FUNC_395E_)
	local function __FUNC_3A75_(arg0)
		registerVal6.itemHintText:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_3A75_)
	local function __FUNC_3AE8_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "attachment2"
		CoD.Menu.UpdateButtonShownState(registerVal6, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal6, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal6:linkToElementModel(registerVal6, "attachment2", true, __FUNC_3AE8_)
	local function __FUNC_3D11_(arg0, arg2)
		Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "2", arg1)
		EnableMouseButtonOnElement(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("gunsmith_remove_item", __FUNC_3D11_)
	local function __FUNC_3DFA_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		Gunsmith_SetSelectedItemName(registerVal2, arg2, "attachment", "2", arg1)
		SetHintText(registerVal2, arg2, arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_3DFA_)
	local function __FUNC_40E3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_40E3_)
	local function __FUNC_41B2_(arg0, arg1, arg2, arg3)
		Gunsmith_SetWeaponAttachmentType(registerVal2, arg0, "attachment", "2", "true", arg2)
		NavigateToMenu(registerVal2, "WeaponBuildKitsAttachmentSelect", true, arg2)
		return true
	end

	local function __FUNC_42B4_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_41B2_, __FUNC_42B4_, false)
	local function __FUNC_43B2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment2", 0.000000)
		if registerVal4 then
			Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "2", arg2)
			return true
		end
	end

	local function __FUNC_448C_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment2", 0.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_43B2_, __FUNC_448C_, false)
	local function __FUNC_45F2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment2", 0.000000)
		if registerVal4 then
			NavigateToMenu(registerVal2, "GunsmithAttachmentVariantSelect", true, arg2)
			return true
		end
	end

	local function __FUNC_46DC_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment2", 0.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_45F2_, __FUNC_46DC_, false)
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "IsEquipped"
	local function __FUNC_4839_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment2", 0.000000)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_4839_
	registerVal11 = {}
	registerVal11.stateName = "Locked"
	local function __FUNC_48BF_(arg0, arg2, arg3)
		return IsAttachmentSlotLocked(arg2, arg1, 1.000000)
	end

	registerVal11.condition = __FUNC_48BF_
	local registerVal12 = {}
	registerVal12.stateName = "IsEquippedNoHintText"
	local function __FUNC_4925_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_4925_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_4971_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment2"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "attachment2", true, __FUNC_4971_)
	registerVal2:addElement(registerVal6)
	registerVal2.Attachment1 = registerVal6
	registerVal7 = CoD.WeaponBuildKitsAttachmentButton.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 180.670000, 244.670000)
	registerVal7:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_4A91_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_4A91_)
	local function __FUNC_4AE2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "3", registerVal1)))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "attachment3", true, __FUNC_4AE2_)
	local function __FUNC_4BF9_(arg0)
		registerVal7.itemHintText:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_4BF9_)
	local function __FUNC_4C6C_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "attachment3"
		CoD.Menu.UpdateButtonShownState(registerVal7, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal7, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal7:linkToElementModel(registerVal7, "attachment3", true, __FUNC_4C6C_)
	local function __FUNC_4E95_(arg0, arg2)
		Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "3", arg1)
		EnableMouseButtonOnElement(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("gunsmith_remove_item", __FUNC_4E95_)
	local function __FUNC_4F7E_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		Gunsmith_SetSelectedItemName(registerVal2, arg2, "attachment", "3", arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_4F7E_)
	local function __FUNC_523E_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_523E_)
	local function __FUNC_530E_(arg0, arg1, arg2, arg3)
		Gunsmith_SetWeaponAttachmentType(registerVal2, arg0, "attachment", "3", "true", arg2)
		NavigateToMenu(registerVal2, "WeaponBuildKitsAttachmentSelect", true, arg2)
		return true
	end

	local function __FUNC_5410_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_530E_, __FUNC_5410_, false)
	local function __FUNC_550E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment3", 0.000000)
		if registerVal4 then
			Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "3", arg2)
			return true
		end
	end

	local function __FUNC_55E8_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment3", 0.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_550E_, __FUNC_55E8_, false)
	local function __FUNC_574E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment3", 0.000000)
		if registerVal4 then
			NavigateToMenu(registerVal2, "GunsmithAttachmentVariantSelect", true, arg2)
			return true
		end
	end

	local function __FUNC_5838_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment3", 0.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_574E_, __FUNC_5838_, false)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "IsEquipped"
	local function __FUNC_5995_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment3", 0.000000)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_5995_
	registerVal12 = {}
	registerVal12.stateName = "Locked"
	local function __FUNC_5A1B_(arg0, arg2, arg3)
		return IsAttachmentSlotLocked(arg2, arg1, 2.000000)
	end

	registerVal12.condition = __FUNC_5A1B_
	local registerVal13 = {}
	registerVal13.stateName = "IsEquippedNoHintText"
	local function __FUNC_5A81_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_5A81_
	registerVal10 = {registerVal11, registerVal12, registerVal13}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_5ACD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment3"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "attachment3", true, __FUNC_5ACD_)
	registerVal2:addElement(registerVal7)
	registerVal2.Attachment2 = registerVal7
	registerVal8 = CoD.WeaponBuildKitsAttachmentButton.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 249.670000, 313.670000)
	registerVal8:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_5BED_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_5BED_)
	local function __FUNC_5C3E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "4", registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "attachment4", true, __FUNC_5C3E_)
	local function __FUNC_5D55_(arg0)
		registerVal8.itemHintText:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_5D55_)
	local function __FUNC_5DC8_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "attachment4"
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal8:linkToElementModel(registerVal8, "attachment4", true, __FUNC_5DC8_)
	local function __FUNC_5FF1_(arg0, arg2)
		Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "4", arg1)
		EnableMouseButtonOnElement(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("gunsmith_remove_item", __FUNC_5FF1_)
	local function __FUNC_60DA_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		Gunsmith_SetSelectedItemName(registerVal2, arg2, "attachment", "4", arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_60DA_)
	local function __FUNC_639A_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_639A_)
	local function __FUNC_646A_(arg0, arg1, arg2, arg3)
		Gunsmith_SetWeaponAttachmentType(registerVal2, arg0, "attachment", "4", "true", arg2)
		NavigateToMenu(registerVal2, "WeaponBuildKitsAttachmentSelect", true, arg2)
		return true
	end

	local function __FUNC_656C_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_646A_, __FUNC_656C_, false)
	local function __FUNC_666A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment4", 0.000000)
		if registerVal4 then
			Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "4", arg2)
			return true
		end
	end

	local function __FUNC_6744_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment4", 0.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_666A_, __FUNC_6744_, false)
	local function __FUNC_68AA_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment4", 0.000000)
		if registerVal4 then
			NavigateToMenu(registerVal2, "GunsmithAttachmentVariantSelect", true, arg2)
			return true
		end
	end

	local function __FUNC_6994_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment4", 0.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_68AA_, __FUNC_6994_, false)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "IsEquipped"
	local function __FUNC_6AF1_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment4", 0.000000)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_6AF1_
	registerVal13 = {}
	registerVal13.stateName = "Locked"
	local function __FUNC_6B77_(arg0, arg2, arg3)
		return IsAttachmentSlotLocked(arg2, arg1, 3.000000)
	end

	registerVal13.condition = __FUNC_6B77_
	local registerVal14 = {}
	registerVal14.stateName = "IsEquippedNoHintText"
	local function __FUNC_6BDD_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_6BDD_
	registerVal11 = {registerVal12, registerVal13, registerVal14}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_6C29_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment4"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "attachment4", true, __FUNC_6C29_)
	registerVal2:addElement(registerVal8)
	registerVal2.Attachment3 = registerVal8
	registerVal9 = CoD.WeaponBuildKitsAttachmentButton.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 320.100000, 384.100000)
	registerVal9:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_6D49_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_6D49_)
	local function __FUNC_6D9A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "5", registerVal1)))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "attachment5", true, __FUNC_6D9A_)
	local function __FUNC_6EB1_(arg0)
		registerVal9.itemHintText:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_6EB1_)
	local function __FUNC_6F24_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "attachment5"
		CoD.Menu.UpdateButtonShownState(registerVal9, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal9, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal9:linkToElementModel(registerVal9, "attachment5", true, __FUNC_6F24_)
	local function __FUNC_714D_(arg0, arg2)
		Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "5", arg1)
		EnableMouseButtonOnElement(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("gunsmith_remove_item", __FUNC_714D_)
	local function __FUNC_7236_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		Gunsmith_SetSelectedItemName(registerVal2, arg2, "attachment", "5", arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal9:registerEventHandler("gain_focus", __FUNC_7236_)
	local function __FUNC_74F6_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_74F6_)
	local function __FUNC_75C6_(arg0, arg1, arg2, arg3)
		Gunsmith_SetWeaponAttachmentType(registerVal2, arg0, "attachment", "5", "true", arg2)
		NavigateToMenu(registerVal2, "WeaponBuildKitsAttachmentSelect", true, arg2)
		return true
	end

	local function __FUNC_76C8_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_75C6_, __FUNC_76C8_, false)
	local function __FUNC_77C6_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment5", 0.000000)
		if registerVal4 then
			Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "5", arg2)
			return true
		end
	end

	local function __FUNC_78A0_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment5", 0.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_77C6_, __FUNC_78A0_, false)
	local function __FUNC_7A06_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment5", 0.000000)
		if registerVal4 then
			NavigateToMenu(registerVal2, "GunsmithAttachmentVariantSelect", true, arg2)
			return true
		end
	end

	local function __FUNC_7AF0_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment5", 0.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_7A06_, __FUNC_7AF0_, false)
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "IsEquipped"
	local function __FUNC_7C4D_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment5", 0.000000)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_7C4D_
	registerVal14 = {}
	registerVal14.stateName = "Locked"
	local function __FUNC_7CD3_(arg0, arg2, arg3)
		return IsAttachmentSlotLocked(arg2, arg1, 4.000000)
	end

	registerVal14.condition = __FUNC_7CD3_
	local registerVal15 = {}
	registerVal15.stateName = "IsEquippedNoHintText"
	local function __FUNC_7D39_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_7D39_
	registerVal12 = {registerVal13, registerVal14, registerVal15}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_7D85_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment5"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "attachment5", true, __FUNC_7D85_)
	registerVal2:addElement(registerVal9)
	registerVal2.Attachment4 = registerVal9
	registerVal10 = CoD.WeaponBuildKitsAttachmentButton.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 389.100000, 453.100000)
	registerVal10:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_7EA5_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_7EA5_)
	local function __FUNC_7EF6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "6", registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "attachment6", true, __FUNC_7EF6_)
	local function __FUNC_800D_(arg0)
		registerVal10.itemHintText:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_800D_)
	local function __FUNC_8080_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "attachment6"
		CoD.Menu.UpdateButtonShownState(registerVal10, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal10, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal10:linkToElementModel(registerVal10, "attachment6", true, __FUNC_8080_)
	local function __FUNC_82A9_(arg0, arg2)
		Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "6", arg1)
		EnableMouseButtonOnElement(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("gunsmith_remove_item", __FUNC_82A9_)
	local function __FUNC_8392_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		Gunsmith_SetSelectedItemName(registerVal2, arg2, "attachment", "6", arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal10:registerEventHandler("gain_focus", __FUNC_8392_)
	local function __FUNC_8652_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_8652_)
	local function __FUNC_8722_(arg0, arg1, arg2, arg3)
		Gunsmith_SetWeaponAttachmentType(registerVal2, arg0, "attachment", "6", "true", arg2)
		NavigateToMenu(registerVal2, "WeaponBuildKitsAttachmentSelect", true, arg2)
		return true
	end

	local function __FUNC_8824_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal10, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_8722_, __FUNC_8824_, false)
	local function __FUNC_8922_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment6", 0.000000)
		if registerVal4 then
			Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "6", arg2)
			return true
		end
	end

	local function __FUNC_89FC_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment6", 0.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal10, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_8922_, __FUNC_89FC_, false)
	local function __FUNC_8B62_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment6", 0.000000)
		if registerVal4 then
			NavigateToMenu(registerVal2, "GunsmithAttachmentVariantSelect", true, arg2)
			return true
		end
	end

	local function __FUNC_8C4C_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment6", 0.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal10, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_8B62_, __FUNC_8C4C_, false)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "IsEquipped"
	local function __FUNC_8DA9_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment6", 0.000000)
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_8DA9_
	registerVal15 = {}
	registerVal15.stateName = "Locked"
	local function __FUNC_8E2F_(arg0, arg2, arg3)
		return IsAttachmentSlotLocked(arg2, arg1, 5.000000)
	end

	registerVal15.condition = __FUNC_8E2F_
	local registerVal16 = {}
	registerVal16.stateName = "IsEquippedNoHintText"
	local function __FUNC_8E95_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_8E95_
	registerVal13 = {registerVal14, registerVal15, registerVal16}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_8EE1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment6"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "attachment6", true, __FUNC_8EE1_)
	registerVal2:addElement(registerVal10)
	registerVal2.Attachment5 = registerVal10
	registerVal11 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 501.770000, 579.770000)
	registerVal11:setTopBottom(true, false, 0.000000, 17.000000)
	registerVal11.header:setText(Engine.Localize("MENU_PAINTSHOP_PAINTJOB"))
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "BreadcrumbVisible"
	local function __FUNC_9001_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_9001_
	registerVal14 = {registerVal15}
	registerVal11:mergeStateConditions(registerVal14)
	registerVal2:addElement(registerVal11)
	registerVal2.paintjobCategoryHeader = registerVal11
	registerVal12 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 611.440000, 675.440000)
	registerVal12:setTopBottom(true, false, 0.000000, 17.000000)
	registerVal12.header:setText(Engine.Localize("MPUI_CAMO_CAPS"))
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "BreadcrumbVisible"
	local function __FUNC_904D_(arg0, arg2, arg3)
		return Gunsmith_AnyCamosNew(arg1)
	end

	registerVal16.condition = __FUNC_904D_
	registerVal15 = {registerVal16}
	registerVal12:mergeStateConditions(registerVal15)
	registerVal2:addElement(registerVal12)
	registerVal2.camoCategoryHeader = registerVal12
	registerVal13 = CoD.GunsmithPaintjobButton.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 501.770000, 565.770000)
	registerVal13:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_90A6_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:linkToElementModel(registerVal2, nil, false, __FUNC_90A6_)
	local function __FUNC_90F6_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "paintjobIndex"
		CoD.Menu.UpdateButtonShownState(registerVal13, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal13:linkToElementModel(registerVal13, "paintjobIndex", true, __FUNC_90F6_)
	local function __FUNC_92B7_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "paintjobSlot"
		CoD.Menu.UpdateButtonShownState(registerVal13, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal13:linkToElementModel(registerVal13, "paintjobSlot", true, __FUNC_92B7_)
	local function __FUNC_9476_(arg0, arg2)
		Gunsmith_ClearVariantPaintjobSlot(registerVal2, arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("gunsmith_remove_item", __FUNC_9476_)
	local function __FUNC_9520_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		Gunsmith_SetSelectedItemName(registerVal2, arg2, "paintjob", "", arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal13:registerEventHandler("gain_focus", __FUNC_9520_)
	local function __FUNC_9777_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal13:registerEventHandler("lose_focus", __FUNC_9777_)
	local function __FUNC_9846_(arg0, arg1, arg2, arg3)
		local registerVal4 = ShouldHidePaintJobOptionInZM(arg1, arg0, arg2)
		if not registerVal4 then
			Gunsmith_OpenPaintjobSelector(registerVal2, arg0, arg2)
			NavigateToMenu(registerVal2, "GunsmithPaintjobSelect", true, arg2)
			return true
		end
	end

	local function __FUNC_9945_(arg0, arg1, arg2)
		local registerVal3 = ShouldHidePaintJobOptionInZM(arg1, arg0, arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal13, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_9846_, __FUNC_9945_, false)
	local function __FUNC_9A8C_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "paintjobIndex", 15.000000)
		registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "paintjobSlot", 15.000000)
		if not registerVal4 and not registerVal4 then
			Gunsmith_ClearVariantPaintjobSlot(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_9B92_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "paintjobIndex", 15.000000)
		registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "paintjobSlot", 15.000000)
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal13, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_9A8C_, __FUNC_9B92_, false)
	registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "NotVisibleOffline"
	local function __FUNC_9D2A_(arg0, arg2, arg3)
		return ShouldHidePaintJobOptionInZM(arg0, arg2, arg1)
	end

	registerVal17.condition = __FUNC_9D2A_
	local registerVal18 = {}
	registerVal18.stateName = "IsEquipped"
	local function __FUNC_9D92_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "paintjobSlot", 15.000000)
		if not registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "paintjobIndex", 15.000000)
		else
		end
		return true
	end

	registerVal18.condition = __FUNC_9D92_
	registerVal16 = {registerVal17, registerVal18}
	registerVal13:mergeStateConditions(registerVal16)
	local function __FUNC_9E5B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "paintjobSlot"
		arg0:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "paintjobSlot", true, __FUNC_9E5B_)
	local function __FUNC_9F7A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "paintjobIndex"
		arg0:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "paintjobIndex", true, __FUNC_9F7A_)
	registerVal2:addElement(registerVal13)
	registerVal2.paintjob = registerVal13
	registerVal14 = CoD.WeaponBuildKitsAttachmentButton.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 611.440000, 675.440000)
	registerVal14:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_A09B_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, nil, false, __FUNC_A09B_)
	local function __FUNC_A0EA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.attachmentImage:setImage(RegisterImage(GetCamoImageFromIndex(arg1, registerVal1)))
		end
	end

	registerVal14:linkToElementModel(registerVal2, "camoIndex", true, __FUNC_A0EA_)
	local function __FUNC_A1EC_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "camoIndex"
		CoD.Menu.UpdateButtonShownState(registerVal14, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal14:linkToElementModel(registerVal14, "camoIndex", true, __FUNC_A1EC_)
	local function __FUNC_A3AB_(arg0, arg2)
		Gunsmith_ClearCamo(registerVal2, arg0, arg1)
		EnableMouseButtonOnElement(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("gunsmith_remove_item", __FUNC_A3AB_)
	local function __FUNC_A479_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		Gunsmith_SetSelectedItemName(registerVal2, arg2, "camo", "", arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		return registerVal3
	end

	registerVal14:registerEventHandler("gain_focus", __FUNC_A479_)
	local function __FUNC_A6CB_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal14:registerEventHandler("lose_focus", __FUNC_A6CB_)
	local function __FUNC_A79A_(arg0, arg1, arg2, arg3)
		Gunsmith_SetWeaponCamoModel(registerVal2, arg0, arg2)
		NavigateToMenu(registerVal2, "GunsmithCamoSelect", true, arg2)
		return true
	end

	local function __FUNC_A851_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal14, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_A79A_, __FUNC_A851_, false)
	local function __FUNC_A94E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "camoIndex", 0.000000)
		if registerVal4 then
			Gunsmith_ClearCamo(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_AA0D_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "camoIndex", 0.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal14, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_A94E_, __FUNC_AA0D_, false)
	registerVal17 = {}
	registerVal18 = {}
	registerVal18.stateName = "IsEquipped"
	local function __FUNC_AB70_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "camoIndex", 0.000000)
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_AB70_
	local registerVal19 = {}
	registerVal19.stateName = "IsEquippedNoHintText"
	local function __FUNC_ABF5_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal19.condition = __FUNC_ABF5_
	registerVal17 = {registerVal18, registerVal19}
	registerVal14:mergeStateConditions(registerVal17)
	local function __FUNC_AC41_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "camoIndex"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, "camoIndex", true, __FUNC_AC41_)
	registerVal2:addElement(registerVal14)
	registerVal2.Camo = registerVal14
	registerVal15 = {}
	registerVal15.right = registerVal6
	registerVal5.navigation = registerVal15
	registerVal15 = {}
	registerVal15.left = registerVal5
	registerVal15.right = registerVal7
	registerVal6.navigation = registerVal15
	registerVal15 = {}
	registerVal15.left = registerVal6
	registerVal15.right = registerVal8
	registerVal7.navigation = registerVal15
	registerVal15 = {}
	registerVal15.left = registerVal7
	registerVal15.right = registerVal9
	registerVal8.navigation = registerVal15
	registerVal15 = {}
	registerVal15.left = registerVal8
	registerVal15.right = registerVal10
	registerVal9.navigation = registerVal15
	registerVal15 = {}
	registerVal15.left = registerVal9
	registerVal15.right = registerVal13
	registerVal10.navigation = registerVal15
	registerVal15 = {}
	registerVal15.left = registerVal10
	registerVal15.right = registerVal14
	registerVal13.navigation = registerVal15
	registerVal15 = {}
	registerVal15.left = registerVal13
	registerVal14.navigation = registerVal15
	registerVal15 = {}
	registerVal16 = {}
	local function __FUNC_AD5F_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.opticCategoryHeader:setLeftRight(true, false, 1.000000, 64.000000)
		registerVal2.opticCategoryHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.opticCategoryHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.attachCategoryHeader:setLeftRight(true, true, 112.670000, -245.900000)
		registerVal2.attachCategoryHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.attachCategoryHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Optic:setLeftRight(true, false, 0.000000, 64.000000)
		registerVal2.Optic:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Optic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Attachment1:setLeftRight(true, false, 111.670000, 175.670000)
		registerVal2.Attachment1:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Attachment2:setLeftRight(true, false, 180.670000, 244.670000)
		registerVal2.Attachment2:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Attachment3:setLeftRight(true, false, 249.670000, 313.670000)
		registerVal2.Attachment3:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Attachment4:setLeftRight(true, false, 320.100000, 384.100000)
		registerVal2.Attachment4:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Attachment5:setLeftRight(true, false, 389.100000, 453.100000)
		registerVal2.Attachment5:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment5:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.paintjobCategoryHeader:setLeftRight(true, false, 501.770000, 579.770000)
		registerVal2.paintjobCategoryHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.paintjobCategoryHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.camoCategoryHeader:setLeftRight(true, false, 611.440000, 675.440000)
		registerVal2.camoCategoryHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.camoCategoryHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.paintjob:setLeftRight(true, false, 501.770000, 565.770000)
		registerVal2.paintjob:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.paintjob:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Camo:setLeftRight(true, false, 611.440000, 675.440000)
		registerVal2.Camo:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Camo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_AD5F_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_B69F_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.opticCategoryHeader:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.attachCategoryHeader:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Optic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Attachment1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Attachment2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Attachment3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Attachment4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Attachment5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.paintjobCategoryHeader:setLeftRight(true, false, 1.000000, 79.000000)
		registerVal2.paintjobCategoryHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.paintjobCategoryHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.camoCategoryHeader:setLeftRight(true, false, 110.670000, 176.670000)
		registerVal2.camoCategoryHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.camoCategoryHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.paintjob:setLeftRight(true, false, 1.000000, 65.000000)
		registerVal2.paintjob:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.paintjob:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Camo:setLeftRight(true, false, 110.670000, 174.670000)
		registerVal2.Camo:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Camo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_B69F_
	registerVal15.SpecialWeapon = registerVal16
	registerVal16 = {}
	local function __FUNC_BD1E_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.opticCategoryHeader:setLeftRight(true, false, 1.000000, 64.000000)
		registerVal2.opticCategoryHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.opticCategoryHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.attachCategoryHeader:setLeftRight(true, true, 112.670000, -455.330000)
		registerVal2.attachCategoryHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.attachCategoryHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Optic:setLeftRight(true, false, 0.000000, 64.000000)
		registerVal2.Optic:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Optic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Attachment1:setLeftRight(true, false, 111.670000, 175.670000)
		registerVal2.Attachment1:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Attachment2:setLeftRight(true, false, 180.670000, 244.670000)
		registerVal2.Attachment2:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Attachment3:setLeftRight(true, false, 249.670000, 313.670000)
		registerVal2.Attachment3:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Attachment4:setLeftRight(true, false, 320.100000, 384.100000)
		registerVal2.Attachment4:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Attachment5:setLeftRight(true, false, 389.100000, 453.100000)
		registerVal2.Attachment5:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.paintjobCategoryHeader:setLeftRight(true, false, 294.100000, 372.100000)
		registerVal2.paintjobCategoryHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.paintjobCategoryHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.camoCategoryHeader:setLeftRight(true, false, 402.100000, 466.100000)
		registerVal2.camoCategoryHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.paintjob:setLeftRight(true, false, 294.100000, 358.100000)
		registerVal2.paintjob:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.paintjob:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Camo:setLeftRight(true, false, 402.100000, 466.100000)
		registerVal2.Camo:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Camo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_BD1E_
	registerVal15.Handguns = registerVal16
	registerVal16 = {}
	local function __FUNC_C643_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.opticCategoryHeader:setLeftRight(true, false, 1.000000, 64.000000)
		registerVal2.opticCategoryHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.opticCategoryHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.attachCategoryHeader:setLeftRight(true, true, 112.670000, -315.900000)
		registerVal2.attachCategoryHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.attachCategoryHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Optic:setLeftRight(true, false, 0.000000, 64.000000)
		registerVal2.Optic:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Optic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Attachment1:setLeftRight(true, false, 111.670000, 175.670000)
		registerVal2.Attachment1:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Attachment2:setLeftRight(true, false, 180.670000, 244.670000)
		registerVal2.Attachment2:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Attachment3:setLeftRight(true, false, 249.670000, 313.670000)
		registerVal2.Attachment3:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Attachment4:setLeftRight(true, false, 320.100000, 384.100000)
		registerVal2.Attachment4:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Attachment5:setLeftRight(true, false, 389.100000, 453.100000)
		registerVal2.Attachment5:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.paintjobCategoryHeader:setLeftRight(true, false, 501.770000, 579.770000)
		registerVal2.paintjobCategoryHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.paintjobCategoryHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.camoCategoryHeader:setLeftRight(true, false, 611.440000, 675.440000)
		registerVal2.camoCategoryHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.camoCategoryHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.paintjob:setLeftRight(true, false, 501.770000, 565.770000)
		registerVal2.paintjob:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.paintjob:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Camo:setLeftRight(true, false, 611.440000, 675.440000)
		registerVal2.Camo:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Camo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_C643_
	registerVal15.Snipers = registerVal16
	registerVal2.clipsPerState = registerVal15
	registerVal17 = {}
	registerVal18 = {}
	registerVal18.stateName = "SpecialWeapon"
	local function __FUNC_CF83_(arg0, arg2, arg3)
		return Gunsmith_IsSpecialWeapon(arg0, arg2, arg1)
	end

	registerVal18.condition = __FUNC_CF83_
	registerVal19 = {}
	registerVal19.stateName = "Handguns"
	local function __FUNC_CFE6_(arg0, arg2, arg3)
		return Gunsmith_IsHandguns(arg0, arg2, arg1)
	end

	registerVal19.condition = __FUNC_CFE6_
	local registerVal20 = {}
	registerVal20.stateName = "Snipers"
	local function __FUNC_D045_(arg0, arg2, arg3)
		return Gunsmith_IsSnipers(arg0, arg2, arg1)
	end

	registerVal20.condition = __FUNC_D045_
	registerVal17 = {registerVal18, registerVal19, registerVal20}
	registerVal2:mergeStateConditions(registerVal17)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	local function __FUNC_D0A4_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "SpecialWeapon")
		if registerVal2 then
			MakeElementNotFocusable(registerVal2, "Attachment1", arg1)
			MakeElementNotFocusable(registerVal2, "Attachment2", arg1)
			MakeElementNotFocusable(registerVal2, "Attachment3", arg1)
			MakeElementNotFocusable(registerVal2, "Attachment4", arg1)
			MakeElementNotFocusable(registerVal2, "Attachment5", arg1)
			MakeElementNotFocusable(registerVal2, "Optic", arg1)
		else
			registerVal2 = IsElementInState(arg0, "DefaultState")
			if registerVal2 then
			else
				registerVal2 = IsElementInState(arg0, "Handguns")
				if registerVal2 then
					MakeElementNotFocusable(registerVal2, "Attachment3", arg1)
					MakeElementNotFocusable(registerVal2, "Attachment4", arg1)
					MakeElementNotFocusable(registerVal2, "Attachment5", arg1)
				end
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_D0A4_)
	registerVal5.id = "Optic"
	registerVal6.id = "Attachment1"
	registerVal7.id = "Attachment2"
	registerVal8.id = "Attachment3"
	registerVal9.id = "Attachment4"
	registerVal10.id = "Attachment5"
	registerVal13.id = "paintjob"
	registerVal14.id = "Camo"
	local function __FUNC_D2C6_(arg0, arg1)
		local registerVal2 = arg0.Optic:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_D2C6_)
	local function __FUNC_D3C5_(arg0)
		arg0.opticCategoryHeader:close()
		arg0.attachCategoryHeader:close()
		arg0.Optic:close()
		arg0.Attachment1:close()
		arg0.Attachment2:close()
		arg0.Attachment3:close()
		arg0.Attachment4:close()
		arg0.Attachment5:close()
		arg0.paintjobCategoryHeader:close()
		arg0.camoCategoryHeader:close()
		arg0.paintjob:close()
		arg0.Camo:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D3C5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


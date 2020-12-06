-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithAttachmentButton")
require("ui.uieditor.menus.Craft.Gunsmith.GunsmithAttachmentSelect")
require("ui.uieditor.menus.Craft.Gunsmith.GunsmithReticleSelect")
require("ui.uieditor.menus.Craft.Gunsmith.GunsmithAttachmentVariantSelect")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithPaintjobButton")
require("ui.uieditor.menus.Craft.Gunsmith.GunsmithPaintjobSelect")
require("ui.uieditor.menus.Craft.Gunsmith.GunsmithCamoSelect")
require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithVariantAttachmentHeader")
require("ui.uieditor.menus.Craft.Gunsmith.GunsmithSnapshot")
local function __FUNC_4AA_(arg0, arg1, arg2)
	arg0.snapshot.removeButton:close()
end

local function __FUNC_52B_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_4AA_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.GunsmithVariantAttachments = registerVal3
local function __FUNC_59B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithVariantAttachments)
	registerVal2.id = "GunsmithVariantAttachments"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 857.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 93.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.GunsmithAttachmentButton.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal3:setTopBottom(true, false, 23.000000, 87.000000)
	registerVal3.opticIndicator:setAlpha(0.410000)
	local function __FUNC_3217_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_3217_)
	local function __FUNC_3266_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "1", registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "attachment1", true, __FUNC_3266_)
	local function __FUNC_337D_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "attachment1"
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal3, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal3:linkToElementModel(registerVal3, "attachment1", true, __FUNC_337D_)
	local function __FUNC_35A5_(arg0, arg2)
		Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "1", arg1)
		EnableMouseButtonOnElement(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("gunsmith_remove_item", __FUNC_35A5_)
	local function __FUNC_368E_(arg2, arg3)
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

	registerVal3:registerEventHandler("gain_focus", __FUNC_368E_)
	local function __FUNC_3972_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("lose_focus", __FUNC_3972_)
	local function __FUNC_3A42_(arg0, arg1, arg2, arg3)
		Gunsmith_SetWeaponAttachmentType(registerVal2, arg0, "optic", "1", "false", arg2)
		NavigateToMenu(registerVal2, "GunsmithAttachmentSelect", true, arg2)
		return true
	end

	local function __FUNC_3B39_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_3A42_, __FUNC_3B39_, false)
	local function __FUNC_3C36_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment1", 0.000000)
		if registerVal4 then
			Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "1", arg2)
			return true
		end
	end

	local function __FUNC_3D10_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment1", 0.000000)
		if registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_3C36_, __FUNC_3D10_, true)
	local function __FUNC_3E76_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment1", 0.000000)
		registerVal4 = IsGunsmithReticleAllowedForOptic(arg1, arg0, arg2, "attachment1")
		if registerVal4 and registerVal4 then
			Gunsmith_SetWeaponReticleModel(registerVal2, arg0, arg2)
			NavigateToMenu(registerVal2, "GunsmithReticleSelect", true, arg2)
			return true
		end
	end

	local function __FUNC_3FDC_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment1", 0.000000)
		registerVal3 = IsGunsmithReticleAllowedForOptic(arg1, arg0, arg2, "attachment1")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal3, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, nil, __FUNC_3E76_, __FUNC_3FDC_, false)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "IsEquipped"
	local function __FUNC_4183_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment1", 0.000000)
		if not registerVal3 then
			registerVal3 = IsGunsmithReticleAllowedForOptic(arg0, arg2, arg1, "attachment1")
		else
		end
		return true
	end

	registerVal7.condition = __FUNC_4183_
	local registerVal8 = {}
	registerVal8.stateName = "IsEquippedAndHideHintText"
	local function __FUNC_4259_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment1", 0.000000)
		if not registerVal3 then
			registerVal3 = IsGunsmithReticleAllowedForOptic(arg0, arg2, arg1, "attachment1")
		else
		end
		return true
	end

	registerVal8.condition = __FUNC_4259_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_4335_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment1"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "attachment1", true, __FUNC_4335_)
	registerVal2:addElement(registerVal3)
	registerVal2.Optic = registerVal3
	local registerVal4 = CoD.GunsmithAttachmentButton.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 111.670000, 175.670000)
	registerVal4:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_4455_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_4455_)
	local function __FUNC_44A6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "2", registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "attachment2", true, __FUNC_44A6_)
	local function __FUNC_45BD_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "attachment2"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal4:linkToElementModel(registerVal4, "attachment2", true, __FUNC_45BD_)
	local function __FUNC_47E5_(arg0, arg2)
		Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "2", arg1)
		EnableMouseButtonOnElement(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("gunsmith_remove_item", __FUNC_47E5_)
	local function __FUNC_48CE_(arg2, arg3)
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

	registerVal4:registerEventHandler("gain_focus", __FUNC_48CE_)
	local function __FUNC_4BB7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_4BB7_)
	local function __FUNC_4C86_(arg0, arg1, arg2, arg3)
		Gunsmith_SetWeaponAttachmentType(registerVal2, arg0, "attachment", "2", "false", arg2)
		NavigateToMenu(registerVal2, "GunsmithAttachmentSelect", true, arg2)
		return true
	end

	local function __FUNC_4D82_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_4C86_, __FUNC_4D82_, false)
	local function __FUNC_4E7E_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment2", 0.000000)
		if registerVal4 then
			Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "2", arg2)
			return true
		end
	end

	local function __FUNC_4F58_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment2", 0.000000)
		if registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_4E7E_, __FUNC_4F58_, true)
	local function __FUNC_50BE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment2", 0.000000)
		registerVal4 = Gunsmith_DoesACVExistForAttachment(arg1, arg0, arg2, "attachment2")
		if registerVal4 and registerVal4 then
			NavigateToMenu(registerVal2, "GunsmithAttachmentVariantSelect", true, arg2)
			return true
		end
	end

	local function __FUNC_51F4_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment2", 0.000000)
		registerVal3 = Gunsmith_DoesACVExistForAttachment(arg1, arg0, arg2, "attachment2")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_50BE_, __FUNC_51F4_, false)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "IsEquipped"
	local function __FUNC_539D_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment2", 0.000000)
		if not registerVal3 then
			registerVal3 = Gunsmith_DoesACVExistForAttachment(arg0, arg2, arg1, "attachment2")
		else
		end
		return true
	end

	registerVal8.condition = __FUNC_539D_
	local registerVal9 = {}
	registerVal9.stateName = "IsEquippedAndHideHintText"
	local function __FUNC_5477_(arg0, arg2, arg3)
		local registerVal3 = Gunsmith_DoesACVExistForAttachment(arg0, arg2, arg1, "attachment2")
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_5477_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_5501_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment2"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "attachment2", true, __FUNC_5501_)
	registerVal2:addElement(registerVal4)
	registerVal2.Attachment1 = registerVal4
	local registerVal5 = CoD.GunsmithAttachmentButton.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 180.670000, 244.670000)
	registerVal5:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_5621_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_5621_)
	local function __FUNC_5672_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "3", registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "attachment3", true, __FUNC_5672_)
	local function __FUNC_5789_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "attachment3"
		CoD.Menu.UpdateButtonShownState(registerVal5, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal5, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal5:linkToElementModel(registerVal5, "attachment3", true, __FUNC_5789_)
	local function __FUNC_59B1_(arg0, arg2)
		Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "3", arg1)
		EnableMouseButtonOnElement(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("gunsmith_remove_item", __FUNC_59B1_)
	local function __FUNC_5A9A_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		Gunsmith_SetSelectedItemName(registerVal2, arg2, "attachment", "3", arg1)
		SetHintText(registerVal2, arg2, arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal5:registerEventHandler("gain_focus", __FUNC_5A9A_)
	local function __FUNC_5D83_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal5:registerEventHandler("lose_focus", __FUNC_5D83_)
	local function __FUNC_5E52_(arg0, arg1, arg2, arg3)
		Gunsmith_SetWeaponAttachmentType(registerVal2, arg0, "attachment", "3", "false", arg2)
		NavigateToMenu(registerVal2, "GunsmithAttachmentSelect", true, arg2)
		return true
	end

	local function __FUNC_5F4E_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_5E52_, __FUNC_5F4E_, false)
	local function __FUNC_604A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment3", 0.000000)
		if registerVal4 then
			Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "3", arg2)
			return true
		end
	end

	local function __FUNC_6124_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment3", 0.000000)
		if registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_604A_, __FUNC_6124_, true)
	local function __FUNC_628A_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment3", 0.000000)
		registerVal4 = Gunsmith_DoesACVExistForAttachment(arg1, arg0, arg2, "attachment3")
		if registerVal4 and registerVal4 then
			NavigateToMenu(registerVal2, "GunsmithAttachmentVariantSelect", true, arg2)
			return true
		end
	end

	local function __FUNC_63C0_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment3", 0.000000)
		registerVal3 = Gunsmith_DoesACVExistForAttachment(arg1, arg0, arg2, "attachment3")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal5, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_628A_, __FUNC_63C0_, false)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "IsEquipped"
	local function __FUNC_6569_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment3", 0.000000)
		if not registerVal3 then
			registerVal3 = Gunsmith_DoesACVExistForAttachment(arg0, arg2, arg1, "attachment3")
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_6569_
	local registerVal10 = {}
	registerVal10.stateName = "IsEquippedAndHideHintText"
	local function __FUNC_6643_(arg0, arg2, arg3)
		local registerVal3 = Gunsmith_DoesACVExistForAttachment(arg0, arg2, arg1, "attachment3")
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_6643_
	registerVal8 = {registerVal9, registerVal10}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_66CD_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment3"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "attachment3", true, __FUNC_66CD_)
	registerVal2:addElement(registerVal5)
	registerVal2.Attachment2 = registerVal5
	registerVal6 = CoD.GunsmithAttachmentButton.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 249.670000, 313.670000)
	registerVal6:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_67ED_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_67ED_)
	local function __FUNC_683E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "4", registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "attachment4", true, __FUNC_683E_)
	local function __FUNC_6955_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "attachment4"
		CoD.Menu.UpdateButtonShownState(registerVal6, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal6, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal6:linkToElementModel(registerVal6, "attachment4", true, __FUNC_6955_)
	local function __FUNC_6B7D_(arg0, arg2)
		Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "4", arg1)
		EnableMouseButtonOnElement(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("gunsmith_remove_item", __FUNC_6B7D_)
	local function __FUNC_6C66_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		Gunsmith_SetSelectedItemName(registerVal2, arg2, "attachment", "4", arg1)
		SetHintText(registerVal2, arg2, arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal6:registerEventHandler("gain_focus", __FUNC_6C66_)
	local function __FUNC_6F4F_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal6:registerEventHandler("lose_focus", __FUNC_6F4F_)
	local function __FUNC_701E_(arg0, arg1, arg2, arg3)
		Gunsmith_SetWeaponAttachmentType(registerVal2, arg0, "attachment", "4", "false", arg2)
		NavigateToMenu(registerVal2, "GunsmithAttachmentSelect", true, arg2)
		return true
	end

	local function __FUNC_711A_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_701E_, __FUNC_711A_, false)
	local function __FUNC_7216_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment4", 0.000000)
		if registerVal4 then
			Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "4", arg2)
			return true
		end
	end

	local function __FUNC_72F0_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment4", 0.000000)
		if registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_7216_, __FUNC_72F0_, true)
	local function __FUNC_7456_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment4", 0.000000)
		registerVal4 = Gunsmith_DoesACVExistForAttachment(arg1, arg0, arg2, "attachment4")
		if registerVal4 and registerVal4 then
			NavigateToMenu(registerVal2, "GunsmithAttachmentVariantSelect", true, arg2)
			return true
		end
	end

	local function __FUNC_758C_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment4", 0.000000)
		registerVal3 = Gunsmith_DoesACVExistForAttachment(arg1, arg0, arg2, "attachment4")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal6, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_7456_, __FUNC_758C_, false)
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "IsEquipped"
	local function __FUNC_7735_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment4", 0.000000)
		if not registerVal3 then
			registerVal3 = Gunsmith_DoesACVExistForAttachment(arg0, arg2, arg1, "attachment4")
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_7735_
	local registerVal11 = {}
	registerVal11.stateName = "IsEquippedAndHideHintText"
	local function __FUNC_780F_(arg0, arg2, arg3)
		local registerVal3 = Gunsmith_DoesACVExistForAttachment(arg0, arg2, arg1, "attachment4")
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_780F_
	registerVal9 = {registerVal10, registerVal11}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_7899_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment4"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "attachment4", true, __FUNC_7899_)
	registerVal2:addElement(registerVal6)
	registerVal2.Attachment3 = registerVal6
	registerVal7 = CoD.GunsmithAttachmentButton.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 320.100000, 384.100000)
	registerVal7:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_79B9_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_79B9_)
	local function __FUNC_7A0A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "5", registerVal1)))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "attachment5", true, __FUNC_7A0A_)
	local function __FUNC_7B21_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "attachment5"
		CoD.Menu.UpdateButtonShownState(registerVal7, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal7, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal7:linkToElementModel(registerVal7, "attachment5", true, __FUNC_7B21_)
	local function __FUNC_7D49_(arg0, arg2)
		Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "5", arg1)
		EnableMouseButtonOnElement(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("gunsmith_remove_item", __FUNC_7D49_)
	local function __FUNC_7E32_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		Gunsmith_SetSelectedItemName(registerVal2, arg2, "attachment", "5", arg1)
		SetHintText(registerVal2, arg2, arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal7:registerEventHandler("gain_focus", __FUNC_7E32_)
	local function __FUNC_811B_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("lose_focus", __FUNC_811B_)
	local function __FUNC_81EA_(arg0, arg1, arg2, arg3)
		Gunsmith_SetWeaponAttachmentType(registerVal2, arg0, "attachment", "5", "false", arg2)
		NavigateToMenu(registerVal2, "GunsmithAttachmentSelect", true, arg2)
		return true
	end

	local function __FUNC_82E6_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_81EA_, __FUNC_82E6_, false)
	local function __FUNC_83E2_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment5", 0.000000)
		if registerVal4 then
			Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "5", arg2)
			return true
		end
	end

	local function __FUNC_84BC_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment5", 0.000000)
		if registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_83E2_, __FUNC_84BC_, true)
	local function __FUNC_8622_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment5", 0.000000)
		registerVal4 = Gunsmith_DoesACVExistForAttachment(arg1, arg0, arg2, "attachment5")
		if registerVal4 and registerVal4 then
			NavigateToMenu(registerVal2, "GunsmithAttachmentVariantSelect", true, arg2)
			return true
		end
	end

	local function __FUNC_8758_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment5", 0.000000)
		registerVal3 = Gunsmith_DoesACVExistForAttachment(arg1, arg0, arg2, "attachment5")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal7, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_8622_, __FUNC_8758_, false)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "IsEquipped"
	local function __FUNC_8901_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment5", 0.000000)
		if not registerVal3 then
			registerVal3 = Gunsmith_DoesACVExistForAttachment(arg0, arg2, arg1, "attachment5")
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_8901_
	local registerVal12 = {}
	registerVal12.stateName = "IsEquippedAndHideHintText"
	local function __FUNC_89DB_(arg0, arg2, arg3)
		local registerVal3 = Gunsmith_DoesACVExistForAttachment(arg0, arg2, arg1, "attachment5")
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_89DB_
	registerVal10 = {registerVal11, registerVal12}
	registerVal7:mergeStateConditions(registerVal10)
	local function __FUNC_8A65_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment5"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:linkToElementModel(registerVal7, "attachment5", true, __FUNC_8A65_)
	registerVal2:addElement(registerVal7)
	registerVal2.Attachment4 = registerVal7
	registerVal8 = CoD.GunsmithAttachmentButton.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 389.100000, 453.100000)
	registerVal8:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_8B85_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_8B85_)
	local function __FUNC_8BD6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.attachmentImage:setImage(RegisterImage(GetAttachmentImageFromIndex(arg1, "6", registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "attachment6", true, __FUNC_8BD6_)
	local function __FUNC_8CED_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "attachment6"
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(registerVal8, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
	end

	registerVal8:linkToElementModel(registerVal8, "attachment6", true, __FUNC_8CED_)
	local function __FUNC_8F15_(arg0, arg2)
		Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "6", arg1)
		EnableMouseButtonOnElement(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("gunsmith_remove_item", __FUNC_8F15_)
	local function __FUNC_8FFE_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		Gunsmith_SetSelectedItemName(registerVal2, arg2, "attachment", "6", arg1)
		SetHintText(registerVal2, arg2, arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE)
		return registerVal3
	end

	registerVal8:registerEventHandler("gain_focus", __FUNC_8FFE_)
	local function __FUNC_92E7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal8:registerEventHandler("lose_focus", __FUNC_92E7_)
	local function __FUNC_93B6_(arg0, arg1, arg2, arg3)
		Gunsmith_SetWeaponAttachmentType(registerVal2, arg0, "attachment", "6", "false", arg2)
		NavigateToMenu(registerVal2, "GunsmithAttachmentSelect", true, arg2)
		return true
	end

	local function __FUNC_94B2_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_93B6_, __FUNC_94B2_, false)
	local function __FUNC_95AE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment6", 0.000000)
		if registerVal4 then
			Gunsmith_ClearAttachmentSlot(registerVal2, arg0, "6", arg2)
			return true
		end
	end

	local function __FUNC_9688_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment6", 0.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_95AE_, __FUNC_9688_, false)
	local function __FUNC_97EE_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment6", 0.000000)
		registerVal4 = Gunsmith_DoesACVExistForAttachment(arg1, arg0, arg2, "attachment6")
		if registerVal4 and registerVal4 then
			NavigateToMenu(registerVal2, "GunsmithAttachmentVariantSelect", true, arg2)
			return true
		end
	end

	local function __FUNC_9924_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "attachment6", 0.000000)
		registerVal3 = Gunsmith_DoesACVExistForAttachment(arg1, arg0, arg2, "attachment6")
		if registerVal3 and registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal8, arg1, Enum.LUIButton.LUI_KEY_XBY_PSTRIANGLE, "P", __FUNC_97EE_, __FUNC_9924_, false)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "IsEquipped"
	local function __FUNC_9ACD_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachment6", 0.000000)
		if not registerVal3 then
			registerVal3 = Gunsmith_DoesACVExistForAttachment(arg0, arg2, arg1, "attachment6")
		else
		end
		return true
	end

	registerVal12.condition = __FUNC_9ACD_
	local registerVal13 = {}
	registerVal13.stateName = "IsEquippedAndHideHintText"
	local function __FUNC_9BA7_(arg0, arg2, arg3)
		local registerVal3 = Gunsmith_DoesACVExistForAttachment(arg0, arg2, arg1, "attachment6")
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_9BA7_
	registerVal11 = {registerVal12, registerVal13}
	registerVal8:mergeStateConditions(registerVal11)
	local function __FUNC_9C31_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachment6"
		arg0:updateElementState(registerVal8, registerVal4)
	end

	registerVal8:linkToElementModel(registerVal8, "attachment6", true, __FUNC_9C31_)
	registerVal2:addElement(registerVal8)
	registerVal2.Attachment5 = registerVal8
	registerVal9 = CoD.GunsmithPaintjobButton.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 501.770000, 565.770000)
	registerVal9:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_9D51_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_9D51_)
	local function __FUNC_9DA2_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "paintjobIndex"
		CoD.Menu.UpdateButtonShownState(registerVal9, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal9:linkToElementModel(registerVal9, "paintjobIndex", true, __FUNC_9DA2_)
	local function __FUNC_9F63_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "paintjobSlot"
		CoD.Menu.UpdateButtonShownState(registerVal9, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal9:linkToElementModel(registerVal9, "paintjobSlot", true, __FUNC_9F63_)
	local function __FUNC_A122_(arg0, arg2)
		Gunsmith_ClearVariantPaintjobSlot(registerVal2, arg0, arg1)
		EnableMouseButtonOnElement(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("gunsmith_remove_item", __FUNC_A122_)
	local function __FUNC_A200_(arg2, arg3)
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

	registerVal9:registerEventHandler("gain_focus", __FUNC_A200_)
	local function __FUNC_A457_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal9:registerEventHandler("lose_focus", __FUNC_A457_)
	local function __FUNC_A526_(arg0, arg1, arg2, arg3)
		local registerVal4 = Gunsmith_DisablePaintjobVariantSlot(arg0, arg2)
		if not registerVal4 then
			Gunsmith_OpenPaintjobSelector(registerVal2, arg0, arg2)
			NavigateToMenu(registerVal2, "GunsmithPaintjobSelect", true, arg2)
			return true
		end
	end

	local function __FUNC_A628_(arg0, arg1, arg2)
		local registerVal3 = Gunsmith_DisablePaintjobVariantSlot(arg0, arg2)
		if not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_A526_, __FUNC_A628_, false)
	local function __FUNC_A773_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "paintjobIndex", 15.000000)
		registerVal4 = IsSelfModelValueEqualTo(arg0, arg2, "paintjobSlot", 15.000000)
		if not registerVal4 and not registerVal4 then
			Gunsmith_ClearVariantPaintjobSlot(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_A876_(arg0, arg1, arg2)
		local registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "paintjobIndex", 15.000000)
		registerVal3 = IsSelfModelValueEqualTo(arg0, arg2, "paintjobSlot", 15.000000)
		if not registerVal3 and not registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal9, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_A773_, __FUNC_A876_, false)
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "NotVisibleOffline"
	local function __FUNC_AA0E_(arg0, arg2, arg3)
		return Gunsmith_DisablePaintjobVariantSlot(arg2, arg1)
	end

	registerVal13.condition = __FUNC_AA0E_
	local registerVal14 = {}
	registerVal14.stateName = "IsEquipped"
	local function __FUNC_AA79_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "paintjobSlot", 15.000000)
		if not registerVal3 then
			registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "paintjobIndex", 15.000000)
		else
		end
		return true
	end

	registerVal14.condition = __FUNC_AA79_
	registerVal12 = {registerVal13, registerVal14}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_AB43_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "paintjobSlot"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "paintjobSlot", true, __FUNC_AB43_)
	local function __FUNC_AC62_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "paintjobIndex"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "paintjobIndex", true, __FUNC_AC62_)
	registerVal2:addElement(registerVal9)
	registerVal2.paintjob = registerVal9
	registerVal10 = CoD.GunsmithAttachmentButton.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 611.440000, 675.440000)
	registerVal10:setTopBottom(true, false, 24.000000, 88.000000)
	local function __FUNC_AD83_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_AD83_)
	local function __FUNC_ADD2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.attachmentImage:setImage(RegisterImage(GetCamoImageFromIndex(arg1, registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "camoIndex", true, __FUNC_ADD2_)
	local function __FUNC_AED4_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "camoIndex"
		CoD.Menu.UpdateButtonShownState(registerVal10, arg0, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE)
	end

	registerVal10:linkToElementModel(registerVal10, "camoIndex", true, __FUNC_AED4_)
	local function __FUNC_B093_(arg0, arg2)
		Gunsmith_ClearCamo(registerVal2, arg0, arg1)
		EnableMouseButtonOnElement(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("gunsmith_remove_item", __FUNC_B093_)
	local function __FUNC_B161_(arg2, arg3)
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

	registerVal10:registerEventHandler("gain_focus", __FUNC_B161_)
	local function __FUNC_B3B3_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal10:registerEventHandler("lose_focus", __FUNC_B3B3_)
	local function __FUNC_B482_(arg0, arg1, arg2, arg3)
		Gunsmith_SetWeaponCamoModel(registerVal2, arg0, arg2)
		NavigateToMenu(registerVal2, "GunsmithCamoSelect", true, arg2)
		return true
	end

	local function __FUNC_B539_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal10, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_B482_, __FUNC_B539_, false)
	local function __FUNC_B636_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsSelfModelValueGreaterThan(arg0, arg2, "camoIndex", 0.000000)
		if registerVal4 then
			Gunsmith_ClearCamo(registerVal2, arg0, arg2)
			return true
		end
	end

	local function __FUNC_B6F5_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "MENU_REMOVE")
		local registerVal3 = IsSelfModelValueGreaterThan(arg0, arg2, "camoIndex", 0.000000)
		if registerVal3 then
			return true
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal10, arg1, Enum.LUIButton.LUI_KEY_XBX_PSSQUARE, "R", __FUNC_B636_, __FUNC_B6F5_, true)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "IsEquipped"
	local function __FUNC_B858_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_B858_
	local registerVal15 = {}
	registerVal15.stateName = "IsEquippedAndHideHintText"
	local function __FUNC_B8A5_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "camoIndex", 0.000000)
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_B8A5_
	registerVal13 = {registerVal14, registerVal15}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_B929_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "camoIndex"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "camoIndex", true, __FUNC_B929_)
	registerVal2:addElement(registerVal10)
	registerVal2.Camo = registerVal10
	registerVal11 = CoD.GunsmithVariantAttachmentHeader.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 1.000000, 64.000000)
	registerVal11:setTopBottom(true, false, 3.000000, 20.000000)
	registerVal11.text:setText(Engine.Localize("MPUI_OPTICS_CAPS"))
	local function __FUNC_BA47_(arg0)
		registerVal11:setModel(arg0, arg1)
	end

	registerVal11:subscribeToGlobalModel(arg1, "GunsmithSelectedItemProperties", nil, __FUNC_BA47_)
	registerVal14 = {}
	registerVal15 = {}
	registerVal15.stateName = "Focus"
	local function __FUNC_BA96_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "attachmentType", "optic")
	end

	registerVal15.condition = __FUNC_BA96_
	local registerVal16 = {}
	registerVal16.stateName = "NotFocus"
	local function __FUNC_BB24_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachmentType", "optic")
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_BB24_
	registerVal14 = {registerVal15, registerVal16}
	registerVal11:mergeStateConditions(registerVal14)
	local function __FUNC_BBB8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachmentType"
		arg0:updateElementState(registerVal11, registerVal4)
	end

	registerVal11:linkToElementModel(registerVal11, "attachmentType", true, __FUNC_BBB8_)
	registerVal2:addElement(registerVal11)
	registerVal2.OpticsHeader = registerVal11
	registerVal12 = CoD.GunsmithVariantAttachmentHeader.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 111.670000, 453.100000)
	registerVal12:setTopBottom(true, false, 3.000000, 20.000000)
	registerVal12.text:setText(Engine.Localize("MPUI_ATTACHMENTS_CAPS"))
	local function __FUNC_BCDC_(arg0)
		registerVal12:setModel(arg0, arg1)
	end

	registerVal12:subscribeToGlobalModel(arg1, "GunsmithSelectedItemProperties", nil, __FUNC_BCDC_)
	registerVal15 = {}
	registerVal16 = {}
	registerVal16.stateName = "Focus"
	local function __FUNC_BD2E_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "attachmentType", "attachment")
	end

	registerVal16.condition = __FUNC_BD2E_
	local registerVal17 = {}
	registerVal17.stateName = "NotFocus"
	local function __FUNC_BDC1_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachmentType", "attachment")
		return (not registerVal3)
	end

	registerVal17.condition = __FUNC_BDC1_
	registerVal15 = {registerVal16, registerVal17}
	registerVal12:mergeStateConditions(registerVal15)
	local function __FUNC_BE59_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachmentType"
		arg0:updateElementState(registerVal12, registerVal4)
	end

	registerVal12:linkToElementModel(registerVal12, "attachmentType", true, __FUNC_BE59_)
	registerVal2:addElement(registerVal12)
	registerVal2.AttachmentsHeader = registerVal12
	registerVal13 = CoD.GunsmithVariantAttachmentHeader.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 501.770000, 576.770000)
	registerVal13:setTopBottom(true, false, 3.000000, 20.000000)
	registerVal13.text:setText(Engine.Localize("MENU_PAINTSHOP_PAINTJOB"))
	local function __FUNC_BF7C_(arg0)
		registerVal13:setModel(arg0, arg1)
	end

	registerVal13:subscribeToGlobalModel(arg1, "GunsmithSelectedItemProperties", nil, __FUNC_BF7C_)
	registerVal16 = {}
	registerVal17 = {}
	registerVal17.stateName = "Focus"
	local function __FUNC_BFCE_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "attachmentType", "paintjob")
	end

	registerVal17.condition = __FUNC_BFCE_
	local registerVal18 = {}
	registerVal18.stateName = "NotFocus"
	local function __FUNC_C05F_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachmentType", "paintjob")
		return (not registerVal3)
	end

	registerVal18.condition = __FUNC_C05F_
	registerVal16 = {registerVal17, registerVal18}
	registerVal13:mergeStateConditions(registerVal16)
	local function __FUNC_C0F3_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachmentType"
		arg0:updateElementState(registerVal13, registerVal4)
	end

	registerVal13:linkToElementModel(registerVal13, "attachmentType", true, __FUNC_C0F3_)
	registerVal2:addElement(registerVal13)
	registerVal2.PaintjobHeader = registerVal13
	registerVal14 = CoD.GunsmithVariantAttachmentHeader.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 609.770000, 675.440000)
	registerVal14:setTopBottom(true, false, 3.000000, 20.000000)
	registerVal14.text:setText(Engine.Localize("MPUI_CAMO_CAPS"))
	local function __FUNC_C214_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:subscribeToGlobalModel(arg1, "GunsmithSelectedItemProperties", nil, __FUNC_C214_)
	registerVal17 = {}
	registerVal18 = {}
	registerVal18.stateName = "Focus"
	local function __FUNC_C266_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "attachmentType", "camo")
	end

	registerVal18.condition = __FUNC_C266_
	local registerVal19 = {}
	registerVal19.stateName = "NotFocus"
	local function __FUNC_C2F3_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachmentType", "camo")
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_C2F3_
	registerVal17 = {registerVal18, registerVal19}
	registerVal14:mergeStateConditions(registerVal17)
	local function __FUNC_C383_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachmentType"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, "attachmentType", true, __FUNC_C383_)
	registerVal2:addElement(registerVal14)
	registerVal2.CamoHeader = registerVal14
	registerVal15 = CoD.GunsmithAttachmentButton.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 713.770000, 777.770000)
	registerVal15:setTopBottom(true, false, 24.000000, 88.000000)
	registerVal15.attachmentImage:setImage(RegisterImage("uie_t7_menu_gunsmith_snapshot"))
	local function __FUNC_C4A4_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, nil, false, __FUNC_C4A4_)
	local function __FUNC_C4F6_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		Gunsmith_SetSelectedItemName(registerVal2, arg2, "snapshot", "", arg1)
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal15:registerEventHandler("gain_focus", __FUNC_C4F6_)
	local function __FUNC_C6E5_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal15:registerEventHandler("lose_focus", __FUNC_C6E5_)
	local function __FUNC_C7B6_(arg0, arg1, arg2, arg3)
		NavigateToMenu(registerVal2, "GunsmithSnapshot", true, arg2)
		return true
	end

	local function __FUNC_C832_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "MENU_SELECT")
		return true
	end

	arg0:AddButtonCallbackFunction(registerVal15, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "ENTER", __FUNC_C7B6_, __FUNC_C832_, false)
	registerVal18 = {}
	registerVal19 = {}
	registerVal19.stateName = "IsEquipped"
	local function __FUNC_C92E_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal19.condition = __FUNC_C92E_
	local registerVal20 = {}
	registerVal20.stateName = "IsEquippedAndHideHintText"
	local function __FUNC_C979_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal20.condition = __FUNC_C979_
	registerVal18 = {registerVal19, registerVal20}
	registerVal15:mergeStateConditions(registerVal18)
	registerVal2:addElement(registerVal15)
	registerVal2.snapshot = registerVal15
	registerVal16 = CoD.GunsmithVariantAttachmentHeader.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 713.770000, 829.440000)
	registerVal16:setTopBottom(true, false, 3.000000, 20.000000)
	registerVal16.text:setText(Engine.Localize("MENU_GUNSMITH_SNAPSHOT_CAPS"))
	local function __FUNC_C9C4_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:subscribeToGlobalModel(arg1, "GunsmithSelectedItemProperties", nil, __FUNC_C9C4_)
	registerVal19 = {}
	registerVal20 = {}
	registerVal20.stateName = "Focus"
	local function __FUNC_CA16_(arg0, arg2, arg3)
		return IsSelfModelValueEqualTo(arg2, arg1, "attachmentType", "snapshot")
	end

	registerVal20.condition = __FUNC_CA16_
	local registerVal21 = {}
	registerVal21.stateName = "NotFocus"
	local function __FUNC_CAA7_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueEqualTo(arg2, arg1, "attachmentType", "snapshot")
		return (not registerVal3)
	end

	registerVal21.condition = __FUNC_CAA7_
	registerVal19 = {registerVal20, registerVal21}
	registerVal16:mergeStateConditions(registerVal19)
	local function __FUNC_CB3B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "attachmentType"
		arg0:updateElementState(registerVal16, registerVal4)
	end

	registerVal16:linkToElementModel(registerVal16, "attachmentType", true, __FUNC_CB3B_)
	registerVal2:addElement(registerVal16)
	registerVal2.snapshotHeader = registerVal16
	registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(true, false, -38.130000, -2.130000)
	registerVal17:setTopBottom(true, false, 86.000000, 90.000000)
	registerVal17:setYRot(-180.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Pixel20 = registerVal17
	registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(true, false, -38.130000, -2.130000)
	registerVal18:setTopBottom(true, false, 23.000000, 27.000000)
	registerVal18:setYRot(-180.000000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.Pixel200 = registerVal18
	registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(true, false, 780.870000, 816.870000)
	registerVal19:setTopBottom(true, false, 86.000000, 90.000000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.Pixel201 = registerVal19
	registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(true, false, 780.870000, 816.870000)
	registerVal20:setTopBottom(true, false, 23.000000, 27.000000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.Pixel2000 = registerVal20
	registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(true, false, 94.870000, 110.870000)
	registerVal21:setTopBottom(true, false, 21.000000, 29.000000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.Image000000 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(true, false, 94.870000, 110.870000)
	registerVal22:setTopBottom(true, false, 84.000000, 92.000000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.Image0000000 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(true, false, 484.870000, 500.870000)
	registerVal23:setTopBottom(true, false, 21.000000, 29.000000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.Image0000001 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, false, 484.870000, 500.870000)
	registerVal24:setTopBottom(true, false, 84.000000, 92.000000)
	registerVal24:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal24:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal24)
	registerVal2.Image00000000 = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(true, false, 594.870000, 610.870000)
	registerVal25:setTopBottom(true, false, 21.000000, 29.000000)
	registerVal25:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal25:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal25)
	registerVal2.Image00000010 = registerVal25
	local registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(true, false, 594.870000, 610.870000)
	registerVal26:setTopBottom(true, false, 84.000000, 92.000000)
	registerVal26:setImage(RegisterImage("uie_t7_menu_cac_pixelblurred"))
	registerVal26:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal26)
	registerVal2.Image000000000 = registerVal26
	local registerVal27 = {}
	registerVal27.right = registerVal4
	registerVal3.navigation = registerVal27
	registerVal27 = {}
	registerVal27.left = registerVal3
	registerVal27.right = registerVal5
	registerVal4.navigation = registerVal27
	registerVal27 = {}
	registerVal27.left = registerVal4
	registerVal27.right = registerVal6
	registerVal5.navigation = registerVal27
	registerVal27 = {}
	registerVal27.left = registerVal5
	registerVal27.right = registerVal7
	registerVal6.navigation = registerVal27
	registerVal27 = {}
	registerVal27.left = registerVal6
	registerVal27.right = registerVal8
	registerVal7.navigation = registerVal27
	registerVal27 = {}
	registerVal27.left = registerVal7
	registerVal27.right = registerVal9
	registerVal8.navigation = registerVal27
	registerVal27 = {}
	registerVal27.left = registerVal8
	registerVal27.right = registerVal10
	registerVal9.navigation = registerVal27
	registerVal27 = {}
	registerVal27.left = registerVal9
	registerVal27.right = registerVal15
	registerVal10.navigation = registerVal27
	registerVal27 = {}
	registerVal27.left = registerVal10
	registerVal15.navigation = registerVal27
	registerVal27 = {}
	local registerVal28 = {}
	local function __FUNC_CC5C_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.Optic:setLeftRight(true, false, 0.000000, 64.000000)
		registerVal2.Optic:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Optic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Attachment1:setLeftRight(true, false, 111.670000, 175.670000)
		registerVal2.Attachment1:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Attachment2:setLeftRight(true, false, 180.670000, 244.670000)
		registerVal2.Attachment2:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Attachment3:setLeftRight(true, false, 249.670000, 313.670000)
		registerVal2.Attachment3:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Attachment4:setLeftRight(true, false, 320.100000, 384.100000)
		registerVal2.Attachment4:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment4:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Attachment5:setLeftRight(true, false, 389.100000, 453.100000)
		registerVal2.Attachment5:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment5:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.paintjob:setLeftRight(true, false, 501.770000, 565.770000)
		registerVal2.paintjob:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.paintjob:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Camo:setLeftRight(true, false, 611.440000, 675.440000)
		registerVal2.Camo:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Camo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal15:completeAnimation()
		registerVal2.snapshot:setLeftRight(true, false, 715.440000, 779.440000)
		registerVal2.snapshot:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.snapshotHeader:setLeftRight(true, false, 713.770000, 829.440000)
		registerVal2.snapshotHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal28.DefaultClip = __FUNC_CC5C_
	registerVal27.DefaultState = registerVal28
	registerVal28 = {}
	local function __FUNC_D3F7_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Optic:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Attachment1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Attachment2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Attachment3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Attachment4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Attachment5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.paintjob:setLeftRight(true, false, 1.000000, 65.000000)
		registerVal2.paintjob:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.paintjob:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Camo:setLeftRight(true, false, 110.670000, 174.670000)
		registerVal2.Camo:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Camo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.text:completeAnimation()
		registerVal2.OpticsHeader:setAlpha(0.000000)
		registerVal2.OpticsHeader.text:setText(Engine.Localize("MPUI_OPTICS_CAPS"))
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.text:completeAnimation()
		registerVal2.AttachmentsHeader:setAlpha(0.000000)
		registerVal2.AttachmentsHeader.text:setText(Engine.Localize("MPUI_ATTACHMENTS_CAPS"))
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.text:completeAnimation()
		registerVal2.PaintjobHeader:setLeftRight(true, false, 1.000000, 109.000000)
		registerVal2.PaintjobHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.PaintjobHeader:setAlpha(1.000000)
		registerVal2.PaintjobHeader.text:setText(Engine.Localize("MENU_PAINTSHOP_PAINTJOB"))
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.text:completeAnimation()
		registerVal2.CamoHeader:setLeftRight(true, false, 111.670000, 201.900000)
		registerVal2.CamoHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.CamoHeader:setAlpha(1.000000)
		registerVal2.CamoHeader.text:setText(Engine.Localize("MPUI_CAMO_CAPS"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.snapshot:setLeftRight(true, false, 218.380000, 282.380000)
		registerVal2.snapshot:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.snapshotHeader:setLeftRight(true, false, 216.720000, 332.380000)
		registerVal2.snapshotHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal28.DefaultClip = __FUNC_D3F7_
	registerVal27.SpecialWeapon = registerVal28
	registerVal28 = {}
	local function __FUNC_DD92_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Optic:setLeftRight(true, false, 0.000000, 64.000000)
		registerVal2.Optic:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Optic:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Attachment1:setLeftRight(true, false, 111.670000, 175.670000)
		registerVal2.Attachment1:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Attachment2:setLeftRight(true, false, 180.670000, 244.670000)
		registerVal2.Attachment2:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Attachment3:setLeftRight(true, false, 249.670000, 313.670000)
		registerVal2.Attachment3:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Attachment4:setLeftRight(true, false, 320.100000, 384.100000)
		registerVal2.Attachment4:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Attachment5:setLeftRight(true, false, 389.100000, 453.100000)
		registerVal2.Attachment5:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Attachment5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.paintjob:setLeftRight(true, false, 294.100000, 358.100000)
		registerVal2.paintjob:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.paintjob:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Camo:setLeftRight(true, false, 402.100000, 466.100000)
		registerVal2.Camo:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.Camo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal11.text:completeAnimation()
		registerVal2.OpticsHeader:setLeftRight(true, false, 1.000000, 109.000000)
		registerVal2.OpticsHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.OpticsHeader:setAlpha(1.000000)
		registerVal2.OpticsHeader.text:setText(Engine.Localize("MPUI_OPTICS_CAPS"))
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal12.text:completeAnimation()
		registerVal2.AttachmentsHeader:setLeftRight(true, false, 111.670000, 313.670000)
		registerVal2.AttachmentsHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.AttachmentsHeader:setAlpha(1.000000)
		registerVal2.AttachmentsHeader.text:setText(Engine.Localize("MPUI_ATTACHMENTS_CAPS"))
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal13.text:completeAnimation()
		registerVal2.PaintjobHeader:setLeftRight(true, false, 294.100000, 402.100000)
		registerVal2.PaintjobHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.PaintjobHeader:setAlpha(1.000000)
		registerVal2.PaintjobHeader.text:setText(Engine.Localize("MENU_PAINTSHOP_PAINTJOB"))
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal14.text:completeAnimation()
		registerVal2.CamoHeader:setLeftRight(true, false, 402.100000, 492.330000)
		registerVal2.CamoHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.CamoHeader:setAlpha(1.000000)
		registerVal2.CamoHeader.text:setText(Engine.Localize("MPUI_CAMO_CAPS"))
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.snapshot:setLeftRight(true, false, 512.440000, 576.440000)
		registerVal2.snapshot:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.snapshotHeader:setLeftRight(true, false, 510.770000, 626.440000)
		registerVal2.snapshotHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal28.DefaultClip = __FUNC_DD92_
	registerVal27.Handguns = registerVal28
	registerVal28 = {}
	local function __FUNC_E9E5_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal11:completeAnimation()
		registerVal2.OpticsHeader:setLeftRight(true, false, 1.000000, 64.000000)
		registerVal2.OpticsHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.OpticsHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.AttachmentsHeader:setLeftRight(true, false, 111.670000, 453.100000)
		registerVal2.AttachmentsHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.AttachmentsHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.PaintjobHeader:setLeftRight(true, false, 501.770000, 565.770000)
		registerVal2.PaintjobHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.PaintjobHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.CamoHeader:setLeftRight(true, false, 611.440000, 675.440000)
		registerVal2.CamoHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.CamoHeader:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.snapshot:setLeftRight(true, false, 715.440000, 779.440000)
		registerVal2.snapshot:setTopBottom(true, false, 24.000000, 88.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.snapshotHeader:setLeftRight(true, false, 713.770000, 829.440000)
		registerVal2.snapshotHeader:setTopBottom(true, false, 0.000000, 17.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal28.DefaultClip = __FUNC_E9E5_
	registerVal27.ArabicFrontEnd = registerVal28
	registerVal2.clipsPerState = registerVal27
	local registerVal29 = {}
	local registerVal30 = {}
	registerVal30.stateName = "SpecialWeapon"
	local function __FUNC_EECC_(arg0, arg1, arg2)
		return true
	end

	registerVal30.condition = __FUNC_EECC_
	local registerVal31 = {}
	registerVal31.stateName = "Handguns"
	local function __FUNC_EF00_(arg0, arg1, arg2)
		return true
	end

	registerVal31.condition = __FUNC_EF00_
	local registerVal32 = {}
	registerVal32.stateName = "ArabicFrontEnd"
	local function __FUNC_EF34_(arg0, arg1, arg2)
		local registerVal3 = IsInGame()
		if not registerVal3 then
			registerVal3 = IsArabicSku()
		else
		end
		return true
	end

	registerVal32.condition = __FUNC_EF34_
	registerVal29 = {registerVal30, registerVal31, registerVal32}
	registerVal2:mergeStateConditions(registerVal29)
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	local function __FUNC_EFAF_(arg0, arg2)
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

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_EFAF_)
	registerVal3.id = "Optic"
	registerVal4.id = "Attachment1"
	registerVal5.id = "Attachment2"
	registerVal6.id = "Attachment3"
	registerVal7.id = "Attachment4"
	registerVal8.id = "Attachment5"
	registerVal9.id = "paintjob"
	registerVal10.id = "Camo"
	registerVal15.id = "snapshot"
	local function __FUNC_F1CE_(arg0, arg1)
		local registerVal2 = arg0.Optic:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_F1CE_)
	local function __FUNC_F2CD_(arg0)
		arg0.Optic:close()
		arg0.Attachment1:close()
		arg0.Attachment2:close()
		arg0.Attachment3:close()
		arg0.Attachment4:close()
		arg0.Attachment5:close()
		arg0.paintjob:close()
		arg0.Camo:close()
		arg0.OpticsHeader:close()
		arg0.AttachmentsHeader:close()
		arg0.PaintjobHeader:close()
		arg0.CamoHeader:close()
		arg0.snapshot:close()
		arg0.snapshotHeader:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F2CD_)
	if __FUNC_52B_ then
		__FUNC_52B_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GunsmithVariantAttachments.new = __FUNC_59B_

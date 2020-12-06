-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidgetNew")
require("ui.uieditor.widgets.CAC.MenuChooseClass.CategoryHeader")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SecondaryWeaponAttachmentsWidget = registerVal1
function CoD.SecondaryWeaponAttachmentsWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SecondaryWeaponAttachmentsWidget)
	registerVal2.id = "SecondaryWeaponAttachmentsWidget"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 196.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 129.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponItemModelWidgetNew.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -62.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 62.000000)
	registerVal3.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_D6D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_D6D_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Equipped"
	local function __FUNC_E3F_(arg0, arg2, arg3)
		return IsSecondaryAttachmentEquippedWithNoPersonalization(arg0, arg2, arg1)
	end

	registerVal7.condition = __FUNC_E3F_
	local registerVal8 = {}
	registerVal8.stateName = "WeaponEquipped"
	local function __FUNC_EBC_(arg0, arg2, arg3)
		return IsCACSlotEquipped(arg0, arg2, arg1)
	end

	registerVal8.condition = __FUNC_EBC_
	local registerVal9 = {}
	registerVal9.stateName = "LockedByWildcard"
	local function __FUNC_F1B_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			registerVal3 = IsSecondaryWeaponAttachmentAvailable(arg1)
			if registerVal3 and registerVal3 then
				registerVal3 = IsNonAttachmentItemLocked(arg1, "bonuscard_secondary_gunfighter")
			else
			end
		end
		return true
	end

	registerVal9.condition = __FUNC_F1B_
	local registerVal10 = {}
	registerVal10.stateName = "NotEquippable"
	local function __FUNC_1072_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			if registerVal3 then
				registerVal3 = IsSecondaryWeaponAttachmentAvailable(arg1)
			else
			end
		end
		return true
	end

	registerVal10.condition = __FUNC_1072_
	registerVal6 = {registerVal7, registerVal8, registerVal9, registerVal10}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.attachment2 = registerVal3
	local registerVal4 = CoD.WeaponItemModelWidgetNew.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 67.000000, 129.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 62.000000)
	registerVal4.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_1167_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_1167_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "Equipped"
	local function __FUNC_1237_(arg0, arg2, arg3)
		return IsSecondaryAttachmentEquippedWithNoPersonalization(arg0, arg2, arg1)
	end

	registerVal8.condition = __FUNC_1237_
	registerVal9 = {}
	registerVal9.stateName = "WeaponEquipped"
	local function __FUNC_12B4_(arg0, arg2, arg3)
		return IsCACSlotEquipped(arg0, arg2, arg1)
	end

	registerVal9.condition = __FUNC_12B4_
	registerVal10 = {}
	registerVal10.stateName = "NotEquippable"
	local function __FUNC_1313_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			if registerVal3 then
				registerVal3 = IsSecondaryWeaponAttachmentAvailable(arg1)
			else
			end
		end
		return true
	end

	registerVal10.condition = __FUNC_1313_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.attachment1 = registerVal4
	local registerVal5 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 66.000000, 136.000000)
	registerVal5:setTopBottom(true, false, -21.000000, -1.000000)
	registerVal5.header:setText(Engine.Localize("MPUI_ATTACHMENTS_CAPS"))
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "BreadcrumbVisible"
	local function __FUNC_1407_(arg0, arg2, arg3)
		return IsCACAnyAttachmentsNew(arg2, arg1, "secondary")
	end

	registerVal9.condition = __FUNC_1407_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.attachmentHeader = registerVal5
	registerVal6 = CoD.WeaponItemModelWidgetNew.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -196.000000, -134.000000)
	registerVal6:setTopBottom(false, true, -129.000000, -67.000000)
	registerVal6.plusIcon:setRGB(1.000000, 0.410000, 0.000000)
	registerVal6.opticIndicator:setAlpha(0.550000)
	local function __FUNC_147B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "image", true, __FUNC_147B_)
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "Equipped"
	local function __FUNC_154B_(arg0, arg2, arg3)
		local registerVal3 = IsCACCustomizationReticleAttachmentItemEquipped(arg0, arg2, arg1, "secondary")
		if not registerVal3 then
			registerVal3 = IsCACWeaponEquippedForSlot(arg0, arg2, arg1, "secondary")
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_154B_
	local registerVal11 = {}
	registerVal11.stateName = "WeaponEquipped"
	local function __FUNC_162C_(arg0, arg2, arg3)
		return IsCACSlotEquipped(arg0, arg2, arg1)
	end

	registerVal11.condition = __FUNC_162C_
	local registerVal12 = {}
	registerVal12.stateName = "NotEquippable"
	local function __FUNC_168B_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			if registerVal3 then
				registerVal3 = IsSecondaryWeaponAttachmentAvailable(arg1)
			else
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_168B_
	registerVal9 = {registerVal10, registerVal11, registerVal12}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.optic = registerVal6
	registerVal7 = CoD.CategoryHeader.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 0.000000, 70.000000)
	registerVal7:setTopBottom(true, false, -21.000000, -1.000000)
	registerVal7.header:setText(Engine.Localize("MPUI_OPTICS_CAPS"))
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "BreadcrumbVisible"
	local function __FUNC_177F_(arg0, arg2, arg3)
		return IsCACAnyOpticsNew(arg2, arg1, "secondary")
	end

	registerVal11.condition = __FUNC_177F_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.opticsHeader = registerVal7
	registerVal8 = {}
	registerVal8.left = registerVal4
	registerVal3.navigation = registerVal8
	registerVal8 = {}
	registerVal8.left = registerVal6
	registerVal8.right = registerVal3
	registerVal4.navigation = registerVal8
	registerVal8 = {}
	registerVal8.right = registerVal4
	registerVal6.navigation = registerVal8
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal3.id = "attachment2"
	registerVal4.id = "attachment1"
	registerVal6.id = "optic"
	local function __FUNC_17EE_(arg0, arg1)
		local registerVal2 = arg0.attachment2:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_17EE_)
	local function __FUNC_18F3_(arg0)
		arg0.attachment2:close()
		arg0.attachment1:close()
		arg0.attachmentHeader:close()
		arg0.optic:close()
		arg0.opticsHeader:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_18F3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


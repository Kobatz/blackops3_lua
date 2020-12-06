-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidgetNew_InGame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PrimaryWeaponAttachmentsWidget_InGame = registerVal1
function CoD.PrimaryWeaponAttachmentsWidget_InGame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PrimaryWeaponAttachmentsWidget_InGame)
	registerVal2.id = "PrimaryWeaponAttachmentsWidget_InGame"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 196.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 129.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -62.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -62.000000, 0.000000)
	local function __FUNC_D64_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_D64_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "NotEquippable"
	local function __FUNC_E37_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACEquippedWildcardItemCount(arg0, "bonuscard_primary_gunfighter", 2.000000)
			if registerVal3 then
				registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			else
			end
		end
		return true
	end

	registerVal7.condition = __FUNC_E37_
	local registerVal8 = {}
	registerVal8.stateName = "NotAvailable"
	local function __FUNC_F58_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotAvailable(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACCountGreaterThanEquippedWildcardItem(arg0, "bonuscard_primary_gunfighter", 3.000000)
		else
		end
		return true
	end

	registerVal8.condition = __FUNC_F58_
	local registerVal9 = {}
	registerVal9.stateName = "NotVisible"
	local function __FUNC_103E_(arg0, arg2, arg3)
		return IsCACAttachmentSlotVisible(arg0, arg2, arg1, 3.000000)
	end

	registerVal9.condition = __FUNC_103E_
	registerVal6 = {registerVal7, registerVal8, registerVal9}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.attachment5 = registerVal3
	local registerVal4 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -31.000000, 31.000000)
	registerVal4:setTopBottom(false, true, -62.000000, 0.000000)
	local function __FUNC_10AD_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_10AD_)
	registerVal7 = {}
	registerVal8 = {}
	registerVal8.stateName = "NotEquippable"
	local function __FUNC_117F_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACEquippedWildcardItemCount(arg0, "bonuscard_primary_gunfighter", 1.000000)
			if registerVal3 then
				registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			else
			end
		end
		return true
	end

	registerVal8.condition = __FUNC_117F_
	registerVal9 = {}
	registerVal9.stateName = "NotAvailable"
	local function __FUNC_12A0_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotAvailable(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACCountGreaterThanEquippedWildcardItem(arg0, "bonuscard_primary_gunfighter", 2.000000)
		else
		end
		return true
	end

	registerVal9.condition = __FUNC_12A0_
	local registerVal10 = {}
	registerVal10.stateName = "NotVisible"
	local function __FUNC_1386_(arg0, arg2, arg3)
		return IsCACAttachmentSlotVisible(arg0, arg2, arg1, 2.000000)
	end

	registerVal10.condition = __FUNC_1386_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.attachment4 = registerVal4
	local registerVal5 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 62.000000)
	registerVal5:setTopBottom(false, true, -62.000000, 0.000000)
	local function __FUNC_13F5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "image", true, __FUNC_13F5_)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "NotEquippable"
	local function __FUNC_14C7_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			if registerVal3 then
				registerVal3 = IsPrimaryWeaponAttachmentAvailable(arg1)
			else
			end
		end
		return true
	end

	registerVal9.condition = __FUNC_14C7_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.attachment3 = registerVal5
	registerVal6 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -62.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 62.000000)
	local function __FUNC_15B9_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "image", true, __FUNC_15B9_)
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "NotEquippable"
	local function __FUNC_168B_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			if registerVal3 then
				registerVal3 = IsPrimaryWeaponAttachmentAvailable(arg1)
			else
			end
		end
		return true
	end

	registerVal10.condition = __FUNC_168B_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.attachment2 = registerVal6
	registerVal7 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -31.000000, 31.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 62.000000)
	local function __FUNC_177D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "image", true, __FUNC_177D_)
	registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "NotEquippable"
	local function __FUNC_184F_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			if registerVal3 then
				registerVal3 = IsPrimaryWeaponAttachmentAvailable(arg1)
			else
			end
		end
		return true
	end

	registerVal11.condition = __FUNC_184F_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.attachment1 = registerVal7
	registerVal8 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 62.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 62.000000)
	registerVal8.opticIndicator:setAlpha(0.550000)
	local function __FUNC_1941_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "image", true, __FUNC_1941_)
	registerVal11 = {}
	local registerVal12 = {}
	registerVal12.stateName = "NotEquippable"
	local function __FUNC_1A13_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if not registerVal3 then
			registerVal3 = IsCACSlotWeaponForAttachmentEquipped(arg0, arg2, arg1)
			if registerVal3 then
				registerVal3 = IsPrimaryWeaponAttachmentAvailable(arg1)
			else
			end
		end
		return true
	end

	registerVal12.condition = __FUNC_1A13_
	registerVal11 = {registerVal12}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.optic = registerVal8
	registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 66.000000, 150.000000)
	registerVal9:setTopBottom(true, false, -20.000000, -2.000000)
	registerVal9:setRGB(0.570000, 0.600000, 0.650000)
	registerVal9:setText(Engine.Localize("MPUI_ATTACHMENTS_CAPS"))
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal9)
	registerVal2.header = registerVal9
	registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 0.000000, 78.000000)
	registerVal10:setTopBottom(true, false, -20.000000, -2.000000)
	registerVal10:setRGB(0.570000, 0.600000, 0.650000)
	registerVal10:setText(Engine.Localize("MPUI_OPTICS_CAPS"))
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal10)
	registerVal2.Label0 = registerVal10
	local function __FUNC_1B05_(arg0)
		arg0.attachment5:close()
		arg0.attachment4:close()
		arg0.attachment3:close()
		arg0.attachment2:close()
		arg0.attachment1:close()
		arg0.optic:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1B05_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


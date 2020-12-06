-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidgetNew_InGame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SecondaryWeaponAttachmentsWidget_InGame = registerVal1
function CoD.SecondaryWeaponAttachmentsWidget_InGame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SecondaryWeaponAttachmentsWidget_InGame)
	registerVal2.id = "SecondaryWeaponAttachmentsWidget_InGame"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 196.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 129.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -62.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 62.000000)
	local function __FUNC_AC4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_AC4_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "NotEquippable"
	local function __FUNC_B97_(arg0, arg2, arg3)
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

	registerVal7.condition = __FUNC_B97_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.attachment2 = registerVal3
	local registerVal4 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 67.000000, 129.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 62.000000)
	local function __FUNC_C8B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_C8B_)
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "NotEquippable"
	local function __FUNC_D5B_(arg0, arg2, arg3)
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

	registerVal8.condition = __FUNC_D5B_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.attachment1 = registerVal4
	local registerVal5 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -196.000000, -134.000000)
	registerVal5:setTopBottom(false, true, -129.000000, -67.000000)
	registerVal5.opticIndicator:setAlpha(0.550000)
	local function __FUNC_E4F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "image", true, __FUNC_E4F_)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "NotEquippable"
	local function __FUNC_F1F_(arg0, arg2, arg3)
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

	registerVal9.condition = __FUNC_F1F_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.optic = registerVal5
	registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 66.000000, 150.000000)
	registerVal6:setTopBottom(true, false, -20.000000, -2.000000)
	registerVal6:setRGB(0.570000, 0.600000, 0.650000)
	registerVal6:setText(Engine.Localize("MPUI_ATTACHMENTS_CAPS"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal6)
	registerVal2.header = registerVal6
	registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 0.000000, 78.000000)
	registerVal7:setTopBottom(true, false, -20.000000, -2.000000)
	registerVal7:setRGB(0.570000, 0.600000, 0.650000)
	registerVal7:setText(Engine.Localize("MPUI_OPTICS_CAPS"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.Label0 = registerVal7
	local function __FUNC_1013_(arg0)
		arg0.attachment2:close()
		arg0.attachment1:close()
		arg0.optic:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1013_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


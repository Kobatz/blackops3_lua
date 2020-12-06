-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.CustomClassListScreen.CustomClassMinorHeader")
require("ui.uieditor.widgets.CAC.CustomClassListScreen.Panes.CustomClassGenericItemButton")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponAttachments = registerVal1
function CoD.WeaponAttachments.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponAttachments)
	registerVal2.id = "WeaponAttachments"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 675.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 134.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CustomClassMinorHeader.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 8.830000)
	registerVal3.text:setText(Engine.Localize("MPUI_OPTICS_CAPS"))
	registerVal2:addElement(registerVal3)
	registerVal2.OpticsHeader = registerVal3
	local registerVal4 = CoD.CustomClassMinorHeader.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 113.330000, 4.770000)
	registerVal4:setTopBottom(true, false, 0.000000, 8.830000)
	registerVal4.text:setText(Engine.Localize("MPUI_ATTACHMENTS_CAPS"))
	registerVal2:addElement(registerVal4)
	registerVal2.AttachmentsHeader = registerVal4
	local registerVal5 = CoD.CustomClassGenericItemButton.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 108.000000)
	registerVal5:setTopBottom(true, false, 26.000000, 134.000000)
	local function __FUNC_1092_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, "primaryattachment1", false, __FUNC_1092_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Unavailable"
	local function __FUNC_10E2_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotAvailable(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_10E2_
	local registerVal10 = {}
	registerVal10.stateName = "Unequipped"
	local function __FUNC_1144_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_1144_
	local registerVal11 = {}
	registerVal11.stateName = "Unavailable_Gadget"
	local function __FUNC_11A7_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_11A7_
	local registerVal12 = {}
	registerVal12.stateName = "Unequipped_Gadget"
	local function __FUNC_11F1_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_11F1_
	local registerVal13 = {}
	registerVal13.stateName = "Equipped_Gadget"
	local function __FUNC_123D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_123D_
	registerVal8 = {registerVal9, registerVal10, registerVal11, registerVal12, registerVal13}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.Optic = registerVal5
	local registerVal6 = CoD.CustomClassGenericItemButton.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 113.330000, 221.330000)
	registerVal6:setTopBottom(true, false, 26.000000, 134.000000)
	local function __FUNC_1289_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, "primaryattachment2", false, __FUNC_1289_)
	registerVal9 = {}
	registerVal10 = {}
	registerVal10.stateName = "Unavailable"
	local function __FUNC_12DA_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotAvailable(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_12DA_
	registerVal11 = {}
	registerVal11.stateName = "Unequipped"
	local function __FUNC_133C_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_133C_
	registerVal12 = {}
	registerVal12.stateName = "Unavailable_Gadget"
	local function __FUNC_139F_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal12.condition = __FUNC_139F_
	registerVal13 = {}
	registerVal13.stateName = "Unequipped_Gadget"
	local function __FUNC_13E9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_13E9_
	local registerVal14 = {}
	registerVal14.stateName = "Equipped_Gadget"
	local function __FUNC_1435_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_1435_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal2:addElement(registerVal6)
	registerVal2.Attachment1 = registerVal6
	local registerVal7 = CoD.CustomClassGenericItemButton.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 226.660000, 334.660000)
	registerVal7:setTopBottom(true, false, 26.000000, 134.000000)
	local function __FUNC_1481_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, "primaryattachment3", false, __FUNC_1481_)
	registerVal10 = {}
	registerVal11 = {}
	registerVal11.stateName = "Unavailable"
	local function __FUNC_14D2_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotAvailable(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_14D2_
	registerVal12 = {}
	registerVal12.stateName = "Unequipped"
	local function __FUNC_1534_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_1534_
	registerVal13 = {}
	registerVal13.stateName = "Unavailable_Gadget"
	local function __FUNC_1597_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal13.condition = __FUNC_1597_
	registerVal14 = {}
	registerVal14.stateName = "Unequipped_Gadget"
	local function __FUNC_15E1_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_15E1_
	local registerVal15 = {}
	registerVal15.stateName = "Equipped_Gadget"
	local function __FUNC_162D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_162D_
	registerVal10 = {registerVal11, registerVal12, registerVal13, registerVal14, registerVal15}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal2:addElement(registerVal7)
	registerVal2.Attachment2 = registerVal7
	registerVal8 = CoD.CustomClassGenericItemButton.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 340.340000, 448.340000)
	registerVal8:setTopBottom(true, false, 26.000000, 134.000000)
	local function __FUNC_1679_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "primaryattachment4", false, __FUNC_1679_)
	registerVal11 = {}
	registerVal12 = {}
	registerVal12.stateName = "Unavailable"
	local function __FUNC_16CA_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotAvailable(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal12.condition = __FUNC_16CA_
	registerVal13 = {}
	registerVal13.stateName = "Unequipped"
	local function __FUNC_172C_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_172C_
	registerVal14 = {}
	registerVal14.stateName = "Unavailable_Gadget"
	local function __FUNC_178F_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal14.condition = __FUNC_178F_
	registerVal15 = {}
	registerVal15.stateName = "Unequipped_Gadget"
	local function __FUNC_17D9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_17D9_
	local registerVal16 = {}
	registerVal16.stateName = "Equipped_Gadget"
	local function __FUNC_1825_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_1825_
	registerVal11 = {registerVal12, registerVal13, registerVal14, registerVal15, registerVal16}
	registerVal8:mergeStateConditions(registerVal11)
	registerVal2:addElement(registerVal8)
	registerVal2.Attachment3 = registerVal8
	registerVal9 = CoD.CustomClassGenericItemButton.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 453.670000, 561.670000)
	registerVal9:setTopBottom(true, false, 26.000000, 134.000000)
	local function __FUNC_1871_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, "primaryattachment5", false, __FUNC_1871_)
	registerVal12 = {}
	registerVal13 = {}
	registerVal13.stateName = "Unavailable"
	local function __FUNC_18C2_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotAvailable(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal13.condition = __FUNC_18C2_
	registerVal14 = {}
	registerVal14.stateName = "Unequipped"
	local function __FUNC_1924_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_1924_
	registerVal15 = {}
	registerVal15.stateName = "Unavailable_Gadget"
	local function __FUNC_1987_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal15.condition = __FUNC_1987_
	registerVal16 = {}
	registerVal16.stateName = "Unequipped_Gadget"
	local function __FUNC_19D1_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_19D1_
	local registerVal17 = {}
	registerVal17.stateName = "Equipped_Gadget"
	local function __FUNC_1A1D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal17.condition = __FUNC_1A1D_
	registerVal12 = {registerVal13, registerVal14, registerVal15, registerVal16, registerVal17}
	registerVal9:mergeStateConditions(registerVal12)
	registerVal2:addElement(registerVal9)
	registerVal2.Attachment4 = registerVal9
	registerVal10 = CoD.CustomClassGenericItemButton.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 567.000000, 675.000000)
	registerVal10:setTopBottom(true, false, 26.000000, 134.000000)
	local function __FUNC_1A69_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, "primaryattachment6", false, __FUNC_1A69_)
	registerVal13 = {}
	registerVal14 = {}
	registerVal14.stateName = "Unavailable"
	local function __FUNC_1ABA_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotAvailable(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_1ABA_
	registerVal15 = {}
	registerVal15.stateName = "Unequipped"
	local function __FUNC_1B1C_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal15.condition = __FUNC_1B1C_
	registerVal16 = {}
	registerVal16.stateName = "Unavailable_Gadget"
	local function __FUNC_1B7F_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal16.condition = __FUNC_1B7F_
	registerVal17 = {}
	registerVal17.stateName = "Unequipped_Gadget"
	local function __FUNC_1BC9_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal17.condition = __FUNC_1BC9_
	local registerVal18 = {}
	registerVal18.stateName = "Equipped_Gadget"
	local function __FUNC_1C15_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal18.condition = __FUNC_1C15_
	registerVal13 = {registerVal14, registerVal15, registerVal16, registerVal17, registerVal18}
	registerVal10:mergeStateConditions(registerVal13)
	registerVal2:addElement(registerVal10)
	registerVal2.Attachment5 = registerVal10
	registerVal11 = {}
	registerVal11.right = registerVal6
	registerVal5.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal5
	registerVal11.right = registerVal7
	registerVal6.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal6
	registerVal11.right = registerVal8
	registerVal7.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal7
	registerVal11.right = registerVal9
	registerVal8.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal8
	registerVal11.right = registerVal10
	registerVal9.navigation = registerVal11
	registerVal11 = {}
	registerVal11.left = registerVal9
	registerVal10.navigation = registerVal11
	CoD.Menu.AddNavigationHandler(arg0, registerVal2, arg1)
	registerVal5.id = "Optic"
	registerVal6.id = "Attachment1"
	registerVal7.id = "Attachment2"
	registerVal8.id = "Attachment3"
	registerVal9.id = "Attachment4"
	registerVal10.id = "Attachment5"
	local function __FUNC_1C61_(arg0, arg1)
		local registerVal2 = arg0.Optic:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1C61_)
	local function __FUNC_1D61_(arg0)
		arg0.OpticsHeader:close()
		arg0.AttachmentsHeader:close()
		arg0.Optic:close()
		arg0.Attachment1:close()
		arg0.Attachment2:close()
		arg0.Attachment3:close()
		arg0.Attachment4:close()
		arg0.Attachment5:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1D61_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


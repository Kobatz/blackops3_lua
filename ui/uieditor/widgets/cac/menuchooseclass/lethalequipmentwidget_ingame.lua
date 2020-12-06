-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidgetNew_InGame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LethalEquipmentWidget_InGame = registerVal1
function CoD.LethalEquipmentWidget_InGame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LethalEquipmentWidget_InGame)
	registerVal2.id = "LethalEquipmentWidget_InGame"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 62.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 145.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal3:setTopBottom(true, false, -5.000000, 14.000000)
	registerVal3:setRGB(0.570000, 0.600000, 0.650000)
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setLetterSpacing(0.500000)
	local function __FUNC_8CA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "headerName", true, __FUNC_8CA_)
	registerVal2:addElement(registerVal3)
	registerVal2.header = registerVal3
	local registerVal4 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 83.000000, 145.000000)
	local function __FUNC_982_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_982_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Equipped"
	local function __FUNC_A53_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCACTakeTwoPrimaryGadgetAttachmentEquipped(arg0)
		end
		return registerVal3
	end

	registerVal8.condition = __FUNC_A53_
	local registerVal9 = {}
	registerVal9.stateName = "Available"
	local function __FUNC_AF8_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotAvailable(arg0, arg2, arg1)
		registerVal3 = IsCACSpecificWildcardEquipped(arg0, "bonuscard_danger_close")
		if registerVal3 and registerVal3 then
			registerVal3 = IsCACSpecificSlotEquipped(arg0, arg1, "primarygadget")
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_AF8_
	local registerVal10 = {}
	registerVal10.stateName = "NotEquippable"
	local function __FUNC_C0D_(arg0, arg2, arg3)
		local registerVal3 = IsCACSpecificSlotEquipped(arg0, arg1, "primarygadget")
		if registerVal3 then
			registerVal3 = IsCACSpecificWildcardEquipped(arg0, "bonuscard_danger_close")
		end
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_C0D_
	local registerVal11 = {}
	registerVal11.stateName = "NotAvailable"
	local function __FUNC_CED_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal11.condition = __FUNC_CED_
	registerVal7 = {registerVal8, registerVal9, registerVal10, registerVal11}
	registerVal4:mergeStateConditions(registerVal7)
	registerVal2:addElement(registerVal4)
	registerVal2.Equipment2 = registerVal4
	local registerVal5 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 16.000000, 78.000000)
	local function __FUNC_D4F_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "image", true, __FUNC_D4F_)
	registerVal2:addElement(registerVal5)
	registerVal2.Equipment1 = registerVal5
	local function __FUNC_E1F_(arg0)
		arg0.Equipment2:close()
		arg0.Equipment1:close()
		arg0.header:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E1F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


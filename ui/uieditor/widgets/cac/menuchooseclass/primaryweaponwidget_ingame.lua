-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidgetNew_InGame")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.ItemWeaponLevel")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabelMedium")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PrimaryWeaponWidget_InGame = registerVal1
function CoD.PrimaryWeaponWidget_InGame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PrimaryWeaponWidget_InGame)
	registerVal2.id = "PrimaryWeaponWidget_InGame"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 129.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 145.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -129.000000, 0.000000)
	local function __FUNC_AFA_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_AFA_)
	local function __FUNC_B4A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_B4A_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Equipped"
	local function __FUNC_C1B_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal7.condition = __FUNC_C1B_
	local registerVal8 = {}
	registerVal8.stateName = "WeaponEquipped"
	local function __FUNC_C65_(arg0, arg2, arg3)
		return IsCACSlotEquipped(arg0, arg2, arg1)
	end

	registerVal8.condition = __FUNC_C65_
	registerVal6 = {registerVal7, registerVal8}
	registerVal3:mergeStateConditions(registerVal6)
	registerVal2:addElement(registerVal3)
	registerVal2.WeaponItemModel = registerVal3
	local registerVal4 = CoD.ItemWeaponLevel.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 94.000000, 126.000000)
	registerVal4:setTopBottom(false, true, -130.000000, -97.000000)
	local function __FUNC_CC3_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_CC3_)
	registerVal2:addElement(registerVal4)
	registerVal2.weaponLevel = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal5:setTopBottom(true, false, -4.000000, 14.000000)
	registerVal5:setRGB(0.570000, 0.600000, 0.650000)
	registerVal5:setText(Engine.Localize("MPUI_PRIMARY_CAPS"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.header = registerVal5
	registerVal6 = CoD.cac_ListButtonLabelMedium.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 2.000000, 126.000000)
	registerVal6:setTopBottom(true, false, 119.500000, 143.500000)
	registerVal6:setAlpha(0.600000)
	registerVal6.itemName:setRGB(1.000000, 1.000000, 1.000000)
	local function __FUNC_D12_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_D12_)
	local function __FUNC_D62_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "name", true, __FUNC_D62_)
	registerVal2:addElement(registerVal6)
	registerVal2.cacListButtonLabelMedium = registerVal6
	local function __FUNC_E38_(arg0)
		arg0.WeaponItemModel:close()
		arg0.weaponLevel:close()
		arg0.cacListButtonLabelMedium:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E38_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


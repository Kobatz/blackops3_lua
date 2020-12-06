-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_PrimaryWeaponDescription")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemNameLabel")
require("ui.uieditor.widgets.PC.Utility.XCamMouseControl")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponPreviewPane = registerVal1
function CoD.WeaponPreviewPane.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.WeaponPreviewPane)
	registerVal2.id = "WeaponPreviewPane"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 901.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 505.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, true, -2.000000, 0.000000)
	registerVal3:setRGB(0.430000, 0.430000, 0.440000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.bottomLine = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 2.000000)
	registerVal4:setRGB(0.430000, 0.430000, 0.440000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.topLine = registerVal4
	local registerVal5 = CoD.cac_PrimaryWeaponDescription.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 42.000000, 426.000000)
	registerVal5:setTopBottom(true, false, 53.000000, 75.000000)
	local function __FUNC_99B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.weaponDescTextBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "name", true, __FUNC_99B_)
	registerVal2:addElement(registerVal5)
	registerVal2.currentlyEquippedText = registerVal5
	local registerVal6 = CoD.InfoPaneItemNameLabel.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 42.000000, 442.000000)
	registerVal6:setTopBottom(true, false, 19.000000, 53.000000)
	local function __FUNC_A79_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "displayText", true, __FUNC_A79_)
	registerVal2:addElement(registerVal6)
	registerVal2.categoryName = registerVal6
	local registerVal8 = IsPC()
	if registerVal8 then
		registerVal8 = CoD.XCamMouseControl.new(arg0, arg1)
	else
		registerVal8 = LUI.UIElement.createFake()
	end
	registerVal8:setLeftRight(true, false, 42.000000, 874.000000)
	registerVal8:setTopBottom(true, false, 75.000000, 491.000000)
	registerVal8 = IsPC()
	if registerVal8 then
		registerVal2:addElement(registerVal8)
	end
	registerVal2.XCamMouseControl = registerVal8
	local function __FUNC_B50_(arg0)
		arg0.currentlyEquippedText:close()
		arg0.categoryName:close()
		arg0.XCamMouseControl:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B50_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


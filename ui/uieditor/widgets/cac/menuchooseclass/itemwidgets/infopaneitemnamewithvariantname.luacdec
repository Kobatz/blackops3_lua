-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemNameLabel")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.InfoPaneItemVariantName")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.InfoPaneItemNameWithVariantName = registerVal1
function CoD.InfoPaneItemNameWithVariantName.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.InfoPaneItemNameWithVariantName)
	registerVal2.id = "InfoPaneItemNameWithVariantName"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 595.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.InfoPaneItemNameLabel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 146.760000)
	registerVal3:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal3.TitleGlow1:setAlpha(0.750000)
	registerVal3.itemName:setText(Engine.Localize("WEAPON_AR_STANDARD"))
	registerVal2:addElement(registerVal3)
	registerVal2.itemName = registerVal3
	local registerVal4 = CoD.InfoPaneItemVariantName.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 146.760000, 482.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 34.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4.itemName:setText(Engine.Localize("Henry"))
	registerVal2:addElement(registerVal4)
	registerVal2.variantName = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 482.000000, 485.000000)
	registerVal5:setTopBottom(true, false, 0.710000, 34.000000)
	registerVal5:setRGB(1.000000, 0.610000, 0.150000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Guide = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_9D4_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_9D4_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_A36_(arg0)
		arg0.itemName:close()
		arg0.variantName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A36_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


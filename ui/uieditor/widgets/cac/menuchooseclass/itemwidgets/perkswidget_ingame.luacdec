-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.WeaponItemModelWidgetNew_InGame")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PerksWidget_InGame = registerVal1
function CoD.PerksWidget_InGame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PerksWidget_InGame)
	registerVal2.id = "PerksWidget_InGame"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 62.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 145.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 51.000000)
	registerVal3:setTopBottom(true, false, -5.000000, 14.000000)
	registerVal3:setRGB(0.570000, 0.600000, 0.650000)
	registerVal3:setText(Engine.Localize("MPUI_PRIMARY_CAPS"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setLetterSpacing(0.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.header = registerVal3
	local registerVal4 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -31.000000, 31.000000)
	registerVal4:setTopBottom(false, true, -62.000000, 0.000000)
	local function __FUNC_802_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_802_)
	registerVal2:addElement(registerVal4)
	registerVal2.perkPlus = registerVal4
	local registerVal5 = CoD.WeaponItemModelWidgetNew_InGame.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -31.000000, 31.000000)
	registerVal5:setTopBottom(true, false, 16.000000, 78.000000)
	local function __FUNC_8D3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.itemImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "image", true, __FUNC_8D3_)
	registerVal2:addElement(registerVal5)
	registerVal2.perk = registerVal5
	local function __FUNC_9A3_(arg0)
		arg0.perkPlus:close()
		arg0.perk:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9A3_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.CAC_varientTitlePanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunSmithSubDescription = registerVal1
function CoD.GunSmithSubDescription.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunSmithSubDescription)
	registerVal2.id = "GunSmithSubDescription"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 257.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = CoD.CAC_varientTitlePanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.250000)
	registerVal2:addElement(registerVal3)
	registerVal2.CACvarientTitlePanel0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 3.000000, 257.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal4:setAlpha(0.700000)
	registerVal4:setText(Engine.Localize("WEAPON_PDW57_DESC"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_809_(arg0, arg1)
		ScaleWidgetToLabelWrapped(registerVal2, arg0, 0.000000, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_809_)
	registerVal2:addElement(registerVal4)
	registerVal2.weaponDescTextBox = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_874_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_874_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_8D6_(arg0)
		arg0.CACvarientTitlePanel0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8D6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


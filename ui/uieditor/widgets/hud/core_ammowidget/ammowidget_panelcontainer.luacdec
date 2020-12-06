-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_PanelEquip")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_PanelClip")
require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_PanelOct")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_Panel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_PanelContainer = registerVal1
function CoD.AmmoWidget_PanelContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_PanelContainer)
	registerVal2.id = "AmmoWidget_PanelContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 228.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 106.000000)
	local registerVal3 = CoD.AmmoWidget_PanelEquip.new(arg0, arg1)
	registerVal3:setLeftRight(false, true, -138.010000, -92.680000)
	registerVal3:setTopBottom(true, false, -2.000000, 35.330000)
	registerVal3:setZoom(-10.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.PanelLethal = registerVal3
	local registerVal4 = CoD.AmmoWidget_PanelEquip.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -178.680000, -133.350000)
	registerVal4:setTopBottom(true, false, -2.000000, 35.330000)
	registerVal4:setZoom(-10.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.PanelTactical = registerVal4
	local registerVal5 = CoD.AmmoWidget_PanelClip.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -241.000000, -156.000000)
	registerVal5:setTopBottom(true, false, 34.340000, 79.670000)
	registerVal5:setZoom(-10.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.PanelClip = registerVal5
	local registerVal6 = CoD.AmmoWidget_PanelOct.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -94.340000, 2.990000)
	registerVal6:setTopBottom(true, false, 8.330000, 105.670000)
	registerVal6:setZoom(-10.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.PanelOctagon = registerVal6
	local registerVal7 = CoD.DamageWidget_Panel.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -158.340000, -87.020000)
	registerVal7:setTopBottom(true, false, 38.660000, 80.000000)
	registerVal7:setZoom(-11.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.PanelAmmo = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_A44_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.PanelClip:setLeftRight(false, true, -228.000000, -156.000000)
		registerVal2.PanelClip:setTopBottom(true, false, 34.340000, 79.670000)
		registerVal2.PanelClip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, true, -158.340000, -87.010000)
		registerVal2.PanelAmmo:setTopBottom(true, false, 38.660000, 80.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_A44_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_C74_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.PanelClip:setLeftRight(false, true, -228.000000, -196.000000)
		registerVal2.PanelClip:setTopBottom(true, false, 34.340000, 79.670000)
		registerVal2.PanelClip:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, true, -195.340000, -87.010000)
		registerVal2.PanelAmmo:setTopBottom(true, false, 38.660000, 80.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_C74_
	registerVal8.Knife = registerVal9
	registerVal9 = {}
	local function __FUNC_EA4_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.PanelClip:setLeftRight(false, true, -228.000000, -156.000000)
		registerVal2.PanelClip:setTopBottom(true, false, 34.340000, 79.670000)
		registerVal2.PanelClip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, true, -158.340000, -87.010000)
		registerVal2.PanelAmmo:setTopBottom(true, false, 38.660000, 80.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_EA4_
	local function __FUNC_10D4_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.Knife = __FUNC_10D4_
	registerVal8.Weapon = registerVal9
	registerVal9 = {}
	local function __FUNC_1136_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal2.PanelClip:setLeftRight(false, true, -241.000000, -156.000000)
		registerVal2.PanelClip:setTopBottom(true, false, 34.340000, 79.670000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal9.DefaultClip = __FUNC_1136_
	registerVal8.Weapon3Digits = registerVal9
	registerVal9 = {}
	local function __FUNC_1292_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.PanelOctagon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_1292_
	registerVal8.Prologue = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_1394_(arg0)
		arg0.PanelLethal:close()
		arg0.PanelTactical:close()
		arg0.PanelClip:close()
		arg0.PanelOctagon:close()
		arg0.PanelAmmo:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1394_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


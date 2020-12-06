-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_PanelEquip")
require("ui.uieditor.widgets.HUD.CP_Prologue.CP_Prologue_AmmoWidget_PanelClip")
require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_Panel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CP_Prologue_AmmoWidget_PanelContainer = registerVal1
function CoD.CP_Prologue_AmmoWidget_PanelContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CP_Prologue_AmmoWidget_PanelContainer)
	registerVal2.id = "CP_Prologue_AmmoWidget_PanelContainer"
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
	local registerVal5 = CoD.CP_Prologue_AmmoWidget_PanelClip.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -234.530000, -156.010000)
	registerVal5:setTopBottom(true, false, 34.340000, 79.340000)
	registerVal5:setZoom(-10.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.CPPrologueAmmoWidgetPanelClip = registerVal5
	local registerVal6 = CoD.DamageWidget_Panel.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -158.340000, -87.020000)
	registerVal6:setTopBottom(true, false, 38.660000, 80.000000)
	registerVal6:setZoom(-11.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.PanelAmmo = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_943_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal5:completeAnimation()
		registerVal2.CPPrologueAmmoWidgetPanelClip:setLeftRight(false, true, -234.530000, -156.010000)
		registerVal2.CPPrologueAmmoWidgetPanelClip:setTopBottom(true, false, 34.340000, 79.340000)
		registerVal2.CPPrologueAmmoWidgetPanelClip:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, true, -158.340000, -87.010000)
		registerVal2.PanelAmmo:setTopBottom(true, false, 38.660000, 80.000000)
		registerVal2.PanelAmmo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_943_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_BA0_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, true, -195.340000, -87.010000)
		registerVal2.PanelAmmo:setTopBottom(true, false, 38.660000, 80.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_BA0_
	registerVal7.Knife = registerVal8
	registerVal8 = {}
	local function __FUNC_CFE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.PanelAmmo:setLeftRight(false, true, -158.340000, -87.010000)
		registerVal2.PanelAmmo:setTopBottom(true, false, 38.660000, 80.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_CFE_
	local function __FUNC_E5A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.Knife = __FUNC_E5A_
	registerVal7.Weapon = registerVal8
	registerVal8 = {}
	local function __FUNC_EBA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_EBA_
	registerVal7.Weapon3Digits = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_F1A_(arg0)
		arg0.PanelLethal:close()
		arg0.PanelTactical:close()
		arg0.CPPrologueAmmoWidgetPanelClip:close()
		arg0.PanelAmmo:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F1A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


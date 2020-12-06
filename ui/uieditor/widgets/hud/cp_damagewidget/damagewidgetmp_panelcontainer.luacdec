-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_Panel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DamageWidgetMP_PanelContainer = registerVal1
function CoD.DamageWidgetMP_PanelContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DamageWidgetMP_PanelContainer)
	registerVal2.id = "DamageWidgetMP_PanelContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 62.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 41.000000)
	local registerVal3 = CoD.DamageWidget_Panel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2_highquality"))
	registerVal3:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.PanelAmmo0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_666_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_666_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_6C6_(arg0)
		arg0.PanelAmmo0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6C6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


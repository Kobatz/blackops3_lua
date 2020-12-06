-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_PanelEquip")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_PanelEquipContainer = registerVal1
function CoD.AmmoWidgetMP_PanelEquipContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_PanelEquipContainer)
	registerVal2.id = "AmmoWidgetMP_PanelEquipContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 45.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 37.000000)
	local registerVal3 = CoD.AmmoWidget_PanelEquip.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -0.170000, 0.170000)
	registerVal3:setTopBottom(true, true, -0.170000, 0.170000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2_highquality"))
	registerVal3:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.PanelLethal0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_680_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_680_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_6E2_(arg0)
		arg0.PanelLethal0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6E2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


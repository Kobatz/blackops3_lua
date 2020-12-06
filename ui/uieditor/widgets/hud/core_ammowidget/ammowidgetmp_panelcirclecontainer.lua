-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidgetMP_PanelCircle")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_PanelCircleContainer = registerVal1
function CoD.AmmoWidgetMP_PanelCircleContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_PanelCircleContainer)
	registerVal2.id = "AmmoWidgetMP_PanelCircleContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 101.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 101.000000)
	local registerVal3 = CoD.AmmoWidgetMP_PanelCircle.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -50.500000, 50.500000)
	registerVal3:setTopBottom(false, false, -50.500000, 50.500000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2_highquality"))
	registerVal3:setShaderVector(0.000000, 30.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.PanelOctagon = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_688_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_688_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_6EA_(arg0)
		arg0.PanelOctagon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6EA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


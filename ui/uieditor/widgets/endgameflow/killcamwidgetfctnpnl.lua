-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.EndGameFlow.KillcamWidgetFctnPnlInternal")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.KillcamWidgetFctnPnl = registerVal1
function CoD.KillcamWidgetFctnPnl.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.KillcamWidgetFctnPnl)
	registerVal2.id = "KillcamWidgetFctnPnl"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 200.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.KillcamWidgetFctnPnlInternal.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 200.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 30.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.KillcamWidgetFctnPnlInternal0 = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_696_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_696_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_6F6_(arg0)
		arg0.KillcamWidgetFctnPnlInternal0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6F6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


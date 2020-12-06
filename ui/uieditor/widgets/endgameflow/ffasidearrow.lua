-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.EndGameFlow.FFASideArrowInt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FFASideArrow = registerVal1
function CoD.FFASideArrow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FFASideArrow)
	registerVal2.id = "FFASideArrow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 192.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 144.000000)
	local registerVal3 = CoD.FFASideArrowInt.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 30.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FFASideArrowInt0 = registerVal3
	local function __FUNC_5D7_(arg0)
		arg0.FFASideArrowInt0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5D7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


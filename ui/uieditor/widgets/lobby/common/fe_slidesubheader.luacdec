-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.Lobby.Common.FE_LabelSubHeadingD")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_SlideSubHeader = registerVal1
function CoD.FE_SlideSubHeader.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_SlideSubHeader)
	registerVal2.id = "FE_SlideSubHeader"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 141.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	local registerVal3 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -2.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ImageBorder0 = registerVal3
	local registerVal4 = CoD.FE_LabelSubHeadingD.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 3.000000, 138.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 33.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4.Label0:setRGB(0.580000, 0.640000, 0.650000)
	registerVal4.Label0:setText("")
	registerVal4.Label0:setTTF("fonts/escom.ttf")
	local function __FUNC_872_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 3.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_872_)
	registerVal2:addElement(registerVal4)
	registerVal2.FELabelSubHeadingD0 = registerVal4
	local function __FUNC_8D1_(arg0)
		arg0.ImageBorder0:close()
		arg0.FELabelSubHeadingD0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8D1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


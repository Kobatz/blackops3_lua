-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_LabelSubHeadingA = registerVal1
function CoD.FE_LabelSubHeadingA.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 7.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_LabelSubHeadingA)
	registerVal2.id = "FE_LabelSubHeadingA"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 74.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 29.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 74.000000)
	registerVal3:setTopBottom(false, false, -14.500000, 14.500000)
	registerVal3:setRGB(0.580000, 0.640000, 0.650000)
	registerVal3:setText(Engine.Localize("33,241"))
	registerVal3:setTTF("fonts/escom.ttf")
	local function __FUNC_6A5_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_6A5_)
	registerVal2:addElement(registerVal3)
	registerVal2.Label0 = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


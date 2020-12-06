-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VerticalListSpacer = registerVal1
function CoD.VerticalListSpacer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.VerticalListSpacer)
	registerVal2.id = "VerticalListSpacer"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 34.000000)
	local function __FUNC_400_(arg0)
		SetVerticaListSpacerHeight(registerVal2, arg0)
	end

	registerVal2:linkToElementModel(registerVal2, "height", true, __FUNC_400_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


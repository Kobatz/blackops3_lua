-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreInfo_TimeSemi = registerVal1
function CoD.ScoreInfo_TimeSemi.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreInfo_TimeSemi)
	registerVal2.id = "ScoreInfo_TimeSemi"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 84.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 1.500000, -1.170000)
	registerVal3:setTopBottom(true, true, 2.000000, -2.000000)
	registerVal3:setAlpha(0.550000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_damagewidget_semicircle"))
	registerVal2:addElement(registerVal3)
	registerVal2.ImgArc = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


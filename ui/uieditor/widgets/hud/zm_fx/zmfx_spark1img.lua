-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ZmFx_Spark1Img = registerVal1
function CoD.ZmFx_Spark1Img.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ZmFx_Spark1Img)
	registerVal2.id = "ZmFx_Spark1Img"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 112.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 168.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_zm_hud_rnd_spkseq1"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook_add"))
	registerVal3:setShaderVector(0.000000, 10.000000, 2.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 30.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image00 = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


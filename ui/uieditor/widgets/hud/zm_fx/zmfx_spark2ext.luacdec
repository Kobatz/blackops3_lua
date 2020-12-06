-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ZM_FX.ZmFx_Spark1Img")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ZmFx_Spark2Ext = registerVal1
function CoD.ZmFx_Spark2Ext.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ZmFx_Spark2Ext)
	registerVal2.id = "ZmFx_Spark2Ext"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 112.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 168.000000)
	local registerVal3 = CoD.ZmFx_Spark1Img.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 15.000000, -6.000000)
	registerVal3:setTopBottom(true, true, 22.830000, -8.670000)
	registerVal3:setRGB(0.660000, 0.250000, 0.000000)
	registerVal3:setAlpha(0.550000)
	registerVal3.Image00:setShaderVector(0.000000, 10.000000, 2.000000, 0.000000, 0.000000)
	registerVal3.Image00:setShaderVector(1.000000, 12.590000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ZmFxSpark1Img0 = registerVal3
	local registerVal4 = CoD.ZmFx_Spark1Img.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4.Image00:setShaderVector(0.000000, 10.000000, 2.000000, 0.000000, 0.000000)
	registerVal4.Image00:setShaderVector(1.000000, 30.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ZmFxSpark1Img1 = registerVal4
	local function __FUNC_6CC_(arg0)
		arg0.ZmFxSpark1Img0:close()
		arg0.ZmFxSpark1Img1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6CC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


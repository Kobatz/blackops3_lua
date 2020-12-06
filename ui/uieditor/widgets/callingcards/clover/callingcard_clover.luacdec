-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.Clover.CallingCard_Clover_Rainbow")
require("ui.uieditor.widgets.HUD.ZM_FX.ZmFx_Spark2Ext")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCard_Clover = registerVal1
function CoD.CallingCard_Clover.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.CallingCard_Clover)
	registerVal2.id = "CallingCard_Clover"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_callingcard_mp_clover_bg_2"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll_normal"))
	registerVal3:setShaderVector(0.000000, 1.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 1.500000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.TileBG = registerVal3
	local registerVal4 = CoD.CallingCard_Clover_Rainbow.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -652.560000, 390.440000)
	registerVal4:setTopBottom(true, false, -7.000000, 133.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.TileRainbow = registerVal4
	local registerVal5 = CoD.ZmFx_Spark2Ext.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 286.440000, 358.440000)
	registerVal5:setTopBottom(true, false, 34.500000, 142.500000)
	registerVal5:setRGB(1.000000, 0.550000, 0.990000)
	registerVal5:setXRot(50.000000)
	registerVal5:setYRot(180.000000)
	registerVal5:setZRot(-90.000000)
	registerVal5:setScale(1.300000)
	registerVal5:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.FxSparkPink = registerVal5
	local registerVal6 = CoD.ZmFx_Spark2Ext.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 192.430000, 264.440000)
	registerVal6:setTopBottom(true, false, 12.000000, 120.000000)
	registerVal6:setRGB(1.000000, 0.960000, 0.000000)
	registerVal6:setAlpha(0.600000)
	registerVal6:setXRot(-55.000000)
	registerVal6:setYRot(180.000000)
	registerVal6:setZRot(-80.000000)
	registerVal6:setScale(3.000000)
	registerVal6:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.FxSparkLarge = registerVal6
	local registerVal7 = CoD.ZmFx_Spark2Ext.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 273.440000, 345.440000)
	registerVal7:setTopBottom(true, false, -27.500000, 80.500000)
	registerVal7:setRGB(1.000000, 0.000000, 0.050000)
	registerVal7:setXRot(-70.000000)
	registerVal7:setYRot(180.000000)
	registerVal7:setZRot(-60.000000)
	registerVal7:setScale(2.000000)
	registerVal7:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.FxSparkRed = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 0.000000, 480.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal8:setImage(RegisterImage("uie_t7_callingcard_mp_clover3_rainbow_anim"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal8:setShaderVector(0.000000, 1.000000, 8.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 18.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Clover4 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 300.440000, 450.440000)
	registerVal9:setTopBottom(true, false, -5.000000, 182.000000)
	registerVal9:setImage(RegisterImage("uie_t7_callingcard_mp_clover_flipbook"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal9:setShaderVector(0.000000, 6.000000, 3.000000, 0.000000, 0.000000)
	registerVal9:setShaderVector(1.000000, 30.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.Flipbook = registerVal9
	local function __FUNC_E08_(arg0)
		arg0.TileRainbow:close()
		arg0.FxSparkPink:close()
		arg0.FxSparkLarge:close()
		arg0.FxSparkRed:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E08_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


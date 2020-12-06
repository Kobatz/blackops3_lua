-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_2lines")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.popup_warninglabel = registerVal1
function CoD.popup_warninglabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.popup_warninglabel)
	registerVal2.id = "popup_warninglabel"
	registerVal2.soundSet = "CAC_Overcapacity"
	registerVal2:setLeftRight(true, false, 0.000000, 741.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.890000, 0.310000, 0.070000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrfull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.005457, 0.115108, 0.000000, 0.000000)
	registerVal3:setupNineSliceShader(4.000000, 4.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 10.000000, 682.000000)
	registerVal4:setTopBottom(true, false, 9.000000, 29.000000)
	registerVal4:setRGB(0.970000, 0.320000, 0.050000)
	registerVal4:setText(Engine.Localize("MENU_TOO_MANY_ITEMS_DESC_CAPS"))
	registerVal4:setTTF("fonts/escom.ttf")
	local function __FUNC_9C2_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 10.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_9C2_)
	registerVal2:addElement(registerVal4)
	registerVal2.menudescription = registerVal4
	local registerVal5 = CoD.cac_2lines.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -44.000000, -8.000000)
	registerVal5:setTopBottom(false, false, -19.000000, 18.000000)
	registerVal5:setRGB(0.890000, 0.310000, 0.070000)
	registerVal2:addElement(registerVal5)
	registerVal2.cac2lines0 = registerVal5
	local registerVal6 = CoD.cac_2lines.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, 8.000000, 44.000000)
	registerVal6:setTopBottom(false, false, 0.000000, 0.000000)
	registerVal6:setRGB(0.890000, 0.310000, 0.070000)
	registerVal6:setZRot(180.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.cac2linesRight = registerVal6
	local function __FUNC_A21_(arg0)
		arg0.cac2lines0:close()
		arg0.cac2linesRight:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A21_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


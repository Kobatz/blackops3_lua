-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.frame_labelbg")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_wildcardwarningtext = registerVal1
function CoD.cac_wildcardwarningtext.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_wildcardwarningtext)
	registerVal2.id = "cac_wildcardwarningtext"
	registerVal2.soundSet = "CAC_Overcapacity"
	registerVal2:setLeftRight(true, false, 0.000000, 603.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 36.000000)
	local registerVal3 = CoD.frame_labelbg.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 39.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.890000, 0.310000, 0.080000)
	registerVal2:addElement(registerVal3)
	registerVal2.framelabelbg = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 12.000000, 642.000000)
	registerVal4:setTopBottom(true, false, 9.000000, 29.000000)
	registerVal4:setRGB(0.970000, 0.320000, 0.050000)
	registerVal4:setText(Engine.Localize("TOO EQUIP PRIMARY GUNFIGHTER, CHOOSE A WILDCARD TO SWAP"))
	registerVal4:setTTF("fonts/escom.ttf")
	local function __FUNC_726_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_726_)
	registerVal2:addElement(registerVal4)
	registerVal2.desc = registerVal4
	local function __FUNC_785_(arg0)
		arg0.framelabelbg:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_785_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


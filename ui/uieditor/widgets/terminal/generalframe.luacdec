-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Terminal.OnePxLine")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Generalframe = registerVal1
function CoD.Generalframe.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Generalframe)
	registerVal2.id = "Generalframe"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 291.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 169.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.450000)
	registerVal2:addElement(registerVal3)
	registerVal2.Black = registerVal3
	local registerVal4 = CoD.OnePxLine.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -3.000000, 5.250000)
	registerVal4:setTopBottom(true, false, -5.000000, 6.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.OnePxLine0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -3.830000, 3.830000)
	registerVal5:setTopBottom(true, false, -3.810000, 3.840000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_cp_datavault_cross"))
	registerVal2:addElement(registerVal5)
	registerVal2.cross = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -3.000000, 4.680000)
	registerVal6:setTopBottom(false, true, -3.850000, 3.830000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cp_datavault_line"))
	registerVal2:addElement(registerVal6)
	registerVal2.smallwhiteline = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -3.830000, 3.830000)
	registerVal7:setTopBottom(false, true, -3.830000, 3.830000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cp_datavault_cross"))
	registerVal2:addElement(registerVal7)
	registerVal2.cross0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -4.000000, 3.680000)
	registerVal8:setTopBottom(true, false, -3.840000, 3.840000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cp_datavault_line"))
	registerVal2:addElement(registerVal8)
	registerVal2.smallwhiteline0 = registerVal8
	local registerVal9 = CoD.OnePxLine.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -3.000000, 5.250000)
	registerVal9:setTopBottom(false, true, -4.850000, 6.150000)
	registerVal2:addElement(registerVal9)
	registerVal2.OnePxLine00 = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_99E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_99E_
	registerVal10.DefaultState = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_9FE_(arg0)
		arg0.OnePxLine0:close()
		arg0.OnePxLine00:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9FE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


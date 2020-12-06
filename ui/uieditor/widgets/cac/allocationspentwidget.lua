-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.AllocationBar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AllocationSpentWidget = registerVal1
function CoD.AllocationSpentWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AllocationSpentWidget)
	registerVal2.id = "AllocationSpentWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 268.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.AllocationBar.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.AllocationBar0 = registerVal3
	local registerVal4 = CoD.AllocationBar.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 19.000000, 35.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.AllocationBar1 = registerVal4
	local registerVal5 = CoD.AllocationBar.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 38.000000, 54.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.AllocationBar2 = registerVal5
	local registerVal6 = CoD.AllocationBar.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 57.000000, 73.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.AllocationBar3 = registerVal6
	local registerVal7 = CoD.AllocationBar.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 76.000000, 92.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.AllocationBar4 = registerVal7
	local registerVal8 = CoD.AllocationBar.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 95.000000, 111.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.AllocationBar5 = registerVal8
	local registerVal9 = CoD.AllocationBar.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 114.000000, 130.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.AllocationBar6 = registerVal9
	local registerVal10 = CoD.AllocationBar.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 133.000000, 149.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.AllocationBar7 = registerVal10
	local registerVal11 = CoD.AllocationBar.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 152.000000, 168.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.AllocationBar8 = registerVal11
	local registerVal12 = CoD.AllocationBar.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 171.000000, 187.000000)
	registerVal12:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.AllocationBar9 = registerVal12
	local registerVal13 = CoD.AllocationBar.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 190.000000, 206.000000)
	registerVal13:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.AllocationBar10 = registerVal13
	local registerVal14 = CoD.AllocationBar.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 209.000000, 225.000000)
	registerVal14:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.AllocationBar11 = registerVal14
	local registerVal15 = CoD.AllocationBar.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 228.000000, 244.000000)
	registerVal15:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal15)
	registerVal2.AllocationBar12 = registerVal15
	local registerVal16 = CoD.AllocationBar.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 247.000000, 263.000000)
	registerVal16:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal16)
	registerVal2.AllocationBar13 = registerVal16
	local registerVal17 = CoD.AllocationBar.new(arg0, arg1)
	registerVal17:setLeftRight(true, false, 266.000000, 282.000000)
	registerVal17:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal17)
	registerVal2.AllocationBar14 = registerVal17
	local registerVal18 = CoD.AllocationBar.new(arg0, arg1)
	registerVal18:setLeftRight(true, false, 285.000000, 301.000000)
	registerVal18:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.AllocationBar15 = registerVal18
	local registerVal19 = CoD.AllocationBar.new(arg0, arg1)
	registerVal19:setLeftRight(true, false, 304.000000, 320.000000)
	registerVal19:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.AllocationBar16 = registerVal19
	local function __FUNC_DE6_(arg0)
		arg0.AllocationBar0:close()
		arg0.AllocationBar1:close()
		arg0.AllocationBar2:close()
		arg0.AllocationBar3:close()
		arg0.AllocationBar4:close()
		arg0.AllocationBar5:close()
		arg0.AllocationBar6:close()
		arg0.AllocationBar7:close()
		arg0.AllocationBar8:close()
		arg0.AllocationBar9:close()
		arg0.AllocationBar10:close()
		arg0.AllocationBar11:close()
		arg0.AllocationBar12:close()
		arg0.AllocationBar13:close()
		arg0.AllocationBar14:close()
		arg0.AllocationBar15:close()
		arg0.AllocationBar16:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DE6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.GridItemButtonBackdrop")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GridItemButtonBackdropContainer3x4 = registerVal1
function CoD.GridItemButtonBackdropContainer3x4.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GridItemButtonBackdropContainer3x4)
	registerVal2.id = "GridItemButtonBackdropContainer3x4"
	registerVal2.soundSet = "CAC_PrimaryWeapon"
	registerVal2:setLeftRight(true, false, 0.000000, 344.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 456.000000)
	local registerVal3 = CoD.GridItemButtonBackdrop.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.GridItemButtonBackdrop1 = registerVal3
	local registerVal4 = CoD.GridItemButtonBackdrop.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 112.000000, 232.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.GridItemButtonBackdrop2 = registerVal4
	local registerVal5 = CoD.GridItemButtonBackdrop.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 224.000000, 344.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.GridItemButtonBackdrop3 = registerVal5
	local registerVal6 = CoD.GridItemButtonBackdrop.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal6:setTopBottom(true, false, 112.000000, 232.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.GridItemButtonBackdrop4 = registerVal6
	local registerVal7 = CoD.GridItemButtonBackdrop.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 112.000000, 232.000000)
	registerVal7:setTopBottom(true, false, 112.000000, 232.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.GridItemButtonBackdrop5 = registerVal7
	local registerVal8 = CoD.GridItemButtonBackdrop.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 224.000000, 344.000000)
	registerVal8:setTopBottom(true, false, 112.000000, 232.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.GridItemButtonBackdrop6 = registerVal8
	local registerVal9 = CoD.GridItemButtonBackdrop.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal9:setTopBottom(true, false, 224.000000, 344.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.GridItemButtonBackdrop7 = registerVal9
	local registerVal10 = CoD.GridItemButtonBackdrop.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 112.000000, 232.000000)
	registerVal10:setTopBottom(true, false, 224.000000, 344.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.GridItemButtonBackdrop8 = registerVal10
	local registerVal11 = CoD.GridItemButtonBackdrop.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 224.000000, 344.000000)
	registerVal11:setTopBottom(true, false, 224.000000, 344.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.GridItemButtonBackdrop9 = registerVal11
	local registerVal12 = CoD.GridItemButtonBackdrop.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal12:setTopBottom(true, false, 336.000000, 456.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.GridItemButtonBackdrop10 = registerVal12
	local registerVal13 = CoD.GridItemButtonBackdrop.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 112.000000, 232.000000)
	registerVal13:setTopBottom(true, false, 336.000000, 456.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.GridItemButtonBackdrop11 = registerVal13
	local registerVal14 = CoD.GridItemButtonBackdrop.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 224.000000, 344.000000)
	registerVal14:setTopBottom(true, false, 336.000000, 456.000000)
	registerVal2:addElement(registerVal14)
	registerVal2.GridItemButtonBackdrop12 = registerVal14
	local function __FUNC_B4E_(arg0)
		arg0.GridItemButtonBackdrop1:close()
		arg0.GridItemButtonBackdrop2:close()
		arg0.GridItemButtonBackdrop3:close()
		arg0.GridItemButtonBackdrop4:close()
		arg0.GridItemButtonBackdrop5:close()
		arg0.GridItemButtonBackdrop6:close()
		arg0.GridItemButtonBackdrop7:close()
		arg0.GridItemButtonBackdrop8:close()
		arg0.GridItemButtonBackdrop9:close()
		arg0.GridItemButtonBackdrop10:close()
		arg0.GridItemButtonBackdrop11:close()
		arg0.GridItemButtonBackdrop12:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B4E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


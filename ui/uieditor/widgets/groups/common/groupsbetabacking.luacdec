-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedSolid")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsBetaBacking = registerVal1
function CoD.GroupsBetaBacking.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsBetaBacking)
	registerVal2.id = "GroupsBetaBacking"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.370000, 0.100000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.timerBackground = registerVal3
	local registerVal4 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -1.000000, 3.000000)
	registerVal4:setRGB(1.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BorderBakedSolid00 = registerVal4
	local registerVal5 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -1.000000, 3.000000)
	registerVal5:setRGB(1.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BorderBakedSolid000 = registerVal5
	local function __FUNC_6B2_(arg0)
		arg0.BorderBakedSolid00:close()
		arg0.BorderBakedSolid000:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6B2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


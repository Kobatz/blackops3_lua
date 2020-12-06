-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Fileshare.SlotCountText")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SlotCount = registerVal1
function CoD.SlotCount.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.SlotCount)
	registerVal2.id = "SlotCount"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 60.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 61.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = CoD.SlotCountText.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 61.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal4.Label0:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4.Label1:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4.Label2:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.SlotCountText0 = registerVal4
	local function __FUNC_624_(arg0)
		arg0.SlotCountText0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_624_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


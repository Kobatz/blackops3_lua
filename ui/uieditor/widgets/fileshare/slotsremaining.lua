-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Fileshare.SlotCount")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SlotsRemaining = registerVal1
function CoD.SlotsRemaining.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Right)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.SlotsRemaining)
	registerVal2.id = "SlotsRemaining"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 284.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 44.000000)
	registerVal3 = CoD.SlotCount.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 223.000000, 284.000000)
	registerVal3:setTopBottom(true, false, 9.500000, 34.500000)
	registerVal2:addElement(registerVal3)
	registerVal2.SlotCount0 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 68.000000, 223.000000)
	registerVal4:setTopBottom(true, false, 9.500000, 34.500000)
	registerVal4:setText(Engine.Localize("showcase slots available "))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.Label1 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 7.000000, 68.000000)
	registerVal5:setTopBottom(true, false, 9.500000, 34.500000)
	registerVal5:setText(Engine.Localize("Paintjobs "))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.Label2 = registerVal5
	local function __FUNC_820_(arg0)
		arg0.SlotCount0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_820_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


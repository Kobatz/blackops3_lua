-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Minimap = registerVal1
function CoD.StartMenu_Minimap.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.StartMenu_Minimap)
	registerVal2.id = "StartMenu_Minimap"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 633.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 353.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -119.960000, 118.960000)
	registerVal3:setTopBottom(true, true, -113.500000, 122.500000)
	registerVal3:setupCompassOverlay(Enum.CompassType.COMPASS_TYPE_FULL)
	registerVal2:addElement(registerVal3)
	registerVal2.minimapOverlay = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -316.500000, 316.500000)
	registerVal4:setTopBottom(false, false, -316.500000, 316.500000)
	registerVal4:setupCompassMap(Enum.CompassType.COMPASS_TYPE_FULL)
	registerVal2:addElement(registerVal4)
	registerVal2.minimapMap = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -316.500000, 316.500000)
	registerVal5:setTopBottom(false, false, -316.500000, 316.500000)
	registerVal5:setupCompassItems(Enum.CompassType.COMPASS_TYPE_FULL)
	registerVal2:addElement(registerVal5)
	registerVal2.minimapItems = registerVal5
	local registerVal6 = CoD.Border.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, -0.500000)
	registerVal2:addElement(registerVal6)
	registerVal2.border = registerVal6
	local registerVal7 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.StartMenuframenoBG0 = registerVal7
	local function __FUNC_8B0_(arg0)
		arg0.border:close()
		arg0.StartMenuframenoBG0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8B0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


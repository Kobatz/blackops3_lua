-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmpRebootIndicatorWidget = registerVal1
function CoD.EmpRebootIndicatorWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmpRebootIndicatorWidget)
	registerVal2.id = "EmpRebootIndicatorWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 201.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 39.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -88.290000, 86.500000)
	registerVal3:setTopBottom(false, false, -2.800000, 19.500000)
	registerVal3:setAlpha(0.400000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_armorcontainer"))
	registerVal2:addElement(registerVal3)
	registerVal2.ArmorFrame = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -100.090000, 99.500000)
	registerVal4:setTopBottom(false, false, -18.920000, -1.920000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.400000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackFrame = registerVal4
	local registerVal5 = CoD.Border.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -91.500000, 89.500000)
	registerVal5:setTopBottom(false, false, -11.800000, -8.300000)
	registerVal5:setAlpha(0.400000)
	registerVal2:addElement(registerVal5)
	registerVal2.armorBorder = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -90.500000, 88.500000)
	registerVal6:setTopBottom(false, false, -10.550000, -9.550000)
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal6:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.ProgressBar = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -77.880000, 75.500000)
	registerVal7:setTopBottom(false, false, -2.300000, 14.700000)
	registerVal7:setText(Engine.Localize("MP_HUD_EMP_REBOOTING"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.RebootText = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_AD9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal7:completeAnimation()
		registerVal2.RebootText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_AD9_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_BD5_(arg0)
		arg0.armorBorder:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BD5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


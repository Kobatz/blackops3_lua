-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderThin")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Barracks_Stat = registerVal1
function CoD.StartMenu_Barracks_Stat.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Barracks_Stat)
	registerVal2.id = "StartMenu_Barracks_Stat"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 61.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BorderThin.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BorderThin0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal4:setTopBottom(false, false, -27.500000, -6.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.300000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal4:setShaderVector(0.000000, 0.010000, 0.050000, 0.010000, 0.050000)
	registerVal2:addElement(registerVal4)
	registerVal2.BlackBar = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 0.000000, -0.330000)
	registerVal5:setTopBottom(false, false, -25.500000, -6.500000)
	registerVal5:setText(Engine.Localize("MPUI_TOTAL_KILLS_CAPS"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.Value = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 0.000000, -0.330000)
	registerVal6:setTopBottom(false, false, -1.000000, 29.000000)
	registerVal6:setRGB(1.000000, 0.800000, 0.400000)
	registerVal6:setText(Engine.Localize("42,000"))
	registerVal6:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.Title = registerVal6
	local function __FUNC_A10_(arg0)
		arg0.BorderThin0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A10_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end


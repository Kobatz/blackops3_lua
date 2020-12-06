-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveDiags")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_RanksFrame = registerVal1
function CoD.Social_RanksFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_RanksFrame)
	registerVal2.id = "Social_RanksFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 115.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.250000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgIdle = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.750000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactiveStroke = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactiveDiags.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -1.000000, -1.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 2.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, -1.000000, -1.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 2.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivefull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.120301, 0.120301, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BoxButtonLrgInactive = registerVal6
	local function __FUNC_965_(arg0)
		arg0.BoxButtonLrgInactiveStroke:close()
		arg0.BoxButtonLrgInactiveDiag:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_965_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

